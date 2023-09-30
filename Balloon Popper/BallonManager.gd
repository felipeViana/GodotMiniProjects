extends Node3D

var score : int = 0
@export var score_text : Label
@export var finish_text : Label
@export var buttons : VBoxContainer

func increase_score(amount):
	score += amount
	score_text.text = str("Score: ", score)

	if score == 5:
		print("Finish")
		finish_text.visible = true
		buttons.visible = true

func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
