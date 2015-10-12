'use strict'

###*
 # @ngdoc service
 # @name testApp.projects
 # @description
 # # projects
 # Service in the testApp.
###
angular.module 'testApp'
  .factory 'projects', ['$firebaseArray', ($firebaseArray) ->
    rootRef = new Firebase("https://tododoapp.firebaseio.com")

    projectsRef = rootRef.child('projects')
    projectsFirebaseArray = $firebaseArray(projectsRef)

    return {
      getList: () ->
        projectsFirebaseArray


      addTask: (projectId, task) ->
        tasksRef = rootRef.child('projects').child(projectId).child('tasks')
        newChildRef = tasksRef.push();
        newChildRefId = newChildRef.key()
        newChildRef.set({
          id: newChildRefId,
          text: task.text,
          done: false
        })

      updateTask: (projectId, taskId, status) ->
        taskRef = projectsRef.child(projectId).child('tasks').child(taskId)
        tasFirebaseArray = $firebaseArray(taskRef)
        taskRef.update({ done: status })

      removeTask: (projectId, taskId) ->
        taskRef = projectsRef.child(projectId).child('tasks').child(taskId)
        taskRef.remove()

      remove: (projectId) ->
        projectRef = projectsRef.child(projectId)
        projectRef.remove()

      add: (newProject) ->
        console.log 'Creating: ', newProject
        projectsFirebaseArray.$add({
          title: newProject.name,
          description: newProject.description,
        }).then (test) ->
            console.log('test obj', test.key())
    }
  ]