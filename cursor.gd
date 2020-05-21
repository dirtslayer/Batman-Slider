tool
extends Node2D

export  var x = 1
export  var y = 1
var width = 64
var height = 64

var tween
var tween2
var right_arrow
var left_arrow
var up_arrow
var down_arrow

var world
var tiles
var tile1


# Called when the node enters the scene tree for the first time.
func _ready():
	tween = get_node("Tween")
	tween2 = get_node("Tween2")
	right_arrow = get_node("right_arrow")
	left_arrow = get_node("left_arrow")
	up_arrow = get_node("up_arrow")
	down_arrow = get_node("down_arrow")
	
	world = get_parent()
	tiles = world.get_node("Tiles")
	tile1 = world.get_node("Tiles/tile1")
	
	update()
	print("Use arrow keys, asdw, or joystick to move tile into empty spot.")
	print("thank you for playing - darrell dirtslayer@gmail.com")
	

func _input(event):
	var start_color = Color(1.0, 1.0, 1.0, 1.0)
	var end_color = Color(1.0, 1.0, 1.0, 0.0)
	var tnode
	
	if event.is_action_pressed("ui_accept"):
		print("ui accept")
		
	elif event.is_action_pressed("ui_down"):
		if (y>1):
			y -= 1
			tnode = down_arrow
			var t = tiles.pickat(x,y)
			if (t):
				t.move_down()
			
	elif event.is_action_pressed("ui_up"):
		if (y<4):
			y += 1
			tnode = up_arrow
			var t = tiles.pickat(x,y)
			if (t):
				t.move_up()
			
	elif event.is_action_pressed("ui_right"):
		if (x>1):
			x -= 1
			tnode = right_arrow
			#get area2d to the right and move it left
			var t = tiles.pickat(x,y)
			if (t):
				t.move_right()
			
	elif event.is_action_pressed("ui_left"):
		if (x<4):
			x += 1
			tnode = left_arrow
			var t = tiles.pickat(x,y)
			if (t):
				t.move_left()
	
	# action:,bound_check,moveself,transition_node -> pick tile and move it
	
	# show transition effect
	if (tnode):
		#tween2.remove_all()
		tween.interpolate_property(tnode, "modulate", start_color, end_color, .3, Tween.TRANS_LINEAR, Tween.EASE_IN)
		tween.start()
		
	update()
		

func update():
#	print(x,",",y)
	tween2.remove_all()
	tween2.interpolate_property(self,"position",get_position(),Vector2(x*width,y*height),.3,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween2.start()
# self.position =  Vector2(x*width,y*height)

