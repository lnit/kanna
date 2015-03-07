App.controller 'RoomsController', ($scope, $interval, Room) ->
  $scope.room = Room.get id: location.pathname.split("/").pop()

  reloadRoom = ->
    Room.get id: location.pathname.split("/").pop(), (new_room) ->
      $scope.room = new_room

  $interval reloadRoom, 3 * 1000
