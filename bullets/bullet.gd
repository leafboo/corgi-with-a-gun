extends Area2D

class_name Bullet

@export var damage: int
@export var speed: int


func _process(delta: float) -> void:
	position += transform.x * speed * delta
	


# Function to remove/free the GlockBullet node when it is offscreen
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
