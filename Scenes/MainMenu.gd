class_name  MainMenu
extends Control


@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/start_button as Button
@onready var load_button = $MarginContainer/HBoxContainer/VBoxContainer/load_button as Button
@onready var setting_button = $MarginContainer/HBoxContainer/VBoxContainer/setting_button as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/exit_button as Button

@onready var start_level = preload("res://node_2d.tscn") as PackedScene


func _ready():
	handle_connecting_signals()


func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)


func on_setting_pressed() -> void:
	print("LOAD SETTING MENU")


func on_exit_pressed() -> void:
	get_tree().quit()

func handle_connecting_signals() -> void:
	start_button.button_down.connect(on_start_pressed)
	setting_button.button_down.connect(on_setting_pressed)
	exit_button.button_down.connect(on_exit_pressed)
