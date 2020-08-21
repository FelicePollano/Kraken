extends AudioStreamPlayer3D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	transform = get_node("../Car2").transform
	var speed = get_node("../Car2").linear_velocity.length();
	var max_speed = 15;
	pitch_scale =(speed+max_speed)/max_speed;
	
