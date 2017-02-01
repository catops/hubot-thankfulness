# Description
#   A Hubot script that listens for thanks yous
#
# Configuration:
#   HUBOT_THANKS_URL - URL to remind thanker to visit
#
# Commands:
#   (thanks|thank you) @user for being awesome - bot DMs you with a thank you reminder
#
# Author:
#   Andy Chosak

module.exports = (robot) ->
  thanksKeywords = "thanks|thank you"

  robot.hear ///
    (?:#{thanksKeywords})
    \s+
    ([\w"@.\-:]+)(?:[,!.])?
    \s*
    (.+)?
  ///i, (res) ->

    [dummy, username, message] = res.match

    username = username.replace(/^@+/, "")
    user = robot.brain.userForName(username)

    return unless user?

    email = encodeURIComponent(user.email_address)

    baseUrl = process.env.HUBOT_THANKS_URL
    unless baseUrl?
        res.reply "Missing HUBOT_THANKS_URL in environment. Please set and try again."
        return

    url = "#{baseUrl}?email=#{email}"

    if message?
        draft_thanks = encodeURIComponent(message)
        url += "&draft_thanks=#{draft_thanks}"

    message = "To thank @#{username}, visit this URL in Citrix: #{url}"

    robot.messageRoom res.message.user.name, message
