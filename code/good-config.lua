box = {
    listen = 3311,
    log_level = 7,
    wal_dir =  'wal',
    memtx_dir = 'memtx',
    memtx_memory = 1024*1024*1024, -- 1GB
    memtx_max_tuple_size = 1024*1024  -- 1 mb
}

app = {
    api1 = {
        time_threshold = 100,
        iterations_count = 12,
    },
    api2 = {
        time_threshold = 200,
        iterations_count = 18,
    }
}