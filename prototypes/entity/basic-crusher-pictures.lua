--- @diagnostic disable: generic-constraint-mismatch

local function crusher_animation_main()
  return util.sprite_load("__khaosbasiccrusher__/graphics/entity/basic-crusher/basic-crusher", {
    animation_speed = 0.5,
    frame_count = 32,
    scale = 0.5 * 0.4,
    shift = util.by_pixel(-9, 5),
  })
end

local function crusher_animation_shadow()
  return util.sprite_load("__khaosbasiccrusher__/graphics/entity/basic-crusher/basic-crusher-shadow", {
    animation_speed = 0.5,
    repeat_count = 32,
    scale = 0.5 * 0.4,
    shift = util.by_pixel(-9, 5),
    draw_as_shadow = true,
  })
end

return {
  animation = {
    layers = {
      crusher_animation_main(),
      crusher_animation_shadow(),
    },
  },
}
