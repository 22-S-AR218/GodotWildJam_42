extends Area2D

func _ready() -> void:
	$Label.visible = false

func _on_AudioStreamPlayer2D_finished() -> void:
	$Label.visible = false
	


func _on_Colleen_body_entered(body: Node) -> void:
	$Label.visible = true
	$AudioStreamPlayer2D.play()

func _on_Tehya_body_entered(body: Node) -> void:
	$Label.visible = true
	$AudioStreamPlayer2D.play()

func _on_Jenn_body_entered(body: Node) -> void:
	$Label.visible = true
	$AudioStreamPlayer2D.play()
