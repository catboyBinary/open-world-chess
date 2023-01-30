class_name ChessPiece extends Node

var value: int
var max_height: float
var board: GridMap
var position: Vector3i

func _init(board: GridMap, position: Vector3i):
	board = board
	position = position 
	create()

func create():
	pass

func get_legal_moves() -> PackedVector2Array:
	return PackedVector2Array()
