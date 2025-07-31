extends Sprite2D

@export var location : Node2D
@export var homeRoom : Node2D

var doorSelected = false

func _on_area_2d_mouse_entered() -> void:
	Global.InteractMouseChange()

func _on_area_2d_mouse_exited() -> void:
	Global.WalkMouseChange()

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton && event.pressed):
		doorSelected = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if doorSelected:
		doorSelected = false
		homeRoom.CloseRoom()
		location.OpenRoom()
