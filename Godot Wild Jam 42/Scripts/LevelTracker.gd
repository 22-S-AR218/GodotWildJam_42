extends Node2D

func _ready() -> void:
	$Player.position = $StartingPos.position

func _process(delta: float) -> void:
	if $Coins.get_child_count() == 0 and $Chests.chests_to_open == 0:
		GlobalVars.completed_levels[GlobalVars.current_level] = true
		
		if GlobalVars.completed_levels == [true,true,true]:
			get_tree().change_scene("res://MainMenu.tscn")
