extends Node2D

@export var spawnlocation : Vector2
@onready var player = %Player

func OpenRoom():
	player.global_position = spawnlocation
	self.visible = true
	
func CloseRoom():
	self.visible = false
