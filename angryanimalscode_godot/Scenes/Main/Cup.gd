class_name Cup

extends StaticBody2D

const GROUP_NAME: String = "Cup"

@onready var animation_player = $AnimationPlayer

const name_vanish = "vanish"

func _enter_tree() -> void:
	add_to_group(GROUP_NAME)

func die() -> void:
	animation_player.play(name_vanish)

func _on_animation_finished(anim_name):
	if anim_name == name_vanish:
		SignalHub.emit_on_cup_destroyed()
		queue_free()
