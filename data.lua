require("__khaosbasiccrusher__.prototypes.categories.crafting-category")

if feature_flags["expansion_shaders"] then
  require("__khaosbasiccrusher__.prototypes.entity.basic-crusher-sa")
  require("__khaosbasiccrusher__.prototypes.remnants.basic-crusher-sa-remnants")
else
  require("__khaosbasiccrusher__.prototypes.entity.basic-crusher")
end

require("__khaosbasiccrusher__.prototypes.item.basic-crusher")

require("__khaosbasiccrusher__.prototypes.recipe.basic-crusher")

