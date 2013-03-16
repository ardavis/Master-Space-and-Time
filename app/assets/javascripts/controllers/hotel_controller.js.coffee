App.HotelController = Ember.ObjectController.extend
  editing: false,

  init: ->
    @_super()

  startEditing: ->
    @set('nightsOrderedInput', String(@get('nightsOrdered')))
    @toggleProperty('editing')

  endEditing: ->
    @set('nightsOrdered', parseInt(@get('nightsOrderedInput')))
    @toggleProperty('editing')
