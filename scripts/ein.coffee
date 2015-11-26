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
	"ಠ_ಠ",
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
  " (┛◉Д◉)┛彡┻━┻"
]

module.exports = (robot) ->
	robot.hear /did you poop/i, (res) ->
		res.send "NO THANK YOU!!!"

	robot.hear /pooped/i, (res) ->
		res.send "NO THANK YOU!!!"

	robot.hear /what do you think/i, (msg) ->
		msg.send msg.random responses

	robot.hear /tableflip/i, (msg) ->
		msg.emote "watches " + msg.message.user.name + msg.random tableflips

	robot.respond /flip(.*)table/i, (msg) ->
		msg.send msg.random tableflips

