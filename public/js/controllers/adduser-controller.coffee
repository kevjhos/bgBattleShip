define ['controllers', 'exampleResource'], (controllers) ->
  controllers.controller 'addUserController', ['$scope', 'resourcePeople', ($scope, resourcePeople) ->
    $scope.newusernom
    $scope.newuserlast
    $scope.newusercode
    $scope.test = (nomu,apeu,codu) ->
     alert "son.."+nomu+apeu+codu
  ]    
    #object = 
    #	firstName: "jhosmar"
    # lastName: "person"
    #	personId: "1124 OR"

    #resourcePeople.save {person:object}, (serverResponse) ->
    #	console.log "se creo persona"
    #, (error) ->
    #  console.log "error" #resourceSpecificPeople.update 