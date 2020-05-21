extends Area2D

class_name tile
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export  var x = 2
export  var y = 1

var width = 64
var height = 64

var tween3 
var cursor

# Called when the node enters the scene tree for the first time.
func _ready():
	tween3 = get_node("../Tween3")
	cursor = get_node("../../cursor")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func move_left():
	if (x<2):
		 return
	x -= 1
	dotweetn()
	
func move_right():	
	if (x>4):
		 return
	x += 1
	dotweetn()
	
func move_up():
	if (y<2):
		return
	y -= 1
	dotweetn()
	
func move_down():
	if (y>4):
		return
	y += 1
	dotweetn()	
	
func dotweetn():
	tween3.interpolate_property(self,"position",get_position(),Vector2(x*width+32,y*height+96),.3,Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	tween3.start()


#func _input(event):
#	#if the cursor is beside swap

#
#	pass # Replace with function body.




func _on_tile01_input_event(viewport, event, shape_idx):
	

	if event is InputEventMouseButton && !event.pressed :
		
		if (cursor.y+1==y&&cursor.x==x):
			cursor.y += 1
			move_up()
		elif (cursor.y-1==y&&cursor.x==x):
			cursor.y -= 1
			move_down()
		elif (cursor.x-1==x&&cursor.y==y):
			cursor.x -= 1
			move_right()
		elif (cursor.x+1==x&&cursor.y==y):
			cursor.x += 1
			move_left()
			
		cursor.update()	
	pass # Replace with function body.


func _on_Tween3_tween_started(object, key):
	#node.set_process_input(!pause)
	self.set_process_input(false)
	pass # Replace with function body.


func _on_Tween3_tween_completed(object, key):
	self.set_process_input(true)
	pass # Replace with function body.
