define ["marionette"], (Marionette) ->

	exports = {}

	exports.ProfileEditor = Marionette.ItemView
		template: "#profile-editor"
		events:
			"click #play": "play"
		ui:
			"name": "#name"
		play: ->
			bus.navigate "play/#{ui.name.val()}"
