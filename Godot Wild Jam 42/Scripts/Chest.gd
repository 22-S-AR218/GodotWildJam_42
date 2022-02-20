extends Area2D

export var treasure_amount: int = 10

var collected: bool = false

func _ready() -> void:
	$Coin.visible = false

func _on_Chest_body_entered(body: Node) -> void:
	if not collected and GlobalVars.keys >= 1 and body.get_name() == "Player":
		monitoring = false
		GlobalVars.chests += 1
		get_parent().chests_to_open -= 1
		GlobalVars.keys -= 1
		GlobalVars.coins += treasure_amount
		$AudioStreamPlayer2D.play()
		$open.visible = true
		$closed.visible = false
		$AnimationPlayer.play("CoinChest")
		collected = true
