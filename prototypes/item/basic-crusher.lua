local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "basic-crusher",
  localised_name = {"entity-name.basic-crusher"},
  subgroup = "production-machine",
  order = "ca[basic-crusher]",
  place_result = "basic-crusher",
  stack_size = 10,
  weight = 50 * kg,

  inventory_move_sound = item_sounds.drill_inventory_move,
  pick_sound = item_sounds.drill_inventory_pickup,
  drop_sound = item_sounds.drill_inventory_move,
} :set_icons {{icon = "__khaosbasiccrusher__/graphics/icons/basic-crusher-sa.png", icon_size = 64, scale = 0.8, tint = {0.7, 0.7, 0.7}}}
  :commit()
