describe 'Extra', ->
  beforeEach ->
    Ember.testing = true

  describe 'price calculation', ->

    it 'calculates the total revenue', ->
      Ember.run ->
        hotel = App.Extra.createRecord(price: '100', orders: '3')
        expect(hotel.get('revenue')).toEqual(300)