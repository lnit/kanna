App.controller 'RoomsController', ($scope, $interval, Room) ->
  $scope.room = Room.get id: location.pathname.split("/").pop()

  reloadRoom = ->
    Room.get id: location.pathname.split("/").pop(), (new_room) ->
      if $scope.room.updated_at_count < new_room.updated_at_count
        $scope.room = new_room

  $interval reloadRoom, 3 * 1000

  $scope.update = ->
    Room.update $scope.room, (
      (data) ->
        $scope.room.errors = []
      ), (
      (error) ->
        if error.status == 422
          $scope.room.errors = error.data
        else
          $scope.room.errors = ['Unknown error']
      )
