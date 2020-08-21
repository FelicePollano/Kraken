extends AudioStreamPlayer3D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var skid1 = get_node("../back_right").get_skidinfo()
	var skid2 = get_node("../back_left").get_skidinfo()
	var skid3 = get_node("../front_right").get_skidinfo()
	var skid4 = get_node("../front_left").get_skidinfo()
	if skid1<1 or skid2<1 or skid3<1 or skid4<1:
		play()
	if skid1 or skid2:
		pitch_scale=.8
	else:
		pitch_scale=1.2
		
	
