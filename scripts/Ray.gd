extends RayCast3D

# Get nodes
@onready var ground_node := $"../Ground"
@onready var player := $".."

# Preload scenes to spawn
var test_tower = preload("res://scenes/test_tower.tscn")

# Interact with objects
func _physics_process(delta):
	if Input.is_action_just_pressed("interact") and is_colliding():
		var interacted_object: Object = get_collider()
		if interacted_object == ground_node:
			var new_tower: StaticBody3D = test_tower.instantiate()
			new_tower.global_position = get_collision_point()
			new_tower.rotation.y = player.rotation.y
