App.factory 'Room', ($resource, APP_CONF) ->
  $resource APP_CONF.urlBase + '/rooms/:id.json', { id: '@id' }, update: { method: 'put' }
