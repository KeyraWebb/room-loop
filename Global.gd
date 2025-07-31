extends Node

var interactMouse = load("res://Assets/images/cursors/interact cursor.png")
var walkMouse = load("res://Assets/images/cursors/movement cursor.png")
var dialogueMouse = load("res://Assets/images/cursors/dialogue cursor.png")

func InteractMouseChange():
	Input.set_custom_mouse_cursor(interactMouse)
	
func WalkMouseChange():
	Input.set_custom_mouse_cursor(walkMouse)
	
func DialogueMouseChange():
	Input.set_custom_mouse_cursor(dialogueMouse)
