extends HSlider

export (NodePath) var Car
export var Variable = ""
export var divide = 1
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if( Car ):
		var children=get_node(Car).get_children()
		for child in children :
			if child is VehicleWheel:
				value=child[Variable]*divide
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _on_value_changed(value: float) -> void:
	if( Car ):
		var children=get_node(Car).get_children()
		for child in children :
			if child is VehicleWheel:
				child[Variable]=value/divide
