/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
const Helper = require('hubot-test-helper');
const helper = new Helper('../src/lmgtfy.js');
const chai = require('chai');
const { expect } = chai;


beforeEach(function() {
  return this.room = helper.createRoom();
});

afterEach(function() {
  return this.room.destroy();
});

context('hubot responds to lmgtfy', () =>
  it('will encode text', function() {
    return this.room.user.say('jane', 'hubot lmgtfy where is Côte d\'Ivoire?').then(() => {
      return expect(this.room.messages).to.eql([
        ['jane', 'hubot lmgtfy where is Côte d\'Ivoire?'],
        ['hubot', 'http://lmgtfy.com/?q=where%20is%20C%C3%B4te%20d%27Ivoire%3F']
      ]);
  });
})
);
