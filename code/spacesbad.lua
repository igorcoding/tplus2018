box.once('items_lists', function()
    local s = box.schema.space.create("items_lists")
    s:create_index("primary", { type = "hash", parts = {1, "string"}, unique = true })
end)

box.once('users', function()
    local s = box.schema.space.create("users")
    s:create_index("primary", {type = "hash", parts = {1, "string"}, unique = true })
end)

box.once('purchases', function()
    local s = box.schema.space.create("purchases")
    s:create_index("primary", { type = "hash", parts = {1, "string"}, unique = true})
    s:create_index("user", { type = "hash", parts = {2, "string"}, unique = false })
end)

box.once('purchases_users_unique', function()
    local s = box.schema.space.create("purchases")
    box.schema.space.purchases.index.user:alter({ type = "tree", unique = true })
end)


