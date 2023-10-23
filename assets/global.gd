extends Node

var save_path = "res://popel.save"
var file = FileAccess.open(save_path, FileAccess.READ)

var level = file.get_var(level)
var max_health = file.get_var(max_health)
var spieler_health = 100
var music_vol = 20
