extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Node.get_legal_moves()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Camera3D/Control/Label.text = "FPS: "+var_to_str(Engine.get_frames_per_second())
