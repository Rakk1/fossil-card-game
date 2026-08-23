extends "res://cards/card.gd"

func init(_species):
	type = {
		"action": {
			"action": "makenest"
		}
	}
	cardName = "make nest"

func canbeplayed(_table):
	return true
