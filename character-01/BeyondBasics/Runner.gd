@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run():
	print("I am alive")
	Character.character_count = 0
	var aragorn: Character = Character.new(50, "Aragorn", "Bow")
	var frodo: Character = Character.new(50, "Frodo", "String")
	var gandalf: Character = Character.new(50, "Gandalf", "Staff")
	print(Character.MAXSPEED)
	print(Character.character_count)
	
