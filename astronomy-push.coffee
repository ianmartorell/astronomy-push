if Meteor.isClient

	Template.hello.helpers
		'things': -> Things.find()

	Template.hello.events
		'click .array': ->
			Meteor.call 'arrayPush', Session.get('new'), Session.get('activeId')
		'click .astro': ->
			Meteor.call 'astroPush', Session.get('new'), Session.get('activeId')
