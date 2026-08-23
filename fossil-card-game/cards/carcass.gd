extends "res://cards/card.gd"

func init(_species):
	type = {
		"food": {
			"type": "meat",
			"species": "carcass",
			"amount": 6
		}
	}
	cardName = "meat carcass"

func canbeplayed(_table):
	return true
