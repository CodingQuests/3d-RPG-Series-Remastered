extends Node3D

@onready var monster = preload("res://Scenes/Monsters/Zombie.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	while get_node("Monsters").get_child_count() < 10:
		var x_pos = randi_range(-20,20)
		var z_pos = randi_range(-20,20)
		if (get_node("GridMap").get_cell_item(Vector3i(x_pos, 0, z_pos))) == 3:
			var monster_temp = monster.instantiate()
			monster_temp.position = Vector3i(x_pos, 3, z_pos)
			monster_temp.player = get_node("Player")
			get_node("Monsters").add_child(monster_temp)
