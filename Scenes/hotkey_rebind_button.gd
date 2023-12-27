class_name HotkeyRebindButton
extends Control

@onready var label = $HBoxContainer/Label as Label
@onready var button = $HBoxContainer/Button as Button

@export var action_name : String = "move_left"


func _ready():
	set_process_unhandled_input(false)
	set_action_name()
	set_text_for_key()


func set_action_name() -> void:
	label.text = "Unassigned"
	
	match action_name: #điền thêm keybind vào đây
		"move_up":
			label.text = "Move Up"
		"move_down":
			label.text = "Move Down"
		"move_left":
			label.text = "Move Left"
		"move_right":
			label.text = "Move Right"
		

func set_text_for_key() -> void:
	var action_events = InputMap.action_get_events(action_name)
	var action_event = action_events[0]
	var action_keycode = OS.get_keycode_string(action_event.physical_keycode)
	
	button.text = "%s" % action_keycode






