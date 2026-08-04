require("__khaosbasiccrusher__.prototypes.entity.circuit-network")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")

local entity = khaoslib_entity:load {
  type = "assembling-machine",
  name = "basic-crusher",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  fast_replaceable_group = "basic-crusher",
  max_health = 350,
	corpse = "small-remnants",
	dying_explosion = "medium-explosion",
  circuit_wire_max_distance = 9,
  circuit_connector = circuit_connector_definitions["basic-crusher"],
  resistances = {
    {
      type = "fire",
      percent = 80
    }
  },
	collision_box = {{-1.2 * 0.4, -1.2 * 0.4}, {1.2 * 0.4, 1.2 * 0.4}},
	selection_box = {{-1.5 * 0.4, -1.5 * 0.4}, {1.5 * 0.4, 1.5 * 0.4}},
  damaged_trigger_effect = hit_effects.entity(),
  module_slots = 0,
  icon_draw_specification = {shift = util.by_pixel(0, -5), scale = 0.5},
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  crafting_categories = {"basic-crushing", "basic-crushing-or-hand-crafting"},
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
		filename = "__base__/sound/burner-mining-drill-1.ogg",
		volume = 1.0,
		idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
  },
  graphics_set = require("__khaosbasiccrusher__.prototypes.entity.basic-crusher-pictures"),
} :set_icons {
    {icon = "__khaosbasiccrusher__/graphics/icons/apm-machine-base-t2.png", icon_size = 64},
    {icon = "__khaosbasiccrusher__/graphics/icons/apm-machine-label-c.png", icon_size = 64},
  }
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
