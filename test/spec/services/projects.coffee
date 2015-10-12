'use strict'

describe 'Service: projects', ->

  # load the service's module
  beforeEach module 'testApp'

  # instantiate service
  projects = {}
  beforeEach inject (_projects_) ->
    projects = _projects_

  it 'should do something', ->
    expect(!!projects).toBe true
