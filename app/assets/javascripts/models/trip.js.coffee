App.Trip = DS.Model.extend
  name: DS.attr('string'),
  description: DS.attr('string'),
  startDate: DS.attr('date'),
  endDate: DS.attr('date'),
  imageName: DS.attr('string'),
  slug: DS.attr('string'),
  tagLine: DS.attr('string'),
  price: DS.attr('number'),
  location: DS.attr('string'),
  activity: DS.attr('string'),
  hotels: DS.hasMany('App.Hotel'),
  extras: DS.hasMany('App.Extra')

  startMoment: (->
    moment @get('startDate')
  ).property('startDate')

  endMoment: (->
    moment @get('endDate')
  ).property('endDate')

  revenue: (->
    @get('orders') * @get('price')
  ).property('orders', 'price')

  totalHotelRevenue: (->
    @get('hotels').reduce ((runningTotal, item) ->
      runningTotal + item.get('revenue')
    ), 0
  ).property('hotels.@each.revenue')

  totalExtraRevenue: (->
    @get('extras').reduce ((runningTotal, item) ->
      runningTotal + item.get('revenue')
    ), 0
  ).property('extras.@each.revenue')

  totalRevenue: (->
    @get('revenue') + @get('totalHotelRevenue') + @get('totalExtraRevenue')
  ).property('revenue', 'totalHotelRevenue', 'totalExtraRevenue')
