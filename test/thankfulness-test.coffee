Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/thankfulness.coffee')

describe 'thankfulness', ->
  beforeEach ->
    @room = helper.createRoom()
    @room.user.isAdmin = true
    @room.robot.auth = isAdmin: =>
      return @room.user.isAdmin

  afterEach ->
    @room.destroy()
