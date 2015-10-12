'use strict'

###*
 # @ngdoc directive
 # @name testApp.directive:project
 # @description
 # # project
###
angular.module 'testApp'
  .directive 'project', [ 'projects',(projects) ->
    restrict: 'EA'
    templateUrl: 'views/partials/project.html'

    link: (scope, element, attrs) ->
      scope.projects = projects.getList()
      console.log 'projects#', scope.projects
      scope.ajaxLoader = true

      scope.removeProject = (projectId) ->
        projects.remove(projectId)

      scope.addTask = (projectId, task) ->
        projects.addTask(projectId, task)
        task.text = ''

      return
  ]
