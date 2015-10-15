@Things = new Mongo.Collection 'things'

@Thing = Astro.Class
	name: 'Thing'
	collection: Things
	fields:
		theArray:
			type: 'array'
			default: -> []
	methods:
		arrayPush: ->
			@theArray.push 'sth'
		astroPush: ->
			@push 'theArray', 'sth'
