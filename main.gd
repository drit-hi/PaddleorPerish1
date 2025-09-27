extends Sprite2D

var score := [0,0] #0 for player, 1 for CPU
const PADDLE_SPEED : int = 500


func _on_ball_timer_timeout():
	$Ball.new_ball()


func _on_scoreleft_body_entered(body: Node2D) -> void:
	score[1] += 1
	$Hud/CPUScore.text = str(score[1])
	$BallTimer.start()


func _on_scoreright_body_entered(body: Node2D) -> void:
	score[0] += 1
	$Hud/PlayerScore.text = str(score[0])
	$BallTimer.start()
	
