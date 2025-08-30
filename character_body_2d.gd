extends CharacterBody2D
var bullet_path=preload("res://bulletsss.tscn")

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down",)
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("click"):
		fire()

func fire():
	var bullet=bullet_path.instantiate()
	bullet.dir=rotation
	bullet.pos=$Node2D.global_position
	bullet.rota=global_rotation
	get_parent().add_child(bullet)
	
