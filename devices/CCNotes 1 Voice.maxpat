{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 10,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      1200,
      169
    ],
    "devicewidth": 1200,
    "openinpresentation": 1,
    "bgcolor": [
      0.12,
      0.13,
      0.15,
      1
    ],
    "boxes": [
      {
        "box": {
          "id": "engine",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            300,
            220,
            22
          ],
          "text": "js gesture_device.js main 1"
        }
      },
      {
        "box": {
          "id": "midi",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            326,
            220,
            22
          ],
          "text": "midiin"
        }
      },
      {
        "box": {
          "id": "output",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            352,
            220,
            22
          ],
          "text": "midiout"
        }
      },
      {
        "box": {
          "id": "bus",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            378,
            220,
            22
          ],
          "text": "r continuous_cc_notes_gate_v1"
        }
      },
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            404,
            220,
            22
          ],
          "text": "CCNOTES \u00b7 1 VOICE",
          "presentation": 1,
          "presentation_rect": [
            10,
            6,
            290,
            24
          ],
          "fontsize": 16,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ]
        }
      },
      {
        "box": {
          "id": "group_label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            430,
            220,
            22
          ],
          "text": "Group",
          "presentation": 1,
          "presentation_rect": [
            305,
            10,
            40,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ]
        }
      },
      {
        "box": {
          "id": "group",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            456,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            348,
            7,
            50,
            20
          ],
          "varname": "group",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Group",
              "parameter_shortname": "Group",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 64,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "Group"
        }
      },
      {
        "box": {
          "id": "group_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            482,
            220,
            22
          ],
          "text": "prepend groupid"
        }
      },
      {
        "box": {
          "id": "panic",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            508,
            220,
            22
          ],
          "text": "PANIC",
          "presentation": 1,
          "presentation_rect": [
            410,
            7,
            70,
            22
          ],
          "mode": 0
        }
      },
      {
        "box": {
          "id": "panicbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            534,
            220,
            22
          ],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "panicmessage",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            560,
            220,
            22
          ],
          "text": "panic"
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            586,
            220,
            22
          ],
          "text": "Initializing",
          "presentation": 1,
          "presentation_rect": [
            10,
            146,
            1150,
            19
          ],
          "varname": "status",
          "ignoreclick": 1
        }
      },
      {
        "box": {
          "id": "page",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            612,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            495,
            7,
            140,
            22
          ],
          "varname": "page",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Controls",
              "parameter_shortname": "Controls",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Pitch / Routing",
                "Articulation",
                "Calibration"
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "Controls",
          "items": [
            "Pitch / Routing",
            "Articulation",
            "Calibration"
          ]
        }
      },
      {
        "box": {
          "id": "page_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            638,
            220,
            22
          ],
          "text": "prepend page"
        }
      },
      {
        "box": {
          "id": "localOutput",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            664,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            655,
            7,
            125,
            22
          ],
          "varname": "localOutput",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Local output",
              "parameter_shortname": "Local output",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_enum": [
                "Receivers only",
                "Local + receivers"
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "Local output",
          "items": [
            "Receivers only",
            "Local + receivers"
          ]
        }
      },
      {
        "box": {
          "id": "localOutput_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            690,
            220,
            22
          ],
          "text": "prepend outputmode"
        }
      },
      {
        "box": {
          "id": "label_pitch_0",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            716,
            220,
            22
          ],
          "text": "On",
          "presentation": 1,
          "presentation_rect": [
            40,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            742,
            220,
            22
          ],
          "text": "Pitch CC",
          "presentation": 1,
          "presentation_rect": [
            124,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            768,
            220,
            22
          ],
          "text": "Pitch Ch",
          "presentation": 1,
          "presentation_rect": [
            208,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            794,
            220,
            22
          ],
          "text": "Low note",
          "presentation": 1,
          "presentation_rect": [
            292,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            820,
            220,
            22
          ],
          "text": "High note",
          "presentation": 1,
          "presentation_rect": [
            376,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            846,
            220,
            22
          ],
          "text": "Transpose",
          "presentation": 1,
          "presentation_rect": [
            460,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            872,
            220,
            22
          ],
          "text": "Gate Ch",
          "presentation": 1,
          "presentation_rect": [
            544,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            898,
            220,
            22
          ],
          "text": "Gate note",
          "presentation": 1,
          "presentation_rect": [
            628,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            924,
            220,
            22
          ],
          "text": "Gate source",
          "presentation": 1,
          "presentation_rect": [
            712,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_pitch_9",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            950,
            220,
            22
          ],
          "text": "Output Ch",
          "presentation": 1,
          "presentation_rect": [
            796,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 0
        }
      },
      {
        "box": {
          "id": "label_articulation_0",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            976,
            220,
            22
          ],
          "text": "Articulation",
          "presentation": 1,
          "presentation_rect": [
            40,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1002,
            220,
            22
          ],
          "text": "Tracking",
          "presentation": 1,
          "presentation_rect": [
            124,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1028,
            220,
            22
          ],
          "text": "Velocity",
          "presentation": 1,
          "presentation_rect": [
            208,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1054,
            220,
            22
          ],
          "text": "Fixed vel",
          "presentation": 1,
          "presentation_rect": [
            292,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1080,
            220,
            22
          ],
          "text": "Length ms",
          "presentation": 1,
          "presentation_rect": [
            376,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1106,
            220,
            22
          ],
          "text": "Length unit",
          "presentation": 1,
          "presentation_rect": [
            460,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1132,
            220,
            22
          ],
          "text": "Division",
          "presentation": 1,
          "presentation_rect": [
            544,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_7",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1158,
            220,
            22
          ],
          "text": "Hysteresis",
          "presentation": 1,
          "presentation_rect": [
            628,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_articulation_8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1184,
            220,
            22
          ],
          "text": "Safety ms",
          "presentation": 1,
          "presentation_rect": [
            712,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_0",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1210,
            220,
            22
          ],
          "text": "Resolution",
          "presentation": 1,
          "presentation_rect": [
            40,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1236,
            220,
            22
          ],
          "text": "Input min",
          "presentation": 1,
          "presentation_rect": [
            124,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1262,
            220,
            22
          ],
          "text": "Input max",
          "presentation": 1,
          "presentation_rect": [
            208,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1288,
            220,
            22
          ],
          "text": "Direction",
          "presentation": 1,
          "presentation_rect": [
            292,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1314,
            220,
            22
          ],
          "text": "Fallback",
          "presentation": 1,
          "presentation_rect": [
            376,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "label_calibration_5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1340,
            220,
            22
          ],
          "text": "Pitch source",
          "presentation": 1,
          "presentation_rect": [
            460,
            35,
            82,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "diag_header",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1366,
            220,
            22
          ],
          "text": "CC input | continuous pitch | gate | sounding note",
          "presentation": 1,
          "presentation_rect": [
            886,
            35,
            300,
            16
          ],
          "fontsize": 10,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ]
        }
      },
      {
        "box": {
          "id": "voice1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            1392,
            220,
            22
          ],
          "text": "1",
          "presentation": 1,
          "presentation_rect": [
            13,
            55,
            24,
            18
          ],
          "fontsize": 12,
          "textcolor": [
            0.88,
            0.9,
            0.92,
            1
          ]
        }
      },
      {
        "box": {
          "id": "v1_enabled",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            1418,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            55,
            80,
            19
          ],
          "varname": "v1_enabled",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 On",
              "parameter_shortname": "V1 On",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_enum": [
                "Mute",
                "On"
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 On",
          "items": [
            "Mute",
            "On"
          ]
        }
      },
      {
        "box": {
          "id": "v1_enabled_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1444,
            220,
            22
          ],
          "text": "prepend setting 1 enabled"
        }
      },
      {
        "box": {
          "id": "v1_cc",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1470,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            55,
            80,
            19
          ],
          "varname": "v1_cc",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Pitch CC",
              "parameter_shortname": "V1 Pitch CC",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Pitch CC"
        }
      },
      {
        "box": {
          "id": "v1_cc_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1496,
            220,
            22
          ],
          "text": "prepend setting 1 cc"
        }
      },
      {
        "box": {
          "id": "v1_pitchChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1522,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            55,
            80,
            19
          ],
          "varname": "v1_pitchChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Pitch Ch",
              "parameter_shortname": "V1 Pitch Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Pitch Ch"
        }
      },
      {
        "box": {
          "id": "v1_pitchChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1548,
            220,
            22
          ],
          "text": "prepend setting 1 pitchChannel"
        }
      },
      {
        "box": {
          "id": "v1_low",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1574,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            55,
            80,
            19
          ],
          "varname": "v1_low",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Low note",
              "parameter_shortname": "V1 Low note",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                36
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Low note"
        }
      },
      {
        "box": {
          "id": "v1_low_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1600,
            220,
            22
          ],
          "text": "prepend setting 1 low"
        }
      },
      {
        "box": {
          "id": "v1_high",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1626,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            55,
            80,
            19
          ],
          "varname": "v1_high",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 High note",
              "parameter_shortname": "V1 High note",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                84
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 High note"
        }
      },
      {
        "box": {
          "id": "v1_high_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1652,
            220,
            22
          ],
          "text": "prepend setting 1 high"
        }
      },
      {
        "box": {
          "id": "v1_transpose",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1678,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            55,
            80,
            19
          ],
          "varname": "v1_transpose",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Transpose",
              "parameter_shortname": "V1 Transpose",
              "parameter_type": 1,
              "parameter_mmin": -127,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Transpose"
        }
      },
      {
        "box": {
          "id": "v1_transpose_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1704,
            220,
            22
          ],
          "text": "prepend setting 1 transpose"
        }
      },
      {
        "box": {
          "id": "v1_gateChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1730,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            55,
            80,
            19
          ],
          "varname": "v1_gateChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Gate Ch",
              "parameter_shortname": "V1 Gate Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Gate Ch"
        }
      },
      {
        "box": {
          "id": "v1_gateChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1756,
            220,
            22
          ],
          "text": "prepend setting 1 gateChannel"
        }
      },
      {
        "box": {
          "id": "v1_gateNote",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1782,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            55,
            80,
            19
          ],
          "varname": "v1_gateNote",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Gate note",
              "parameter_shortname": "V1 Gate note",
              "parameter_type": 1,
              "parameter_mmin": -1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                60
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Gate note"
        }
      },
      {
        "box": {
          "id": "v1_gateNote_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1808,
            220,
            22
          ],
          "text": "prepend setting 1 gateNote"
        }
      },
      {
        "box": {
          "id": "v1_gateSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            1834,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            55,
            80,
            19
          ],
          "varname": "v1_gateSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Gate source",
              "parameter_shortname": "V1 Gate source",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Local",
                "Sender"
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Gate source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v1_gateSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1860,
            220,
            22
          ],
          "text": "prepend setting 1 gateSource"
        }
      },
      {
        "box": {
          "id": "v1_outputChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            1886,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            796,
            55,
            80,
            19
          ],
          "varname": "v1_outputChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Output Ch",
              "parameter_shortname": "V1 Output Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Output Ch"
        }
      },
      {
        "box": {
          "id": "v1_outputChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1912,
            220,
            22
          ],
          "text": "prepend setting 1 outputChannel"
        }
      },
      {
        "box": {
          "id": "v1_articulation",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            1938,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            55,
            80,
            19
          ],
          "varname": "v1_articulation",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Articulation",
              "parameter_shortname": "V1 Articulation",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Gate",
                "Trigger"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Articulation",
          "items": [
            "Gate",
            "Trigger"
          ]
        }
      },
      {
        "box": {
          "id": "v1_articulation_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            1964,
            220,
            22
          ],
          "text": "prepend setting 1 articulation"
        }
      },
      {
        "box": {
          "id": "v1_tracking",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            1990,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            55,
            80,
            19
          ],
          "varname": "v1_tracking",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Tracking",
              "parameter_shortname": "V1 Tracking",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "S&H",
                "Continuous"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Tracking",
          "items": [
            "S&H",
            "Continuous"
          ]
        }
      },
      {
        "box": {
          "id": "v1_tracking_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2016,
            220,
            22
          ],
          "text": "prepend setting 1 tracking"
        }
      },
      {
        "box": {
          "id": "v1_velocityMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2042,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            55,
            80,
            19
          ],
          "varname": "v1_velocityMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Velocity",
              "parameter_shortname": "V1 Velocity",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_enum": [
                "Fixed",
                "Incoming"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Velocity",
          "items": [
            "Fixed",
            "Incoming"
          ]
        }
      },
      {
        "box": {
          "id": "v1_velocityMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2068,
            220,
            22
          ],
          "text": "prepend setting 1 velocityMode"
        }
      },
      {
        "box": {
          "id": "v1_velocity",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2094,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            55,
            80,
            19
          ],
          "varname": "v1_velocity",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Fixed vel",
              "parameter_shortname": "V1 Fixed vel",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                100
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Fixed vel"
        }
      },
      {
        "box": {
          "id": "v1_velocity_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2120,
            220,
            22
          ],
          "text": "prepend setting 1 velocity"
        }
      },
      {
        "box": {
          "id": "v1_lengthMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2146,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            55,
            80,
            19
          ],
          "varname": "v1_lengthMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Length ms",
              "parameter_shortname": "V1 Length ms",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 60000,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                150
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Length ms"
        }
      },
      {
        "box": {
          "id": "v1_lengthMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2172,
            220,
            22
          ],
          "text": "prepend setting 1 lengthMs"
        }
      },
      {
        "box": {
          "id": "v1_lengthMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2198,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            55,
            80,
            19
          ],
          "varname": "v1_lengthMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Length unit",
              "parameter_shortname": "V1 Length unit",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "ms",
                "Sync"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Length unit",
          "items": [
            "ms",
            "Sync"
          ]
        }
      },
      {
        "box": {
          "id": "v1_lengthMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2224,
            220,
            22
          ],
          "text": "prepend setting 1 lengthMode"
        }
      },
      {
        "box": {
          "id": "v1_division",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2250,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            55,
            80,
            19
          ],
          "varname": "v1_division",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Division",
              "parameter_shortname": "V1 Division",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 6,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                3
              ],
              "parameter_enum": [
                "1/1",
                "1/2",
                "1/4",
                "1/8",
                "1/16",
                "1/32",
                "1/64"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Division",
          "items": [
            "1/1",
            "1/2",
            "1/4",
            "1/8",
            "1/16",
            "1/32",
            "1/64"
          ]
        }
      },
      {
        "box": {
          "id": "v1_division_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2276,
            220,
            22
          ],
          "text": "prepend setting 1 division"
        }
      },
      {
        "box": {
          "id": "v1_hysteresis",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2302,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            55,
            80,
            19
          ],
          "varname": "v1_hysteresis",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Hysteresis",
              "parameter_shortname": "V1 Hysteresis",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 0.49,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0.12
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Hysteresis"
        }
      },
      {
        "box": {
          "id": "v1_hysteresis_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2328,
            220,
            22
          ],
          "text": "prepend setting 1 hysteresis"
        }
      },
      {
        "box": {
          "id": "v1_maxHoldMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2354,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            55,
            80,
            19
          ],
          "varname": "v1_maxHoldMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Safety ms",
              "parameter_shortname": "V1 Safety ms",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 600000,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                30000
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Safety ms"
        }
      },
      {
        "box": {
          "id": "v1_maxHoldMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2380,
            220,
            22
          ],
          "text": "prepend setting 1 maxHoldMs"
        }
      },
      {
        "box": {
          "id": "v1_bits",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2406,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            55,
            80,
            19
          ],
          "varname": "v1_bits",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Resolution",
              "parameter_shortname": "V1 Resolution",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "7 bit",
                "14 bit"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Resolution",
          "items": [
            "7 bit",
            "14 bit"
          ]
        }
      },
      {
        "box": {
          "id": "v1_bits_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2432,
            220,
            22
          ],
          "text": "prepend setting 1 bits"
        }
      },
      {
        "box": {
          "id": "v1_inputMin",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2458,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            55,
            80,
            19
          ],
          "varname": "v1_inputMin",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Input min",
              "parameter_shortname": "V1 Input min",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 16383,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Input min"
        }
      },
      {
        "box": {
          "id": "v1_inputMin_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2484,
            220,
            22
          ],
          "text": "prepend setting 1 inputMin"
        }
      },
      {
        "box": {
          "id": "v1_inputMax",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2510,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            55,
            80,
            19
          ],
          "varname": "v1_inputMax",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Input max",
              "parameter_shortname": "V1 Input max",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16383,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                127
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Input max"
        }
      },
      {
        "box": {
          "id": "v1_inputMax_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2536,
            220,
            22
          ],
          "text": "prepend setting 1 inputMax"
        }
      },
      {
        "box": {
          "id": "v1_invert",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2562,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            55,
            80,
            19
          ],
          "varname": "v1_invert",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Direction",
              "parameter_shortname": "V1 Direction",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Normal",
                "Invert"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Direction",
          "items": [
            "Normal",
            "Invert"
          ]
        }
      },
      {
        "box": {
          "id": "v1_invert_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2588,
            220,
            22
          ],
          "text": "prepend setting 1 invert"
        }
      },
      {
        "box": {
          "id": "v1_fallback",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2614,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            55,
            80,
            19
          ],
          "varname": "v1_fallback",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Fallback",
              "parameter_shortname": "V1 Fallback",
              "parameter_type": 1,
              "parameter_mmin": -1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                -1
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V1 Fallback"
        }
      },
      {
        "box": {
          "id": "v1_fallback_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2640,
            220,
            22
          ],
          "text": "prepend setting 1 fallback"
        }
      },
      {
        "box": {
          "id": "v1_pitchSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2666,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            55,
            80,
            19
          ],
          "varname": "v1_pitchSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V1 Pitch source",
              "parameter_shortname": "V1 Pitch source",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Local",
                "Sender"
              ]
            }
          },
          "hidden": 1,
          "outlettype": [
            "",
            "",
            ""
          ],
          "hint": "V1 Pitch source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v1_pitchSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2692,
            220,
            22
          ],
          "text": "prepend setting 1 pitchSource"
        }
      },
      {
        "box": {
          "id": "diagnostic1",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2718,
            220,
            22
          ],
          "text": "CC -- | p -- | gate 0 | note --",
          "presentation": 1,
          "presentation_rect": [
            886,
            55,
            300,
            19
          ],
          "varname": "diagnostic1",
          "ignoreclick": 1,
          "fontsize": 10
        }
      },
      {
        "box": {
          "id": "load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2744,
            220,
            22
          ],
          "text": "live.thisdevice",
          "outlettype": [
            "bang",
            "int",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "init",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2770,
            220,
            22
          ],
          "text": "init"
        }
      },
      {
        "box": {
          "id": "active",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2796,
            220,
            22
          ],
          "text": "prepend active"
        }
      },
      {
        "box": {
          "id": "path",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2822,
            220,
            22
          ],
          "text": "live.path live_set"
        }
      },
      {
        "box": {
          "id": "is_playing",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2848,
            220,
            22
          ],
          "text": "live.observer is_playing"
        }
      },
      {
        "box": {
          "id": "is_playing_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2874,
            220,
            22
          ],
          "text": "prepend playing"
        }
      },
      {
        "box": {
          "id": "tempo",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2900,
            220,
            22
          ],
          "text": "live.observer tempo"
        }
      },
      {
        "box": {
          "id": "tempo_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2926,
            220,
            22
          ],
          "text": "prepend tempo"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "midi",
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
            "output",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bus",
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
            "group",
            0
          ],
          "destination": [
            "group_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "group_send",
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
            "panic",
            0
          ],
          "destination": [
            "panicbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panicbang",
            0
          ],
          "destination": [
            "panicmessage",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "panicmessage",
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
            "page_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "page_send",
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
            "localOutput",
            0
          ],
          "destination": [
            "localOutput_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "localOutput_send",
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
            "v1_enabled",
            0
          ],
          "destination": [
            "v1_enabled_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_enabled_send",
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
            "v1_cc",
            0
          ],
          "destination": [
            "v1_cc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_cc_send",
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
            "v1_pitchChannel",
            0
          ],
          "destination": [
            "v1_pitchChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_pitchChannel_send",
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
            "v1_low",
            0
          ],
          "destination": [
            "v1_low_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_low_send",
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
            "v1_high",
            0
          ],
          "destination": [
            "v1_high_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_high_send",
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
            "v1_transpose",
            0
          ],
          "destination": [
            "v1_transpose_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_transpose_send",
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
            "v1_gateChannel",
            0
          ],
          "destination": [
            "v1_gateChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_gateChannel_send",
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
            "v1_gateNote",
            0
          ],
          "destination": [
            "v1_gateNote_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_gateNote_send",
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
            "v1_gateSource",
            0
          ],
          "destination": [
            "v1_gateSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_gateSource_send",
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
            "v1_outputChannel",
            0
          ],
          "destination": [
            "v1_outputChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_outputChannel_send",
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
            "v1_articulation",
            0
          ],
          "destination": [
            "v1_articulation_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_articulation_send",
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
            "v1_tracking",
            0
          ],
          "destination": [
            "v1_tracking_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_tracking_send",
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
            "v1_velocityMode",
            0
          ],
          "destination": [
            "v1_velocityMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_velocityMode_send",
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
            "v1_velocity",
            0
          ],
          "destination": [
            "v1_velocity_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_velocity_send",
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
            "v1_lengthMs",
            0
          ],
          "destination": [
            "v1_lengthMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_lengthMs_send",
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
            "v1_lengthMode",
            0
          ],
          "destination": [
            "v1_lengthMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_lengthMode_send",
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
            "v1_division",
            0
          ],
          "destination": [
            "v1_division_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_division_send",
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
            "v1_hysteresis",
            0
          ],
          "destination": [
            "v1_hysteresis_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_hysteresis_send",
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
            "v1_maxHoldMs",
            0
          ],
          "destination": [
            "v1_maxHoldMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_maxHoldMs_send",
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
            "v1_bits",
            0
          ],
          "destination": [
            "v1_bits_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_bits_send",
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
            "v1_inputMin",
            0
          ],
          "destination": [
            "v1_inputMin_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_inputMin_send",
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
            "v1_inputMax",
            0
          ],
          "destination": [
            "v1_inputMax_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_inputMax_send",
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
            "v1_invert",
            0
          ],
          "destination": [
            "v1_invert_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_invert_send",
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
            "v1_fallback",
            0
          ],
          "destination": [
            "v1_fallback_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_fallback_send",
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
            "v1_pitchSource",
            0
          ],
          "destination": [
            "v1_pitchSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v1_pitchSource_send",
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
            "load",
            0
          ],
          "destination": [
            "init",
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
            "engine",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "load",
            1
          ],
          "destination": [
            "active",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "active",
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
            "load",
            0
          ],
          "destination": [
            "path",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "path",
            1
          ],
          "destination": [
            "is_playing",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "is_playing",
            0
          ],
          "destination": [
            "is_playing_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "is_playing_send",
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
            "path",
            1
          ],
          "destination": [
            "tempo",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tempo",
            0
          ],
          "destination": [
            "tempo_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tempo_send",
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
      "group": [
        "Group",
        "Group",
        0
      ],
      "page": [
        "Controls",
        "Controls",
        0
      ],
      "localOutput": [
        "Local output",
        "Local output",
        0
      ],
      "v1_enabled": [
        "V1 On",
        "V1 On",
        0
      ],
      "v1_cc": [
        "V1 Pitch CC",
        "V1 Pitch CC",
        0
      ],
      "v1_pitchChannel": [
        "V1 Pitch Ch",
        "V1 Pitch Ch",
        0
      ],
      "v1_low": [
        "V1 Low note",
        "V1 Low note",
        0
      ],
      "v1_high": [
        "V1 High note",
        "V1 High note",
        0
      ],
      "v1_transpose": [
        "V1 Transpose",
        "V1 Transpose",
        0
      ],
      "v1_gateChannel": [
        "V1 Gate Ch",
        "V1 Gate Ch",
        0
      ],
      "v1_gateNote": [
        "V1 Gate note",
        "V1 Gate note",
        0
      ],
      "v1_gateSource": [
        "V1 Gate source",
        "V1 Gate source",
        0
      ],
      "v1_outputChannel": [
        "V1 Output Ch",
        "V1 Output Ch",
        0
      ],
      "v1_articulation": [
        "V1 Articulation",
        "V1 Articulation",
        0
      ],
      "v1_tracking": [
        "V1 Tracking",
        "V1 Tracking",
        0
      ],
      "v1_velocityMode": [
        "V1 Velocity",
        "V1 Velocity",
        0
      ],
      "v1_velocity": [
        "V1 Fixed vel",
        "V1 Fixed vel",
        0
      ],
      "v1_lengthMs": [
        "V1 Length ms",
        "V1 Length ms",
        0
      ],
      "v1_lengthMode": [
        "V1 Length unit",
        "V1 Length unit",
        0
      ],
      "v1_division": [
        "V1 Division",
        "V1 Division",
        0
      ],
      "v1_hysteresis": [
        "V1 Hysteresis",
        "V1 Hysteresis",
        0
      ],
      "v1_maxHoldMs": [
        "V1 Safety ms",
        "V1 Safety ms",
        0
      ],
      "v1_bits": [
        "V1 Resolution",
        "V1 Resolution",
        0
      ],
      "v1_inputMin": [
        "V1 Input min",
        "V1 Input min",
        0
      ],
      "v1_inputMax": [
        "V1 Input max",
        "V1 Input max",
        0
      ],
      "v1_invert": [
        "V1 Direction",
        "V1 Direction",
        0
      ],
      "v1_fallback": [
        "V1 Fallback",
        "V1 Fallback",
        0
      ],
      "v1_pitchSource": [
        "V1 Pitch source",
        "V1 Pitch source",
        0
      ]
    },
    "dependency_cache": [
      {
        "name": "gesture_core.js",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "gesture_device.js",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
