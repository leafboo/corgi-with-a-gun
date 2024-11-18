extends Area2D


@export var damage: int = 10
@export var speed: int = 300

func _process(delta: float) -> void:
	position += transform.x * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
