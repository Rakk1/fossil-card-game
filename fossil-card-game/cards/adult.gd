extends "res://cards/card.gd"

func init(species):
	type = {
		"herd": {
			"phase": "adult",
			"species": species
		}
	}
	cardName = "adult "+species

func canbeplayed(table):
	var hasjuvenile = false
	for card in table:
		if card.key == "herd" and card.phase == "juvenile":
			hasjuvenile = true
		if hasjuvenile:
			return true
	return false
