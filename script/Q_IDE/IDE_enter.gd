extends Button

signal print_result(print: String)

@export var test_node : Node
@export var code_edit : CodeEdit
@export var output_result : RichTextLabel

func _on_pressed():
	var create_script = GDScript.new()
	create_script.source_code = code_edit.text
	create_script.reload()
	test_node.set_script(create_script)
	emit_signal("print_result", str(test_node.pressed_enter()))
