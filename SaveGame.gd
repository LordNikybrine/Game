extends Node

const save_path = "user://popel_savegame_1.save"

var savegame_data = {
	"name": "SPuILER",
	"level": 1,
	"max_HP": 100,
	"current_HP": 100,
}

func ready():
	save_data()
	pass

func save_data():
	var save_game = File.new()
	save_game.open(save_path, File.WRITE)
	save_game.store_line(to_json(savegame_data))
	save_game.close()
	prints("GAME SAVED")

func load_data():
	var save_game = File.new()
	if not save_game.file_exists(save_path):
		G.prints("no savegame found, mach ma")
		save_data()
		return
	
	save_game.open(save_path, File.READ)
	savegame_data = parse_json(save_game.get_line())
	prints("savegame loaded", savegame_data)
