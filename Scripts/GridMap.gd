extends GridMap

@export var regenerate = true
@export var frequency = 0.1
@export var amplitude = 10
var noise = FastNoiseLite.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	noise.seed = randi()
	noise.noise_type = 0
	noise.fractal_type = 0
	var pawn = Pawn.new(self, Vector3i(0,3,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if regenerate:
		clear()
		noise.frequency = frequency
		regenerate = false
		noise.offset.x += _delta*10
		for x in range(-500, 500):
			for y in range(-500,500):
				set_cell_item(Vector3i(x,noise.get_noise_2d(x,y)*amplitude,y),abs(x+y)%2,4)
