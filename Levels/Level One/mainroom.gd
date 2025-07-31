extends Node2D

@onready var player = %Player
var spawnLocation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func OpenRoom():
	self.visible = true
	player.global_position = spawnLocation

func CloseRoom():
	spawnLocation = player.global_position
	self.visible = false
