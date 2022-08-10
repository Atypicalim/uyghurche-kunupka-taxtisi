
-- pcall(os.execute, "git clone git@github.com:kompasim/pure-js-tools.git ./pure-js-tools")
-- pcall(os.execute, "git clone git@github.com:kompasim/my-build-tools.git ./my-build-tools")
package.path = package.path .. ";./my-build-tools/?.lua"

local Builder = require("html_builder")

local builder = Builder(false)
builder:inputFile("./origin.html")
builder:containScript()
builder:containStyle()
builder:containImage()
builder:setOutput("./uyghurche.html")
builder:start()
