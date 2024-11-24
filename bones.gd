extends CharacterBody2D

@export var attack_damage: int = 0
@export var health: int = 100

func _on_hurt_box_area_entered(glock_bullet: Area2D) -> void:
	self.health -= glock_bullet.damage
	print("slime health: {health}".format({"health": health}))
	glock_bullet.queue_free()
	
