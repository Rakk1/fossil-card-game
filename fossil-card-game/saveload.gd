extends Node

var latestversion = 0
const savelocation = "user://savefile.json"

var savecontents = {
	"version": 0,
	"savedDinos": {},
	"table": [],
	"hand": [],
	"settings": {
		"globalvolume": 1,
		"musicvolume": 1,
		"font": "regular",
		"fontsize": 16
	}
}


func _ready() -> void:
	_load()

func _save():
	var file = FileAccess.open(savelocation, FileAccess.WRITE)
	file.store_var(savecontents.duplicate())
	file.close()

func _load():
	if FileAccess.file_exists(savelocation):
		var file = FileAccess.open(savelocation, FileAccess.READ)
		var data = file.get_var()
		file.close()
		
		var savedata = data.duplicate()
		if(not savedata.has("version")):
			savedata["version"] = 0
		while(savedata.version != latestversion):
			savedata = getHigherVersion(savedata)
		savecontents = savedata

func getHigherVersion(savedata):
	match savedata.version:
		0:
			pass
