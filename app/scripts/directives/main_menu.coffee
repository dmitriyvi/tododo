'use strict'

###*
 # @ngdoc directive
 # @name testApp.directive:mainMenu
 # @description
 # # mainMenu
###
angular.module 'testApp'
  .directive 'mainMenu', [ '$location', ($location) ->
    restrict: 'EA'
    templateUrl: 'views/partials/main_menu.html'
    link: (scope, element, attrs) ->

      scope.isActive = (viewLocation) ->
        if viewLocation is $location.path()
          active = true
          return active
  ]