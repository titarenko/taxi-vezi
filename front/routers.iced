define ["marionette", "controllers"], (Marionette, controllers) ->

	exports = {}

	exports.ProfileRouter = Marionette.AppRouter.extend
		appRoutes:
			"": "showProfileEditor"			
		controller: controllers.ProfileController

	exports.ArenaRouter = Marionette.AppRouter.extend
		appRoutes:
			"play": "showArena"
		controller: controllers.ArenaController

	exports
