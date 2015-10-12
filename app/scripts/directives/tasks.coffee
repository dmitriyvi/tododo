'use strict'

###*
 # @ngdoc directive
 # @name testApp.directive:tasks
 # @description
 # # tasks
###
angular.module 'testApp'
  .directive 'tasks', [ 'projects',(projects) ->
    restrict: 'EA'
    templateUrl: 'views/partials/task.html'

    link: (scope, element, attrs) ->

      scope.removeTask = (projectId, taskId) ->
        projects.removeTask(projectId, taskId)

      scope.taskStatus = (projectId, taskId, status) ->
        projects.updateTask(projectId, taskId, status)

      return
  ]