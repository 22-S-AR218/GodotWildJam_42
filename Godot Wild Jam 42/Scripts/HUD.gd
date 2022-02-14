extends CanvasLayer

#tutorial: https://docs.google.com/document/d/1ffUQVxEtQ2oe81FY6NnI9QZ4lL3y7g9ZWBjGW8lXN4o/edit?usp=sharing

func _process(delta: float) -> void:
	$keys_label.text = "Keys: " + str(GlobalVars.keys)

