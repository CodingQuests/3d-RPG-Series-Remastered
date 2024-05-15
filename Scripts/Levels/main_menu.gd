extends Node2D



func _on_button_pressed() -> void:
	if !FileAccess.file_exists(Utils.SAVED_SCENE):
		#Start "new" game
		get_tree().change_scene_to_file("res://Scenes/Levels/Level 1.tscn")
	else:
		get_tree().get_root().add_child(Utils.load_scene())
		self.queue_free()
