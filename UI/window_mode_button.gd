extends Control


@onready var option_button = $HBoxContainer/OptionButton as OptionButton

#các kiểu hiển thị 
const WINDOW_MODE_ARRAY : Array[String] = [
	"Windowed",
	"Borderless Fullscreen",
	#"Exclusive Fullscreen",
]
	


func _ready():
	add_window_mode_items()
	option_button.item_selected.connect(on_window_mode_selected)

func add_window_mode_items() -> void:
	for window_mode in WINDOW_MODE_ARRAY:
		option_button.add_item(window_mode)


func on_window_mode_selected(index: int) -> void:
	match index:
		0: #Windowed
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		
		1: #Borderless Fullscreen
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true) 
			
		#2: #Exclusive Fullscreen
			#DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
			#DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
