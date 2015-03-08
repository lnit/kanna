App.factory 'Room', ($resource) ->
  $resource '/rooms/:id.json', { id: '@id' }, update: { method: 'put' }
