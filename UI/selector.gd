extends Control


func _on_ship_1_pressed():
	Global.Player = load("res://Player/ship1.tscn")
	get_tree().change_scene_to_file("res://game.tscn")



func _on_ship_2_pressed():
	Global.Player = load("res://Player/ship2.tscn")
	get_tree().change_scene_to_file("res://game.tscn")
