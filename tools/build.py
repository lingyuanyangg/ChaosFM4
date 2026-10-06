from pathlib import Path
import json

ROOT = Path(__file__).resolve().parents[1]
VAL = ROOT / "validation"
VAL.mkdir(parents=True, exist_ok=True)

APP = {"major": 9, "minor": 1, "revision": 3, "architecture": "arm64", "modernui": 1}

GEN = r'''// CHAOS FM4 — four mutually frequency-modulated chaotic flows.
// Each FM input scales the complete vector field, preserving the attractor's shape.
History ax(.1); History ay(0); History az(0);
History bx(.1); History by(0); History bz(0);
History cx(.1); History cy(0); History cz(0);
History dx(.1); History dy(0); History dz(0);
History ma(0); History mb(0); History mc(0); History md(0);
History resetold(0); History env(0); History gain(0);

Param run(1,min=0,max=1);
Param playmode(0,min=0,max=1);
Param reset(0,min=0,max=1);
Param midinote(60,min=0,max=127);
Param gate(0,min=0,max=1);
Param output(-18,min=-60,max=0);
Param drive(1,min=.25,max=6);
Param coupling(.35,min=0,max=1);
Param modslew(2,min=.1,max=1000);
Param fmmode(0,min=0,max=1);
Param fmfloor(.5,min=.1,max=50);
Param attack(10,min=1,max=2000);
Param release(250,min=5,max=5000);

Param ratea(72,min=1,max=350);
Param shapea(28,min=20,max=38);
Param levela(.7,min=0,max=1);
Param pana(-.65,min=-1,max=1);
Param axisa(0,min=0,max=2);
Param rateb(96,min=1,max=350);
Param shapeb(5.7,min=4,max=9);
Param levelb(.6,min=0,max=1);
Param panb(-.2,min=-1,max=1);
Param axisb(0,min=0,max=2);
Param ratec(55,min=1,max=350);
Param shapec(15.6,min=12,max=19);
Param levelc(.55,min=0,max=1);
Param panc(.2,min=-1,max=1);
Param axisc(0,min=0,max=2);
Param rated(120,min=1,max=350);
Param shaped(.208,min=.15,max=.28);
Param leveld(.55,min=0,max=1);
Param pand(.65,min=-1,max=1);
Param axisd(0,min=0,max=2);

Param ab(0,min=-1,max=1);
Param ac(0,min=-1,max=1);
Param ad(.22,min=-1,max=1);
Param ba(.18,min=-1,max=1);
Param bc(0,min=-1,max=1);
Param bd(0,min=-1,max=1);
Param ca(0,min=-1,max=1);
Param cb(.18,min=-1,max=1);
Param cd(0,min=-1,max=1);
Param da(0,min=-1,max=1);
Param db(0,min=-1,max=1);
Param dc(.18,min=-1,max=1);

doreset = reset > .5 && resetold <= .5;
bad = abs(ax)>100 || abs(ay)>100 || abs(az)>100 || abs(bx)>100 || abs(by)>100 || abs(bz)>100 || abs(cx)>20 || abs(cy)>20 || abs(cz)>100 || abs(dx)>20 || abs(dy)>20 || abs(dz)>20;
if (doreset || bad) {
    ax=.1; ay=0; az=0; bx=.1; by=0; bz=0; cx=.1; cy=0; cz=0; dx=.1; dy=0; dz=0;
    ma=0; mb=0; mc=0; md=0;
}
resetold=reset;

// Axis selection and fixed, attractor-specific normalization.
rawa=axisa<.5 ? ax/20 : (axisa<1.5 ? ay/25 : (az-25)/25);
rawb=axisb<.5 ? bx/10 : (axisb<1.5 ? by/10 : (bz-8)/8);
rawc=axisc<.5 ? cx/2.5 : (axisc<1.5 ? cy/.5 : cz/4);
rawd=axisd<.5 ? dx/2 : (axisd<1.5 ? dy/2 : dz/2);
slewcoef=1-exp(-twopi*modslew/samplerate);
ma=ma+(tanh(rawa)-ma)*slewcoef; mb=mb+(tanh(rawb)-mb)*slewcoef;
mc=mc+(tanh(rawc)-mc)*slewcoef; md=md+(tanh(rawd)-md)*slewcoef;

// Matrix names read source -> destination: ab means A modulates B.
fma=clamp(coupling*(ba*mb+ca*mc+da*md),-1,1);
fmb=clamp(coupling*(ab*ma+cb*mc+db*md),-1,1);
fmc=clamp(coupling*(ac*ma+bc*mb+dc*md),-1,1);
fmd=clamp(coupling*(ad*ma+bd*mb+cd*mc),-1,1);
keyboard=playmode>.5 ? pow(2,(midinote-60)/12) : 1;
basea=ratea*keyboard; baseb=rateb*keyboard; basec=ratec*keyboard; based=rated*keyboard;
ra=fmmode<.5 ? basea*pow(2,fma*4) : basea*(1+fma*4);
rb=fmmode<.5 ? baseb*pow(2,fmb*4) : baseb*(1+fmb*4);
rc=fmmode<.5 ? basec*pow(2,fmc*4) : basec*(1+fmc*4);
rd=fmmode<.5 ? based*pow(2,fmd*4) : based*(1+fmd*4);
ra=clamp(ra,fmfloor,350); rb=clamp(rb,fmfloor,350);
rc=clamp(rc,fmfloor,350); rd=clamp(rd,fmfloor,350);

// Two Euler substeps keep the continuous flows stable at audio rates.
ha=min(.008,ra/samplerate)*.5; hb=min(.008,rb/samplerate)*.5;
hc=min(.008,rc/samplerate)*.5; hd=min(.008,rd/samplerate)*.5;
for (sub=0; sub<2; sub+=1) {
    lax=10*(ay-ax); lay=ax*(shapea-az)-ay; laz=ax*ay-2.6666667*az;
    ax=ax+ha*lax; ay=ay+ha*lay; az=az+ha*laz;
    lbx=-by-bz; lby=bx+.2*by; lbz=.2+bz*(bx-shapeb);
    bx=bx+hb*lbx; by=by+hb*lby; bz=bz+hb*lbz;
    ch=( -1.143*cx + .5*(-.714+1.143)*(abs(cx+1)-abs(cx-1)) );
    lcx=shapec*(cy-cx-ch); lcy=cx-cy+cz; lcz=-28*cy;
    cx=cx+hc*lcx; cy=cy+hc*lcy; cz=cz+hc*lcz;
    ldx=sin(dy)-shaped*dx; ldy=sin(dz)-shaped*dy; ldz=sin(dx)-shaped*dz;
    dx=dx+hd*ldx; dy=dy+hd*ldy; dz=dz+hd*ldz;
}

// Read the updated states for audio. Modulation remains one sample delayed and symmetric.
sa=tanh((axisa<.5 ? ax/20 : (axisa<1.5 ? ay/25 : (az-25)/25))*2);
sb=tanh((axisb<.5 ? bx/10 : (axisb<1.5 ? by/10 : (bz-8)/8))*2);
sc=tanh((axisc<.5 ? cx/2.5 : (axisc<1.5 ? cy/.5 : cz/4))*2);
sd=tanh((axisd<.5 ? dx/2 : (axisd<1.5 ? dy/2 : dz/2))*2);

target=(run>.5 && (playmode<.5 || gate>.001)) ? 1 : 0;
etime=target>.5 ? attack : release;
env=env+(target-env)*(1-exp(-1/(max(1,etime)*.001*samplerate)));
la=cos((pana+1)*pi*.25); raPan=sin((pana+1)*pi*.25);
lb=cos((panb+1)*pi*.25); rbPan=sin((panb+1)*pi*.25);
lc=cos((panc+1)*pi*.25); rcPan=sin((panc+1)*pi*.25);
ld=cos((pand+1)*pi*.25); rdPan=sin((pand+1)*pi*.25);
mixl=sa*levela*la+sb*levelb*lb+sc*levelc*lc+sd*leveld*ld;
mixr=sa*levela*raPan+sb*levelb*rbPan+sc*levelc*rcPan+sd*leveld*rdPan;
gain=gain+(pow(10,output/20)-gain)*(1-exp(-1/(.02*samplerate)));
out1=tanh(dcblock(mixl)*drive)*env*gain*.7;
out2=tanh(dcblock(mixr)*drive)*env*gain*.7;
out3=ma; out4=mb; out5=mc; out6=md;
'''


