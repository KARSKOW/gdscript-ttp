@tool
extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	text = " -> Version : " + ProjectSettings.get("application/config/version")

# EDITOR TEST
func _process(_delta):
	text = " -> Version : " + ProjectSettings.get("application/config/version")
