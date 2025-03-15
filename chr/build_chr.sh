set -e
python genchr.py

#Build SMB1 CHR
cat smb/smborg-sprites.chr smb/smborg-back.chr smborg-lost-charset.chr \
	smb/lost-sprites.chr smb/lost-back.chr \
	smb/peach-sprites.chr intro/intro-bg.chr intro/intro-sprites.chr > org.chr

#Build SMB2 CHR
cat smb/lost-sprites.chr smb/lost-back.chr smb/lost-victory.chr smb/lost-victory.chr lost-smborg-charset.chr \
    smb/lost-sprites.chr smb/lost-back.chr smb/lost-victory.chr smb/lost-victory.chr \
	intro/intro-bg.chr intro/intro-sprites.chr > lost.chr

#Build Nippon CHR	
cat smb/nippon-sprites.chr smb/nippon-back.chr smb/nippon-victory.chr \
	smb/worldonel.chr smb/worldoner.chr smb/worldtwol.chr smb/worldtwor.chr \
	smb/worldthreel.chr smb/worldthreer.chr smb/worldfourl.chr smb/worldfourr.chr \
	smb/worldfivel.chr smb/worldfiver.chr smb/worldsixl.chr smb/worldsixr.chr \
	smb/worldsevenl.chr smb/worldsevenr.chr \
	intro/intro-bg.chr intro/intro-sprites.chr > nippon.chr