class_name SettingMenu
extends Control


@onready var back_button = $MarginContainer/VBoxContainer/Back_Button as Button


signal exit_setting_menu


func _ready():
	back_button.button_down.connect(on_back_pressed)
	set_process(false)

func on_back_pressed() -> void:
	exit_setting_menu.emit()
	set_process(false)
