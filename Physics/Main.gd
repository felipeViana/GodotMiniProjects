extends Node2D

func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
