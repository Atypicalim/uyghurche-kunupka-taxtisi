
-- pcall(os.execute, "git clone git@github.com:kompasim/my-build-tools.git ./.my-build-tools")
package.path = package.path .. ";./.my-build-tools/?.lua"

local HBuilder = require("html_builder")
local CBuilder = require("c_builder")
local CodeBuilder = require("code_builder")

local hBuilder = HBuilder(false)
hBuilder:inputFile("./uyghurche.html")
hBuilder:containScript()
hBuilder:containStyle()
hBuilder:containImage()
hBuilder:setOutput("./target.html")
hBuilder:start()


local codeBuilder = CodeBuilder(false)
codeBuilder:setInput("./uyghurche.c")
codeBuilder:handleMacro("//")
codeBuilder:setOutput("./target.c")
codeBuilder:start()

local cBuilder = CBuilder(false)
cBuilder:setInput('./target.c')
cBuilder:setLibs("webview")
cBuilder:setIcon('./uyghurche.ico')
cBuilder:setOutput('uyghurche')
cBuilder:start(false)

files.delete('./target.html')
files.delete('./target.c')
os.execute("start ./uyghurche.exe")

