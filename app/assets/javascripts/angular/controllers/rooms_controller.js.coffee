App.controller 'RoomsController', ($scope, $interval, Room) ->
  $scope.room = Room.get id: location.pathname.split("/").pop()

  reloadRoom = ->
    $scope.room = Room.get id: location.pathname.split("/").pop()

  $interval reloadRoom, 3 * 1000
