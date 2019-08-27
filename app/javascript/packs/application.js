// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import $ from 'jquery'
import jQuery from 'jquery'
import { cocoonInitializer } from 'cocoon/app/assets/javascripts/cocoon'

// to initialize cocoon ...
cocoonInitializer($, jQuery)

// to catch events from cocoon ...
$(document).on('cocoon:after-insert', () => {
    // ...
})

import "bootstrap"

document.addEventListener("turbolinks:load", () => {
  $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
    e.target // newly activated tab
    e.relatedTarget // previous active tab)
  })
} )

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
