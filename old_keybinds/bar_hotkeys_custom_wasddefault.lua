-- BAR hotkey layout which adds camera controls on WASD. Makes following changes to default hotkeys: version captured 1/23/2023
--> added wasd for camera movement controls
--> moved wait to t; trackmode removed, air selection hotkey removed
--> attack moved to f,f (double tap f); select all move to Ctrl+e
--> stop moved to q; duplicate map marks removed; stopproduction moved to Ctrl+q
--> all d commands moved to b (dgun, selfd, manuallaunch); select idle workers moved to Ctrl+x

local bindings = {
	{            "esc", "quitmessage"                },
	{      "Shift+esc", "quitmenu"                   },
	{ "Ctrl+Shift+esc", "quitforce"                  },
	{  "Alt+Shift+esc", "reloadforce"                },
	{     "Any+escape", "edit_escape"                },
	{      "Any+pause", "pause"                      },
	{            "esc", "teamstatus_close"           },
	{            "esc", "customgameinfo_close"       },
	{            "esc", "buildmenu_pregame_deselect" },

	{  "Any+sc_z", "selectbox_same"     }, -- select only units that share type with current selection modifier | Smart Select Widget
	{ "Any+space", "selectbox_idle"     }, -- select only idle units modifier | Smart Select Widget
	{ "Any+shift", "selectbox_all"      }, -- select all units modifier | Smart Select Widget
	{  "Any+ctrl", "selectbox_deselect" }, -- remove units from current selection modifier | Smart Select Widget
	{   "Any+alt", "selectbox_mobile"   }, -- select only mobile units modifier | Smart Select Widget

	{ "Any+space", "selectloop"        }, -- activate select shape | Loop Select Widget
	{  "Any+ctrl", "selectloop_invert" }, -- select units not present in current selection modifier | Loop Select Widget
	{ "Any+shift", "selectloop_add"    }, -- add to selection modifier | Loop Select Widget

	{           "sc_z", "gridmenu_category 1" },
	{           "sc_x", "gridmenu_category 2" },
	{           "sc_c", "gridmenu_category 3" },
	{           "sc_v", "gridmenu_category 4" },
	{     "Shift+sc_z", "gridmenu_category 1" },
	{     "Shift+sc_x", "gridmenu_category 2" },
	{     "Shift+sc_c", "gridmenu_category 3" },
	{     "Shift+sc_v", "gridmenu_category 4" },
	{       "Any+sc_z", "gridmenu_key 1 1"    },
	{       "Any+sc_x", "gridmenu_key 1 2"    },
	{       "Any+sc_c", "gridmenu_key 1 3"    },
	{       "Any+sc_v", "gridmenu_key 1 4"    },
	{       "Any+sc_a", "gridmenu_key 2 1"    },
	{       "Any+sc_s", "gridmenu_key 2 2"    },
	{       "Any+sc_d", "gridmenu_key 2 3"    },
	{       "Any+sc_f", "gridmenu_key 2 4"    },
	{       "Any+sc_q", "gridmenu_key 3 1"    },
	{       "Any+sc_w", "gridmenu_key 3 2"    },
	{       "Any+sc_e", "gridmenu_key 3 3"    },
	{       "Any+sc_r", "gridmenu_key 3 4"    },
	{           "sc_b", "gridmenu_next_page"  },
	{           "sc_n", "gridmenu_prev_page"  },

	{ "Any+sc_h", "sharedialog"    },
	{     "sc_i", "customgameinfo" },

	{ "Shift+backspace", "togglecammode" },
	{  "Ctrl+backspace", "togglecammode" },
	{         "Any+tab", "toggleoverview" },

	{     "Any+enter", "chat"           },
	{ "Alt+ctrl+sc_a", "chatswitchally" },
	{ "Alt+ctrl+sc_s", "chatswitchspec" },

	{       "Any+tab", "edit_complete"  },
	{ "Any+backspace", "edit_backspace" },
	{    "Any+delete", "edit_delete"    },
	{      "Any+home", "edit_home"      },
	{      "Alt+left", "edit_home"      },
	{       "Any+end", "edit_end"       },
	{     "Alt+right", "edit_end"       },
	{        "Any+up", "edit_prev_line" },
	{      "Any+down", "edit_next_line" },
	{      "Any+left", "edit_prev_char" },
	{     "Any+right", "edit_next_char" },
	{     "Ctrl+left", "edit_prev_word" },
	{    "Ctrl+right", "edit_next_word" },
	{     "Any+enter", "edit_return"    },

	{ "Ctrl+v", "pastetext" },

	{ "Any+home", "increaseViewRadius" },
	{ "Any+end",  "decreaseViewRadius" },

	{ "Alt+insert",  "increasespeed" },
	{ "Alt+delete",  "decreasespeed" },
	{   "Alt+sc_=",  "increasespeed" },
	{   "Alt+sc_-",  "decreasespeed" },
	{ "Alt+numpad+", "increasespeed" },
	{ "Alt+numpad-", "decreasespeed" },

	{       "sc_[", "buildfacing" , "inc" },
	{ "Shift+sc_[", "buildfacing" , "inc" },
	{       "sc_]", "buildfacing" , "dec" },
	{ "Shift+sc_]", "buildfacing" , "dec" },

	{       "Alt+sc_z", "buildspacing", "inc" },
	{ "Shift+Alt+sc_z", "buildspacing", "inc" },
	{       "Alt+sc_x", "buildspacing", "dec" },
	{ "Shift+Alt+sc_x", "buildspacing", "dec" },

--	{            "sc_a", "attack"          },
--	{      "Shift+sc_a", "attack"          },
--	{        "Alt+sc_a", "areaattack"      },
--	{  "Alt+Shift+sc_a", "areaattack"      },
	{           "Alt+b", "debug"           },
	{           "Alt+v", "debugcolvol"     },
	{           "Alt+p", "debugpath"       },
	{            "sc_b", "manualfire"      },
	{      "Shift+sc_b", "manualfire"      },
	{            "sc_b", "manuallaunch"    },
	{      "Shift+sc_b", "manuallaunch"    },
	{       "Ctrl+sc_b", "selfd"           },
	{ "Ctrl+Shift+sc_b", "selfd", "queued" },
--	{            "sc_d", "manualfire"      }, -- all d commands moved to b
--	{      "Shift+sc_d", "manualfire"      },
--	{            "sc_d", "manuallaunch"    },
--	{      "Shift+sc_d", "manuallaunch"    },
--	{       "Ctrl+sc_d", "selfd"           },
--	{ "Ctrl+Shift+sc_d", "selfd", "queued" },
	{            "sc_e", "reclaim"         },
	{      "Shift+sc_e", "reclaim"         },
--	{       "sc_f,sc_f", "attack"          },
--	{ "Shift+sc_f,Shift+sc_f", "attack"    },
	{            "sc_f", "fight"           },
	{      "Shift+sc_f", "fight"           },
	{            "sc_f", "attack"           },
	{      "Shift+sc_f", "attack"           },
	{        "Alt+sc_f", "areaattack"      },
    {  "Alt+Shift+sc_f", "areaattack"      },
--	{        "Alt+sc_f", "forcestart"      }, --removed to free alt+f for area attack
	{            "sc_g", "guard"           },
	{      "Shift+sc_g", "guard"           },
	{            "sc_j", "canceltarget"    },
	{            "sc_k", "cloak"           },
	{      "Shift+sc_k", "cloak"           },
	{            "sc_k", "wantcloak"       },
	{        "Any+sc_k", "wantcloak"       },
	{            "sc_l", "loadunits"       },
	{      "Shift+sc_l", "loadunits"       },
	{            "sc_m", "move"            },
	{      "Shift+sc_m", "move"            },
	{            "sc_p", "patrol"          },
	{      "Shift+sc_p", "patrol"          },
	{            "sc_q", "stop"            },
	{      "Shift+sc_q", "stop"            },
--	{       "sc_q,sc_q", "drawlabel"       }, -- double hit Q for drawlabel, these are only present due to legacy. Should be deprecated at some point
--	{            "sc_q", "drawinmap"       },
	{            "sc_r", "repair"          },
    {      "Shift+sc_r", "repair"          },
    {       "Ctrl+sc_r", "resurrect"       },
--  {            "sc_s", "stop"            }, -- moved to q
--	{      "Shift+sc_s", "stop"            },
	{       "Ctrl+sc_q", "stopproduction"  },
	{            "sc_u", "unloadunits"     },
	{      "Shift+sc_u", "unloadunits"     },
	{            "sc_t", "wait"            }, -- wait moved to t to free up w
	{      "Shift+sc_t", "wait", "queued"  },
	{            "sc_x", "onoff"           },
	{      "Shift+sc_x", "onoff"           },

	{ "Any+sc_l", "togglelos" },

--	{ "Ctrl+sc_t", "trackmode" },
--	{  "Any+sc_t", "track" },

	{ "Ctrl+f1", "viewfps"  },
	{ "Ctrl+f2", "viewta"   },
	{ "Ctrl+f3", "viewspring" },
	{ "Ctrl+f4", "viewrot"  },
	{ "Ctrl+f5", "viewfree" },

	{ "Any+f1" , "ShowElevation"          },
	{ "Any+f2" , "ShowPathTraversability" },
	{ "Any+f3" , "LastMsgPos"             },
	{ "Any+f4" , "ShowMetalMap"           },
	{ "Any+f5" , "HideInterface"          },
	{ "Any+f6" , "MuteSound"              },
	{ "Any+f7" , "DynamicSky"             },
	{    "f10" , "options"                },
	{    "f11" , "luaui selector"         },
	{ "Any+f12", "screenshot"     , "png" },

	{ "Ctrl+Shift+f8", "savegame"       },
	{ "Alt+enter",     "fullscreen"     },

	{ "sc_`,sc_`", "drawlabel"       }, -- double hit ` for drawlabel
	{      "sc_`", "drawinmap"       },
 
-- wasd camera control
    { "Any+sc_w",     "moveforward"  },
	{ "Any+sc_s",     "moveback"     },
	{ "Any+sc_d",     "moveright"    },
	{ "Any+sc_a",     "moveleft"     },
	{ "Any+up",       "moveforward"  },
	{ "Any+down",     "moveback"     },
	{ "Any+right",    "moveright"    },
	{ "Any+left",     "moveleft"     },
	{ "Any+pageup",   "moveup"       },
	{ "Any+pagedown", "movedown"     },

	{ "Any+ctrl",  "moveslow"  },
	{ "Any+shift", "movefast"  },

	{ "Any+alt",   "movereset"  }, -- fast camera reset on mousewheel
	{ "Any+alt",   "moverotate" }, -- rotate on x,y with mmb hold + move (Spring Camera)
	{ "Any+ctrl",  "movetilt"   }, -- rotate on x with mousewheel

	{ "Ctrl+sc_e", "select", "AllMap++_ClearSelection_SelectAll+"                                                                                    },
	{ "Ctrl+sc_x", "select", "AllMap+_Builder_Idle+_ClearSelection_SelectOne+"                                                                       }, -- moved from ctrl+b
	{ "Ctrl+sc_c", "select", "AllMap+_ManualFireUnit_Not_IdMatches_cordecom_Not_IdMatches_armdecom_Not_IdMatches_armthor+_ClearSelection_SelectOne+" },
	-- { "Ctrl+sc_r", "select", "AllMap+_Radar+_ClearSelection_SelectAll+"                                                                              },
	{ "Ctrl+sc_v", "select", "AllMap+_Not_Builder_Not_Commander_InPrevSel_Not_InHotkeyGroup+_SelectAll+"                                             },
--	{ "Ctrl+sc_w", "select", "AllMap+_Not_Aircraft_Weapons+_ClearSelection_SelectAll+"                                                               },
--	{ "Ctrl+sc_x", "select", "AllMap+_InPrevSel_Not_InHotkeyGroup+_SelectAll+"                                                                       }, --no one uses this anyway
	{ "Ctrl+sc_z", "select", "AllMap+_InPrevSel+_ClearSelection_SelectAll+"                                                                          },

	-- building hotkeys
	{          "sc_z", "buildunit_armmex"        },
	{    "Shift+sc_z", "buildunit_armmex"        },
	{          "sc_z", "buildunit_armamex"       },
	{    "Shift+sc_z", "buildunit_armamex"       },
	{          "sc_z", "buildunit_cormex"        },
	{    "Shift+sc_z", "buildunit_cormex"        },
	{          "sc_z", "buildunit_corexp"        },
	{    "Shift+sc_z", "buildunit_corexp"        },
	{          "sc_z", "buildunit_armmoho"       },
	{    "Shift+sc_z", "buildunit_armmoho"       },
	{          "sc_z", "buildunit_cormoho"       },
	{    "Shift+sc_z", "buildunit_cormoho"       },
	{          "sc_z", "buildunit_cormexp"       },
	{    "Shift+sc_z", "buildunit_cormexp"       },
	{          "sc_z", "buildunit_coruwmex"      },
	{    "Shift+sc_z", "buildunit_coruwmex"      },
	{          "sc_z", "buildunit_armuwmex"      },
	{    "Shift+sc_z", "buildunit_armuwmex"      },
	{          "sc_z", "buildunit_coruwmme"      },
	{    "Shift+sc_z", "buildunit_coruwmme"      },
	{          "sc_z", "buildunit_armuwmme"      },
	{    "Shift+sc_z", "buildunit_armuwmme"      },
	{          "sc_z", "areamex"                 },
	{    "Shift+sc_z", "areamex"                 },
	{ "Ctrl+Alt+sc_z", "areamex"                 },
	{          "sc_x", "buildunit_armsolar"      },
	{    "Shift+sc_x", "buildunit_armsolar"      },
	{          "sc_x", "buildunit_armwin"        },
	{    "Shift+sc_x", "buildunit_armwin"        },
	{          "sc_x", "buildunit_corsolar"      },
	{    "Shift+sc_x", "buildunit_corsolar"      },
	{          "sc_x", "buildunit_corwin"        },
	{    "Shift+sc_x", "buildunit_corwin"        },
	{          "sc_x", "buildunit_armadvsol"     },
	{    "Shift+sc_x", "buildunit_armadvsol"     },
	{          "sc_x", "buildunit_coradvsol"     },
	{    "Shift+sc_x", "buildunit_coradvsol"     },
	{          "sc_x", "buildunit_armfus"        },
	{    "Shift+sc_x", "buildunit_armfus"        },
	{          "sc_x", "buildunit_armmmkr"       },
	{    "Shift+sc_x", "buildunit_armmmkr"       },
	{          "sc_x", "buildunit_corfus"        },
	{    "Shift+sc_x", "buildunit_corfus"        },
	{          "sc_x", "buildunit_cormmkr"       },
	{    "Shift+sc_x", "buildunit_cormmkr"       },
	{          "sc_x", "buildunit_armtide"       },
	{    "Shift+sc_x", "buildunit_armtide"       },
	{          "sc_x", "buildunit_cortide"       },
	{    "Shift+sc_x", "buildunit_cortide"       },
	{          "sc_x", "buildunit_armuwfus"      },
	{    "Shift+sc_x", "buildunit_armuwfus"      },
	{          "sc_x", "buildunit_coruwfus"      },
	{    "Shift+sc_x", "buildunit_coruwfus"      },
	{          "sc_x", "buildunit_armuwmmm"      },
	{    "Shift+sc_x", "buildunit_armuwmmm"      },
	{          "sc_x", "buildunit_coruwmmm"      },
	{    "Shift+sc_x", "buildunit_coruwmmm"      },
	{          "sc_c", "buildunit_armllt"        },
	{    "Shift+sc_c", "buildunit_armllt"        },
	{          "sc_c", "buildunit_armrad"        },
	{    "Shift+sc_c", "buildunit_armrad"        },
	{          "sc_c", "buildunit_corllt"        },
	{    "Shift+sc_c", "buildunit_corllt"        },
	{          "sc_c", "buildunit_corrad"        },
	{    "Shift+sc_c", "buildunit_corrad"        },
	{          "sc_c", "buildunit_corrl"         },
	{    "Shift+sc_c", "buildunit_corrl"         },
	{          "sc_c", "buildunit_armrl"         },
	{    "Shift+sc_c", "buildunit_armrl"         },
	{          "sc_c", "buildunit_armpb"         },
	{    "Shift+sc_c", "buildunit_armpb"         },
	{          "sc_c", "buildunit_armflak"       },
	{    "Shift+sc_c", "buildunit_armflak"       },
	{          "sc_c", "buildunit_corvipe"       },
	{    "Shift+sc_c", "buildunit_corvipe"       },
	{          "sc_c", "buildunit_corflak"       },
	{    "Shift+sc_c", "buildunit_corflak"       },
	{          "sc_c", "buildunit_armgplat"      },
	{    "Shift+sc_c", "buildunit_armgplat"      },
	{          "sc_c", "buildunit_corgplat"      },
	{    "Shift+sc_c", "buildunit_corgplat"      },
	{          "sc_c", "buildunit_armtl"         },
	{    "Shift+sc_c", "buildunit_armtl"         },
	{          "sc_c", "buildunit_cortl"         },
	{    "Shift+sc_c", "buildunit_cortl"         },
	{          "sc_c", "buildunit_armsonar"      },
	{    "Shift+sc_c", "buildunit_armsonar"      },
	{          "sc_c", "buildunit_corsonar"      },
	{    "Shift+sc_c", "buildunit_corsonar"      },
	{          "sc_c", "buildunit_armfrad"       },
	{    "Shift+sc_c", "buildunit_armfrad"       },
	{          "sc_c", "buildunit_corfrad"       },
	{    "Shift+sc_c", "buildunit_corfrad"       },
	{          "sc_c", "buildunit_armfrt"        },
	{    "Shift+sc_c", "buildunit_armfrt"        },
	{          "sc_c", "buildunit_corfrt"        },
	{    "Shift+sc_c", "buildunit_corfrt"        },
	{          "sc_v", "buildunit_armnanotc"     },
	{    "Shift+sc_v", "buildunit_armnanotc"     },
	{          "sc_v", "buildunit_armnanotcplat" },
	{    "Shift+sc_v", "buildunit_armnanotcplat" },
	{          "sc_v", "buildunit_cornanotcplat" },
	{    "Shift+sc_v", "buildunit_cornanotcplat" },
	{          "sc_v", "buildunit_armlab"        },
	{    "Shift+sc_v", "buildunit_armlab"        },
	{          "sc_v", "buildunit_armvp"         },
	{    "Shift+sc_v", "buildunit_armvp"         },
	{          "sc_v", "buildunit_armap"         },
	{    "Shift+sc_v", "buildunit_armap"         },
	{          "sc_v", "buildunit_cornanotc"     },
	{    "Shift+sc_v", "buildunit_cornanotc"     },
	{          "sc_v", "buildunit_corlab"        },
	{    "Shift+sc_v", "buildunit_corlab"        },
	{          "sc_v", "buildunit_corvp"         },
	{    "Shift+sc_v", "buildunit_corvp"         },
	{          "sc_v", "buildunit_corap"         },
	{    "Shift+sc_v", "buildunit_corap"         },
	{          "sc_v", "buildunit_armsy"         },
	{    "Shift+sc_v", "buildunit_armsy"         },
	{          "sc_v", "buildunit_corsy"         },
	{    "Shift+sc_v", "buildunit_corsy"         },

	-- numpad movement
	{ "numpad2", "moveback"    },
	{ "numpad6", "moveright"   },
	{ "numpad4", "moveleft"    },
	{ "numpad8", "moveforward" },
	{ "numpad9", "moveup"      },
	{ "numpad3", "movedown"    },
	{ "numpad1", "movefast"    },

	-- snd_volume_osd
	{ "numpad+", "snd_volume_increase" },
	{    "sc_=", "snd_volume_increase" },
	{    "sc_-", "snd_volume_decrease" },
	{ "numpad-", "snd_volume_decrease" },

	-- los_colors
	{ "Any+sc_;", "losradar" },

	--unit_stats
	{ "Any+space", 'unit_stats' },

	-- if WG['CameraFlip'] then
	{ "Ctrl+Shift+sc_o", "cameraflip" },

	--if not WG['Set target default'] then
	{ "Alt+sc_y", "settarget"         },
	{     "sc_y", "settargetnoground" },

	{ "Ctrl+sc_`", "group unset" },
	-- if WG['Auto Group'] then
	{ "Alt+sc_`",  "remove_from_autogroup" },
}

for i = 0, 9 do
	if i ~= 0 then
		table.insert(bindings, { i , "specteam", i-1 })
	end

	table.insert(bindings, { 'Alt+'..i , "add_to_autogroup", i })

	table.insert(bindings, { i               , "group", i                  })
	table.insert(bindings, { 'Ctrl+'..i      , "group", "set "..i          })
	table.insert(bindings, { 'Shift+'..i     , "group", "selectadd "..i    })
	table.insert(bindings, { 'Ctrl+Shift+'..i, "group", "add "..i          })
	table.insert(bindings, { 'Ctrl+Alt+'..i  , "group", "selecttoggle "..i })
end

return bindings
