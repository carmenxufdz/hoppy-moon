extends Area2D

signal hit
signal scored

func _on_body_entered(body) -> void:
	SoundPlayer.play_sound(SoundPlayer.LOOSE)
	hit.emit()


func _on_score_area_body_entered(body: Node2D) -> void:
	scored.emit()
