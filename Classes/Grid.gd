class_name Board extends RefCounted

@export var light_square: BoxMesh
@export var dark_square: BoxMesh
@export var regenerate = true
@export var frequency = 0.1
@export var amplitude = 10
var cl = []
var noise = FastNoiseLite.new()
var cells = PackedVector3Array()

func spawn_square(pos: Vector3i, color: int):
	var square = cl[color].instantiate()
	square.position = pos

func _ready():
	cl = [light_square,dark_square]
	noise.seed = randi()
	noise.noise_type = 0
	noise.fractal_type = 0
	for x in range(-20, 20):
		for y in range(-20,20):
			spawn_square(Vector3i(x,noise.get_noise_2d(x,y)*amplitude,y),abs(x+y)%2)
