extends Area2D

var hp = 4
var in_chest_zone = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func take_damage(amount):
	hp -= amount
	if hp <= 0:
		print("broken")
		queue_free()
		
	
func _on_body_entered(body):
	if body.name == "Player":
		in_chest_zone = true
		print("in zone")

func _on_body_exited(body):
	if body.name == "Player":
		in_chest_zone = false
		print("out zone")
	
func _input(event):
	if in_chest_zone and Input.is_action_pressed("attack"):
		take_damage(1) 
		print("damage taken")
