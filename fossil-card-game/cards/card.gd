extends Panel

var type #herd|food|action|end
var cardName

func init(_species):
	pass

func canbeplayed(table):
	return true if table else false
