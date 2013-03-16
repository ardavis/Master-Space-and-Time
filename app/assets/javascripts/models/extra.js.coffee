App.Extra = DS.Model.extend
  name: DS.attr('string'),
  description: DS.attr('string'),
  price: DS.attr('number'),
  orders: DS.attr('number'),
  trip: DS.belongsTo('App.Trip'),

  revenue: (->
    @get('orders') * @get('price')
  ).property('orders', 'price')