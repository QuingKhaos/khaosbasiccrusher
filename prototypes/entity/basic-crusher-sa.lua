require("__khaosbasiccrusher__.prototypes.entity.circuit-network-sa")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")

local entity = khaoslib_entity:load {
  type = "assembling-machine",
  name = "basic-crusher",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  fast_replaceable_group = "basic-crusher",
  max_health = 350,
  corpse = "basic-crusher-remnants",
  dying_explosion = "electric-furnace-explosion",
  circuit_wire_max_distance = 9,
  circuit_connector = circuit_connector_definitions["basic-crusher"],
  resistances = {
    {
      type = "fire",
      percent = 80
    }
  },
  collision_box = {{-0.7 * 0.5, -1.2 * 0.5}, {0.7 * 0.5, 1.2 * 0.5}},
  selection_box = {{-1 * 0.5, -1.5 * 0.5}, {1 * 0.5, 1.5 * 0.5}},
  damaged_trigger_effect = hit_effects.entity(),
  module_slots = 0,
  icons_positioning = {
    {inventory_index = defines.inventory.crafter_modules, shift = {0, 0.3}},
  },
  icon_draw_specification = {shift = {0.05, 0}, scale = 0.5},
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  crafting_categories = {"basic-crushing"},
  crafting_speed = 2,
  energy_usage = "100kW",
  energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = {pollution = 1}
  },
  open_sound = sounds.mech_small_open,
  close_sound = sounds.mech_small_close,
  working_sound = {
    sound = {
      filename = "__khaosbasiccrusher__/sound/entity/basic-crusher-sa/basic-crusher-loop.ogg",
      volume = 0.8,
      audible_distance_modifier = 0.6,
    },
    fade_in_ticks = 4,
    fade_out_ticks = 20,
    max_sounds_per_prototype = 3,
  },
  graphics_set = require("__khaosbasiccrusher__.prototypes.entity.basic-crusher-sa-pictures"),
  water_reflection = {
    pictures = {
      filename = "__khaosbasiccrusher__/graphics/entity/basic-crusher-sa/basic-crusher-reflection.png",
      priority = "extra-high",
      width = 24,
      height = 24,
      shift = util.by_pixel(5, 40-32),
      variation_count = 1,
      scale = 5 * 0.5
    },
    rotate = false,
    orientation_to_variation = false,
  },
} :set_icons {{icon = "__khaosbasiccrusher__/graphics/icons/basic-crusher-sa.png", icon_size = 64, scale = 0.8, tint = {0.7, 0.7, 0.7}}}
  :set_minable {mining_time = 0.2, result = "basic-crusher"}

if mods["quality"] then
  entity:set {
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
  }
end

if feature_flags["space_travel"] then
  entity:set {
    surface_conditions = {
      {
        property = "gravity",
        min = 0.1,
      },
    },
  }
end

if feature_flags["freezing"] then
  entity:set {
    heating_energy = "200kW",
  }
end

entity:commit()
