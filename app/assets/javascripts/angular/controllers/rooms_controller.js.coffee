App.controller 'RoomsController', ($scope, Room) ->
  $scope.room = Room.get id: location.pathname.split("/").pop()
