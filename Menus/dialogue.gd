extends Control

var dialogueNext = false
var speaking = false
var currentSpeaker
@onready var speakerLabel = $PanelContainer/MarginContainer/VBoxContainer/Speaker
@onready var textLabel = $PanelContainer/MarginContainer/VBoxContainer/RichTextLabel

func Say(speaker, text, continueDialogue, origin):
	get_tree().paused = true
	dialogueNext = continueDialogue
	speaking = true
	currentSpeaker = origin
	speakerLabel.text = speaker
	textLabel.text = text
	self.visible = true 
	
func _input(event: InputEvent) -> void:
	if speaking:
		if event.is_action_pressed("Interact"):
			get_tree().paused = false
			if dialogueNext:
				currentSpeaker.DialogueController()
			else: 
				self.visible = false
				
