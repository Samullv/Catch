extends Control

var score = 0
@onready var scoreLabel = $Score

func _process(delta):
	scoreLabel.text = "Score: %d" %Global.score
