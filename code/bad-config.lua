local clock = require 'clock'

box.cfg {
    listen = 3311,
    -- log = 'tarantool.log',
    log_level = 7,
    wal_dir =  'wal',
    memtx_dir = 'memtx',
    memtx_memory = 1024*1024*1024, -- 1GB
    memtx_max_tuple_size = 1024*1024  -- 1 mb
}

local console = require 'console'
console.listen('127.0.0.1:3312')

local schema = require 'schema'

local api_config = {
    time_threshold = 100,
    iterations_count = 12,
}
local api2_config = {
    time_threshold = 200,
    iterations_count = 18,
}

local api = require 'api'
api.init(api_config)
local api2 = require 'api2'
api2.init(api2_config)

