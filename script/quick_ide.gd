extends CodeEdit
@export_multiline var reset_code : String
func _ready():
	var create_script = GDScript.new()
	create_script.source_code = reset_code
	
	self.text = create_script.source_code
