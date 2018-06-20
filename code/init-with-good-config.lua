local clock = require 'clock'

local conf_path = os.getenv('CONF')
if conf_path == nil then
    conf_path = '/etc/myapp/conf.lua'
end
local conf = require('config')(conf_path)
 
local schema = require 'schema'

local api = require 'api'
api.init(conf.flat.app.api1)

local api2 = require 'api2'
api.init(conf.flat.app.api2)




