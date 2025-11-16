extends RichTextLabel

var printter : int = 0
var printter_arr : Array

func _ready():
	QIDE.print_result.connect(_on_printter)

func _on_printter(args):
	var num = "[" + str(printter) + "]"
	if args != null:
		printter_arr.push_back(args)
		if printter > 0:
			text = text + "[br]" + num + str(printter_arr[printter])
		if printter == 0:
			text = text + num + str(printter_arr[printter])
		printter += 1
