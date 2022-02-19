extends Node2D


export var Level_Colleen : PackedScene


func _on_New_Game_button_up():
	get_tree().change_scene(Level_Colleen.resource_path)


func _on_Instructions_pressed():
	get_tree().change_scene("res://Instructions.tscn")


func _on_Made_By_pressed():
	get_tree().change_scene("res://MadeBy.tscn")
