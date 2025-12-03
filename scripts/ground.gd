extends Area2D

signal hit

func _on_body_entered(body) -> void:
	SoundPlayer.play_sound(SoundPlayer.LOOSE)
	hit.emit()
