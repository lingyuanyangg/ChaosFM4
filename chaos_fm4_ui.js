autowatch=1; inlets=1; outlets=1;
var pages={"0": ["title_a", "axisa", "ratea", "shapea", "levela", "pana", "title_b", "axisb", "rateb", "shapeb", "levelb", "panb", "title_c", "axisc", "ratec", "shapec", "levelc", "panc", "title_d", "axisd", "rated", "shaped", "leveld", "pand"], "1": ["matrixhelp", "col_a", "col_b", "col_c", "col_d", "row_a", "self_a", "ab", "ac", "ad", "row_b", "ba", "self_b", "bc", "bd", "row_c", "ca", "cb", "self_c", "cd", "row_d", "da", "db", "dc", "self_d", "attack", "release", "envhelp"]};
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
