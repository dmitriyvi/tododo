'use strict'

describe 'Directive: mainMenu', ->

  # load the directive's module
  beforeEach module 'testApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<main-menu></main-menu>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the mainMenu directive'
