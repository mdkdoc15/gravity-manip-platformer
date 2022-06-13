extends Node

# This node exists solely to collect and send signals to othr parts of the application
# So any signal needing to be retrieved can simply come here to get the data.
# Tutorial followed from http://www.video-games.io/blog/
# Note this IS a singleton.

signal PlayerDeath()			#score/money in top right corner


func _ready():
	pass
