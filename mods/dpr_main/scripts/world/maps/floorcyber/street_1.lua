return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 9,
  nextobjectid = 44,
  properties = {
    ["music"] = "deltarune/cybercity"
  },
  tilesets = {
    {
      name = "dw_city_street",
      firstgid = 1,
      filename = "../../tilesets/dw_city_street.tsx"
    },
    {
      name = "bg_dw_city",
      firstgid = 111,
      filename = "../../tilesets/bg_dw_city.tsx",
      exportfilename = "../../tilesets/bg_dw_city.lua"
    },
    {
      name = "street_edges",
      firstgid = 723,
      filename = "../../tilesets/street_edges.tsx",
      exportfilename = "../../tilesets/street_edges.lua"
    },
    {
      name = "city_sidewalk",
      firstgid = 931,
      filename = "../../tilesets/city_sidewalk.tsx",
      exportfilename = "../../tilesets/city_sidewalk.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 12,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        776, 776, 776, 766, 59, 75, 75, 75, 61, 765, 783, 837, 838, 839, 783, 783, 783, 749, 750, 751, 774, 753, 59, 75, 75, 75, 61, 765, 776, 827, 828, 828,
        776, 776, 776, 766, 56, 75, 75, 75, 58, 765, 783, 850, 851, 852, 783, 783, 783, 762, 763, 764, 783, 753, 56, 75, 75, 75, 58, 765, 759, 760, 761, 841,
        776, 776, 776, 766, 59, 75, 75, 75, 61, 765, 783, 783, 783, 783, 783, 783, 783, 783, 783, 783, 783, 753, 59, 75, 75, 75, 61, 765, 772, 773, 774, 776,
        776, 776, 776, 779, 56, 75, 75, 75, 58, 782, 783, 783, 783, 783, 783, 783, 783, 783, 783, 783, 783, 779, 56, 75, 75, 75, 58, 782, 776, 776, 776, 776,
        46, 49, 46, 49, 52, 75, 75, 75, 54, 49, 46, 49, 46, 49, 46, 49, 46, 49, 46, 49, 46, 49, 52, 75, 75, 75, 54, 49, 46, 49, 46, 49,
        60, 60, 60, 60, 63, 75, 75, 75, 65, 386, 387, 388, 60, 60, 60, 60, 60, 60, 60, 386, 387, 388, 63, 75, 75, 75, 65, 60, 393, 394, 60, 60,
        75, 75, 1055, 75, 75, 75, 1055, 75, 75, 403, 404, 405, 75, 1055, 75, 75, 75, 1055, 75, 403, 404, 405, 75, 75, 1055, 75, 75, 75, 1055, 75, 75, 75,
        75, 75, 75, 75, 75, 75, 75, 75, 75, 420, 421, 422, 75, 75, 75, 75, 75, 75, 75, 420, 421, 422, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75,
        71, 68, 71, 68, 84, 75, 75, 75, 88, 68, 71, 68, 71, 68, 71, 68, 71, 68, 71, 68, 71, 68, 84, 75, 75, 75, 88, 68, 71, 68, 71, 68,
        0, 0, 0, 0, 59, 75, 75, 75, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 75, 75, 75, 61, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 56, 75, 75, 75, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 75, 75, 75, 58, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 59, 75, 75, 75, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 75, 75, 75, 61, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 12,
      id = 2,
      name = "Tile Layer 2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 10, 11, 7, 8, 0, 0, 0, 7, 8, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 18, 19, 0, 0, 0, 0, 0, 0, 20, 21, 22, 18, 19, 12, 13, 14, 18, 19, 18, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 29, 30, 0, 0, 0, 0, 0, 0, 31, 32, 33, 29, 30, 23, 24, 25, 29, 30, 29, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 40, 41, 0, 0, 0, 0, 0, 0, 42, 43, 44, 40, 41, 34, 35, 36, 40, 41, 40, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 160,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 0,
          width = 200,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 680,
          y = 0,
          width = 200,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1080,
          y = 0,
          width = 200,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 360,
          width = 160,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 360,
          width = 520,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1080,
          y = 360,
          width = 200,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          class = "",
          shape = "rectangle",
          x = 160,
          y = -40,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          class = "",
          shape = "rectangle",
          x = 880,
          y = -40,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 520,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          class = "",
          shape = "rectangle",
          x = 880,
          y = 520,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 8,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 100,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "floorcyber/pre_elevator",
            ["marker"] = "south"
          }
        },
        {
          id = 17,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 370,
          y = 180,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 790,
          y = 180,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "traffic_car_generator",
          class = "",
          shape = "rectangle",
          x = 220,
          y = -40,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["gen_rate"] = 10,
            ["gen_speed"] = 15,
            ["group"] = 1,
            ["prepopulate"] = true
          }
        },
        {
          id = 20,
          name = "traffic_car_generator",
          class = "",
          shape = "rectangle",
          x = 940,
          y = -40,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["gen_rate"] = 20,
            ["gen_speed"] = 15,
            ["group"] = 0,
            ["prepopulate"] = true
          }
        },
        {
          id = 21,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 390,
          y = 80,
          width = 40,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {
            ["group"] = 1,
            ["type"] = 1
          }
        },
        {
          id = 22,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 810,
          y = 80,
          width = 40,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {
            ["group"] = 0,
            ["type"] = 0
          }
        },
        {
          id = 26,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 27,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 28,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 29,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 30,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 36,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 1280,
          y = 160,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "floorcyber/dog_highway",
            ["marker"] = "east"
          }
        },
        {
          id = 38,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 1090,
          y = 180,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 1110,
          y = 80,
          width = 40,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {
            ["group"] = 0,
            ["type"] = 0
          }
        },
        {
          id = 42,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 90,
          y = 180,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 110,
          y = 80,
          width = 40,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {
            ["group"] = 1,
            ["type"] = 1
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 9,
          name = "elevator",
          class = "",
          shape = "point",
          x = 620,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "spawn",
          class = "",
          shape = "point",
          x = 620,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "west",
          class = "",
          shape = "point",
          x = 1240,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "objects_traffic",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "trafficarea",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 0,
          width = 200,
          height = 480,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "trafficarea",
          class = "",
          shape = "rectangle",
          x = 880,
          y = 0,
          width = 200,
          height = 480,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
      height = 12,
      id = 3,
      name = "Tile Layer 3",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 106, 106, 106, 106, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 106, 106, 106, 106, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 107, 0, 0, 0, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 109, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 223, 224, 222, 205, 206, 207, 273, 274, 275, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 414, 415, 416, 410, 411, 412, 622, 622, 622, 622, 622, 622, 622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 431, 432, 433, 427, 428, 429, 622, 622, 622, 606, 622, 610, 622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 448, 449, 450, 444, 445, 446, 622, 622, 622, 623, 622, 627, 622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}