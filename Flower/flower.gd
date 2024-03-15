extends StaticBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	scale = Vector3(1, 1, 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale.y += 0.0005
