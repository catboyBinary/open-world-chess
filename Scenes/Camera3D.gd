extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"): position.x-=delta*10
	if Input.is_action_pressed("ui_right"): position.x+=delta*10
	if Input.is_action_pressed("ui_up"): position.z-=delta*10
	if Input.is_action_pressed("ui_down"): position.z+=delta*10

	if Input.is_action_just_pressed("left"): rotate_y(deg_to_rad(-1))
	if Input.is_action_just_pressed("right"): rotate_y(deg_to_rad(90))
