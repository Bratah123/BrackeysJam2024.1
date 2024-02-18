extends Area2D

var open = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("interact") and open:
		print("teleporting")
		
func _on_body_entered(body):
	if body.name == "Player":
		open = true 
		$DoorImage.texture = load("res://assets/doors/closed_door.webp")
		
func _on_body_exited(body):
	if body.name == "Player":
		open = false
		$DoorImage.texture = load("res://assets/doors/open_door.webp")