def gen_patch():
    p = {"fileversion": 1, "appversion": APP, "classnamespace": "dsp.gen",
         "rect": [50, 50, 1100, 760], "boxes": [], "lines": []}
    p["boxes"].append({"box": {"id": "code", "maxclass": "codebox", "numinlets": 1,
                                      "numoutlets": 6, "patching_rect": [120, 55, 900, 610], "code": GEN}})
    p["boxes"].append({"box": {"id": "in1", "maxclass": "newobj", "text": "in 1",
                                      "patching_rect": [35, 55, 55, 22]}})
    p["lines"].append({"patchline": {"source": ["in1", 0], "destination": ["code", 0]}})
    for i in range(1, 7):
        p["boxes"].append({"box": {"id": f"out{i}", "maxclass": "newobj", "text": f"out {i}",
                                          "patching_rect": [80 + i * 110, 700, 55, 22]}})
        p["lines"].append({"patchline": {"source": ["code", i - 1], "destination": [f"out{i}", 0]}})
    return {"patcher": p}


PARAMS = [
    ("run", "Run", 0, 1, 1, "toggle"), ("playmode", "Play Mode", 0, 1, 0, "menu"),
    ("reset", "Reset", 0, 1, 0, "toggle"), ("output", "Output", -60, 0, -18, "dial"),
    ("drive", "Drive", .25, 6, 1, "dial"), ("coupling", "FM Amount", 0, 1, .35, "dial"),
    ("modslew", "FM Bandwidth", .1, 1000, 2, "dial"), ("attack", "Attack", 1, 2000, 10, "dial"),
    ("release", "Release", 5, 5000, 250, "dial"), ("fmmode", "FM Mode", 0, 1, 0, "menu"),
    ("fmfloor", "FM Floor", .1, 50, .5, "dial"),
]

