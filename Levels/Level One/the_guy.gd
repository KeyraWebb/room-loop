extends Sprite2D

var level
var selected = false
@onready var dialogueBox = $"../../CanvasLayer/Dialogue"

func _on_area_2d_mouse_entered() -> void:
	Global.DialogueMouseChange()

func _on_area_2d_mouse_exited() -> void:
	Global.WalkMouseChange()



func DialogueController():
	pass
	
func LevelOneDialogue():
	dialogueBox.Say("The Guy", "HI")


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("Interact"):
		LevelOneDialogue()
