extends Node2D

var menu = null
var instance = null

func _ready():
	add_level()

func add_level():
	instance = preload("res://scenes/Start_menu.tscn")
	menu = instance.instantiate()
	$InGame.add_child(menu)
