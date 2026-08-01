for _, character in pairs(data.raw["character"]) do
  character.crafting_categories = character.crafting_categories or {}
  table.insert(character.crafting_categories, "basic-crushing-or-hand-crafting")
end
