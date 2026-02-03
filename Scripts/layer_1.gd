extends ParallaxLayer

var velocity = 30

func _process(delta):
	self.motion_offset.x -= velocity * delta
