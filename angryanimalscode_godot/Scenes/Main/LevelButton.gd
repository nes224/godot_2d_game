extends TextureButton

@export var level_number: int = 1
@onready var level_label = $MarginContainer/VB/LevelLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	level_label.text = str(level_number)


func _on_mouse_exited():
	scale = Vector2(1.0, 1.0)


func _on_mouse_entered():
	scale = Vector2(1.1, 1.1)
