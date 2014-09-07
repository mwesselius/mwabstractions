{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 259.0, 333.0, 327.0, 404.0 ],
		"bglocked" : 0,
		"defrect" : [ 259.0, 333.0, 327.0, 404.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 30.0, 67.0, 19.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 135.0, 32.0, 19.0 ],
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 75.0, 25.0, 25.0 ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "listen to midi notes (1/0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s noteused",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 198.0, 309.0, 65.0, 19.0 ],
					"id" : "obj-9",
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 150.0, 195.0, 33.0, 19.0 ],
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 331.0, 25.0, 25.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"comment" : "bang when this note is pressed"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 1",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 150.0, 270.0, 49.0, 19.0 ],
					"id" : "obj-12",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 11.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!= 0",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 150.0, 105.0, 34.0, 19.0 ],
					"id" : "obj-13",
					"outlettype" : [ "int" ],
					"fontsize" : 11.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== #1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 150.0, 240.0, 39.0, 19.0 ],
					"id" : "obj-14",
					"outlettype" : [ "int" ],
					"fontsize" : 11.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 75.0, 48.0, 19.0 ],
					"id" : "obj-15",
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 75.0, 25.0, 25.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : "MIDI note number"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 298.0, 207.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 120.0, 127.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 174.0, 173.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 227.5, 179.5, 227.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
