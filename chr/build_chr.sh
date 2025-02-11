set -e
python genchr.py

cat smb/smborg-sprites.chr smb/smborg-back.chr smborg-lost-charset.chr \
	smb/lost-sprites.chr smb/lost-back.chr smb/lost-victory.chr lost-smborg-charset.chr \
	smb/nippon-sprites.chr smb/nippon-back.chr smb/nippon-victory.chr nippon-smborg-charset.chr \
	smb/worldonel.chr smb/worldoner.chr smb/worldtwol.chr smb/worldtwor.chr \
	smb/worldthreel.chr smb/worldthreer.chr smb/worldfourl.chr smb/worldfourr.chr \
	smb/worldfivel.chr smb/worldfiver.chr smb/worldsixl.chr smb/worldsixr.chr \
	smb/worldsevenl.chr smb/worldsevenr.chr \
	smb/peach-sprites.chr intro/intro-bg.chr intro-sprbank0.chr > full.chr

