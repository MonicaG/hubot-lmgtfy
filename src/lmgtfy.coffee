# Description
#   A hubot script that replies with a link to http://lmgtfy.com/ (let me google that for you)
#
# Configuration:
#   None
#
# Commands:
#   hubot lmgtfy <query> - responds with a 'let me google that for you' link: http://lmgtfy.com/?q=query
#
# Notes:
#   None
#
# Author:
#   Monica Granbois <mgranbois@outlook.com>

module.exports = (robot) ->
  robot.respond /lmgtfy (.*)/i, (res) ->
    topic = encodeURIComponent(res.match[1]).replace(/[!'()*]/g, escape)
    res.send "http://lmgtfy.com/?q=#{topic}"


