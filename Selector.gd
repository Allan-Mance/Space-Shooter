extends Control



func _on_Ship_1_pressed():
	Global.Player = load("res://Player/ship1.tscn")
	get_tree().change_scene_to_file("res://game.tscn")


func _on_Ship_2_pressed():
	Global.Player = load("res://Player/ship2.tscn")
	get_tree().change_scene_to_file("res://game.tscn")
