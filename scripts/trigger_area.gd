extends Area2D


@onready var tilemap = $Kartenrand

func _on_body_entered(body: Node2D) -> void:
	print("new worlds open for the")
