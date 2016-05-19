Sprangular.service 'Ad', ($http, $q, _, Status, Env) ->

  service = ads: ->
    $http.get('spree/api/ads').then (response) ->
      response.data
  service