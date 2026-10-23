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
          "text": "js gesture_device.js main 4"
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
          "text": "CCNOTES \u00b7 4 VOICES",
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
          "id": "voice2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            2744,
            220,
            22
          ],
          "text": "2",
          "presentation": 1,
          "presentation_rect": [
            13,
            77,
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
          "id": "v2_enabled",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            2770,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            77,
            80,
            19
          ],
          "varname": "v2_enabled",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 On",
              "parameter_shortname": "V2 On",
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
          "hint": "V2 On",
          "items": [
            "Mute",
            "On"
          ]
        }
      },
      {
        "box": {
          "id": "v2_enabled_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2796,
            220,
            22
          ],
          "text": "prepend setting 2 enabled"
        }
      },
      {
        "box": {
          "id": "v2_cc",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2822,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            77,
            80,
            19
          ],
          "varname": "v2_cc",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Pitch CC",
              "parameter_shortname": "V2 Pitch CC",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                2
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V2 Pitch CC"
        }
      },
      {
        "box": {
          "id": "v2_cc_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2848,
            220,
            22
          ],
          "text": "prepend setting 2 cc"
        }
      },
      {
        "box": {
          "id": "v2_pitchChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2874,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            77,
            80,
            19
          ],
          "varname": "v2_pitchChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Pitch Ch",
              "parameter_shortname": "V2 Pitch Ch",
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
          "hint": "V2 Pitch Ch"
        }
      },
      {
        "box": {
          "id": "v2_pitchChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2900,
            220,
            22
          ],
          "text": "prepend setting 2 pitchChannel"
        }
      },
      {
        "box": {
          "id": "v2_low",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2926,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            77,
            80,
            19
          ],
          "varname": "v2_low",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Low note",
              "parameter_shortname": "V2 Low note",
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
          "hint": "V2 Low note"
        }
      },
      {
        "box": {
          "id": "v2_low_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            2952,
            220,
            22
          ],
          "text": "prepend setting 2 low"
        }
      },
      {
        "box": {
          "id": "v2_high",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            2978,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            77,
            80,
            19
          ],
          "varname": "v2_high",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 High note",
              "parameter_shortname": "V2 High note",
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
          "hint": "V2 High note"
        }
      },
      {
        "box": {
          "id": "v2_high_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3004,
            220,
            22
          ],
          "text": "prepend setting 2 high"
        }
      },
      {
        "box": {
          "id": "v2_transpose",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3030,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            77,
            80,
            19
          ],
          "varname": "v2_transpose",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Transpose",
              "parameter_shortname": "V2 Transpose",
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
          "hint": "V2 Transpose"
        }
      },
      {
        "box": {
          "id": "v2_transpose_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3056,
            220,
            22
          ],
          "text": "prepend setting 2 transpose"
        }
      },
      {
        "box": {
          "id": "v2_gateChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3082,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            77,
            80,
            19
          ],
          "varname": "v2_gateChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Gate Ch",
              "parameter_shortname": "V2 Gate Ch",
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
          "hint": "V2 Gate Ch"
        }
      },
      {
        "box": {
          "id": "v2_gateChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3108,
            220,
            22
          ],
          "text": "prepend setting 2 gateChannel"
        }
      },
      {
        "box": {
          "id": "v2_gateNote",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3134,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            77,
            80,
            19
          ],
          "varname": "v2_gateNote",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Gate note",
              "parameter_shortname": "V2 Gate note",
              "parameter_type": 1,
              "parameter_mmin": -1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                61
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V2 Gate note"
        }
      },
      {
        "box": {
          "id": "v2_gateNote_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3160,
            220,
            22
          ],
          "text": "prepend setting 2 gateNote"
        }
      },
      {
        "box": {
          "id": "v2_gateSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3186,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            77,
            80,
            19
          ],
          "varname": "v2_gateSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Gate source",
              "parameter_shortname": "V2 Gate source",
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
          "hint": "V2 Gate source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v2_gateSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3212,
            220,
            22
          ],
          "text": "prepend setting 2 gateSource"
        }
      },
      {
        "box": {
          "id": "v2_outputChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3238,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            796,
            77,
            80,
            19
          ],
          "varname": "v2_outputChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Output Ch",
              "parameter_shortname": "V2 Output Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                2
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V2 Output Ch"
        }
      },
      {
        "box": {
          "id": "v2_outputChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3264,
            220,
            22
          ],
          "text": "prepend setting 2 outputChannel"
        }
      },
      {
        "box": {
          "id": "v2_articulation",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3290,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            77,
            80,
            19
          ],
          "varname": "v2_articulation",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Articulation",
              "parameter_shortname": "V2 Articulation",
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
          "hint": "V2 Articulation",
          "items": [
            "Gate",
            "Trigger"
          ]
        }
      },
      {
        "box": {
          "id": "v2_articulation_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3316,
            220,
            22
          ],
          "text": "prepend setting 2 articulation"
        }
      },
      {
        "box": {
          "id": "v2_tracking",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3342,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            77,
            80,
            19
          ],
          "varname": "v2_tracking",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Tracking",
              "parameter_shortname": "V2 Tracking",
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
          "hint": "V2 Tracking",
          "items": [
            "S&H",
            "Continuous"
          ]
        }
      },
      {
        "box": {
          "id": "v2_tracking_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3368,
            220,
            22
          ],
          "text": "prepend setting 2 tracking"
        }
      },
      {
        "box": {
          "id": "v2_velocityMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3394,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            77,
            80,
            19
          ],
          "varname": "v2_velocityMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Velocity",
              "parameter_shortname": "V2 Velocity",
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
          "hint": "V2 Velocity",
          "items": [
            "Fixed",
            "Incoming"
          ]
        }
      },
      {
        "box": {
          "id": "v2_velocityMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3420,
            220,
            22
          ],
          "text": "prepend setting 2 velocityMode"
        }
      },
      {
        "box": {
          "id": "v2_velocity",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3446,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            77,
            80,
            19
          ],
          "varname": "v2_velocity",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Fixed vel",
              "parameter_shortname": "V2 Fixed vel",
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
          "hint": "V2 Fixed vel"
        }
      },
      {
        "box": {
          "id": "v2_velocity_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3472,
            220,
            22
          ],
          "text": "prepend setting 2 velocity"
        }
      },
      {
        "box": {
          "id": "v2_lengthMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3498,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            77,
            80,
            19
          ],
          "varname": "v2_lengthMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Length ms",
              "parameter_shortname": "V2 Length ms",
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
          "hint": "V2 Length ms"
        }
      },
      {
        "box": {
          "id": "v2_lengthMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3524,
            220,
            22
          ],
          "text": "prepend setting 2 lengthMs"
        }
      },
      {
        "box": {
          "id": "v2_lengthMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3550,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            77,
            80,
            19
          ],
          "varname": "v2_lengthMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Length unit",
              "parameter_shortname": "V2 Length unit",
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
          "hint": "V2 Length unit",
          "items": [
            "ms",
            "Sync"
          ]
        }
      },
      {
        "box": {
          "id": "v2_lengthMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3576,
            220,
            22
          ],
          "text": "prepend setting 2 lengthMode"
        }
      },
      {
        "box": {
          "id": "v2_division",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3602,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            77,
            80,
            19
          ],
          "varname": "v2_division",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Division",
              "parameter_shortname": "V2 Division",
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
          "hint": "V2 Division",
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
          "id": "v2_division_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3628,
            220,
            22
          ],
          "text": "prepend setting 2 division"
        }
      },
      {
        "box": {
          "id": "v2_hysteresis",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3654,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            77,
            80,
            19
          ],
          "varname": "v2_hysteresis",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Hysteresis",
              "parameter_shortname": "V2 Hysteresis",
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
          "hint": "V2 Hysteresis"
        }
      },
      {
        "box": {
          "id": "v2_hysteresis_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3680,
            220,
            22
          ],
          "text": "prepend setting 2 hysteresis"
        }
      },
      {
        "box": {
          "id": "v2_maxHoldMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3706,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            77,
            80,
            19
          ],
          "varname": "v2_maxHoldMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Safety ms",
              "parameter_shortname": "V2 Safety ms",
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
          "hint": "V2 Safety ms"
        }
      },
      {
        "box": {
          "id": "v2_maxHoldMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3732,
            220,
            22
          ],
          "text": "prepend setting 2 maxHoldMs"
        }
      },
      {
        "box": {
          "id": "v2_bits",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3758,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            77,
            80,
            19
          ],
          "varname": "v2_bits",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Resolution",
              "parameter_shortname": "V2 Resolution",
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
          "hint": "V2 Resolution",
          "items": [
            "7 bit",
            "14 bit"
          ]
        }
      },
      {
        "box": {
          "id": "v2_bits_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3784,
            220,
            22
          ],
          "text": "prepend setting 2 bits"
        }
      },
      {
        "box": {
          "id": "v2_inputMin",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3810,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            77,
            80,
            19
          ],
          "varname": "v2_inputMin",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Input min",
              "parameter_shortname": "V2 Input min",
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
          "hint": "V2 Input min"
        }
      },
      {
        "box": {
          "id": "v2_inputMin_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3836,
            220,
            22
          ],
          "text": "prepend setting 2 inputMin"
        }
      },
      {
        "box": {
          "id": "v2_inputMax",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3862,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            77,
            80,
            19
          ],
          "varname": "v2_inputMax",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Input max",
              "parameter_shortname": "V2 Input max",
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
          "hint": "V2 Input max"
        }
      },
      {
        "box": {
          "id": "v2_inputMax_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3888,
            220,
            22
          ],
          "text": "prepend setting 2 inputMax"
        }
      },
      {
        "box": {
          "id": "v2_invert",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            3914,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            77,
            80,
            19
          ],
          "varname": "v2_invert",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Direction",
              "parameter_shortname": "V2 Direction",
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
          "hint": "V2 Direction",
          "items": [
            "Normal",
            "Invert"
          ]
        }
      },
      {
        "box": {
          "id": "v2_invert_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3940,
            220,
            22
          ],
          "text": "prepend setting 2 invert"
        }
      },
      {
        "box": {
          "id": "v2_fallback",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            3966,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            77,
            80,
            19
          ],
          "varname": "v2_fallback",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Fallback",
              "parameter_shortname": "V2 Fallback",
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
          "hint": "V2 Fallback"
        }
      },
      {
        "box": {
          "id": "v2_fallback_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            3992,
            220,
            22
          ],
          "text": "prepend setting 2 fallback"
        }
      },
      {
        "box": {
          "id": "v2_pitchSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4018,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            77,
            80,
            19
          ],
          "varname": "v2_pitchSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V2 Pitch source",
              "parameter_shortname": "V2 Pitch source",
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
          "hint": "V2 Pitch source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v2_pitchSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4044,
            220,
            22
          ],
          "text": "prepend setting 2 pitchSource"
        }
      },
      {
        "box": {
          "id": "diagnostic2",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4070,
            220,
            22
          ],
          "text": "CC -- | p -- | gate 0 | note --",
          "presentation": 1,
          "presentation_rect": [
            886,
            77,
            300,
            19
          ],
          "varname": "diagnostic2",
          "ignoreclick": 1,
          "fontsize": 10
        }
      },
      {
        "box": {
          "id": "voice3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            4096,
            220,
            22
          ],
          "text": "3",
          "presentation": 1,
          "presentation_rect": [
            13,
            99,
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
          "id": "v3_enabled",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4122,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            99,
            80,
            19
          ],
          "varname": "v3_enabled",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 On",
              "parameter_shortname": "V3 On",
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
          "hint": "V3 On",
          "items": [
            "Mute",
            "On"
          ]
        }
      },
      {
        "box": {
          "id": "v3_enabled_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4148,
            220,
            22
          ],
          "text": "prepend setting 3 enabled"
        }
      },
      {
        "box": {
          "id": "v3_cc",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4174,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            99,
            80,
            19
          ],
          "varname": "v3_cc",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Pitch CC",
              "parameter_shortname": "V3 Pitch CC",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                3
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V3 Pitch CC"
        }
      },
      {
        "box": {
          "id": "v3_cc_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4200,
            220,
            22
          ],
          "text": "prepend setting 3 cc"
        }
      },
      {
        "box": {
          "id": "v3_pitchChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4226,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            99,
            80,
            19
          ],
          "varname": "v3_pitchChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Pitch Ch",
              "parameter_shortname": "V3 Pitch Ch",
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
          "hint": "V3 Pitch Ch"
        }
      },
      {
        "box": {
          "id": "v3_pitchChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4252,
            220,
            22
          ],
          "text": "prepend setting 3 pitchChannel"
        }
      },
      {
        "box": {
          "id": "v3_low",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4278,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            99,
            80,
            19
          ],
          "varname": "v3_low",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Low note",
              "parameter_shortname": "V3 Low note",
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
          "hint": "V3 Low note"
        }
      },
      {
        "box": {
          "id": "v3_low_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4304,
            220,
            22
          ],
          "text": "prepend setting 3 low"
        }
      },
      {
        "box": {
          "id": "v3_high",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4330,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            99,
            80,
            19
          ],
          "varname": "v3_high",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 High note",
              "parameter_shortname": "V3 High note",
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
          "hint": "V3 High note"
        }
      },
      {
        "box": {
          "id": "v3_high_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4356,
            220,
            22
          ],
          "text": "prepend setting 3 high"
        }
      },
      {
        "box": {
          "id": "v3_transpose",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4382,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            99,
            80,
            19
          ],
          "varname": "v3_transpose",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Transpose",
              "parameter_shortname": "V3 Transpose",
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
          "hint": "V3 Transpose"
        }
      },
      {
        "box": {
          "id": "v3_transpose_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4408,
            220,
            22
          ],
          "text": "prepend setting 3 transpose"
        }
      },
      {
        "box": {
          "id": "v3_gateChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4434,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            99,
            80,
            19
          ],
          "varname": "v3_gateChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Gate Ch",
              "parameter_shortname": "V3 Gate Ch",
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
          "hint": "V3 Gate Ch"
        }
      },
      {
        "box": {
          "id": "v3_gateChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4460,
            220,
            22
          ],
          "text": "prepend setting 3 gateChannel"
        }
      },
      {
        "box": {
          "id": "v3_gateNote",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4486,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            99,
            80,
            19
          ],
          "varname": "v3_gateNote",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Gate note",
              "parameter_shortname": "V3 Gate note",
              "parameter_type": 1,
              "parameter_mmin": -1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                62
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V3 Gate note"
        }
      },
      {
        "box": {
          "id": "v3_gateNote_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4512,
            220,
            22
          ],
          "text": "prepend setting 3 gateNote"
        }
      },
      {
        "box": {
          "id": "v3_gateSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4538,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            99,
            80,
            19
          ],
          "varname": "v3_gateSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Gate source",
              "parameter_shortname": "V3 Gate source",
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
          "hint": "V3 Gate source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v3_gateSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4564,
            220,
            22
          ],
          "text": "prepend setting 3 gateSource"
        }
      },
      {
        "box": {
          "id": "v3_outputChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4590,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            796,
            99,
            80,
            19
          ],
          "varname": "v3_outputChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Output Ch",
              "parameter_shortname": "V3 Output Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                3
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V3 Output Ch"
        }
      },
      {
        "box": {
          "id": "v3_outputChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4616,
            220,
            22
          ],
          "text": "prepend setting 3 outputChannel"
        }
      },
      {
        "box": {
          "id": "v3_articulation",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4642,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            99,
            80,
            19
          ],
          "varname": "v3_articulation",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Articulation",
              "parameter_shortname": "V3 Articulation",
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
          "hint": "V3 Articulation",
          "items": [
            "Gate",
            "Trigger"
          ]
        }
      },
      {
        "box": {
          "id": "v3_articulation_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4668,
            220,
            22
          ],
          "text": "prepend setting 3 articulation"
        }
      },
      {
        "box": {
          "id": "v3_tracking",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4694,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            99,
            80,
            19
          ],
          "varname": "v3_tracking",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Tracking",
              "parameter_shortname": "V3 Tracking",
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
          "hint": "V3 Tracking",
          "items": [
            "S&H",
            "Continuous"
          ]
        }
      },
      {
        "box": {
          "id": "v3_tracking_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4720,
            220,
            22
          ],
          "text": "prepend setting 3 tracking"
        }
      },
      {
        "box": {
          "id": "v3_velocityMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4746,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            99,
            80,
            19
          ],
          "varname": "v3_velocityMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Velocity",
              "parameter_shortname": "V3 Velocity",
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
          "hint": "V3 Velocity",
          "items": [
            "Fixed",
            "Incoming"
          ]
        }
      },
      {
        "box": {
          "id": "v3_velocityMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4772,
            220,
            22
          ],
          "text": "prepend setting 3 velocityMode"
        }
      },
      {
        "box": {
          "id": "v3_velocity",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4798,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            99,
            80,
            19
          ],
          "varname": "v3_velocity",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Fixed vel",
              "parameter_shortname": "V3 Fixed vel",
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
          "hint": "V3 Fixed vel"
        }
      },
      {
        "box": {
          "id": "v3_velocity_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4824,
            220,
            22
          ],
          "text": "prepend setting 3 velocity"
        }
      },
      {
        "box": {
          "id": "v3_lengthMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            4850,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            99,
            80,
            19
          ],
          "varname": "v3_lengthMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Length ms",
              "parameter_shortname": "V3 Length ms",
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
          "hint": "V3 Length ms"
        }
      },
      {
        "box": {
          "id": "v3_lengthMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4876,
            220,
            22
          ],
          "text": "prepend setting 3 lengthMs"
        }
      },
      {
        "box": {
          "id": "v3_lengthMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4902,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            99,
            80,
            19
          ],
          "varname": "v3_lengthMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Length unit",
              "parameter_shortname": "V3 Length unit",
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
          "hint": "V3 Length unit",
          "items": [
            "ms",
            "Sync"
          ]
        }
      },
      {
        "box": {
          "id": "v3_lengthMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4928,
            220,
            22
          ],
          "text": "prepend setting 3 lengthMode"
        }
      },
      {
        "box": {
          "id": "v3_division",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            4954,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            99,
            80,
            19
          ],
          "varname": "v3_division",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Division",
              "parameter_shortname": "V3 Division",
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
          "hint": "V3 Division",
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
          "id": "v3_division_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            4980,
            220,
            22
          ],
          "text": "prepend setting 3 division"
        }
      },
      {
        "box": {
          "id": "v3_hysteresis",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5006,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            99,
            80,
            19
          ],
          "varname": "v3_hysteresis",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Hysteresis",
              "parameter_shortname": "V3 Hysteresis",
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
          "hint": "V3 Hysteresis"
        }
      },
      {
        "box": {
          "id": "v3_hysteresis_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5032,
            220,
            22
          ],
          "text": "prepend setting 3 hysteresis"
        }
      },
      {
        "box": {
          "id": "v3_maxHoldMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5058,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            99,
            80,
            19
          ],
          "varname": "v3_maxHoldMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Safety ms",
              "parameter_shortname": "V3 Safety ms",
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
          "hint": "V3 Safety ms"
        }
      },
      {
        "box": {
          "id": "v3_maxHoldMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5084,
            220,
            22
          ],
          "text": "prepend setting 3 maxHoldMs"
        }
      },
      {
        "box": {
          "id": "v3_bits",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5110,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            99,
            80,
            19
          ],
          "varname": "v3_bits",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Resolution",
              "parameter_shortname": "V3 Resolution",
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
          "hint": "V3 Resolution",
          "items": [
            "7 bit",
            "14 bit"
          ]
        }
      },
      {
        "box": {
          "id": "v3_bits_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5136,
            220,
            22
          ],
          "text": "prepend setting 3 bits"
        }
      },
      {
        "box": {
          "id": "v3_inputMin",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5162,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            99,
            80,
            19
          ],
          "varname": "v3_inputMin",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Input min",
              "parameter_shortname": "V3 Input min",
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
          "hint": "V3 Input min"
        }
      },
      {
        "box": {
          "id": "v3_inputMin_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5188,
            220,
            22
          ],
          "text": "prepend setting 3 inputMin"
        }
      },
      {
        "box": {
          "id": "v3_inputMax",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5214,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            99,
            80,
            19
          ],
          "varname": "v3_inputMax",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Input max",
              "parameter_shortname": "V3 Input max",
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
          "hint": "V3 Input max"
        }
      },
      {
        "box": {
          "id": "v3_inputMax_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5240,
            220,
            22
          ],
          "text": "prepend setting 3 inputMax"
        }
      },
      {
        "box": {
          "id": "v3_invert",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5266,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            99,
            80,
            19
          ],
          "varname": "v3_invert",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Direction",
              "parameter_shortname": "V3 Direction",
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
          "hint": "V3 Direction",
          "items": [
            "Normal",
            "Invert"
          ]
        }
      },
      {
        "box": {
          "id": "v3_invert_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5292,
            220,
            22
          ],
          "text": "prepend setting 3 invert"
        }
      },
      {
        "box": {
          "id": "v3_fallback",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5318,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            99,
            80,
            19
          ],
          "varname": "v3_fallback",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Fallback",
              "parameter_shortname": "V3 Fallback",
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
          "hint": "V3 Fallback"
        }
      },
      {
        "box": {
          "id": "v3_fallback_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5344,
            220,
            22
          ],
          "text": "prepend setting 3 fallback"
        }
      },
      {
        "box": {
          "id": "v3_pitchSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5370,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            99,
            80,
            19
          ],
          "varname": "v3_pitchSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V3 Pitch source",
              "parameter_shortname": "V3 Pitch source",
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
          "hint": "V3 Pitch source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v3_pitchSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5396,
            220,
            22
          ],
          "text": "prepend setting 3 pitchSource"
        }
      },
      {
        "box": {
          "id": "diagnostic3",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5422,
            220,
            22
          ],
          "text": "CC -- | p -- | gate 0 | note --",
          "presentation": 1,
          "presentation_rect": [
            886,
            99,
            300,
            19
          ],
          "varname": "diagnostic3",
          "ignoreclick": 1,
          "fontsize": 10
        }
      },
      {
        "box": {
          "id": "voice4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            5448,
            220,
            22
          ],
          "text": "4",
          "presentation": 1,
          "presentation_rect": [
            13,
            121,
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
          "id": "v4_enabled",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5474,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            121,
            80,
            19
          ],
          "varname": "v4_enabled",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 On",
              "parameter_shortname": "V4 On",
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
          "hint": "V4 On",
          "items": [
            "Mute",
            "On"
          ]
        }
      },
      {
        "box": {
          "id": "v4_enabled_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5500,
            220,
            22
          ],
          "text": "prepend setting 4 enabled"
        }
      },
      {
        "box": {
          "id": "v4_cc",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5526,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            121,
            80,
            19
          ],
          "varname": "v4_cc",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Pitch CC",
              "parameter_shortname": "V4 Pitch CC",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V4 Pitch CC"
        }
      },
      {
        "box": {
          "id": "v4_cc_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5552,
            220,
            22
          ],
          "text": "prepend setting 4 cc"
        }
      },
      {
        "box": {
          "id": "v4_pitchChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5578,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            121,
            80,
            19
          ],
          "varname": "v4_pitchChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Pitch Ch",
              "parameter_shortname": "V4 Pitch Ch",
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
          "hint": "V4 Pitch Ch"
        }
      },
      {
        "box": {
          "id": "v4_pitchChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5604,
            220,
            22
          ],
          "text": "prepend setting 4 pitchChannel"
        }
      },
      {
        "box": {
          "id": "v4_low",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5630,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            121,
            80,
            19
          ],
          "varname": "v4_low",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Low note",
              "parameter_shortname": "V4 Low note",
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
          "hint": "V4 Low note"
        }
      },
      {
        "box": {
          "id": "v4_low_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5656,
            220,
            22
          ],
          "text": "prepend setting 4 low"
        }
      },
      {
        "box": {
          "id": "v4_high",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5682,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            121,
            80,
            19
          ],
          "varname": "v4_high",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 High note",
              "parameter_shortname": "V4 High note",
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
          "hint": "V4 High note"
        }
      },
      {
        "box": {
          "id": "v4_high_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5708,
            220,
            22
          ],
          "text": "prepend setting 4 high"
        }
      },
      {
        "box": {
          "id": "v4_transpose",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5734,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            121,
            80,
            19
          ],
          "varname": "v4_transpose",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Transpose",
              "parameter_shortname": "V4 Transpose",
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
          "hint": "V4 Transpose"
        }
      },
      {
        "box": {
          "id": "v4_transpose_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5760,
            220,
            22
          ],
          "text": "prepend setting 4 transpose"
        }
      },
      {
        "box": {
          "id": "v4_gateChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5786,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            121,
            80,
            19
          ],
          "varname": "v4_gateChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Gate Ch",
              "parameter_shortname": "V4 Gate Ch",
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
          "hint": "V4 Gate Ch"
        }
      },
      {
        "box": {
          "id": "v4_gateChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5812,
            220,
            22
          ],
          "text": "prepend setting 4 gateChannel"
        }
      },
      {
        "box": {
          "id": "v4_gateNote",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5838,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            121,
            80,
            19
          ],
          "varname": "v4_gateNote",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Gate note",
              "parameter_shortname": "V4 Gate note",
              "parameter_type": 1,
              "parameter_mmin": -1,
              "parameter_mmax": 127,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                63
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V4 Gate note"
        }
      },
      {
        "box": {
          "id": "v4_gateNote_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5864,
            220,
            22
          ],
          "text": "prepend setting 4 gateNote"
        }
      },
      {
        "box": {
          "id": "v4_gateSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5890,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            121,
            80,
            19
          ],
          "varname": "v4_gateSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Gate source",
              "parameter_shortname": "V4 Gate source",
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
          "hint": "V4 Gate source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v4_gateSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5916,
            220,
            22
          ],
          "text": "prepend setting 4 gateSource"
        }
      },
      {
        "box": {
          "id": "v4_outputChannel",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            5942,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            796,
            121,
            80,
            19
          ],
          "varname": "v4_outputChannel",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Output Ch",
              "parameter_shortname": "V4 Output Ch",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ]
            }
          },
          "hidden": 0,
          "outlettype": [
            "",
            ""
          ],
          "hint": "V4 Output Ch"
        }
      },
      {
        "box": {
          "id": "v4_outputChannel_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            5968,
            220,
            22
          ],
          "text": "prepend setting 4 outputChannel"
        }
      },
      {
        "box": {
          "id": "v4_articulation",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            5994,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            121,
            80,
            19
          ],
          "varname": "v4_articulation",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Articulation",
              "parameter_shortname": "V4 Articulation",
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
          "hint": "V4 Articulation",
          "items": [
            "Gate",
            "Trigger"
          ]
        }
      },
      {
        "box": {
          "id": "v4_articulation_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6020,
            220,
            22
          ],
          "text": "prepend setting 4 articulation"
        }
      },
      {
        "box": {
          "id": "v4_tracking",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6046,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            121,
            80,
            19
          ],
          "varname": "v4_tracking",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Tracking",
              "parameter_shortname": "V4 Tracking",
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
          "hint": "V4 Tracking",
          "items": [
            "S&H",
            "Continuous"
          ]
        }
      },
      {
        "box": {
          "id": "v4_tracking_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6072,
            220,
            22
          ],
          "text": "prepend setting 4 tracking"
        }
      },
      {
        "box": {
          "id": "v4_velocityMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6098,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            121,
            80,
            19
          ],
          "varname": "v4_velocityMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Velocity",
              "parameter_shortname": "V4 Velocity",
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
          "hint": "V4 Velocity",
          "items": [
            "Fixed",
            "Incoming"
          ]
        }
      },
      {
        "box": {
          "id": "v4_velocityMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6124,
            220,
            22
          ],
          "text": "prepend setting 4 velocityMode"
        }
      },
      {
        "box": {
          "id": "v4_velocity",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6150,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            121,
            80,
            19
          ],
          "varname": "v4_velocity",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Fixed vel",
              "parameter_shortname": "V4 Fixed vel",
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
          "hint": "V4 Fixed vel"
        }
      },
      {
        "box": {
          "id": "v4_velocity_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6176,
            220,
            22
          ],
          "text": "prepend setting 4 velocity"
        }
      },
      {
        "box": {
          "id": "v4_lengthMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6202,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            121,
            80,
            19
          ],
          "varname": "v4_lengthMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Length ms",
              "parameter_shortname": "V4 Length ms",
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
          "hint": "V4 Length ms"
        }
      },
      {
        "box": {
          "id": "v4_lengthMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6228,
            220,
            22
          ],
          "text": "prepend setting 4 lengthMs"
        }
      },
      {
        "box": {
          "id": "v4_lengthMode",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6254,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            121,
            80,
            19
          ],
          "varname": "v4_lengthMode",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Length unit",
              "parameter_shortname": "V4 Length unit",
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
          "hint": "V4 Length unit",
          "items": [
            "ms",
            "Sync"
          ]
        }
      },
      {
        "box": {
          "id": "v4_lengthMode_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6280,
            220,
            22
          ],
          "text": "prepend setting 4 lengthMode"
        }
      },
      {
        "box": {
          "id": "v4_division",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6306,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            544,
            121,
            80,
            19
          ],
          "varname": "v4_division",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Division",
              "parameter_shortname": "V4 Division",
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
          "hint": "V4 Division",
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
          "id": "v4_division_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6332,
            220,
            22
          ],
          "text": "prepend setting 4 division"
        }
      },
      {
        "box": {
          "id": "v4_hysteresis",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6358,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            121,
            80,
            19
          ],
          "varname": "v4_hysteresis",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Hysteresis",
              "parameter_shortname": "V4 Hysteresis",
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
          "hint": "V4 Hysteresis"
        }
      },
      {
        "box": {
          "id": "v4_hysteresis_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6384,
            220,
            22
          ],
          "text": "prepend setting 4 hysteresis"
        }
      },
      {
        "box": {
          "id": "v4_maxHoldMs",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6410,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            121,
            80,
            19
          ],
          "varname": "v4_maxHoldMs",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Safety ms",
              "parameter_shortname": "V4 Safety ms",
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
          "hint": "V4 Safety ms"
        }
      },
      {
        "box": {
          "id": "v4_maxHoldMs_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6436,
            220,
            22
          ],
          "text": "prepend setting 4 maxHoldMs"
        }
      },
      {
        "box": {
          "id": "v4_bits",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6462,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            40,
            121,
            80,
            19
          ],
          "varname": "v4_bits",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Resolution",
              "parameter_shortname": "V4 Resolution",
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
          "hint": "V4 Resolution",
          "items": [
            "7 bit",
            "14 bit"
          ]
        }
      },
      {
        "box": {
          "id": "v4_bits_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6488,
            220,
            22
          ],
          "text": "prepend setting 4 bits"
        }
      },
      {
        "box": {
          "id": "v4_inputMin",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6514,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            121,
            80,
            19
          ],
          "varname": "v4_inputMin",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Input min",
              "parameter_shortname": "V4 Input min",
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
          "hint": "V4 Input min"
        }
      },
      {
        "box": {
          "id": "v4_inputMin_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6540,
            220,
            22
          ],
          "text": "prepend setting 4 inputMin"
        }
      },
      {
        "box": {
          "id": "v4_inputMax",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6566,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            208,
            121,
            80,
            19
          ],
          "varname": "v4_inputMax",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Input max",
              "parameter_shortname": "V4 Input max",
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
          "hint": "V4 Input max"
        }
      },
      {
        "box": {
          "id": "v4_inputMax_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6592,
            220,
            22
          ],
          "text": "prepend setting 4 inputMax"
        }
      },
      {
        "box": {
          "id": "v4_invert",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6618,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            292,
            121,
            80,
            19
          ],
          "varname": "v4_invert",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Direction",
              "parameter_shortname": "V4 Direction",
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
          "hint": "V4 Direction",
          "items": [
            "Normal",
            "Invert"
          ]
        }
      },
      {
        "box": {
          "id": "v4_invert_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6644,
            220,
            22
          ],
          "text": "prepend setting 4 invert"
        }
      },
      {
        "box": {
          "id": "v4_fallback",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            6670,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            121,
            80,
            19
          ],
          "varname": "v4_fallback",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Fallback",
              "parameter_shortname": "V4 Fallback",
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
          "hint": "V4 Fallback"
        }
      },
      {
        "box": {
          "id": "v4_fallback_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6696,
            220,
            22
          ],
          "text": "prepend setting 4 fallback"
        }
      },
      {
        "box": {
          "id": "v4_pitchSource",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            6722,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            460,
            121,
            80,
            19
          ],
          "varname": "v4_pitchSource",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "V4 Pitch source",
              "parameter_shortname": "V4 Pitch source",
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
          "hint": "V4 Pitch source",
          "items": [
            "Local",
            "Sender"
          ]
        }
      },
      {
        "box": {
          "id": "v4_pitchSource_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6748,
            220,
            22
          ],
          "text": "prepend setting 4 pitchSource"
        }
      },
      {
        "box": {
          "id": "diagnostic4",
          "maxclass": "message",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            6774,
            220,
            22
          ],
          "text": "CC -- | p -- | gate 0 | note --",
          "presentation": 1,
          "presentation_rect": [
            886,
            121,
            300,
            19
          ],
          "varname": "diagnostic4",
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
            6800,
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
            6826,
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
            6852,
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
            6878,
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
            6904,
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
            6930,
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
            6956,
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
            6982,
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
            "v2_enabled",
            0
          ],
          "destination": [
            "v2_enabled_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_enabled_send",
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
            "v2_cc",
            0
          ],
          "destination": [
            "v2_cc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_cc_send",
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
            "v2_pitchChannel",
            0
          ],
          "destination": [
            "v2_pitchChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_pitchChannel_send",
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
            "v2_low",
            0
          ],
          "destination": [
            "v2_low_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_low_send",
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
            "v2_high",
            0
          ],
          "destination": [
            "v2_high_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_high_send",
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
            "v2_transpose",
            0
          ],
          "destination": [
            "v2_transpose_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_transpose_send",
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
            "v2_gateChannel",
            0
          ],
          "destination": [
            "v2_gateChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_gateChannel_send",
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
            "v2_gateNote",
            0
          ],
          "destination": [
            "v2_gateNote_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_gateNote_send",
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
            "v2_gateSource",
            0
          ],
          "destination": [
            "v2_gateSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_gateSource_send",
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
            "v2_outputChannel",
            0
          ],
          "destination": [
            "v2_outputChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_outputChannel_send",
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
            "v2_articulation",
            0
          ],
          "destination": [
            "v2_articulation_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_articulation_send",
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
            "v2_tracking",
            0
          ],
          "destination": [
            "v2_tracking_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_tracking_send",
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
            "v2_velocityMode",
            0
          ],
          "destination": [
            "v2_velocityMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_velocityMode_send",
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
            "v2_velocity",
            0
          ],
          "destination": [
            "v2_velocity_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_velocity_send",
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
            "v2_lengthMs",
            0
          ],
          "destination": [
            "v2_lengthMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_lengthMs_send",
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
            "v2_lengthMode",
            0
          ],
          "destination": [
            "v2_lengthMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_lengthMode_send",
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
            "v2_division",
            0
          ],
          "destination": [
            "v2_division_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_division_send",
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
            "v2_hysteresis",
            0
          ],
          "destination": [
            "v2_hysteresis_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_hysteresis_send",
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
            "v2_maxHoldMs",
            0
          ],
          "destination": [
            "v2_maxHoldMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_maxHoldMs_send",
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
            "v2_bits",
            0
          ],
          "destination": [
            "v2_bits_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_bits_send",
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
            "v2_inputMin",
            0
          ],
          "destination": [
            "v2_inputMin_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_inputMin_send",
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
            "v2_inputMax",
            0
          ],
          "destination": [
            "v2_inputMax_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_inputMax_send",
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
            "v2_invert",
            0
          ],
          "destination": [
            "v2_invert_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_invert_send",
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
            "v2_fallback",
            0
          ],
          "destination": [
            "v2_fallback_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_fallback_send",
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
            "v2_pitchSource",
            0
          ],
          "destination": [
            "v2_pitchSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v2_pitchSource_send",
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
            "v3_enabled",
            0
          ],
          "destination": [
            "v3_enabled_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_enabled_send",
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
            "v3_cc",
            0
          ],
          "destination": [
            "v3_cc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_cc_send",
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
            "v3_pitchChannel",
            0
          ],
          "destination": [
            "v3_pitchChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_pitchChannel_send",
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
            "v3_low",
            0
          ],
          "destination": [
            "v3_low_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_low_send",
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
            "v3_high",
            0
          ],
          "destination": [
            "v3_high_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_high_send",
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
            "v3_transpose",
            0
          ],
          "destination": [
            "v3_transpose_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_transpose_send",
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
            "v3_gateChannel",
            0
          ],
          "destination": [
            "v3_gateChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_gateChannel_send",
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
            "v3_gateNote",
            0
          ],
          "destination": [
            "v3_gateNote_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_gateNote_send",
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
            "v3_gateSource",
            0
          ],
          "destination": [
            "v3_gateSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_gateSource_send",
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
            "v3_outputChannel",
            0
          ],
          "destination": [
            "v3_outputChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_outputChannel_send",
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
            "v3_articulation",
            0
          ],
          "destination": [
            "v3_articulation_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_articulation_send",
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
            "v3_tracking",
            0
          ],
          "destination": [
            "v3_tracking_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_tracking_send",
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
            "v3_velocityMode",
            0
          ],
          "destination": [
            "v3_velocityMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_velocityMode_send",
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
            "v3_velocity",
            0
          ],
          "destination": [
            "v3_velocity_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_velocity_send",
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
            "v3_lengthMs",
            0
          ],
          "destination": [
            "v3_lengthMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_lengthMs_send",
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
            "v3_lengthMode",
            0
          ],
          "destination": [
            "v3_lengthMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_lengthMode_send",
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
            "v3_division",
            0
          ],
          "destination": [
            "v3_division_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_division_send",
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
            "v3_hysteresis",
            0
          ],
          "destination": [
            "v3_hysteresis_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_hysteresis_send",
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
            "v3_maxHoldMs",
            0
          ],
          "destination": [
            "v3_maxHoldMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_maxHoldMs_send",
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
            "v3_bits",
            0
          ],
          "destination": [
            "v3_bits_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_bits_send",
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
            "v3_inputMin",
            0
          ],
          "destination": [
            "v3_inputMin_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_inputMin_send",
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
            "v3_inputMax",
            0
          ],
          "destination": [
            "v3_inputMax_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_inputMax_send",
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
            "v3_invert",
            0
          ],
          "destination": [
            "v3_invert_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_invert_send",
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
            "v3_fallback",
            0
          ],
          "destination": [
            "v3_fallback_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_fallback_send",
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
            "v3_pitchSource",
            0
          ],
          "destination": [
            "v3_pitchSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v3_pitchSource_send",
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
            "v4_enabled",
            0
          ],
          "destination": [
            "v4_enabled_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_enabled_send",
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
            "v4_cc",
            0
          ],
          "destination": [
            "v4_cc_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_cc_send",
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
            "v4_pitchChannel",
            0
          ],
          "destination": [
            "v4_pitchChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_pitchChannel_send",
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
            "v4_low",
            0
          ],
          "destination": [
            "v4_low_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_low_send",
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
            "v4_high",
            0
          ],
          "destination": [
            "v4_high_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_high_send",
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
            "v4_transpose",
            0
          ],
          "destination": [
            "v4_transpose_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_transpose_send",
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
            "v4_gateChannel",
            0
          ],
          "destination": [
            "v4_gateChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_gateChannel_send",
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
            "v4_gateNote",
            0
          ],
          "destination": [
            "v4_gateNote_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_gateNote_send",
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
            "v4_gateSource",
            0
          ],
          "destination": [
            "v4_gateSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_gateSource_send",
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
            "v4_outputChannel",
            0
          ],
          "destination": [
            "v4_outputChannel_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_outputChannel_send",
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
            "v4_articulation",
            0
          ],
          "destination": [
            "v4_articulation_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_articulation_send",
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
            "v4_tracking",
            0
          ],
          "destination": [
            "v4_tracking_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_tracking_send",
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
            "v4_velocityMode",
            0
          ],
          "destination": [
            "v4_velocityMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_velocityMode_send",
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
            "v4_velocity",
            0
          ],
          "destination": [
            "v4_velocity_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_velocity_send",
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
            "v4_lengthMs",
            0
          ],
          "destination": [
            "v4_lengthMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_lengthMs_send",
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
            "v4_lengthMode",
            0
          ],
          "destination": [
            "v4_lengthMode_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_lengthMode_send",
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
            "v4_division",
            0
          ],
          "destination": [
            "v4_division_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_division_send",
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
            "v4_hysteresis",
            0
          ],
          "destination": [
            "v4_hysteresis_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_hysteresis_send",
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
            "v4_maxHoldMs",
            0
          ],
          "destination": [
            "v4_maxHoldMs_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_maxHoldMs_send",
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
            "v4_bits",
            0
          ],
          "destination": [
            "v4_bits_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_bits_send",
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
            "v4_inputMin",
            0
          ],
          "destination": [
            "v4_inputMin_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_inputMin_send",
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
            "v4_inputMax",
            0
          ],
          "destination": [
            "v4_inputMax_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_inputMax_send",
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
            "v4_invert",
            0
          ],
          "destination": [
            "v4_invert_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_invert_send",
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
            "v4_fallback",
            0
          ],
          "destination": [
            "v4_fallback_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_fallback_send",
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
            "v4_pitchSource",
            0
          ],
          "destination": [
            "v4_pitchSource_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v4_pitchSource_send",
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
      ],
      "v2_enabled": [
        "V2 On",
        "V2 On",
        0
      ],
      "v2_cc": [
        "V2 Pitch CC",
        "V2 Pitch CC",
        0
      ],
      "v2_pitchChannel": [
        "V2 Pitch Ch",
        "V2 Pitch Ch",
        0
      ],
      "v2_low": [
        "V2 Low note",
        "V2 Low note",
        0
      ],
      "v2_high": [
        "V2 High note",
        "V2 High note",
        0
      ],
      "v2_transpose": [
        "V2 Transpose",
        "V2 Transpose",
        0
      ],
      "v2_gateChannel": [
        "V2 Gate Ch",
        "V2 Gate Ch",
        0
      ],
      "v2_gateNote": [
        "V2 Gate note",
        "V2 Gate note",
        0
      ],
      "v2_gateSource": [
        "V2 Gate source",
        "V2 Gate source",
        0
      ],
      "v2_outputChannel": [
        "V2 Output Ch",
        "V2 Output Ch",
        0
      ],
      "v2_articulation": [
        "V2 Articulation",
        "V2 Articulation",
        0
      ],
      "v2_tracking": [
        "V2 Tracking",
        "V2 Tracking",
        0
      ],
      "v2_velocityMode": [
        "V2 Velocity",
        "V2 Velocity",
        0
      ],
      "v2_velocity": [
        "V2 Fixed vel",
        "V2 Fixed vel",
        0
      ],
      "v2_lengthMs": [
        "V2 Length ms",
        "V2 Length ms",
        0
      ],
      "v2_lengthMode": [
        "V2 Length unit",
        "V2 Length unit",
        0
      ],
      "v2_division": [
        "V2 Division",
        "V2 Division",
        0
      ],
      "v2_hysteresis": [
        "V2 Hysteresis",
        "V2 Hysteresis",
        0
      ],
      "v2_maxHoldMs": [
        "V2 Safety ms",
        "V2 Safety ms",
        0
      ],
      "v2_bits": [
        "V2 Resolution",
        "V2 Resolution",
        0
      ],
      "v2_inputMin": [
        "V2 Input min",
        "V2 Input min",
        0
      ],
      "v2_inputMax": [
        "V2 Input max",
        "V2 Input max",
        0
      ],
      "v2_invert": [
        "V2 Direction",
        "V2 Direction",
        0
      ],
      "v2_fallback": [
        "V2 Fallback",
        "V2 Fallback",
        0
      ],
      "v2_pitchSource": [
        "V2 Pitch source",
        "V2 Pitch source",
        0
      ],
      "v3_enabled": [
        "V3 On",
        "V3 On",
        0
      ],
      "v3_cc": [
        "V3 Pitch CC",
        "V3 Pitch CC",
        0
      ],
      "v3_pitchChannel": [
        "V3 Pitch Ch",
        "V3 Pitch Ch",
        0
      ],
      "v3_low": [
        "V3 Low note",
        "V3 Low note",
        0
      ],
      "v3_high": [
        "V3 High note",
        "V3 High note",
        0
      ],
      "v3_transpose": [
        "V3 Transpose",
        "V3 Transpose",
        0
      ],
      "v3_gateChannel": [
        "V3 Gate Ch",
        "V3 Gate Ch",
        0
      ],
      "v3_gateNote": [
        "V3 Gate note",
        "V3 Gate note",
        0
      ],
      "v3_gateSource": [
        "V3 Gate source",
        "V3 Gate source",
        0
      ],
      "v3_outputChannel": [
        "V3 Output Ch",
        "V3 Output Ch",
        0
      ],
      "v3_articulation": [
        "V3 Articulation",
        "V3 Articulation",
        0
      ],
      "v3_tracking": [
        "V3 Tracking",
        "V3 Tracking",
        0
      ],
      "v3_velocityMode": [
        "V3 Velocity",
        "V3 Velocity",
        0
      ],
      "v3_velocity": [
        "V3 Fixed vel",
        "V3 Fixed vel",
        0
      ],
      "v3_lengthMs": [
        "V3 Length ms",
        "V3 Length ms",
        0
      ],
      "v3_lengthMode": [
        "V3 Length unit",
        "V3 Length unit",
        0
      ],
      "v3_division": [
        "V3 Division",
        "V3 Division",
        0
      ],
      "v3_hysteresis": [
        "V3 Hysteresis",
        "V3 Hysteresis",
        0
      ],
      "v3_maxHoldMs": [
        "V3 Safety ms",
        "V3 Safety ms",
        0
      ],
      "v3_bits": [
        "V3 Resolution",
        "V3 Resolution",
        0
      ],
      "v3_inputMin": [
        "V3 Input min",
        "V3 Input min",
        0
      ],
      "v3_inputMax": [
        "V3 Input max",
        "V3 Input max",
        0
      ],
      "v3_invert": [
        "V3 Direction",
        "V3 Direction",
        0
      ],
      "v3_fallback": [
        "V3 Fallback",
        "V3 Fallback",
        0
      ],
      "v3_pitchSource": [
        "V3 Pitch source",
        "V3 Pitch source",
        0
      ],
      "v4_enabled": [
        "V4 On",
        "V4 On",
        0
      ],
      "v4_cc": [
        "V4 Pitch CC",
        "V4 Pitch CC",
        0
      ],
      "v4_pitchChannel": [
        "V4 Pitch Ch",
        "V4 Pitch Ch",
        0
      ],
      "v4_low": [
        "V4 Low note",
        "V4 Low note",
        0
      ],
      "v4_high": [
        "V4 High note",
        "V4 High note",
        0
      ],
      "v4_transpose": [
        "V4 Transpose",
        "V4 Transpose",
        0
      ],
      "v4_gateChannel": [
        "V4 Gate Ch",
        "V4 Gate Ch",
        0
      ],
      "v4_gateNote": [
        "V4 Gate note",
        "V4 Gate note",
        0
      ],
      "v4_gateSource": [
        "V4 Gate source",
        "V4 Gate source",
        0
      ],
      "v4_outputChannel": [
        "V4 Output Ch",
        "V4 Output Ch",
        0
      ],
      "v4_articulation": [
        "V4 Articulation",
        "V4 Articulation",
        0
      ],
      "v4_tracking": [
        "V4 Tracking",
        "V4 Tracking",
        0
      ],
      "v4_velocityMode": [
        "V4 Velocity",
        "V4 Velocity",
        0
      ],
      "v4_velocity": [
        "V4 Fixed vel",
        "V4 Fixed vel",
        0
      ],
      "v4_lengthMs": [
        "V4 Length ms",
        "V4 Length ms",
        0
      ],
      "v4_lengthMode": [
        "V4 Length unit",
        "V4 Length unit",
        0
      ],
      "v4_division": [
        "V4 Division",
        "V4 Division",
        0
      ],
      "v4_hysteresis": [
        "V4 Hysteresis",
        "V4 Hysteresis",
        0
      ],
      "v4_maxHoldMs": [
        "V4 Safety ms",
        "V4 Safety ms",
        0
      ],
      "v4_bits": [
        "V4 Resolution",
        "V4 Resolution",
        0
      ],
      "v4_inputMin": [
        "V4 Input min",
        "V4 Input min",
        0
      ],
      "v4_inputMax": [
        "V4 Input max",
        "V4 Input max",
        0
      ],
      "v4_invert": [
        "V4 Direction",
        "V4 Direction",
        0
      ],
      "v4_fallback": [
        "V4 Fallback",
        "V4 Fallback",
        0
      ],
      "v4_pitchSource": [
        "V4 Pitch source",
        "V4 Pitch source",
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
