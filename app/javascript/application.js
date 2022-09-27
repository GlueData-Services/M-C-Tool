// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import * as bootstrap from "bootstrap"
import "bootstrap-table/dist/bootstrap-table"

window.bootstrap = bootstrap;

import "./add_jquery"
import 'jquery-resizable-columns'
import "./interactions"


