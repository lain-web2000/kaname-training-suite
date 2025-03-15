def make_full_bank(v): return v + (b'\xff' * (0x1000 - len(v)))

for it in ['smborg', 'lost', 'nippon']:
	for font in ['smborg', 'lost']:
		if it != font:
			v = open('smb/%s-back.chr' % (it), 'rb').read()
			f = open('smb/%s-charset.chr' % (font), 'rb').read()
			open('%s-%s-charset.chr' % (it, font), 'wb').write(f + v[len(f):])
