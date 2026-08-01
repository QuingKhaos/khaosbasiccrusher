local khaoslib_entity = require("__khaoslib__.prototypes.entity")

khaoslib_entity:load {
  type = "corpse",
  name = "basic-crusher-remnants",
  icon = "__khaosbasiccrusher__/graphics/icons/basic-crusher.png",
  flags = {"placeable-neutral", "not-on-map"},
  hidden_in_factoriopedia = true,
  subgroup = "remnants",
  order = "a-l-a",
  selection_box = {{-1 * 0.5, -1.5 * 0.5}, {1 * 0.5, 1.5 * 0.5}},
  collision_box = {{-0.7 * 0.5, -1.2 * 0.5}, {0.7 * 0.5, 1.2 * 0.5}},
  tile_width = 2,
  tile_height = 1,
  selectable_in_game = false,
  time_before_removed = 15 * minute,
  expires = false,
  final_render_layer = "remnants",
  remove_on_tile_placement = false,
  --- @diagnostic disable-next-line: generic-constraint-mismatch
  animation = util.sprite_load("__khaosbasiccrusher__/graphics/entity/basic-crusher/remnants/basic-crusher-remnants", {
    direction_count = 4,
    scale = 0.5 * 0.5,
  })
} :set_icons {{icon = "__khaosbasiccrusher__/graphics/icons/basic-crusher.png", icon_size = 64, scale = 0.8, tint = {0.7, 0.7, 0.7}}}
  :commit()
