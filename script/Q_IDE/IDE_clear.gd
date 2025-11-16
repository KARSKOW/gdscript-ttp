extends Button

@export var output_result : RichTextLabel

func _on_pressed():
	output_result.text = ""
	output_result.printter = 0
	output_result.printter_arr = []
	
