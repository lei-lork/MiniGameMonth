extends Sprite2D

func _ready():
	set_physics_process(false)

func _physics_process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	var direction = (self.position - mouse_position).normalized()
	var new_angle =  PI + atan2(direction.y, direction.x) 
	self.rotation  = new_angle

func _on_wheel_handle_button_down():
	set_physics_process(true)

func _on_wheel_handle_button_up():
	set_physics_process(false)
