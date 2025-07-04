
import sys
sys.path.append('../my-build-tools/')

from builder import Html

bldr = Html()
bldr.setDebug(True)
bldr.setInput("./origin.html")
bldr.containScript()
bldr.containStyle()
bldr.containImage()
bldr.setOutput("./uyghurche.html")
bldr.start()

