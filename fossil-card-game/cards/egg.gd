extends "res://cards/card.gd"

func init(species):
	type = {
		"herd": {
			"phase": "egg",
			"species": species
		}
	}
	cardName = species+" egg"

func canbeplayed(table):
	var numadults = 0
	var hasnest = false
	for card in table:
		if card.key == "herd" and card.phase == "adult":
			numadults +=1
		if card.key == "action" and card.action == "makenest":
			hasnest = true
	if numadults>=2 and hasnest:
		return true
	else:
		return false
