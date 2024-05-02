extends Node

var state = {
	"Idle": preload("res://Scripts/Monsters/AI/IdleState.gd"),
	"Run": preload("res://Scripts/Monsters/AI/RunState.gd"),
	"Attack": preload("res://Scripts/Monsters/AI/AttackState.gd"),
	"Death": preload("res://Scripts/Monsters/AI/DeathState.gd"),
}


func changeState(newState):
	if get_child_count() != 0:
		get_child(0).queue_free()
	if state.has(newState):
		var stateTemp = state[newState].new()
		stateTemp.name = newState
		add_child(stateTemp)
