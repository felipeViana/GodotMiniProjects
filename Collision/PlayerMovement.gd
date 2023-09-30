extends RigidBody3D

@export var move_speed : float = 2.0
@export var finish_text : Label

func _process(delta):
	var player_height = position.y
	if player_height < -60:
		finish_text.visible = true

func _physics_process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		linear_velocity.x = -move_speed
		
	if Input.is_key_pressed(KEY_RIGHT):
		linear_velocity.x = move_speed
	


func _on_body_entered(body):
	if body.is_in_group("Tree"):
		get_tree().reload_current_scene()
