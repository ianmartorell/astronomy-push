Meteor.methods
	arrayPush: ->
		thing = new Thing
		thing.arrayPush()
		thing.save()
	astroPush: ->
		thing = new Thing
		thing.astroPush()
		thing.save()
