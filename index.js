const fs = require('fs')
const loader = require('@assemblyscript/loader')
const api = require('@teraflop/api')

const imports = {
  plugin: {
    register: api.registry.registrarFor(() => plugin)
  }
}
const plugin = loader.instantiateSync(fs.readFileSync(`${__dirname}/build/optimized.wasm`), imports)
module.exports = plugin.exports
