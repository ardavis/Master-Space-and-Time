App.Router.reopen
  location: 'history'

App.Router.map ->
  @route 'index', path: '/'

App.IndexRoute = Ember.Route.extend
  model: -> App.Trip.find()