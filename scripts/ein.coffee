# Ein needs to say some things.
responses = [
	"Stop it Daddy!",
	"Stop it Mommy!",
	"Boob punch!!",
	"Help yooouuu!",
	"SO CUTE!",
	"Never!!",
	"No thank yooouuu",
	"Crush it!",
	"Smash it!",
	"Kanpai!",
	"Arigatou.",
]

responses2 = [
	"o♪└|∵|┐♪└|∵|┘♪┌|∵|┘♪",
	"ヽ(´Д｀;≡;´Д｀)ﾉ",
	"┌(★o☆)┘♪└(★o★)┐♪┌(☆o★)┘",
	"∑(〇Д◎ﾉ)ﾉ",
	"o(●´ω｀●)o Yay♪",
	"＼(^_^=^_^)／",
	"∑(O_O；) Shock!!",
]

tableflips = [
  " (╯°□°）╯︵ ┻━┻",
  " (ﾉಥ益ಥ）ﾉ﻿ ┻━┻",
  " ┻━┻ ︵ヽ(`Д´)ﾉ︵﻿ ┻━┻",
  " (ノಠ益ಠ)ノ彡┻━┻",
  " (╯ಠ_ರೃ)╯︵ ┻━┻",
  " (┛❍ᴥ❍﻿)┛彡┻━┻",
  " (ʘ∇ʘ)ク 彡 ┻━┻",
  " (ノÒ益Ó)ノ彡▔▔▏",
  " /(ò.ó)┛彡┻━┻",
  " (┛◉Д◉)┛彡┻━┻",
]

module.exports = (robot) ->
	robot.hear /did you poop/i, (res) ->
		res.send "NO THANK YOU!!!"

	robot.hear /pooped/i, (res) ->
		res.send "NEVER!!!"

	robot.hear /what do you think/i, (msg) ->
		msg.send msg.random responses

	robot.hear /who are you/i, (res) ->
		res.send "ಠ_ಠ"

	robot.hear /how are you/i, (msg) ->
		msg.send msg.random responses2

	robot.hear /tableflip/i, (msg) ->
		msg.emote "watches " + msg.message.user.name + msg.random tableflips

	robot.respond /flip(.*)table/i, (msg) ->
		msg.send msg.random tableflips

