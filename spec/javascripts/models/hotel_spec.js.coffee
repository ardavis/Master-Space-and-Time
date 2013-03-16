describe 'Hotels', ->
  beforeEach ->
    Ember.testing = true

  describe 'price calculation', ->

    it 'calculates the total revenue', ->
      Ember.run ->
        hotel = App.Hotel.createRecord(price: '100', nightsOrdered: '3')
        expect(hotel.get('revenue')).toEqual(300)