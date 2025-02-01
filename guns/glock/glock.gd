extends Gun

var glock_bullet = preload("res://bullets/glock_bullet.tscn") # Make a reference to the glock bullet

func _ready() -> void:
	bullet = glock_bullet # Pass the reference glock_bullet to the bullet variable in the parent class

func _process(delta: float) -> void:
	rotateGun()
	if ammo_capacity > 0:
		fireGun()
		
	
	
		
