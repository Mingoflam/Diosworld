extends Sprite2D

var speed = 400
var angular_speed = PI

#rotates the 2d sprite
#bow we have inputs with ui left and right and later with up too to control roation and movement
func _process(delta):
	rotation += angular_speed * delta
	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
	#	direction = -1
	#if Input.is_action_pressed("ui_right"):
	#	direction = 1

	#rotation += angular_speed * direction * delta
	
	var velocity = Vector2.UP.rotated(rotation) * speed #moves the sprite (still in a circle tho)
	#creates up buton input (down button i did myself but damn wtf)
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
		#velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
		
	#if Input.is_action_pressed("ui_down"):
		#velocity = Vector2.DOWN.rotated(rotation) * speed
		#position += velocity * delta





#this adds the ability to the esc key to quit the game
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode ==KEY_ESCAPE:
			get_tree().quit()

func _on_button_pressed():
	set_process(not is_processing())


	
