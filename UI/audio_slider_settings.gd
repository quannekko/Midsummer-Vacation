extends Control


@onready var audio_name = $HBoxContainer/Audio_Name as Label
@onready var h_slider = $HBoxContainer/HSlider as HSlider


@export_enum("Master", "BGM", "Voice", "SFX") var bus_name : String

var bus_index

func _ready(): 
	h_slider.value_changed.connect(on_value_changed)
	get_bus_name_by_index()
	set_name_label_text()
	set_slider_value()

func set_name_label_text() -> void:
	audio_name.text = str(bus_name)

func get_bus_name_by_index() -> void: 
	bus_index = AudioServer.get_bus_index(bus_name)


func set_slider_value() -> void:
	h_slider.value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))

func on_value_changed(value : float) -> void: 
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value)) 
