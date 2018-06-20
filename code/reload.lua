local app = require('app')
package.reload:register(app)

app.init({ ... })

-- to reload code call package.reload()

