App.IndexTripController = Ember.ObjectController.extend
  startDateDisplay: (->
    @get('startMoment').format('MMM D, YYYY')
  ).property('startMoment'),

  endDateDisplay: (->
    @get('endMoment').format('MMM D, YYYY')
  ).property('endMoment')