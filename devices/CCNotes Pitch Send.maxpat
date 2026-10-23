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
      640,
      169
    ],
    "devicewidth": 640,
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
          "text": "js gesture_device.js pitch 1"
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
          "id": "bus",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            352,
            220,
            22
          ],
          "text": "r continuous_cc_notes_out_v1"
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
            378,
            220,
            22
          ],
          "text": "CCNOTES \u00b7 PITCH SEND",
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
            404,
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
            430,
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
            456,
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
            482,
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
            508,
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
            534,
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
            560,
            220,
            22
          ],
          "text": "Initializing",
          "presentation": 1,
          "presentation_rect": [
            10,
            146,
            600,
            19
          ],
          "varname": "status",
          "ignoreclick": 1
        }
      },
      {
        "box": {
          "id": "logical_label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            586,
            220,
            22
          ],
          "text": "Logical pitch channel",
          "presentation": 1,
          "presentation_rect": [
            10,
            46,
            150,
            20
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
          "id": "logical",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            20,
            612,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            165,
            46,
            60,
            22
          ],
          "varname": "logical",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Logical pitch channel",
              "parameter_shortname": "Logical pitch channe",
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
          "hint": "Logical pitch channel"
        }
      },
      {
        "box": {
          "id": "logical_send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "patching_rect": [
            20,
            638,
            220,
            22
          ],
          "text": "prepend channelid"
        }
      },
      {
        "box": {
          "id": "help",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            664,
            220,
            22
          ],
          "text": "Receive one explicit port/channel on this track. Input is consumed.",
          "presentation": 1,
          "presentation_rect": [
            10,
            80,
            600,
            20
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
          "id": "help2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            690,
            220,
            22
          ],
          "text": "Main: Pitch source = Sender; Pitch Ch = this logical channel. Match Group.",
          "presentation": 1,
          "presentation_rect": [
            10,
            107,
            600,
            20
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
          "id": "load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "patching_rect": [
            20,
            716,
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
            742,
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
            768,
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
            794,
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
            820,
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
            846,
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
            872,
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
            898,
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
            "logical",
            0
          ],
          "destination": [
            "logical_send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logical_send",
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
      "logical": [
        "Logical pitch channel",
        "Logical pitch channe",
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
