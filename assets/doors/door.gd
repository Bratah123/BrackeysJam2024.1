extends Area2D

var open = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if open:
		$DoorImage.texture = load("res://assets/doors/open_door.webp")
	else:
		$DoorImage.texture = load("res://assets/doors/closed_door.webp")
	if Input.is_action_pressed("interact") and open:
		print("teleporting")
		
func _on_body_entered(body):
	if body.is_in_group("Player"):
		open = true 

func _on_body_exited(body):
	if body.is_in_group("Player"):
		open = false
