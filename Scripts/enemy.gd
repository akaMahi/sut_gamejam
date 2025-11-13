extends CharacterBody2D

@export var speed = 300
@export var health = 3

@onready var player = $"../Spaceship"

func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * speed
	move_and_slide()

func _on_area_2d_body_entered(body):
	print("damage")
