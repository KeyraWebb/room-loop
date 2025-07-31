extends Control

@onready var inventory = $TabContainer/Inventory
@onready var options = $TabContainer/Options

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Pause"):
		options.visible = true
		Global.InteractMouseChange()
		OpenClose()
		return
		
	if event.is_action_pressed("Inventory"):
		inventory.visible = true
		Global.InteractMouseChange()
		OpenClose()
		return

func _on_close_pressed() -> void:
	Global.WalkMouseChange()
	OpenClose()

func OpenClose():
	self.visible = !self.visible
	get_tree().paused = !get_tree().paused

func _on_quit_pressed() -> void:
	get_tree().quit()
