local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "basic-crusher",
  enabled = false,
  energy_required = 2.5,
} :set_categories {"crafting"}
  :set_ingredients {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "iron-plate", amount = 10},
    {type = "item", name = "iron-gear-wheel", amount = 10}
  }
  :set_results {
    {type = "item", name = "basic-crusher", amount = 1}
  }
  :add_unlock("automation-2")
  :commit()
