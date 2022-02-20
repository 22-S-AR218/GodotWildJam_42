extends Node2D

var coin : PackedScene = preload("res://Scenes/Coins.tscn")
var chest : PackedScene = preload("res://Scenes/Chest.tscn")
var key : PackedScene = preload("res://Scenes/Keys.tscn")

func _ready() -> void:
	$Player.position = $StartingPos.position
	if not GlobalVars.initiated_levels[GlobalVars.current_level]:
		GlobalVars.initiated_levels[GlobalVars.current_level] = true
		print(GlobalVars.initiated_levels)
	else:
		for i in $Coins.get_children():
			i.queue_free()
		for i in GlobalVars.level0_coins:
			var c = coin.instance()
			c.position = i
			$Coins.add_child(c)
			
		for i in $Chests.get_children():
			i.queue_free()
		for i in GlobalVars.level0_chests:
			var c = chest.instance()
			c.position = i
			$Chests.add_child(c)
			
		for i in $keys.get_children():
			i.queue_free()
		for i in GlobalVars.level0_chests:
			var c = key.instance()
			c.position = i
			$Keys.add_child(c)
		

func _process(delta: float) -> void:
	if $Coins.get_child_count() == 0 and $Chests.chests_to_open == 0:
		GlobalVars.completed_levels[GlobalVars.current_level] = true
		
		if GlobalVars.completed_levels == [true,true,true]:
			get_tree().change_scene("res://MainMenu.tscn")
