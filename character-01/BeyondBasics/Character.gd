class_name Character

static var character_count: int = 0

static func get_chacter_count() -> String:
	return "there are %d characters" % character_count

const MAXSPEED: int = 1000

var name: String = "NO NAME":
	get:
		return name
	set(value):
		name = value

var weapon: String = "NO WEAPON":
	get:
		return weapon
	set(value):
		weapon = value

var health: int = 20:
	get:

		return health
	set(value):

		health = clampi(value, 0, 100)

#var health: int:
	#get = get_health, set = set_health

func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon
	
func get_health() -> int:
	return health

func set_health(new_health: int) -> void:
	health = new_health
	if health > 100: health = 100
	elif health < 0: health = 0

func print_health() -> void:
	print("health:%d" % health)
	
func say_info() -> void:
	print("%s has health: %d and wields %s" % [
		name, health, weapon
	])
