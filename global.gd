extends Node

var score = 0
var lives = 5
var time = 30

func ready():
	randomize()
	reset()


func _process(_delta):
	if Input.is_action_pressed("Quit"):
		get_tree().quit()
		
func update_lives(l):
	lives += l
	var hud = get_node_or_null("/root/Game/UI/HUD")
	if hud != null:
		hud.update_lives()
	if lives < 0:
		get_tree().change_scene_to_file("res://UI/end_game.tscn")
	
	
func update_score(s):
	score += s
	var hud = get_node_or_null("/root/Game/UI/HUD")
	if hud != null:
		hud.update_score()
	
func update_time(t):
	time += t

func reset():
	score = 0
	time = 30
	lives = 5
