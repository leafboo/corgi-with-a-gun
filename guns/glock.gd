extends Gun


func _process(delta: float) -> void:
	rotateGun()
	if ammo_capacity > 0:
		fireGun()
		
	
	
		
