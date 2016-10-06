minetest.register_craft({
	output = "trampoline:trampoline",
	recipe = {
		{"farming:string", "farming:string", "farming:string"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"}
	}
})

minetest.register_node("trampoline:trampoline", {
	description = "Trampoline",
	tiles = {"xdecor_trampoline.png", "mailbox_blank16.png", "xdecor_trampoline_sides.png"},
	groups = {cracky=3, oddly_breakable_by_hand=1, fall_damage_add_percent=-80, bouncy=90},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	sounds = {footstep = {name="xdecor_bouncy", gain=0.8}}
})
