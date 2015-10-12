'use strict'

###*
 # @ngdoc function
 # @name testApp.controller:ProjectCtrl
 # @description
 # # ProjectCtrl
 # Controller of the testApp
###
angular.module 'testApp'
  .controller 'ProjectCtrl', ['$scope', 'projects', '$timeout', ($scope, projects, $timeout) ->

    $scope.addNewProject = (newProject) ->
      projects.add(newProject).then ->
        $scope.createSuccessfully = true
        alertHide = ->
          $scope.createSuccessfully = false
        $timeout(alertHide, 2000)
        $scope.newProject = {}

    return
  ]
