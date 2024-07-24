extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 250 * delta


func _on_area_2d_2_body_entered(body):
	if body.is_in_group("player"):
		get_tree().call_deferred("change_scene_to_file", "res://assets/menu.tscn")






func _on_pointup_body_entered(body):
	if body.is_in_group("player"):
		Global.points += 1
