extends Node2D

var enemy_scene: PackedScene = load("res://enemy.tscn")
func _on_Enemy_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	$Enemy.add_child(enemy)
