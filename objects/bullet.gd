extends RigidBody2D

const RANGE = 20
var damage

func _ready():
	randomize()
	applied_force += Vector2(rand_range(-RANGE, RANGE), rand_range(-RANGE, RANGE))
	damage = randi() % 3 + 1
	add_collision_exception_with(self)

func _on_bullet_body_entered(body):
		if body.has_method("take_damage"):
			body.take_damage(damage)
			queue_free()
		else:
			queue_free()

func _on_Timer_timeout():
	queue_free()