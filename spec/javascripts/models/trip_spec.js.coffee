describe 'Trips', ->
  beforeEach ->
    Ember.testing = true

  describe 'price calculation', ->

    it 'calculates the total revenue', ->
      Ember.run ->
        trip = App.Trip.createRecord(price: 100, orders: 3)
        expect(trip.get('revenue')).toEqual(300);

    it 'calculates total revenue for all hotels', ->
      Ember.run ->
        trip = App.Trip.createRecord(price: 100, orders: 3)
        trip.get('hotels').pushObject App.Hotel.createRecord(revenue: 500)
        trip.get('hotels').pushObject App.Hotel.createRecord(revenue: 600)

        expect(trip.get('totalHotelRevenue')).toEqual(1100)

    it 'calculates total revenue for all extras', ->
      Ember.run ->
        trip = App.Trip.createRecord(price: 100, orders: 3)
        trip.get('extras').pushObject App.Extra.createRecord(revenue: 500)
        trip.get('extras').pushObject App.Extra.createRecord(revenue: 600)

        expect(trip.get('totalExtraRevenue')).toEqual(1100)

    it 'calculates all of its revenue', ->
      Ember.run ->
        trip = App.Trip.createRecord(price: 100, orders: 3)
        trip.set('totalHotelRevenue', 500)
        trip.set('totalExtraRevenue', 500)

        expect(trip.get('totalRevenue')).toEqual(1300)