OSC = {
    "a": ("LORENZ", 72, 28, .7, -.65, 0, 20, 38),
    "b": ("ROSSLER", 96, 5.7, .6, -.2, 0, 4, 9),
    "c": ("CHUA", 55, 15.6, .55, .2, 0, 12, 19),
    "d": ("THOMAS", 120, .208, .55, .65, 0, .15, .28),
}
for k, (name, rate, shape, level, pan, axis, slo, shi) in OSC.items():
    PARAMS += [("rate"+k, name+" Rate", 1, 350, rate, "dial"),
               ("shape"+k, name+" Shape", slo, shi, shape, "dial"),
               ("level"+k, name+" Level", 0, 1, level, "dial"),
               ("pan"+k, name+" Pan", -1, 1, pan, "dial"),
               ("axis"+k, name+" Axis", 0, 2, axis, "menu")]
for src in "abcd":
    for dst in "abcd":
        if src != dst:
            default = .22 if src+dst == "ad" else (.18 if src+dst in ("ba", "cb", "dc") else 0)
            PARAMS.append((src+dst, src.upper()+" to "+dst.upper(), -1, 1, default, "numbox"))


def value_attrs(key, name, lo, hi, default, kind):
    v = {"parameter_longname": name, "parameter_shortname": name, "parameter_mmin": lo,
         "parameter_mmax": hi, "parameter_initial": [default], "parameter_initial_enable": 1,
         "parameter_modmode": 0 if kind in ("toggle", "menu") else 2}
    if kind == "menu":
        v.update(parameter_type=2, parameter_unitstyle=9,
                 parameter_enum=(["DRONE", "MIDI"] if key == "playmode" else
                                 (["EXPONENTIAL", "LINEAR"] if key == "fmmode" else ["X", "Y", "Z"])))
    elif kind == "toggle":
        v.update(parameter_type=1, parameter_unitstyle=1)
    else:
        v.update(parameter_type=0, parameter_unitstyle=1)
        if key == "output": v.update(parameter_unitstyle=4, parameter_units="dB")
        if key in ("attack", "release"): v.update(parameter_unitstyle=2, parameter_units="ms")
        if key == "modslew": v.update(parameter_unitstyle=3, parameter_units="Hz")
        if key == "fmfloor": v.update(parameter_unitstyle=3, parameter_units="Hz")
    return {"valueof": v}


