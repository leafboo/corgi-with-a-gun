extends Node2D
class_name Gun

@export var ammo_capacity: int
@onready var muzzle: Marker2D = $Marker2D
var bullet  # Reference of the bullet initialized in the child class


func rotateGun():
	look_at(get_global_mouse_position())
	
	rotation_degrees = wrap(rotation_degrees, 0, 360) # Wrap the rotation degrees value to only be between 0 and 360
	
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -1
	else:
		scale.y = 1
		
		
func fireGun():
	if Input.is_action_just_pressed("fire"):
		var bullet_instance = bullet.instantiate() # Make instance / clones of that scene
		get_tree().root.add_child(bullet_instance) # put that instance into a child node of the root in the scene tree
		bullet_instance.global_position = muzzle.global_position # Set the bullet's position equal to the position of the muzzle
		bullet_instance.rotation = rotation # Set the rotation of the bullet equal to the rotation of the gun
		ammo_capacity -= 1
		print(ammo_capacity)
		
