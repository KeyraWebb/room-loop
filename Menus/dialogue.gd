extends Control

var dialogue = false
@onready var speakerLabel = $PanelContainer/VBoxContainer/Speaker
@onready var textLabel = $PanelContainer/VBoxContainer/RichTextLabel

func Say(speaker, text):
	speakerLabel.text = speaker
	textLabel.text = text
	self.visible = true
