{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 3,
      "architecture": "arm64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      40,
      80,
      1240,
      210
    ],
    "openinpresentation": 1,
    "devicewidth": 1240,
    "bgcolor": [
      0.045,
      0.055,
      0.075,
      1
    ],
    "editing_bgcolor": [
      0.12,
      0.14,
      0.18,
      1
    ],
    "default_fontname": "Arial",
    "default_fontsize": 11,
    "boxes": [
      {
        "box": {
          "id": "bg",
          "varname": "bg",
          "maxclass": "panel",
          "patching_rect": [
            0,
            0,
            1240,
            169
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            1240,
            169
          ],
          "bgcolor": [
            0.045,
            0.055,
            0.075,
            1
          ],
          "border": 0,
          "background": 1
        }
      },
      {
        "box": {
          "id": "brand",
          "varname": "brand",
          "maxclass": "comment",
          "patching_rect": [
            10,
            5,
            125,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            5,
            125,
            16
          ],
          "text": "CHAOS / FM4",
          "textcolor": [
            0.65,
            0.94,
            0.88,
            1
          ],
          "fontsize": 13
        }
      },
      {
        "box": {
          "id": "subtitle",
          "varname": "subtitle",
          "maxclass": "comment",
          "patching_rect": [
            10,
            22,
            155,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            22,
            155,
            16
          ],
          "text": "4 ATTRACTOR INSTRUMENT",
          "textcolor": [
            0.42,
            0.56,
            0.62,
            1
          ],
          "fontsize": 8
        }
      },
      {
        "box": {
          "id": "engine",
          "varname": "engine",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            240,
            200,
            22
          ],
          "text": "gen~ chaos_fm4_engine @nocache 1",
          "numinlets": 1,
          "numoutlets": 6
        }
      },
      {
        "box": {
          "id": "silence",
          "varname": "silence",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            267,
            200,
            22
          ],
          "text": "sig~ 0.",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "audioout",
          "varname": "audioout",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            294,
            200,
            22
          ],
          "text": "plugout~",
          "numinlets": 2,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "notes",
          "varname": "notes",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            321,
            200,
            22
          ],
          "text": "notein",
          "numinlets": 0,
          "numoutlets": 3
        }
      },
      {
        "box": {
          "id": "pitchmsg",
          "varname": "pitchmsg",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            348,
            200,
            22
          ],
          "text": "prepend midinote",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "velscale",
          "varname": "velscale",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            375,
            200,
            22
          ],
          "text": "/ 127.",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "gatemsg",
          "varname": "gatemsg",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            402,
            200,
            22
          ],
          "text": "prepend gate",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "controller",
          "varname": "controller",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            429,
            200,
            22
          ],
          "text": "js chaos_fm4_ui.js",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "init",
          "varname": "init",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            456,
            200,
            22
          ],
          "text": "loadbang",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "liveinit",
          "varname": "liveinit",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            483,
            200,
            22
          ],
          "text": "live.thisdevice",
          "numinlets": 1,
          "numoutlets": 3
        }
      },
      {
        "box": {
          "id": "state",
          "varname": "state",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            510,
            200,
            22
          ],
          "text": "autopattr @autorestore 1",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "banks",
          "varname": "banks",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            537,
            200,
            22
          ],
          "text": "live.banks",
          "numinlets": 1,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "meterL",
          "varname": "meterL",
          "maxclass": "live.meter~",
          "patching_rect": [
            280,
            139,
            35,
            8
          ],
          "presentation": 1,
          "presentation_rect": [
            280,
            139,
            35,
            8
          ]
        }
      },
      {
        "box": {
          "id": "meterR",
          "varname": "meterR",
          "maxclass": "live.meter~",
          "patching_rect": [
            280,
            150,
            35,
            8
          ],
          "presentation": 1,
          "presentation_rect": [
            280,
            150,
            35,
            8
          ]
        }
      },
      {
        "box": {
          "id": "run",
          "varname": "run",
          "maxclass": "live.toggle",
          "patching_rect": [
            10,
            44,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            44,
            20,
            20
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Run",
              "parameter_shortname": "Run",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 1,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.13,
            0.16,
            0.2,
            1
          ],
          "fontsize": 9,
          "activebgoncolor": [
            0.27,
            0.79,
            0.69,
            1
          ]
        }
      },
      {
        "box": {
          "id": "run_send",
          "varname": "run_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            564,
            200,
            22
          ],
          "text": "prepend run",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "runlab",
          "varname": "runlab",
          "maxclass": "comment",
          "patching_rect": [
            34,
            46,
            38,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            34,
            46,
            38,
            16
          ],
          "text": "RUN",
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "reset",
          "varname": "reset",
          "maxclass": "live.toggle",
          "patching_rect": [
            75,
            44,
            20,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            75,
            44,
            20,
            20
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Reset",
              "parameter_shortname": "Reset",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 1,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.13,
            0.16,
            0.2,
            1
          ],
          "fontsize": 9,
          "activebgoncolor": [
            0.27,
            0.79,
            0.69,
            1
          ]
        }
      },
      {
        "box": {
          "id": "reset_send",
          "varname": "reset_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            591,
            200,
            22
          ],
          "text": "prepend reset",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "resetlab",
          "varname": "resetlab",
          "maxclass": "comment",
          "patching_rect": [
            99,
            46,
            47,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            99,
            46,
            47,
            16
          ],
          "text": "RESET",
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "playmode",
          "varname": "playmode",
          "maxclass": "live.menu",
          "patching_rect": [
            10,
            72,
            136,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            72,
            136,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Play Mode",
              "parameter_shortname": "Play Mode",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "DRONE",
                "MIDI"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "playmode_send",
          "varname": "playmode_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            618,
            200,
            22
          ],
          "text": "prepend playmode",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "fmmode",
          "varname": "fmmode",
          "maxclass": "live.menu",
          "patching_rect": [
            165,
            72,
            150,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            165,
            72,
            150,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "FM Mode",
              "parameter_shortname": "FM Mode",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "EXPONENTIAL",
                "LINEAR"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "fmmode_send",
          "varname": "fmmode_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            645,
            200,
            22
          ],
          "text": "prepend fmmode",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "randomize",
          "varname": "randomize",
          "maxclass": "live.text",
          "patching_rect": [
            165,
            39,
            150,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            165,
            39,
            150,
            24
          ],
          "mode": 0,
          "text": "RANDOMIZE",
          "texton": "RANDOMIZE",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Randomize",
              "parameter_shortname": "Randomize",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_unitstyle": 9,
              "parameter_modmode": 0,
              "parameter_enum": [
                "Off",
                "Randomize"
              ]
            }
          },
          "bgcolor": [
            0.12,
            0.18,
            0.2,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "randomsend",
          "varname": "randomsend",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            672,
            200,
            22
          ],
          "text": "prepend randomize",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "coupling",
          "varname": "coupling",
          "maxclass": "live.dial",
          "patching_rect": [
            10,
            101,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            101,
            48,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "FM Amount",
              "parameter_shortname": "FM Amount",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.35
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "coupling_send",
          "varname": "coupling_send",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            699,
            200,
            22
          ],
          "text": "prepend coupling",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "modslew",
          "varname": "modslew",
          "maxclass": "live.dial",
          "patching_rect": [
            62,
            101,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            62,
            101,
            48,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "FM Bandwidth",
              "parameter_shortname": "FM Bandwidth",
              "parameter_mmin": 0.1,
              "parameter_mmax": 1000,
              "parameter_initial": [
                2
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 3,
              "parameter_units": "Hz"
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "modslew_send",
          "varname": "modslew_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            726,
            200,
            22
          ],
          "text": "prepend modslew",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "fmfloor",
          "varname": "fmfloor",
          "maxclass": "live.dial",
          "patching_rect": [
            114,
            101,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            114,
            101,
            48,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "FM Floor",
              "parameter_shortname": "FM Floor",
              "parameter_mmin": 0.1,
              "parameter_mmax": 50,
              "parameter_initial": [
                0.5
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 3,
              "parameter_units": "Hz"
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "fmfloor_send",
          "varname": "fmfloor_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            753,
            200,
            22
          ],
          "text": "prepend fmfloor",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "drive",
          "varname": "drive",
          "maxclass": "live.dial",
          "patching_rect": [
            166,
            101,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            166,
            101,
            48,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Drive",
              "parameter_shortname": "Drive",
              "parameter_mmin": 0.25,
              "parameter_mmax": 6,
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "drive_send",
          "varname": "drive_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            780,
            200,
            22
          ],
          "text": "prepend drive",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "output",
          "varname": "output",
          "maxclass": "live.dial",
          "patching_rect": [
            218,
            101,
            48,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            218,
            101,
            48,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Output",
              "parameter_shortname": "Output",
              "parameter_mmin": -60,
              "parameter_mmax": 0,
              "parameter_initial": [
                -18
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 4,
              "parameter_units": "dB"
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "output_send",
          "varname": "output_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            807,
            200,
            22
          ],
          "text": "prepend output",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "globalhelp",
          "varname": "globalhelp",
          "maxclass": "comment",
          "patching_rect": [
            10,
            151,
            265,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            10,
            151,
            265,
            16
          ],
          "text": "FM / BW / FLOOR / DRIVE / OUT",
          "textcolor": [
            0.42,
            0.56,
            0.62,
            1
          ],
          "fontsize": 8
        }
      },
      {
        "box": {
          "id": "page",
          "varname": "page",
          "maxclass": "live.menu",
          "patching_rect": [
            165,
            7,
            150,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            165,
            7,
            150,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Panel",
              "parameter_shortname": "Panel",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_unitstyle": 9,
              "parameter_modmode": 0,
              "parameter_enum": [
                "OSCILLATORS",
                "FM MATRIX"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "pagesend",
          "varname": "pagesend",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            834,
            200,
            22
          ],
          "text": "prepend page",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "title_a",
          "varname": "title_a",
          "maxclass": "comment",
          "patching_rect": [
            330,
            7,
            205,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            330,
            7,
            205,
            16
          ],
          "text": "A / LORENZ",
          "textcolor": [
            0.96,
            0.39,
            0.35,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "axisa",
          "varname": "axisa",
          "maxclass": "live.menu",
          "patching_rect": [
            442,
            7,
            94,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            442,
            7,
            94,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LORENZ Axis",
              "parameter_shortname": "LORENZ Axis",
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "X",
                "Y",
                "Z"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "axisa_send",
          "varname": "axisa_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            861,
            200,
            22
          ],
          "text": "prepend axisa",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ratea",
          "varname": "ratea",
          "maxclass": "live.dial",
          "patching_rect": [
            330,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            330,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LORENZ Rate",
              "parameter_shortname": "LORENZ Rate",
              "parameter_mmin": 1,
              "parameter_mmax": 350,
              "parameter_initial": [
                72
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "ratea_send",
          "varname": "ratea_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            888,
            200,
            22
          ],
          "text": "prepend ratea",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "shapea",
          "varname": "shapea",
          "maxclass": "live.dial",
          "patching_rect": [
            440,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            440,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LORENZ Shape",
              "parameter_shortname": "LORENZ Shape",
              "parameter_mmin": 20,
              "parameter_mmax": 38,
              "parameter_initial": [
                28
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "shapea_send",
          "varname": "shapea_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            915,
            200,
            22
          ],
          "text": "prepend shapea",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "levela",
          "varname": "levela",
          "maxclass": "live.dial",
          "patching_rect": [
            330,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            330,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LORENZ Level",
              "parameter_shortname": "LORENZ Level",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.7
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "levela_send",
          "varname": "levela_send",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            942,
            200,
            22
          ],
          "text": "prepend levela",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "pana",
          "varname": "pana",
          "maxclass": "live.dial",
          "patching_rect": [
            440,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            440,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "LORENZ Pan",
              "parameter_shortname": "LORENZ Pan",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                -0.65
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "pana_send",
          "varname": "pana_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            969,
            200,
            22
          ],
          "text": "prepend pana",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "title_b",
          "varname": "title_b",
          "maxclass": "comment",
          "patching_rect": [
            555,
            7,
            205,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            555,
            7,
            205,
            16
          ],
          "text": "B / ROSSLER",
          "textcolor": [
            0.98,
            0.7,
            0.25,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "axisb",
          "varname": "axisb",
          "maxclass": "live.menu",
          "patching_rect": [
            667,
            7,
            94,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            667,
            7,
            94,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "ROSSLER Axis",
              "parameter_shortname": "ROSSLER Axis",
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "X",
                "Y",
                "Z"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "axisb_send",
          "varname": "axisb_send",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            996,
            200,
            22
          ],
          "text": "prepend axisb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "rateb",
          "varname": "rateb",
          "maxclass": "live.dial",
          "patching_rect": [
            555,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            555,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "ROSSLER Rate",
              "parameter_shortname": "ROSSLER Rate",
              "parameter_mmin": 1,
              "parameter_mmax": 350,
              "parameter_initial": [
                96
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "rateb_send",
          "varname": "rateb_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            1023,
            200,
            22
          ],
          "text": "prepend rateb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "shapeb",
          "varname": "shapeb",
          "maxclass": "live.dial",
          "patching_rect": [
            665,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "ROSSLER Shape",
              "parameter_shortname": "ROSSLER Shape",
              "parameter_mmin": 4,
              "parameter_mmax": 9,
              "parameter_initial": [
                5.7
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "shapeb_send",
          "varname": "shapeb_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1050,
            200,
            22
          ],
          "text": "prepend shapeb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "levelb",
          "varname": "levelb",
          "maxclass": "live.dial",
          "patching_rect": [
            555,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            555,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "ROSSLER Level",
              "parameter_shortname": "ROSSLER Level",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.6
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "levelb_send",
          "varname": "levelb_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1077,
            200,
            22
          ],
          "text": "prepend levelb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "panb",
          "varname": "panb",
          "maxclass": "live.dial",
          "patching_rect": [
            665,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            665,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "ROSSLER Pan",
              "parameter_shortname": "ROSSLER Pan",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                -0.2
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "panb_send",
          "varname": "panb_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            1104,
            200,
            22
          ],
          "text": "prepend panb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "title_c",
          "varname": "title_c",
          "maxclass": "comment",
          "patching_rect": [
            780,
            7,
            205,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            780,
            7,
            205,
            16
          ],
          "text": "C / CHUA",
          "textcolor": [
            0.29,
            0.78,
            0.69,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "axisc",
          "varname": "axisc",
          "maxclass": "live.menu",
          "patching_rect": [
            892,
            7,
            94,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            892,
            7,
            94,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "CHUA Axis",
              "parameter_shortname": "CHUA Axis",
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "X",
                "Y",
                "Z"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "axisc_send",
          "varname": "axisc_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1131,
            200,
            22
          ],
          "text": "prepend axisc",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ratec",
          "varname": "ratec",
          "maxclass": "live.dial",
          "patching_rect": [
            780,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            780,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "CHUA Rate",
              "parameter_shortname": "CHUA Rate",
              "parameter_mmin": 1,
              "parameter_mmax": 350,
              "parameter_initial": [
                55
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "ratec_send",
          "varname": "ratec_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            1158,
            200,
            22
          ],
          "text": "prepend ratec",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "shapec",
          "varname": "shapec",
          "maxclass": "live.dial",
          "patching_rect": [
            890,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            890,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "CHUA Shape",
              "parameter_shortname": "CHUA Shape",
              "parameter_mmin": 12,
              "parameter_mmax": 19,
              "parameter_initial": [
                15.6
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "shapec_send",
          "varname": "shapec_send",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            1185,
            200,
            22
          ],
          "text": "prepend shapec",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "levelc",
          "varname": "levelc",
          "maxclass": "live.dial",
          "patching_rect": [
            780,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            780,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "CHUA Level",
              "parameter_shortname": "CHUA Level",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.55
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "levelc_send",
          "varname": "levelc_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            1212,
            200,
            22
          ],
          "text": "prepend levelc",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "panc",
          "varname": "panc",
          "maxclass": "live.dial",
          "patching_rect": [
            890,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            890,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "CHUA Pan",
              "parameter_shortname": "CHUA Pan",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.2
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "panc_send",
          "varname": "panc_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1239,
            200,
            22
          ],
          "text": "prepend panc",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "title_d",
          "varname": "title_d",
          "maxclass": "comment",
          "patching_rect": [
            1005,
            7,
            205,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            1005,
            7,
            205,
            16
          ],
          "text": "D / THOMAS",
          "textcolor": [
            0.45,
            0.61,
            0.96,
            1
          ],
          "fontsize": 11
        }
      },
      {
        "box": {
          "id": "axisd",
          "varname": "axisd",
          "maxclass": "live.menu",
          "patching_rect": [
            1117,
            7,
            94,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            1117,
            7,
            94,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "THOMAS Axis",
              "parameter_shortname": "THOMAS Axis",
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_enum": [
                "X",
                "Y",
                "Z"
              ]
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "axisd_send",
          "varname": "axisd_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            1266,
            200,
            22
          ],
          "text": "prepend axisd",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "rated",
          "varname": "rated",
          "maxclass": "live.dial",
          "patching_rect": [
            1005,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1005,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "THOMAS Rate",
              "parameter_shortname": "THOMAS Rate",
              "parameter_mmin": 1,
              "parameter_mmax": 350,
              "parameter_initial": [
                120
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "rated_send",
          "varname": "rated_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1293,
            200,
            22
          ],
          "text": "prepend rated",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "shaped",
          "varname": "shaped",
          "maxclass": "live.dial",
          "patching_rect": [
            1115,
            35,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1115,
            35,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "THOMAS Shape",
              "parameter_shortname": "THOMAS Shape",
              "parameter_mmin": 0.15,
              "parameter_mmax": 0.28,
              "parameter_initial": [
                0.208
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "shaped_send",
          "varname": "shaped_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1320,
            200,
            22
          ],
          "text": "prepend shaped",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "leveld",
          "varname": "leveld",
          "maxclass": "live.dial",
          "patching_rect": [
            1005,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1005,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "THOMAS Level",
              "parameter_shortname": "THOMAS Level",
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.55
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "leveld_send",
          "varname": "leveld_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            1347,
            200,
            22
          ],
          "text": "prepend leveld",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "pand",
          "varname": "pand",
          "maxclass": "live.dial",
          "patching_rect": [
            1115,
            99,
            96,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1115,
            99,
            96,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "THOMAS Pan",
              "parameter_shortname": "THOMAS Pan",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.65
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "pand_send",
          "varname": "pand_send",
          "maxclass": "newobj",
          "patching_rect": [
            25,
            1374,
            200,
            22
          ],
          "text": "prepend pand",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "matrixhelp",
          "varname": "matrixhelp",
          "maxclass": "comment",
          "patching_rect": [
            335,
            7,
            560,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            335,
            7,
            560,
            16
          ],
          "text": "ROWS = SOURCE     COLUMNS = DESTINATION     bipolar depth",
          "textcolor": [
            0.55,
            0.68,
            0.72,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "col_a",
          "varname": "col_a",
          "maxclass": "comment",
          "patching_rect": [
            430,
            30,
            90,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            430,
            30,
            90,
            16
          ],
          "text": "TO A",
          "textcolor": [
            0.96,
            0.39,
            0.35,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "col_b",
          "varname": "col_b",
          "maxclass": "comment",
          "patching_rect": [
            575,
            30,
            90,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            575,
            30,
            90,
            16
          ],
          "text": "TO B",
          "textcolor": [
            0.98,
            0.7,
            0.25,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "col_c",
          "varname": "col_c",
          "maxclass": "comment",
          "patching_rect": [
            720,
            30,
            90,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            720,
            30,
            90,
            16
          ],
          "text": "TO C",
          "textcolor": [
            0.29,
            0.78,
            0.69,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "col_d",
          "varname": "col_d",
          "maxclass": "comment",
          "patching_rect": [
            865,
            30,
            90,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            865,
            30,
            90,
            16
          ],
          "text": "TO D",
          "textcolor": [
            0.45,
            0.61,
            0.96,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "row_a",
          "varname": "row_a",
          "maxclass": "comment",
          "patching_rect": [
            335,
            56,
            75,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            335,
            56,
            75,
            16
          ],
          "text": "FROM A",
          "textcolor": [
            0.96,
            0.39,
            0.35,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "self_a",
          "varname": "self_a",
          "maxclass": "comment",
          "patching_rect": [
            454,
            52,
            30,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            454,
            52,
            30,
            16
          ],
          "text": "\u2014",
          "textcolor": [
            0.3,
            0.36,
            0.4,
            1
          ],
          "fontsize": 12,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ab",
          "varname": "ab",
          "maxclass": "live.numbox",
          "patching_rect": [
            575,
            52,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            575,
            52,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "A to B",
              "parameter_shortname": "A to B",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ab_send",
          "varname": "ab_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1401,
            200,
            22
          ],
          "text": "prepend ab",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ac",
          "varname": "ac",
          "maxclass": "live.numbox",
          "patching_rect": [
            720,
            52,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            720,
            52,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "A to C",
              "parameter_shortname": "A to C",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ac_send",
          "varname": "ac_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1428,
            200,
            22
          ],
          "text": "prepend ac",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ad",
          "varname": "ad",
          "maxclass": "live.numbox",
          "patching_rect": [
            865,
            52,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            865,
            52,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "A to D",
              "parameter_shortname": "A to D",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.22
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ad_send",
          "varname": "ad_send",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            1455,
            200,
            22
          ],
          "text": "prepend ad",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "row_b",
          "varname": "row_b",
          "maxclass": "comment",
          "patching_rect": [
            335,
            85,
            75,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            335,
            85,
            75,
            16
          ],
          "text": "FROM B",
          "textcolor": [
            0.98,
            0.7,
            0.25,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ba",
          "varname": "ba",
          "maxclass": "live.numbox",
          "patching_rect": [
            430,
            81,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            430,
            81,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "B to A",
              "parameter_shortname": "B to A",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.18
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ba_send",
          "varname": "ba_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1482,
            200,
            22
          ],
          "text": "prepend ba",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "self_b",
          "varname": "self_b",
          "maxclass": "comment",
          "patching_rect": [
            599,
            81,
            30,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            599,
            81,
            30,
            16
          ],
          "text": "\u2014",
          "textcolor": [
            0.3,
            0.36,
            0.4,
            1
          ],
          "fontsize": 12,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "bc",
          "varname": "bc",
          "maxclass": "live.numbox",
          "patching_rect": [
            720,
            81,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            720,
            81,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "B to C",
              "parameter_shortname": "B to C",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "bc_send",
          "varname": "bc_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1509,
            200,
            22
          ],
          "text": "prepend bc",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "bd",
          "varname": "bd",
          "maxclass": "live.numbox",
          "patching_rect": [
            865,
            81,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            865,
            81,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "B to D",
              "parameter_shortname": "B to D",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "bd_send",
          "varname": "bd_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1536,
            200,
            22
          ],
          "text": "prepend bd",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "row_c",
          "varname": "row_c",
          "maxclass": "comment",
          "patching_rect": [
            335,
            114,
            75,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            335,
            114,
            75,
            16
          ],
          "text": "FROM C",
          "textcolor": [
            0.29,
            0.78,
            0.69,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ca",
          "varname": "ca",
          "maxclass": "live.numbox",
          "patching_rect": [
            430,
            110,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            430,
            110,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "C to A",
              "parameter_shortname": "C to A",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "ca_send",
          "varname": "ca_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1563,
            200,
            22
          ],
          "text": "prepend ca",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "cb",
          "varname": "cb",
          "maxclass": "live.numbox",
          "patching_rect": [
            575,
            110,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            575,
            110,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "C to B",
              "parameter_shortname": "C to B",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.18
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "cb_send",
          "varname": "cb_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1590,
            200,
            22
          ],
          "text": "prepend cb",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "self_c",
          "varname": "self_c",
          "maxclass": "comment",
          "patching_rect": [
            744,
            110,
            30,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            744,
            110,
            30,
            16
          ],
          "text": "\u2014",
          "textcolor": [
            0.3,
            0.36,
            0.4,
            1
          ],
          "fontsize": 12,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "cd",
          "varname": "cd",
          "maxclass": "live.numbox",
          "patching_rect": [
            865,
            110,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            865,
            110,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "C to D",
              "parameter_shortname": "C to D",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "cd_send",
          "varname": "cd_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1617,
            200,
            22
          ],
          "text": "prepend cd",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "row_d",
          "varname": "row_d",
          "maxclass": "comment",
          "patching_rect": [
            335,
            143,
            75,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            335,
            143,
            75,
            16
          ],
          "text": "FROM D",
          "textcolor": [
            0.45,
            0.61,
            0.96,
            1
          ],
          "fontsize": 10,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "da",
          "varname": "da",
          "maxclass": "live.numbox",
          "patching_rect": [
            430,
            139,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            430,
            139,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "D to A",
              "parameter_shortname": "D to A",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "da_send",
          "varname": "da_send",
          "maxclass": "newobj",
          "patching_rect": [
            455,
            1644,
            200,
            22
          ],
          "text": "prepend da",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "db",
          "varname": "db",
          "maxclass": "live.numbox",
          "patching_rect": [
            575,
            139,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            575,
            139,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "D to B",
              "parameter_shortname": "D to B",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "db_send",
          "varname": "db_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1671,
            200,
            22
          ],
          "text": "prepend db",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "dc",
          "varname": "dc",
          "maxclass": "live.numbox",
          "patching_rect": [
            720,
            139,
            105,
            19
          ],
          "presentation": 1,
          "presentation_rect": [
            720,
            139,
            105,
            19
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "D to C",
              "parameter_shortname": "D to C",
              "parameter_mmin": -1,
              "parameter_mmax": 1,
              "parameter_initial": [
                0.18
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "dc_send",
          "varname": "dc_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1698,
            200,
            22
          ],
          "text": "prepend dc",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "self_d",
          "varname": "self_d",
          "maxclass": "comment",
          "patching_rect": [
            889,
            139,
            30,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            889,
            139,
            30,
            16
          ],
          "text": "\u2014",
          "textcolor": [
            0.3,
            0.36,
            0.4,
            1
          ],
          "fontsize": 12,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "attack",
          "varname": "attack",
          "maxclass": "live.dial",
          "patching_rect": [
            1030,
            39,
            82,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1030,
            39,
            82,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Attack",
              "parameter_shortname": "Attack",
              "parameter_mmin": 1,
              "parameter_mmax": 2000,
              "parameter_initial": [
                10
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 2,
              "parameter_units": "ms"
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "attack_send",
          "varname": "attack_send",
          "maxclass": "newobj",
          "patching_rect": [
            885,
            1725,
            200,
            22
          ],
          "text": "prepend attack",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "release",
          "varname": "release",
          "maxclass": "live.dial",
          "patching_rect": [
            1135,
            39,
            82,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            1135,
            39,
            82,
            48
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Release",
              "parameter_shortname": "Release",
              "parameter_mmin": 5,
              "parameter_mmax": 5000,
              "parameter_initial": [
                250
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 2,
              "parameter_type": 0,
              "parameter_unitstyle": 2,
              "parameter_units": "ms"
            }
          },
          "textcolor": [
            0.88,
            0.92,
            0.95,
            1
          ],
          "activebgcolor": [
            0.27,
            0.79,
            0.69,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "release_send",
          "varname": "release_send",
          "maxclass": "newobj",
          "patching_rect": [
            240,
            1752,
            200,
            22
          ],
          "text": "prepend release",
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "envhelp",
          "varname": "envhelp",
          "maxclass": "comment",
          "patching_rect": [
            1030,
            101,
            190,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            1030,
            101,
            190,
            16
          ],
          "text": "MIDI AR ENVELOPE",
          "textcolor": [
            0.55,
            0.68,
            0.72,
            1
          ],
          "fontsize": 9,
          "hidden": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "silence",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            0
          ],
          "destination": [
            "audioout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            1
          ],
          "destination": [
            "audioout",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "notes",
            0
          ],
          "destination": [
            "pitchmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pitchmsg",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "notes",
            1
          ],
          "destination": [
            "velscale",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velscale",
            0
          ],
          "destination": [
            "gatemsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gatemsg",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "controller",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "init",
            0
          ],
          "destination": [
            "controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "liveinit",
            0
          ],
          "destination": [
            "controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            0
          ],
          "destination": [
            "meterL",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "engine",
            1
          ],
          "destination": [
            "meterR",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "run",
            0
          ],
          "destination": [
            "run_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "run_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "reset",
            0
          ],
          "destination": [
            "reset_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "reset_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "playmode",
            0
          ],
          "destination": [
            "playmode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "playmode_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fmmode",
            0
          ],
          "destination": [
            "fmmode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fmmode_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomize",
            0
          ],
          "destination": [
            "randomsend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "randomsend",
            0
          ],
          "destination": [
            "controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "coupling",
            0
          ],
          "destination": [
            "coupling_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "coupling_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modslew",
            0
          ],
          "destination": [
            "modslew_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "modslew_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fmfloor",
            0
          ],
          "destination": [
            "fmfloor_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fmfloor_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "drive",
            0
          ],
          "destination": [
            "drive_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "drive_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "output",
            0
          ],
          "destination": [
            "output_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "output_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "page",
            0
          ],
          "destination": [
            "pagesend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pagesend",
            0
          ],
          "destination": [
            "controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisa",
            0
          ],
          "destination": [
            "axisa_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisa_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ratea",
            0
          ],
          "destination": [
            "ratea_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ratea_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapea",
            0
          ],
          "destination": [
            "shapea_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapea_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levela",
            0
          ],
          "destination": [
            "levela_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levela_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pana",
            0
          ],
          "destination": [
            "pana_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pana_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisb",
            0
          ],
          "destination": [
            "axisb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rateb",
            0
          ],
          "destination": [
            "rateb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rateb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapeb",
            0
          ],
          "destination": [
            "shapeb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapeb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelb",
            0
          ],
          "destination": [
            "levelb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panb",
            0
          ],
          "destination": [
            "panb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisc",
            0
          ],
          "destination": [
            "axisc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisc_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ratec",
            0
          ],
          "destination": [
            "ratec_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ratec_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapec",
            0
          ],
          "destination": [
            "shapec_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shapec_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelc",
            0
          ],
          "destination": [
            "levelc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "levelc_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panc",
            0
          ],
          "destination": [
            "panc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panc_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisd",
            0
          ],
          "destination": [
            "axisd_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "axisd_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rated",
            0
          ],
          "destination": [
            "rated_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rated_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shaped",
            0
          ],
          "destination": [
            "shaped_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shaped_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "leveld",
            0
          ],
          "destination": [
            "leveld_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "leveld_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pand",
            0
          ],
          "destination": [
            "pand_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pand_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ab",
            0
          ],
          "destination": [
            "ab_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ab_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ac",
            0
          ],
          "destination": [
            "ac_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ac_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ad",
            0
          ],
          "destination": [
            "ad_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ad_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ba",
            0
          ],
          "destination": [
            "ba_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ba_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc",
            0
          ],
          "destination": [
            "bc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bd",
            0
          ],
          "destination": [
            "bd_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bd_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ca",
            0
          ],
          "destination": [
            "ca_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "ca_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cb",
            0
          ],
          "destination": [
            "cb_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cb_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cd",
            0
          ],
          "destination": [
            "cd_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "cd_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "da",
            0
          ],
          "destination": [
            "da_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "da_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "db",
            0
          ],
          "destination": [
            "db_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "db_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dc",
            0
          ],
          "destination": [
            "dc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dc_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "attack",
            0
          ],
          "destination": [
            "attack_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "attack_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "release",
            0
          ],
          "destination": [
            "release_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "release_send",
            0
          ],
          "destination": [
            "engine",
            0
          ]
        }
      }
    ],
    "parameters": {
      "run": [
        "Run",
        "Run",
        0
      ],
      "reset": [
        "Reset",
        "Reset",
        0
      ],
      "playmode": [
        "Play Mode",
        "Play Mode",
        0
      ],
      "fmmode": [
        "FM Mode",
        "FM Mode",
        0
      ],
      "randomize": [
        "Randomize",
        "Randomize",
        0
      ],
      "coupling": [
        "FM Amount",
        "FM Amount",
        0
      ],
      "modslew": [
        "FM Bandwidth",
        "FM Bandwidth",
        0
      ],
      "fmfloor": [
        "FM Floor",
        "FM Floor",
        0
      ],
      "drive": [
        "Drive",
        "Drive",
        0
      ],
      "output": [
        "Output",
        "Output",
        0
      ],
      "page": [
        "Panel",
        "Panel",
        0
      ],
      "axisa": [
        "LORENZ Axis",
        "LORENZ Axis",
        0
      ],
      "ratea": [
        "LORENZ Rate",
        "LORENZ Rate",
        0
      ],
      "shapea": [
        "LORENZ Shape",
        "LORENZ Shape",
        0
      ],
      "levela": [
        "LORENZ Level",
        "LORENZ Level",
        0
      ],
      "pana": [
        "LORENZ Pan",
        "LORENZ Pan",
        0
      ],
      "axisb": [
        "ROSSLER Axis",
        "ROSSLER Axis",
        0
      ],
      "rateb": [
        "ROSSLER Rate",
        "ROSSLER Rate",
        0
      ],
      "shapeb": [
        "ROSSLER Shape",
        "ROSSLER Shape",
        0
      ],
      "levelb": [
        "ROSSLER Level",
        "ROSSLER Level",
        0
      ],
      "panb": [
        "ROSSLER Pan",
        "ROSSLER Pan",
        0
      ],
      "axisc": [
        "CHUA Axis",
        "CHUA Axis",
        0
      ],
      "ratec": [
        "CHUA Rate",
        "CHUA Rate",
        0
      ],
      "shapec": [
        "CHUA Shape",
        "CHUA Shape",
        0
      ],
      "levelc": [
        "CHUA Level",
        "CHUA Level",
        0
      ],
      "panc": [
        "CHUA Pan",
        "CHUA Pan",
        0
      ],
      "axisd": [
        "THOMAS Axis",
        "THOMAS Axis",
        0
      ],
      "rated": [
        "THOMAS Rate",
        "THOMAS Rate",
        0
      ],
      "shaped": [
        "THOMAS Shape",
        "THOMAS Shape",
        0
      ],
      "leveld": [
        "THOMAS Level",
        "THOMAS Level",
        0
      ],
      "pand": [
        "THOMAS Pan",
        "THOMAS Pan",
        0
      ],
      "ab": [
        "A to B",
        "A to B",
        0
      ],
      "ac": [
        "A to C",
        "A to C",
        0
      ],
      "ad": [
        "A to D",
        "A to D",
        0
      ],
      "ba": [
        "B to A",
        "B to A",
        0
      ],
      "bc": [
        "B to C",
        "B to C",
        0
      ],
      "bd": [
        "B to D",
        "B to D",
        0
      ],
      "ca": [
        "C to A",
        "C to A",
        0
      ],
      "cb": [
        "C to B",
        "C to B",
        0
      ],
      "cd": [
        "C to D",
        "C to D",
        0
      ],
      "da": [
        "D to A",
        "D to A",
        0
      ],
      "db": [
        "D to B",
        "D to B",
        0
      ],
      "dc": [
        "D to C",
        "D to C",
        0
      ],
      "attack": [
        "Attack",
        "Attack",
        0
      ],
      "release": [
        "Release",
        "Release",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "Global",
          "parameters": [
            "run",
            "playmode",
            "fmmode",
            "coupling",
            "modslew",
            "fmfloor",
            "drive",
            "output"
          ]
        },
        "1": {
          "index": 1,
          "name": "Osc A/B",
          "parameters": [
            "ratea",
            "shapea",
            "levela",
            "pana",
            "rateb",
            "shapeb",
            "levelb",
            "panb"
          ]
        },
        "2": {
          "index": 2,
          "name": "Osc C/D",
          "parameters": [
            "ratec",
            "shapec",
            "levelc",
            "panc",
            "rated",
            "shaped",
            "leveld",
            "pand"
          ]
        },
        "3": {
          "index": 3,
          "name": "FM Ring",
          "parameters": [
            "ab",
            "ba",
            "bc",
            "cb",
            "cd",
            "dc",
            "da",
            "ad"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "chaos_fm4_engine.gendsp",
        "type": "gDSP",
        "implicit": 1
      },
      {
        "name": "chaos_fm4_ui.js",
        "type": "TEXT",
        "implicit": 1
      }
    ]
  }
}