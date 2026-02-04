
extends ParallaxLayer

var velocity = 33

func _process(delta):
	self.motion_offset.x -= velocity * delta
