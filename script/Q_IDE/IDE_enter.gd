extends Button

signal toggle_enter
signal toggle_exit

@export var code_edit : CodeEdit
@export var output_result : RichTextLabel

var is_entered : bool = false

var create_node = null

var start_color = Color(0.055, 0.118, 0.102, 0.667)
var stop_color = Color(0.722, 0.0, 0.0, 1.0)

func _on_pressed():
	is_entered = not is_entered
	if is_entered == true:
		self.text = "STOP"

		var create_script = GDScript.new()
		create_script.source_code = code_edit.text
		var check_coding = create_script.reload()
		if check_coding != OK:
			QIDE.to_print("编译失败.")
			return

		create_node = Node.new()
		create_node.set_script(create_script)
		get_tree().current_scene.add_child(create_node)
		emit_signal("toggle_enter")
	else:
		self.text = "START >"

		if create_node and is_instance_valid(create_node):
			create_node.queue_free()
			create_node = null
		
		emit_signal("toggle_exit")
