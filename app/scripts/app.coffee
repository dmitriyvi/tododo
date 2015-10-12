'use strict'

###*
 # @ngdoc overview
 # @name testApp
 # @description
 # # testApp
 #
 # Main module of the application.
###
angular
  .module 'testApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'firebase',
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/addProject',
        templateUrl: 'views/addProject.html'
        controller: 'ProjectCtrl'
      .otherwise
        redirectTo: '/'

