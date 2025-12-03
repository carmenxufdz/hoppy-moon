extends CharacterBody2D

const VELOCITY = 1000
const MAX_VEL : int = 500
const HOP_SPEED : int = -500

const STAR_POS = Vector2(200,640)

var jumping : bool = false
var falling : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset()


func reset():
	falling = false
	jumping = false
	position = STAR_POS
	set_rotation(0)

# Called every fram. 'delta' is the elapsed time since the previous frame
func _physics_process(delta: float) -> void:
	if jumping or falling:
		velocity.y += VELOCITY * delta
	if velocity.y > MAX_VEL:
		velocity.y = MAX_VEL
	if jumping:
		set_rotation(deg_to_rad(velocity.y*0.05))
	elif falling:
		set_rotation(PI/2)
	
	move_and_collide(velocity * delta)


func hop():
	velocity.y = HOP_SPEED
	SoundPlayer.play_sound(SoundPlayer.JUMP)
	
