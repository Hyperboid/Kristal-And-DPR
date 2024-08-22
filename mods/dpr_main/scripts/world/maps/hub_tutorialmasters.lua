return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 14,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 5,
  nextobjectid = 13,
  properties = {},
  tilesets = {
    {
      name = "main_area",
      firstgid = 1,
      filename = "../tilesets/main_area.tsx",
      exportfilename = "../tilesets/main_area.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 14,
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
        41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55,
        54, 54, 55, 66, 67, 67, 67, 67, 67, 67, 68, 53, 54, 55,
        54, 54, 55, 79, 80, 80, 80, 80, 80, 80, 81, 53, 54, 55,
        67, 67, 68, 92, 93, 93, 93, 93, 93, 93, 94, 66, 67, 68,
        80, 80, 81, 4, 2, 2, 2, 2, 2, 2, 5, 79, 80, 81,
        93, 93, 94, 14, 15, 15, 15, 15, 15, 15, 16, 92, 93, 94,
        2, 2, 2, 15, 15, 15, 15, 15, 15, 15, 15, 2, 2, 3,
        28, 28, 28, 15, 15, 15, 15, 15, 15, 15, 15, 28, 28, 29,
        0, 0, 0, 14, 15, 15, 15, 15, 15, 15, 16, 0, 0, 0,
        0, 0, 0, 27, 28, 28, 28, 28, 28, 28, 29, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
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
          y = 400,
          width = 120,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 480,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 400,
          width = 120,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 240,
          width = 120,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 200,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 120,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
          id = 10,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = -40,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "main_hub",
            ["marker"] = "east2"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
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
          id = 11,
          name = "entry",
          class = "",
          shape = "point",
          x = 40,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "spawn",
          class = "",
          shape = "point",
          x = 280,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
