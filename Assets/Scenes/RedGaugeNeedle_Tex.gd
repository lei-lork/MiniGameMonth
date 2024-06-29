extends Sprite2D


@onready var _animation_player = $AnimationPlayer


func _process(_delta):
	_animation_player.play("Needle_State_01")
