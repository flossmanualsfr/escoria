extends Node2D

var vm

func close():
	get_node("/root/main").menu_close(self)
	queue_free()

func menu_collapsed():
	close()

func input(event):
	if event.is_action("menu_request") && event.is_pressed() && !event.is_echo():
		close()

func back_pressed():
	close()

func _ready():

	get_node("/root/main").menu_open(self)

	vm = get_tree().get_root().get_node("vm")

	# warning-ignore:return_value_discarded
	get_node("back").connect("pressed", self, "back_pressed")


