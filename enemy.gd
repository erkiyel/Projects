extends Area2D

var speed: int
var direction_x: float
func _ready():
	var rng:= RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0,width)
	var random_y = rng.randi_range(-150,-50)
	position = Vector2(random_x, random_y)
	var random_scale =randf_range(0.15,.5)
	scale = Vector2(random_scale,random_scale)
	speed =rng.randi_range(200,500)
	direction_x = rng.randf_range(-1,1)

func _process(delta):
	position += Vector2(direction_x, 1.0) * speed * delta

func _on_body_entered(body):
	print('body entered')
