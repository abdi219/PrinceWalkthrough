extends Node

var score = 0

@onready var label_5: Label = $Label5

func countScore():
	score += 1
	label_5.text = "You Collected " + str(score) + " coins"
