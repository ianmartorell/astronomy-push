@Things = new Mongo.Collection 'things'

@Thing = Astro.Class
	name: 'Thing'
	collection: Things
	fields:
		theObject:
			type: 'object'
			default: -> 'theArray': []
	methods:
		arrayPush: ->
			@theObject.theArray.push 'sth'
		astroPush: ->
			@push 'theObject.theArray', 'sth'
