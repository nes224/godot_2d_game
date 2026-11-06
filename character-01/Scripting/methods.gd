@tool
extends EditorScript

func attack_enemy(damage: int, enemy: String = "Troll") -> void:
	print("attack_enemy enemy:", enemy)
	print("attack_enemy damage:", damage)

func get_player_health() -> int:
	var p_health: int = randi() % 100 + 1
	return p_health

func roll_dice() -> void:
	print("Rolling a dice...")
	var result: int = randi() % 6 + 1
	print("You rolled:", result)	

func try_to_change_number(num: int) -> void:
	num += 10
	print("Inside method num is ", num)

func add_item(inventory: Array) -> void:
	inventory.append("Sword")
	print("Inside method, inventory is", inventory)

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	roll_dice()
	var health: int = get_player_health()
	print(health)
	
	attack_enemy(20, "Orc")
	attack_enemy(50)
	
	var n: int = 5
	print("Before method, n is ", n)
	try_to_change_number(n)
	print("After method, n is ", n)
	
	var inv: Array = ["Shield"]
	print("Before method, inventory is ", inv)
	add_item(inv)
	print("After method inventory is ", inv)
	
	# Write a function called takes_damage(current_health: int, damage: int) -> int
	# It should subtract damage from current_health
	# If health does below 0, set it to 0
	# Return the new health
	#
	# In _run(), call it like this:
	# health = takes_damage(health, 30)
	# print the new health
	#
	# If health is 0, print #Game Over!"
	# Otherwise print "Still alive!"
	
	health = 20
	health = takes_damage(health, 35)
	print("New health:", health)
	
	if health <= 0:
		print("Game Over!")
	else:
		print("Still alive")
		
func takes_damage(current_health: int, damage: int) -> int:
	var final_health = current_health - damage
	if final_health < 0:
		final_health = 0
	return final_health
	
	

	
