require.config

	paths:
		jquery: "http://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.min"
		underscore: "http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.3/underscore-min"
		backbone: "http://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min"
		marionette: "http://cdnjs.cloudflare.com/ajax/libs/backbone.marionette/1.0.0-rc6-bundled/backbone.marionette.min"
		moment: "http://cdnjs.cloudflare.com/ajax/libs/moment.js/1.7.2/moment.min"
		dot: "http://olado.github.io/doT/doT.min"
		validate: "http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.0/jquery.validate.min"

	shim:
		jquery: exports: "$"
		underscore: exports: "_"
		backbone:
			deps: ["underscore", "jquery"]
			exports: "Backbone"
		marionette:
			deps: ["backbone", "moment"]
			exports: "Marionette"
		moment: exports: "moment"
		dot: exports: "doT"

require ["Marionette"], (Marionette) ->
	Marionette.TemplateCache::compileTemplate = (rawTemplate) ->
		doT.template rawTemplate + "-template"

	app = new Marionette.Application

	app.addRegions
		viewport: "#viewport"

	app.addInitializer ->
		new routers.CommonRouter()
		new routers.ScopesRouter()
		Backbone.history.start()

	bus.on "show", (view) ->
		app.viewport.show view
