Meteor.methods
	arrayPush: (createNew, id) ->
		if createNew
			thing = new Thing
		else
			thing = Things.findOne id
		if thing?
			thing.arrayPush()
			thing.save()
	astroPush: (createNew, id) ->
		if createNew
			thing = new Thing
		else
			thing = Things.findOne id
		if thing?
			thing.astroPush()
			thing.save()