def main_patch():
    B, L, parameter_map = [], [], {}
    hidden_y = 240
    colors = {"a": [.96, .39, .35, 1], "b": [.98, .70, .25, 1],
              "c": [.29, .78, .69, 1], "d": [.45, .61, .96, 1]}
    ink = [.88, .92, .95, 1]
    bg = [.045, .055, .075, 1]

    def box(i, cls, rect, **kw):
        d = {"id": i, "varname": i, "maxclass": cls, "patching_rect": rect}
        d.update(kw); B.append({"box": d}); return d
    def obj(i, text, ni=1, no=1):
        nonlocal hidden_y
        d = box(i, "newobj", [25 + (len(B)%5)*215, hidden_y, 200, 22], text=text,
                numinlets=ni, numoutlets=no); hidden_y += 27; return d
    def vis(i, cls, rect, **kw):
        return box(i, cls, rect, presentation=1, presentation_rect=rect, **kw)
    def link(a, ao, b, bi=0): L.append({"patchline": {"source": [a, ao], "destination": [b, bi]}})
    def label(i, text, x, y, w=100, color=ink, size=9):
        return vis(i, "comment", [x, y, w, 16], text=text, textcolor=color, fontsize=size)

    vis("bg", "panel", [0, 0, 1240, 169], bgcolor=bg, border=0, background=1)
    label("brand", "CHAOS / FM4", 10, 5, 125, [.65, .94, .88, 1], 13)
    label("subtitle", "4 ATTRACTOR INSTRUMENT", 10, 22, 155, [.42, .56, .62, 1], 8)
    obj("engine", "gen~ chaos_fm4_engine @nocache 1", 1, 6)
    obj("silence", "sig~ 0.", 1, 1); link("silence", 0, "engine", 0)
    obj("audioout", "plugout~", 2, 0); link("engine", 0, "audioout", 0); link("engine", 1, "audioout", 1)
    obj("notes", "notein", 0, 3)
    obj("pitchmsg", "prepend midinote"); link("notes", 0, "pitchmsg"); link("pitchmsg", 0, "engine")
    obj("velscale", "/ 127."); link("notes", 1, "velscale")
    obj("gatemsg", "prepend gate"); link("velscale", 0, "gatemsg"); link("gatemsg", 0, "engine")
    obj("controller", "js chaos_fm4_ui.js", 1, 1); link("controller", 0, "engine")
    obj("init", "loadbang"); link("init", 0, "controller")
    obj("liveinit", "live.thisdevice", 1, 3); link("liveinit", 0, "controller")
    obj("state", "autopattr @autorestore 1"); obj("banks", "live.banks", 1, 2)
    vis("meterL", "live.meter~", [280, 139, 35, 8]); vis("meterR", "live.meter~", [280, 150, 35, 8])
    link("engine", 0, "meterL"); link("engine", 1, "meterR")

    pages = {0: [], 1: []}
    pmap = {p[0]: p for p in PARAMS}
    def widget(key, rect, page=None):
        name, lo, hi, default, kind = pmap[key][1:]
        cls = {"dial": "live.dial", "toggle": "live.toggle", "menu": "live.menu", "numbox": "live.numbox"}[kind]
        d = vis(key, cls, rect, parameter_enable=1,
                saved_attribute_attributes=value_attrs(key, name, lo, hi, default, kind),
                textcolor=ink, activebgcolor=[.27, .79, .69, 1], fontsize=9)
        if kind == "toggle": d.update(activebgcolor=[.13, .16, .20, 1], activebgoncolor=[.27, .79, .69, 1])
        parameter_map[key] = [name, name, 0]
        obj(key+"_send", "prepend "+key); link(key, 0, key+"_send"); link(key+"_send", 0, "engine")
        if page is not None: pages[page].append(key)

    widget("run", [10, 44, 20, 20]); label("runlab", "RUN", 34, 46, 38)
    widget("reset", [75, 44, 20, 20]); label("resetlab", "RESET", 99, 46, 47)
    widget("playmode", [10, 72, 136, 19])
    widget("fmmode", [165, 72, 150, 19])
    random_value = {"parameter_longname":"Randomize", "parameter_shortname":"Randomize", "parameter_type":2,
                    "parameter_mmin":0, "parameter_mmax":1, "parameter_initial":[0], "parameter_initial_enable":1,
                    "parameter_unitstyle":9, "parameter_modmode":0, "parameter_enum":["Off","Randomize"]}
    vis("randomize", "live.text", [165, 39, 150, 24], mode=0, text="RANDOMIZE", texton="RANDOMIZE",
        parameter_enable=1, saved_attribute_attributes={"valueof":random_value},
        bgcolor=[.12,.18,.20,1], activebgcolor=[.27,.79,.69,1], textcolor=ink, fontsize=9)
    parameter_map["randomize"]=["Randomize","Randomize",0]
    obj("randomsend", "prepend randomize"); link("randomize",0,"randomsend"); link("randomsend",0,"controller")
    for i, key in enumerate(["coupling", "modslew", "fmfloor", "drive", "output"]):
        widget(key, [10+i*52, 101, 48, 48])
    label("globalhelp", "FM / BW / FLOOR / DRIVE / OUT", 10, 151, 265, [.42,.56,.62,1], 8)
    page_value = {"parameter_longname": "Panel", "parameter_shortname": "Panel", "parameter_type": 2,
                  "parameter_mmin": 0, "parameter_mmax": 1, "parameter_initial": [0],
                  "parameter_initial_enable": 1, "parameter_unitstyle": 9, "parameter_modmode": 0,
                  "parameter_enum": ["OSCILLATORS", "FM MATRIX"]}
    vis("page", "live.menu", [165, 7, 150, 19], parameter_enable=1,
        saved_attribute_attributes={"valueof": page_value}, textcolor=ink, fontsize=9)
    parameter_map["page"] = ["Panel", "Panel", 0]
    obj("pagesend", "prepend page"); link("page", 0, "pagesend"); link("pagesend", 0, "controller")

    # Oscillator page: four color-coded strips.
    for i, k in enumerate("abcd"):
        x = 330 + i*225
        title = OSC[k][0]
        label("title_"+k, k.upper()+" / "+title, x, 7, 205, colors[k], 11); pages[0].append("title_"+k)
        widget("axis"+k, [x+112, 7, 94, 19], 0)
        widget("rate"+k, [x, 35, 96, 48], 0); widget("shape"+k, [x+110, 35, 96, 48], 0)
        widget("level"+k, [x, 99, 96, 48], 0); widget("pan"+k, [x+110, 99, 96, 48], 0)

    # Matrix page: columns are destinations, rows are sources.
    label("matrixhelp", "ROWS = SOURCE     COLUMNS = DESTINATION     bipolar depth", 335, 7, 560, [.55,.68,.72,1], 9); pages[1].append("matrixhelp")
    mx0, my0, cw, rh = 430, 34, 145, 29
    for j, dst in enumerate("abcd"):
        label("col_"+dst, "TO "+dst.upper(), mx0+j*cw, 30, 90, colors[dst], 10); pages[1].append("col_"+dst)
    for i, src in enumerate("abcd"):
        label("row_"+src, "FROM "+src.upper(), 335, my0+22+i*rh, 75, colors[src], 10); pages[1].append("row_"+src)
        for j, dst in enumerate("abcd"):
            if src == dst:
                label("self_"+src, "—", mx0+j*cw+24, my0+18+i*rh, 30, [.3,.36,.4,1], 12); pages[1].append("self_"+src)
            else:
                widget(src+dst, [mx0+j*cw, my0+18+i*rh, 105, 19], 1)
    widget("attack", [1030, 39, 82, 48], 1); widget("release", [1135, 39, 82, 48], 1)
    label("envhelp", "MIDI AR ENVELOPE", 1030, 101, 190, [.55,.68,.72,1], 9); pages[1].append("envhelp")

    # Page state is presentation-only; every other control is wired to gen~.
    for wrapped in B:
        if wrapped["box"]["id"] in pages[1]: wrapped["box"]["hidden"] = 1

    banks = [
        ("Global", ["run","playmode","fmmode","coupling","modslew","fmfloor","drive","output"]),
        ("Osc A/B", ["ratea","shapea","levela","pana","rateb","shapeb","levelb","panb"]),
        ("Osc C/D", ["ratec","shapec","levelc","panc","rated","shaped","leveld","pand"]),
        ("FM Ring", ["ab","ba","bc","cb","cd","dc","da","ad"]),
    ]
    parameter_map["parameterbanks"] = {str(i): {"index": i, "name": n, "parameters": ks} for i,(n,ks) in enumerate(banks)}
    parameter_map["inherited_shortname"] = 1
    p = {"fileversion": 1, "appversion": APP, "classnamespace": "box", "rect": [40, 80, 1240, 210],
         "openinpresentation": 1, "devicewidth": 1240, "bgcolor": bg, "editing_bgcolor": [.12,.14,.18,1],
         "default_fontname": "Arial", "default_fontsize": 11, "boxes": B, "lines": L,
         "parameters": parameter_map,
         "dependency_cache": [{"name":"chaos_fm4_engine.gendsp","type":"gDSP","implicit":1},
                              {"name":"chaos_fm4_ui.js","type":"TEXT","implicit":1}]}
    return {"patcher": p}, pages


