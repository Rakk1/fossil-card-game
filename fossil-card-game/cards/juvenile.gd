extends "res://cards/card.gd"

func init(species):
	type = {
		"herd": {
			"phase": "juvenile",
			"species": species
		}
	}
	cardName = "juvenile "+species

func canbeplayed(table):
	var hasadult = false
	var hasegg = false
	for card in table:
		if card.key == "herd" and card.phase == "adult":
			hasadult = true
		if card.key == "herd" and card.phase == "egg":
			hasegg = true
	if hasadult and hasegg:
		return true
	else:
		return false
