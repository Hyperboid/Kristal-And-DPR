return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 29,
  height = 29,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 8,
  nextobjectid = 26,
  properties = {
    ["border"] = "city",
    ["music"] = "deltarune/cybercity",
    ["name"] = "Cyber Floor - Crossroads"
  },
  tilesets = {
    {
      name = "bg_dw_city",
      firstgid = 1,
      filename = "../../tilesets/bg_dw_city.tsx",
      exportfilename = "../../tilesets/bg_dw_city.lua"
    },
    {
      name = "city_sidewalk",
      firstgid = 613,
      filename = "../../tilesets/city_sidewalk.tsx",
      exportfilename = "../../tilesets/city_sidewalk.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 29,
      height = 29,
      id = 1,
      name = "tiles",
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
        383, 27, 28, 29, 30, 31, 32, 33, 34, 383, 383, 662, 663, 740, 695, 740, 667, 668, 383, 120, 121, 122, 123, 124, 125, 126, 127, 128, 383,
        383, 44, 45, 46, 47, 48, 49, 50, 51, 383, 383, 677, 678, 740, 740, 740, 682, 683, 383, 137, 138, 139, 140, 141, 142, 143, 144, 145, 383,
        383, 61, 62, 63, 64, 65, 66, 67, 68, 383, 383, 662, 663, 740, 740, 740, 667, 668, 383, 154, 155, 156, 157, 158, 159, 160, 161, 162, 383,
        383, 78, 79, 80, 81, 82, 83, 84, 85, 383, 383, 677, 678, 740, 695, 740, 682, 683, 383, 383, 375, 376, 377, 378, 379, 380, 381, 382, 383,
        171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 383, 662, 663, 740, 740, 740, 667, 668, 383, 383, 392, 393, 394, 395, 396, 397, 398, 399, 383,
        188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 383, 677, 678, 740, 740, 740, 682, 683, 383, 383, 409, 410, 411, 412, 413, 414, 415, 416, 383,
        205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 220, 662, 663, 740, 695, 740, 667, 668, 383, 383, 426, 427, 428, 429, 430, 431, 432, 433, 383,
        222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 237, 677, 678, 740, 740, 740, 682, 683, 169, 383, 443, 444, 445, 446, 447, 448, 449, 450, 383,
        239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 254, 662, 663, 327, 328, 329, 667, 668, 186, 383, 460, 461, 462, 463, 464, 465, 466, 467, 383,
        256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 271, 677, 678, 344, 345, 346, 682, 683, 203, 383, 477, 478, 479, 480, 481, 482, 483, 484, 383,
        691, 690, 691, 690, 691, 690, 691, 690, 691, 690, 691, 692, 693, 361, 362, 363, 697, 698, 700, 699, 700, 699, 700, 699, 700, 699, 700, 699, 700,
        706, 705, 706, 705, 706, 705, 706, 705, 706, 705, 706, 707, 708, 740, 740, 740, 712, 714, 715, 714, 715, 714, 715, 714, 715, 714, 715, 714, 715,
        721, 720, 720, 721, 722, 720, 721, 722, 722, 276, 277, 278, 723, 740, 740, 740, 727, 276, 277, 278, 728, 729, 730, 728, 729, 0, 0, 729, 730,
        740, 737, 740, 740, 737, 740, 740, 737, 740, 293, 294, 295, 740, 740, 740, 740, 740, 293, 294, 295, 740, 743, 740, 740, 743, 740, 740, 743, 740,
        750, 751, 752, 750, 751, 752, 750, 751, 752, 310, 311, 312, 753, 740, 740, 740, 757, 310, 311, 312, 758, 759, 760, 758, 759, 760, 758, 759, 760,
        766, 765, 766, 765, 766, 765, 766, 765, 766, 765, 766, 767, 768, 740, 740, 740, 772, 774, 775, 774, 775, 774, 775, 774, 775, 774, 775, 774, 775,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 783, 327, 328, 329, 787, 788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 797, 798, 344, 345, 346, 802, 803, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 812, 813, 361, 362, 363, 817, 818, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        494, 383, 383, 383, 494, 383, 383, 383, 494, 383, 383, 797, 798, 740, 740, 740, 802, 803, 383, 383, 494, 383, 383, 383, 494, 383, 383, 383, 494,
        511, 383, 383, 383, 511, 383, 383, 383, 511, 383, 383, 812, 813, 740, 785, 740, 817, 818, 383, 383, 511, 383, 383, 383, 511, 383, 383, 383, 511,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 797, 798, 740, 740, 740, 802, 803, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 812, 813, 740, 740, 740, 817, 818, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        494, 383, 383, 383, 494, 383, 383, 383, 494, 383, 383, 797, 798, 740, 785, 740, 802, 803, 383, 383, 494, 383, 383, 383, 494, 383, 383, 383, 494,
        511, 383, 383, 383, 511, 383, 383, 383, 511, 383, 383, 812, 813, 740, 740, 740, 817, 818, 383, 383, 511, 383, 383, 383, 511, 383, 383, 383, 511,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 797, 798, 740, 740, 740, 802, 803, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 812, 813, 740, 785, 740, 817, 818, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        494, 383, 383, 383, 494, 383, 383, 383, 494, 383, 383, 797, 798, 740, 740, 740, 802, 803, 383, 383, 494, 383, 383, 383, 494, 383, 383, 383, 494,
        511, 383, 383, 383, 511, 383, 383, 383, 511, 383, 383, 812, 813, 740, 740, 740, 817, 818, 383, 383, 511, 383, 383, 383, 511, 383, 383, 383, 511
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 29,
      height = 29,
      id = 3,
      name = "props",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 283, 284, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          y = 680,
          width = 440,
          height = 480,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 680,
          width = 440,
          height = 480,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 440,
          height = 400,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 0,
          width = 440,
          height = 400,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = -40,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 1160,
          width = 280,
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
          id = 6,
          name = "savepoint",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 420,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = -40,
          y = 400,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "floorcyber/street_1",
            ["marker"] = "west"
          }
        },
        {
          id = 12,
          name = "traffic_car_generator",
          class = "",
          shape = "rectangle",
          x = 508,
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
          id = 13,
          name = "traffic_car_generator",
          class = "",
          shape = "rectangle",
          x = 572,
          y = 1160,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["car_sprite"] = "traffic_car_up",
            ["gen_rate"] = 20,
            ["gen_speed"] = -15,
            ["group"] = 0,
            ["prepopulate"] = true
          }
        },
        {
          id = 15,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 560,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 16,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 520,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 17,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 480,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 18,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 19,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 400,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 20,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 600,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 21,
          name = "dogconegroup",
          class = "",
          shape = "rectangle",
          x = 1120,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default_state"] = true
          }
        },
        {
          id = 22,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 380,
          y = 320,
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
          id = 24,
          name = "traffic_marker",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 400,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "traffic_switch",
          class = "",
          shape = "rectangle",
          x = 740,
          y = 320,
          width = 40,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {
            ["group"] = 0,
            ["type"] = 0
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
          id = 8,
          name = "east",
          class = "",
          shape = "point",
          x = 40,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "spawn",
          class = "",
          shape = "point",
          x = 260,
          y = 430,
          width = 0,
          height = 0,
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
      width = 29,
      height = 29,
      id = 2,
      name = "fg",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170, 0, 0, 0, 0, 0, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 303, 253, 282, 282, 282, 253, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 270, 0, 0, 0, 270, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 287, 0, 0, 0, 287, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        96, 97, 112, 113, 114, 146, 147, 148, 95, 96, 97, 0, 0, 0, 0, 0, 0, 0, 129, 130, 131, 146, 95, 96, 97, 113, 114, 95, 96,
        383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 0, 0, 0, 0, 0, 0, 0, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383, 383,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 238, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
