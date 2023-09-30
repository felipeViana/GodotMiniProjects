extends Node2D

@export var spawn_count : int = 100
var star_scene : Resource = preload("res://Loops/star.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
		
		star.position.x = randi_range(-280, 280)
		star.position.y = randi_range(-150, 150)
		
		var star_size = randf_range(0.5, 1.0)
		star.scale.x = star_size
		star.scale.y = star_size

func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
