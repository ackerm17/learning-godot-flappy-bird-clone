extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var my_random_number = rng.randf_range(-125, 375)

# Get the gravity from the project settings to be synced with RigidBody nodes.
func _ready():
	position.y += my_random_number


func _physics_process(delta):
	position.x -= 200 * delta
