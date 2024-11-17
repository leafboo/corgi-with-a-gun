extends Node2D

const speed = 300

func _process(delta: float) -> void:
	position += transform.x * speed * delta


# Function that removes an instance of the bullet scene from the scene tree 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
