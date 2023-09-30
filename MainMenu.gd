extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Game1Button.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_quit_button_pressed():
	get_tree().quit()

func _on_game_1_button_pressed():
	get_tree().change_scene_to_file("res://Balloon Popper/main.tscn")

func _on_game_2_button_pressed():
	get_tree().change_scene_to_file("res://Physics/Physics.tscn")

func _on_game_3_button_pressed():
	get_tree().change_scene_to_file("res://Loops/Loops.tscn")

func _on_game_4_button_pressed():
	get_tree().change_scene_to_file("res://Collision/collision.tscn")
