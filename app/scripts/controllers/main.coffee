'use strict'

###*
 # @ngdoc function
 # @name testApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the testApp
###
angular.module 'testApp'
  .controller 'MainCtrl', [ '$scope', 'projects', ($scope, projects) ->
    # $scope.projects = projects.getList()
    return
  ]