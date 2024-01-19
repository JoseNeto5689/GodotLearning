extends CharacterBody2D

signal playerShooted(pos)
signal playerGrenaded

var canShoot: bool = true
var canGrenade: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction: Vector2 = Input.get_vector("left", "rigth", "up", "down")
	velocity = direction * 300
	move_and_slide()
	
	if(Input.is_action_just_pressed("primary action")) and canShoot:
		var laserMarks: Array[Node] = $LaserStart.get_children()
		var selectedMark = laserMarks[randi() % laserMarks.size()]
		canShoot = false
		playerShooted.emit(selectedMark)
		%LaserTimer.start()
		
	if(Input.is_action_just_pressed("secundary action")) and canGrenade:
		canGrenade = false
		playerGrenaded.emit()
		%GrenadeTimer.start()
	





func _on_grenade_timer_timeout():
	canGrenade = true
	pass # Replace with function body.


func _on_laser_timer_timeout():
	canShoot = true
	pass # Replace with function body.
