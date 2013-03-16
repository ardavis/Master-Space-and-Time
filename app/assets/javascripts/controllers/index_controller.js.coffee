App.IndexController = Ember.ArrayController.extend
  itemController: 'indexTrip'
  selectedTrip: false

  selectTrip: (trip) ->
    @set('selectedTrip', trip)