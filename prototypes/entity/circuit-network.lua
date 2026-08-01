circuit_connector_definitions["basic-crusher"] = circuit_connector_definitions.create_vector(
  universal_connector_template, {
    {variation = 18, main_offset = util.mul_shift(util.by_pixel( 14, 25), 0.5), shadow_offset = util.mul_shift(util.by_pixel( 14, 28), 0.5), show_shadow = true},
    {variation = 16, main_offset = util.mul_shift(util.by_pixel(-36,  5), 0.5), shadow_offset = util.mul_shift(util.by_pixel(-33,  7), 0.5), show_shadow = false},
    {variation = 18, main_offset = util.mul_shift(util.by_pixel( 14, 25), 0.5), shadow_offset = util.mul_shift(util.by_pixel( 14, 28), 0.5), show_shadow = true},
    {variation = 16, main_offset = util.mul_shift(util.by_pixel(-36,  5), 0.5), shadow_offset = util.mul_shift(util.by_pixel(-33,  7), 0.5), show_shadow = false},
  })
