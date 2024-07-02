extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var time_start = Time.get_ticks_msec()
var time_current = 0
var difference = time_start - time_current
var modifyer = .0001


func _physics_process(delta):
	difference = clamp(Time.get_ticks_msec(),0,10)
	# Add the gravity.
	#if not is_on_floor():
	#	velocity.y -= gravity * delta

	# Handle jump.


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	difference = time_start - time_current
	time_current = Time.get_ticks_msec()
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(-1, -input_dir.y, input_dir.x)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED * difference * modifyer
		velocity.y = direction.y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED) * time_current
		velocity.z = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
