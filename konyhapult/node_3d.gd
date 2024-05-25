@tool
extends Node3D

@export var vaz = true
@export var lap = true
@export var polc = true
@export var fiok = true

func _process(delta: float) -> void:
	var main = get_tree().get_first_node_in_group("main")
	get_tree().get_first_node_in_group("vaz").visible = main.vaz
	get_tree().get_first_node_in_group("LapLe").visible = !main.lap
	get_tree().get_first_node_in_group("LapFel").visible = main.lap
	get_tree().get_first_node_in_group("PanelA").visible = main.panel
	get_tree().get_first_node_in_group("PanelB").visible = main.panel
	
	if(main.polc && get_tree().get_first_node_in_group("PolcA").position.y < 0.02):
		get_tree().get_first_node_in_group("PolcA").position.y += delta
	if(main.polc && get_tree().get_first_node_in_group("PolcB").position.y < 0.4):
		get_tree().get_first_node_in_group("PolcB").position.y += delta
	if(main.polc && get_tree().get_first_node_in_group("PolcC").position.y < 0.8):
		get_tree().get_first_node_in_group("PolcC").position.y += delta


	if(!main.polc && get_tree().get_first_node_in_group("PolcA").position.y > 0):
		get_tree().get_first_node_in_group("PolcA").position.y -= delta
	if(!main.polc && get_tree().get_first_node_in_group("PolcB").position.y > 0):
		get_tree().get_first_node_in_group("PolcB").position.y -= delta
	if(!main.polc && get_tree().get_first_node_in_group("PolcC").position.y > 0):
		get_tree().get_first_node_in_group("PolcC").position.y -= delta
	
	if(main.fiok && get_tree().get_first_node_in_group("FiokKi").position.x > -0.85):
		get_tree().get_first_node_in_group("FiokKi").position.x -= delta
	if(!main.fiok && get_tree().get_first_node_in_group("FiokKi").position.x < 0):
		get_tree().get_first_node_in_group("FiokKi").position.x += delta
		
	#get_tree().get_first_node_in_group("FiokKi").visible = main.fiok
	#print(get_tree().root.get_child(1))
