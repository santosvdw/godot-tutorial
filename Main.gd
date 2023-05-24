extends Node

export(PackedScene) var mob_scene
var score

func _ready() :
	randomize()

func _game_Over(): 
	$ScoreTimer.stop()
	$MobTimer.stop()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()
