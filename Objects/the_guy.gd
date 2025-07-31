## This is messy AF

extends Sprite2D

var level = 1
var currentDialogue = 0
var selected = false
var speaking = false
var playerClose = false

@onready var dialogueBox = $"../../CanvasLayer/Dialogue"
@onready var player = %Player

func _on_area_2d_mouse_entered() -> void:
	Global.DialogueMouseChange()

func _on_area_2d_mouse_exited() -> void:
	Global.WalkMouseChange()

func DialogueController():
	match level:
		1:
			LevelOneDialogue()
	
func LevelOneDialogue():
	
	match currentDialogue:
		0:
			dialogueBox.Say("The Guy", "Oh hey, you're here too", false, self)

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("Interact"):
		if playerClose:
			DialogueController()
		else:
			player.target = self.global_position - Vector2(200, 0)
			selected = true
	
func _on_speak_area_body_entered(body: Node2D) -> void:
	playerClose = true
	if selected:
		selected = false
		DialogueController()

func _on_speak_area_body_exited(body: Node2D) -> void:
	playerClose = false
