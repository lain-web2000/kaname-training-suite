def make_full_bank(v): return v + (b'\xff' * (0x1000 - len(v)))

leader_boards = ['andrewg', 'leontoast', 'roylt', 'tavenwebb2002', 'darbian', 'kosmic', 'somewes']

num_face_banks = 0
fixed_sprites = open('intro/intro-sprites.chr', 'rb').read()
face_bank = bytearray(fixed_sprites)

for it in leader_boards:
	try:
		v = open('intro/%s.chr' % (it),'rb').read()
		if len(v) + len(face_bank) > 0x1000:
			open('intro-sprbank%d.chr' % (num_face_banks), 'wb').write(make_full_bank(face_bank))
			face_bank = bytearray(fixed_sprites)
			num_face_banks += 1
		face_bank += v
	except:
		print('Failed to add face for "%s"' % (it))

if len(face_bank):
	open('intro-sprbank%d.chr' % (num_face_banks), 'wb').write(make_full_bank(face_bank))