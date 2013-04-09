define ["marionette", "views", "bus"], (Marionette, views, bus) ->

	exports = {}

	exports.ProfileController =
		showProfileEditor: ->
			bus.trigger "show", new views.ProfileEditor

	exports.ArenaController =
		showArena: ->
			bus.trigger "show", new views.Arena

	exports
