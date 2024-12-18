local globalChestName = "global-chest"

local globalChest = table.deepcopy(data.raw["linked-container"]["linked-chest"])
globalChest.name = globalChestName
globalChest.minable = {
    mining_time = 1,
    result = globalChestName
}
globalChest.inventory_size = 9999
globalChest.picture = data.raw["container"]["steel-chest"].picture

local globalChestItem = {
    type = "item",
    name = globalChestName,
    icon = data.raw["container"]["steel-chest"].icon,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "a[items]-a[steel-chest]",
    place_result = globalChestName,
    stack_size = 2048
}


-- Recipes below can be tweaked to support your requirements.
local globalChestRecipe = {
    type = "recipe",
    name = globalChestName,
    enabled = true,
    energy_required = 1,
    category = "crafting",
    crafting_machine_tint = {primary = {r = 0.025, g = 1.000, b = 0.075, a = 0.100}},
    ingredients = {{type = "item", name = "steel-chest", amount = 10}},
    results = {{type = "item", name = globalChestName, amount = 1}}
}

data:extend({globalChest, globalChestItem, globalChestRecipe})
