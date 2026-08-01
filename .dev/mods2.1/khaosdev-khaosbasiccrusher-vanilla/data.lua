local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if data.raw["assembling-machine"]["basic-crusher"] ~= nil then
  khaoslib_recipe:load("steel-plate"):set_categories {"basic-crushing", "hand-crafting"} :commit()
end
