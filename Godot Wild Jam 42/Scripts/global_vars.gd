extends Node
var keys : int = 0
var coins : int = 0
var chests : int = 0
var current_level : int = 0
var level0 : PackedScene = preload("res://Levels/Level_Colleen.tscn")
var level1 : PackedScene = preload("res://Levels/Level_Jenn.tscn")
var level2 : PackedScene = preload("res://Levels/Level_Tehya.tscn")
var levels : Array = [level0, level1, level2]
var completed_levels : Array = [false, false, false]


	
