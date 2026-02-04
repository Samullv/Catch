extends ParallaxLayer

var velocity = 37

func _process(delta):
	self.motion_offset.x -= velocity * delta
