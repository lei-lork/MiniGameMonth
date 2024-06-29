extends Sprite2D

var funnynum = 0
# Called when the node enters the scene tree for the first time.

func _ready():
	print ("fuck me")
	
func _process(delta):
	set_frame(funnynum)
	
func _on_switch_1_toggled(toggled_on):
	if toggled_on == true:
		funnynum += 1
	else:
		funnynum -= 1
			
func _on_switch_2_toggled(toggled_on):
	if toggled_on == true:
		funnynum += 2
	else:
		funnynum -= 2

		
func _on_switch_3_toggled(toggled_on):
	if toggled_on == true:
		funnynum += 3
	else:
		funnynum -= 3
