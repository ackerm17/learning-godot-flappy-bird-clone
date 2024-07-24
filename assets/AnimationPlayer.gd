extends AnimationPlayer

var flapping = false

# Called when the node enters the scene tree for the first time.
func _ready():
	speed_scale = 6.0

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _input(_event):
	if Input.is_action_pressed("flap"):
		play("default")
