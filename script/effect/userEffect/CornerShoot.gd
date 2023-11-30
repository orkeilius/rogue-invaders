class_name CornerShoot extends AbstractEffect
## effect to shoot down
const name = "corner shot"

var i = 0

func onShoot():
	if i == 0:
		var bullet = entity.generateBullet()
		bullet.rotation_degrees = 45
		entity.find_parent("gameInfo").add_child(bullet)
		bullet = entity.generateBullet()
		bullet.rotation_degrees = -45
		entity.find_parent("gameInfo").add_child(bullet)

	i = (i + 1) % 2
