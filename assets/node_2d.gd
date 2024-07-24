extends Node2D

var mynode = preload("res://assets/obstacle.tscn")
var background_node = preload("res://assets/background_elements.tscn")


# Called when the node enters the scene tree for the first time.

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(5):
		var cloud_instance = background_node.instantiate()
		add_child(cloud_instance)
	var instance = mynode.instantiate()
	add_child(instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_timer_timeout():
	var instance = mynode.instantiate()
	add_child(instance)


func _on_background_timer_timeout():
	var cloud_instance = background_node.instantiate()
	add_child(cloud_instance)
