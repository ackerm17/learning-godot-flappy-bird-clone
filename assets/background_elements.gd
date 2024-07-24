extends Node2D

var rng = RandomNumberGenerator.new()
var cloud_x = rng.randf_range(0 , 1000)
var cloud_y = rng.randf_range(-400,0)
var counter = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	if(counter > 4):
		cloud_x = 1500
	position.x += cloud_x
	position.y += cloud_y
	counter += 1
	pass
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 30 * delta
