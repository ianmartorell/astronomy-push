if Meteor.isClient

	Template.hello.helpers
		'things': -> Things.find()
		'active': -> 'active' if Session.equals 'activeId', @_id

	Template.hello.events
		'click .array': ->
			Meteor.call 'arrayPush', Session.get('new'), Session.get('activeId')
		'click .astro': ->
			Meteor.call 'astroPush', Session.get('new'), Session.get('activeId')
		'change #mode': (event) ->
			if $(event.target).val() == 'new'
				Session.set 'new', true
			else
				Session.set 'new', false
		'click li': -> Session.set 'activeId', @_id

	Meteor.startup ->
		Session.set 'new', true
