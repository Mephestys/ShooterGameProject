extends Node2D

# called when something enters the Area2D
func _on_object_entered(body):
	# body.filename is the file the object is instanced of,
	# in this case we check if it is an instance of the player scene
	if body.filename == "res://objects/player.tscn":
		# queue this object for deletion
		queue_free()
