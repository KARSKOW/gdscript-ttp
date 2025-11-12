extends RichTextLabel

var printter : int = 0
var printter_arr : Array[String]
	
func _on_printter(to_print):
	print(to_print)
	if to_print != "":
		printter_arr.push_back(to_print)
		if printter > 0:
			text = text + "[br]" + printter_arr[printter]
		if printter == 0:
			text = text + printter_arr[printter]
		printter += 1
