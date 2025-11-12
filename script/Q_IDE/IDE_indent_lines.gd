extends Button

@export var code_edit : CodeEdit

func _on_pressed():
	code_edit.indent_lines()
