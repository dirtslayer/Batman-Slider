extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var chilz = get_children()
	var t1 = chilz[0]
	
	var t2 = t1.duplicate()
	add_child(t2)
	t2.move_right()
	var s = t2.get_node("Sprite")
	var rr = s.get_region_rect()
	rr.position.x += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_right()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_down()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.y += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_down()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.y += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_right()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_right()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_right()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_down()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.y += 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

	t2 = t2.duplicate()
	add_child(t2)
	t2.move_left()
	s = t2.get_node("Sprite")
	rr = s.get_region_rect()
	rr.position.x -= 64
	s.set_region_rect(rr)

func pickat(x,y):
	var chilz = get_children()
	for c in chilz:
		if (c.x==x&&c.y==y):
			return c

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