MAIN, PAGES = main_patch()
(ROOT / "chaos_fm4_engine.gendsp").write_text(json.dumps(gen_patch(), indent=2))
(ROOT / "Chaos_FM4.maxpat").write_text(json.dumps(MAIN, indent=2))

ui = '''autowatch=1; inlets=1; outlets=1;
var pages=PAGE_DATA;
function named(k){return this.patcher.getnamed(k);}
function page(v){var selected=Math.round(v); for(var p=0;p<2;p++){for(var i=0;i<pages[p].length;i++){var o=named(pages[p][i]);if(o)o.hidden=(p!=selected);}}}
function setv(k,v){var o=named(k);if(o)o.message(v);}
function between(a,b){return a+Math.random()*(b-a);}
function signeddepth(){if(Math.random()>.42)return 0;var s=Math.random()<.5?-1:1;return s*between(.08,.68);}
function randomize(v){
 if(Number(v)<.5)return;
 setv("coupling",between(.18,.78));setv("modslew",Math.pow(10,between(-.3,2.6)));setv("drive",between(.7,2.4));
 var ranges={a:[20,220,22,36],b:[20,260,4.4,8],c:[15,190,13,18],d:[25,300,.17,.26]};
 for(var i=0;i<4;i++){
  var k="abcd".charAt(i),r=ranges[k];setv("rate"+k,Math.exp(between(Math.log(r[0]),Math.log(r[1]))));
  setv("shape"+k,between(r[2],r[3]));setv("level"+k,between(.35,.82));setv("pan"+k,between(-.9,.9));setv("axis"+k,Math.floor(Math.random()*3));
 }
 for(var s=0;s<4;s++)for(var d=0;d<4;d++)if(s!=d)setv("abcd".charAt(s)+"abcd".charAt(d),signeddepth());
 var ring=["ab","bc","cd","da"];for(var j=0;j<ring.length;j++)setv(ring[j],between(.12,.48)*(Math.random()<.25?-1:1));
 outlet(0,"reset",1);outlet(0,"reset",0);setv("randomize",0);
}
function bang(){var p=named("page");var v=p?p.getvalueof():0;page(v instanceof Array?v[0]:v);}
'''.replace("PAGE_DATA", json.dumps(PAGES))
(ROOT / "chaos_fm4_ui.js").write_text(ui)

