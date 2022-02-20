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
#var initiated_levels : Array = [false, false, false]
#
#var level0_keys : PoolVector2Array = []
#var level0_coins : PoolVector2Array = []
#var level0_chests : PoolVector2Array = []
#
#var level1_keys : PoolVector2Array = []
#var level1_coins : PoolVector2Array = []
#var level1_chests : PoolVector2Array = []
#
#var level2_keys : PoolVector2Array = []
#var level2_coins : PoolVector2Array = []
#var level2_chests : PoolVector2Array = []
