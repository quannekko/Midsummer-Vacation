extends CanvasLayer

#KEYS
@onready var w = $W
@onready var s = $S
@onready var a = $A
@onready var d = $D



#FUNCTION
func _process(_delta):
	if Input.is_action_pressed("move_right"):
		a.frame = 1
	if Input.is_action_pressed("move_left"):
		d.frame = 1
	if Input.is_action_pressed("move_down"):
		s.frame = 1
	if Input.is_action_pressed("move_up"):
		w.frame = 1
	if Input.is_action_just_released("move_right"):
		a.frame = 0
	if Input.is_action_just_released("move_left"):
		d.frame = 0
	if Input.is_action_just_released("move_down"):
		s.frame = 0
	if Input.is_action_just_released("move_up"):
		w.frame = 0
