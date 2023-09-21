extends Control

func _ready():
	$Label.text = "Thanks for playing!\nYour final score was "+ str(Global.score) + "."

func _on_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	Global.reset()


func _on_quit_pressed():
	get_tree().quit()
