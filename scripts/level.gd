extends Node2D

var laser_scene: PackedScene = preload("res://scenes/player/laser.tscn")

func _on_gate_body_entered_gate(body):
	print(body)


func _on_player_player_shooted(pos):
	var laser = laser_scene.instantiate()
	laser.position = pos.position
	add_child(laser, true)
	pass # Replace with function body.



func _on_player_player_grenaded():
	print("The player grenaded now")
	pass # Replace with function body.
