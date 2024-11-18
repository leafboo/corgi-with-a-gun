extends CharacterBody2D

@export var max_hp: int = 100

func _on_hurt_box_area_entered(hitbox: Area2D) -> void: # hitbox is the Area2D that has entered the hurt box
	var base_damage = hitbox.damage
	self.max_hp -= base_damage
	print("hp: {max_hp}".format({"max_hp": max_hp}))
	
	
