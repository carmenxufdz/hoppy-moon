extends Node

const LOOSE = preload("res://sounds/loose.wav")
const JUMP = preload("res://sounds/hop.wav")

@onready var audioPlayer := $AudioPlayers

func play_sound(sound):
	for channel in audioPlayer.get_children():
		if not channel.playing:
			channel.stream = sound
			channel.play()
			break
