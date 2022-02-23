minetest.register_node("scratch_related:cat_block",{
	description = "Scratch Cat Block",
	tiles = {"scratch_cat.png"},
	paramtype2 = "facedir",
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3},
})

minetest.register_craft({
	output = "scratch_related:cat_block",
	recipe = {
		{"wool:orange","wool:white","wool:orange"},
		{"wool:white","wool:orange","wool:white"},
		{"wool:white","wool:white","wool:white"}
	}
})

minetest.register_node("scratch_related:greenflag",{
	description = "Green Flag Block",
	tiles = {"scratch_control_topbottom.png",
	"scratch_control_topbottom.png","scratch_control_flagside.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "scratch_related:greenflag",
	recipe = {
		{"wool:green","wool:green","group:wood"},
		{"wool:green","wool:green","group:wood"},
		{"wool:green","group:wood","group:wood"}
	}
})

minetest.register_craft({
	type = "cooking",
	output = "scratch_related:greenflag",
	recipe = "scratch_related:stopsign",
	cooktime = 10,
})

minetest.register_node("scratch_related:stopsign",{
	description = "Stop Sign Block",
	tiles = {"scratch_control_topbottom.png",
	"scratch_control_topbottom.png","scratch_control_stopside.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "scratch_related:stopsign",
	recipe = {
		{"group:wood","wool:red","group:wood"},
		{"wool:red","wool:red","wool:red"},
		{"group:wood","wool:red","group:wood"}
	}
})

minetest.register_craft({
	type = "cooking",
	output = "scratch_related:stopsign",
	recipe = "scratch_related:greenflag",
	cooktime = 10,
})
