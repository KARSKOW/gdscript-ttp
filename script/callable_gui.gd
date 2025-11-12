extends Node

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().current_scene.is_in_group("main"):
			get_tree().quit()
		else:
			get_tree().change_scene_to_file("uid://qfxp3gwpa0dv")


func _notification(what):
	if what == NOTIFICATION_WM_GO_BACK_REQUEST:
		if get_tree().current_scene.is_in_group("main"):
			get_tree().quit()
		else:
			get_tree().change_scene_to_file("uid://qfxp3gwpa0dv")
