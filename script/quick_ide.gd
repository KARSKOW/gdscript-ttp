extends CodeEdit
@export_multiline var reset_code : String
@export var code_prefixes : PackedStringArray

var code_completion_dict = [
	{kind = CodeEdit.KIND_CLASS, prefix_list = "QIDE", final_name = "QIDE"},
	{kind = CodeEdit.KIND_FUNCTION, prefix_list = "to_print", final_name = "to_print()"},
	{kind = CodeEdit.KIND_FUNCTION, prefix_list = "_ready()", final_name = "_ready()"},
	{kind = CodeEdit.KIND_FUNCTION, prefix_list = "_process(delta)", final_name = "_process(delta)"}
]

func _ready():
	var create_script = GDScript.new()
	create_script.source_code = reset_code
	
	self.text = create_script.source_code
	
	code_completion_prefixes = code_prefixes

func _on_toggle_enter():
	editable = false


func _on_toggle_exit():
	editable = true
	
	
func _on_text_changed():
	request_code_completion()
	print(get_word_at_pos(get_caret_draw_pos()))

func _on_code_completion_requested():
	for prefix in code_completion_dict:
		if get_word_at_pos(get_caret_draw_pos()) == get_word_at_pos(get_caret_draw_pos()):
			add_code_completion_option(prefix.kind, prefix.prefix_list, prefix.final_name)
	update_code_completion_options(false)
