extends Button

@export var code_edit : CodeEdit

@export_multiline var reset_code : String

func _on_pressed():
	var create_script = GDScript.new()
	create_script.source_code = reset_code
	
	code_edit.text = create_script.source_code
