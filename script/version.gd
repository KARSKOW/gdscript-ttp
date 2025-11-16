@tool
extends Label

func _ready():
	text = " -> Version : " + ProjectSettings.get("application/config/version")

func _process(_delta):
	text = " -> Version : " + ProjectSettings.get("application/config/version")
