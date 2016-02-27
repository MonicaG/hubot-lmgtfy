Helper = require 'hubot-test-helper'
helper = new Helper('../src/lmgtfy.coffee')
chai = require 'chai'
expect = chai.expect


beforeEach ->
  @room = helper.createRoom()

afterEach ->
  @room.destroy()

context 'hubot responds to lmgtfy', ->
  it 'will encode text', ->
    @room.user.say('jane', 'hubot lmgtfy where is Côte d\'Ivoire?').then =>
      expect(@room.messages).to.eql [
        ['jane', 'hubot lmgtfy where is Côte d\'Ivoire?']
        ['hubot', 'http://lmgtfy.com/?q=where%20is%20C%C3%B4te%20d%27Ivoire%3F']
      ]

