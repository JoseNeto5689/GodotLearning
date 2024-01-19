extends StaticBody2D


signal body_entered_gate(body)

func _on_area_2d_body_entered(body):
	body_entered_gate.emit(body)
