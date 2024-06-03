// app/javascript/application.js
import Rails from "@rails/ujs"
Rails.start()

import { Turbo } from "@hotwired/turbo-rails"
Turbo.start()

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