# Standalone runtime fixture records stereo plus the four modulation signals.
tb, tl = [], []
def tbox(i, text, x, y, ni=1, no=1): tb.append({"box":{"id":i,"maxclass":"newobj","text":text,"patching_rect":[x,y,210,22],"numinlets":ni,"numoutlets":no}})
def tlink(a,ao,b,bi=0): tl.append({"patchline":{"source":[a,ao],"destination":[b,bi]}})
tbox("lb","loadbang",20,20); tbox("js","js runtime_test.js",20,60,1,3); tlink("lb",0,"js")
tbox("zero","sig~ 0.",280,110,1,1)
tbox("gen","gen~ chaos_fm4_engine @nocache 1",20,110,1,6); tlink("zero",0,"gen",0)
tbox("rec","sfrecord~ 6",20,180,6,1); [tlink("gen",i,"rec",i) for i in range(6)]
tbox("dac","ezdac~",280,180,2,0); tlink("gen",0,"dac",0); tlink("gen",1,"dac",1)
tlink("js",0,"rec",0); tlink("js",1,"gen",0); tlink("js",2,"dac",0)
tp={"fileversion":1,"appversion":APP,"classnamespace":"box","rect":[80,80,650,300],"boxes":tb,"lines":tl}
(ROOT/"Runtime_Test.maxpat").write_text(json.dumps({"patcher":tp},indent=2))

runtime = '''autowatch=1;inlets=1;outlets=3;var jobs=[];
function later(ms,fn){var t=new Task(fn,this);jobs.push(t);t.schedule(ms);}
function bang(){outlet(2,"startwindow");outlet(0,"samptype","int24");outlet(0,"open","RUNTIME_WAV");
later(400,function(){outlet(0,1);});
later(1400,function(){outlet(1,"fmmode",1);outlet(1,"fmfloor",3);outlet(1,"coupling",1);outlet(1,"ab",-1);outlet(1,"bc",.8);});
later(2800,function(){outlet(1,"axisa",1);outlet(1,"axisb",2);outlet(1,"drive",2);});
later(4200,function(){outlet(0,0);post("CHAOS FM4 TEST DONE\\n");});}
'''.replace("RUNTIME_WAV", str(VAL/"runtime.wav"))
(ROOT/"runtime_test.js").write_text(runtime)
print("Built Chaos_FM4.maxpat and chaos_fm4_engine.gendsp")
