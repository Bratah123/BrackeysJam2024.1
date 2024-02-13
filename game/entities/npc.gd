extends StaticBody2D

@onready var dialogue_box = $Dialogue

const Player = preload("res://game/entities/player.gd")
var tween
const fade_length = .3

func _ready():
	dialogue_box.modulate.a = 0

func _on_dialogue_detection_area_body_entered(body):
	if body is Player:
		print("entered")
		if tween:
			tween.kill()
		tween = create_tween()
		tween.tween_property(dialogue_box, "modulate:a", 1, fade_length)
		tween.set_trans(Tween.TRANS_LINEAR)


func _on_dialogue_detection_area_body_exited(body):
	if body is Player:
		if tween:
			tween.kill()
		tween = create_tween()
		tween.tween_property(dialogue_box, "modulate:a", 0, fade_length)
		tween.set_trans(Tween.TRANS_LINEAR)
	
