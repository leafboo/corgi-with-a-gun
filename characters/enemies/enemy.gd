extends CharacterBody2D

class_name Enemy

@export var attack_damage: int
@export var max_hp: int


func _on_hurt_box_area_entered(glock_bullet: Area2D) -> void:
	
	self.max_hp -= glock_bullet.damage
	print("hp: {max_hp}".format({"max_hp": max_hp}))
	glock_bullet.queue_free()
	
	if max_hp <= 0:
		queue_free()
	
