extends StaticBody2D

const rotationSpeed:int = 700;

func _process(delta):
	rotation_degrees += rotationSpeed*delta
	pass
