# Ein needs to say some things.
module.exports = (robot) ->
	robot.hear /did you poop/i, (res) ->
		res.send "NO THANK YOU!!!"
