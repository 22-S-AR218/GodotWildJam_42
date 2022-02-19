extends Node2D

var chests_to_open :int

func _ready() -> void:
	for i in get_child_count():
		chests_to_open +=1
