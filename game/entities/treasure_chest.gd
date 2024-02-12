extends Area2D

var hp = 10
var in_chest_zone = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if in_chest_zone:
		take_damage(2) #this will change
		print("damage taken")


func take_damage(amount):
	hp -= amount
	if hp <= 0:
		print("broken")
		# add a way to break chest or disappear
		
func _on_body_entered(body):
	in_chest_zone = true
	print("in zone")

func _on_body_exited(body):
	in_chest_zone = false
	print("out zone")
	
