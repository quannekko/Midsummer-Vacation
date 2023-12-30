extends SubViewportContainer

var base_resolution = Vector2(
	ProjectSettings.get_setting("display/window/size/viewport_width"),
	ProjectSettings.get_setting("display/window/size/viewport_height"))

@onready var viewport: Viewport = $SubViewport

func _ready() -> void:
	stretch = true
	_set_zoom(3)

	viewport.size_2d_override = base_resolution
	viewport.size_2d_override_stretch = true
	viewport.canvas_item_default_texture_filter = Viewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST

	get_viewport().size_changed.connect(_on_vp_size_changed)
	_on_vp_size_changed()

func _set_zoom(zoom: int):
	size = Vector2(base_resolution) * zoom

func _on_vp_size_changed():
	var diff := Vector2(DisplayServer.window_get_size()) - size
