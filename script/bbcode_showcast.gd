extends RichTextLabel

@onready var code_edit = $"../CodeEdit"

func _ready():
	bbcode_enabled = true
	text = ""


func _on_button_pressed():
	if code_edit.text == "":
		text = "[color=red] ERROR: TEXT IS EMPTY."
	else:
		text = code_edit.text
