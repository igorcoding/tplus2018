local spacer = require 'spacer'

spacer:space({
    name = 'item_lists',
    format = {
        { name = 'id', type = 'string' },
        { name = 'item_id', type = 'string' },
        { name = 'list_name', type = 'string' }
    },
    indexes = {
        { name = 'primary', type = 'hash', unique = true, parts = { 'id' } }
    }
})

spacer:space({
    name = 'users',
    format = {
        { name = 'id', type = 'string' },
        { name = 'name', type = 'string' },
        { name = 'created_at', type = 'unsigned' }
    },
    indexes = {
        { name = 'primary', type = 'hash', unique = true, parts = { 'id' } },
    }
})

spacer:space({
    name = 'purchases',
    format = {
        { name = 'id', type = 'string' },
        { name = 'user_id', type = 'string' },
        { name = 'item_id', type = 'string' }
    },
    indexes = {
        { name = 'primary', type = 'hash', unique = true, parts = { 'id' } },
        { name = 'user', type = 'tree', unique = false, parts = { 'user_id' } },
    }
})