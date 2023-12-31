extends gamemodeAbstract
## gamemode for rogueInvaders


# Called when the node enters the scene tree for the first time.
func _ready():
	globalData.player.position = Vector2(300,635)
	add_child(globalData.player.duplicate())

	find_child("HighScore").text = "%05d" % globalData.highscore[1][0].score
	_set_score(globalData.score)
	globalData.gamemode = 1

func nextLevel():
	globalData.level += 1
	get_tree().change_scene_to_file("res://scene/UI/effectList.tscn")

func gameOver():
	globalData.action = "setScore"
	get_tree().change_scene_to_file("res://scene/UI/SpaceInvadersMenu/highscoreMenu.tscn")
