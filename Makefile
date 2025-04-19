AS = ca65
LD = ld65
AFLAGS = -W0 -U -I inc -g --create-dep "$@.dep"
OUT = build
OBJECTS-O = $(OUT)/intro-o.o \
          $(OUT)/sm1main.o \
          $(OUT)/levels.o \
          $(OUT)/common-o.o \
          $(OUT)/dummy-o.o \
          $(OUT)/ines.o

OBJECTS-P = $(OUT)/intro-p.o \
          $(OUT)/sm1main-p.o \
          $(OUT)/levels-p.o \
          $(OUT)/common-p.o \
          $(OUT)/dummy-o.o \
          $(OUT)/ines-p.o

OBJECTS-L = $(OUT)/intro-l.o \
          $(OUT)/sm2main.o \
          $(OUT)/smb2-levels.o \
          $(OUT)/common-l.o \
		  $(OUT)/dummy-l.o \
          $(OUT)/ines.o

OBJECTS-N = $(OUT)/intro-n.o \
          $(OUT)/nsmmain.o \
          $(OUT)/ann-levels.o \
          $(OUT)/common-n.o \
		  $(OUT)/dummy-n.o \
          $(OUT)/ines.o

WRAM = inc/wram.inc \
		wram/full.bin \
		smb2/wram-init.bin

INCS-1 = inc/wram.inc \
       inc/macros.inc \
       inc/smb1.inc \
       inc/practice.inc

INCS-2 = inc/wram.inc \
       inc/macros.inc \
       inc/smb2.inc \
       inc/practice.inc

all: smb1.nes smb1-pal.nes smb2.nes annsmb.nes

inc/wram.inc: wram/ram_layout.asm $(OUT)/ram_layout.map
	python scripts/genram.py $(OUT)/ram_layout.map inc/wram.inc

lost/wram-init.bin: wram/full.bin $(OUT)/ram_layout.map
	python scripts/segram.py $(OUT)/ram_layout.map wram/full.bin WRAM_SM2Start WRAM_SM2End lost/wram-init.bin

wram/full.bin $(OUT)/ram_layout.map: wram/ram_layout.asm
	$(AS) $(AFLAGS) -l $(OUT)/ram_layout.map wram/ram_layout.asm -o build/ram_layout.o
	$(LD) -C scripts/ram-link.cfg build/ram_layout.o -o wram/full.bin

#-----------------------------------------------------------------------------------------------------------------------------------	
$(OUT)/ines-p.o: $(INCS-2) common/ines.asm
	$(AS) $(AFLAGS) -l $(OUT)/ines-p.map -D PAL=1 common/ines.asm -o $@

$(OUT)/intro-o.o: $(INCS-1) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro-o.map -D ORG=1 intro/intro.asm -o $@

$(OUT)/intro-p.o: $(INCS-1) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro-p.map -D ORG=1 -D PAL=1 intro/intro.asm -o $@

$(OUT)/sm1main.o: $(INCS-1) smb1/sm1main.asm
	$(AS) $(AFLAGS) -l $(OUT)/sm1main.map -D ORG=1 smb1/sm1main.asm -o $@

$(OUT)/sm1main-p.o: $(INCS-1) smb1/sm1main.asm
	$(AS) $(AFLAGS) -l $(OUT)/sm1main-p.map -D PAL=1 -D ORG=1 smb1/sm1main.asm -o $@

$(OUT)/levels.o: smb1/levels.asm
	$(AS) $(AFLAGS) -l $(OUT)/levels.map smb1/levels.asm -o $@

$(OUT)/levels-p.o: smb1/levels.asm
	$(AS) $(AFLAGS) -l $(OUT)/levels-p.map -D PAL=1 smb1/levels.asm -o $@

$(OUT)/common-p.o: common/common.asm common/sound.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common-p.map -D PAL=1 -D ORG=1 common/common.asm -o $@

$(OUT)/common-o.o: common/common.asm common/sound.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common-o.map -D ORG=1 common/common.asm -o $@

$(OUT)/dummy-o.o: $(INCS-1) dummy.asm
	$(AS) $(AFLAGS) -l $(OUT)/dummy-o.map -D ORG=1 dummy.asm -o $@

smb1.nes: $(OBJECTS-O)
	$(LD) -C scripts/smb1.cfg\
		$(OUT)/ines.o\
		$(OUT)/intro-o.o\
		$(OUT)/dummy-o.o \
		$(OUT)/levels.o \
		$(OUT)/sm1main.o \
		$(OUT)/common-o.o\
		--dbgfile "smb1.dbg" \
		-o smb1.tmp
	cat smb1.tmp > smb1.nes

smb1-pal.nes: $(OBJECTS-P)
	$(LD) -C scripts/smb1.cfg\
		$(OUT)/ines-p.o\
		$(OUT)/intro-p.o\
		$(OUT)/dummy-o.o \
		$(OUT)/levels-p.o \
		$(OUT)/sm1main-p.o \
		$(OUT)/common-p.o\
		--dbgfile "smb1-pal.dbg" \
		-o smb1-pal.tmp
	cat smb1-pal.tmp > smb1-pal.nes

#-----------------------------------------------------------------------------------------------------------------------------------
$(OUT)/ines.o: $(INCS-2) common/ines.asm
	$(AS) $(AFLAGS) -l $(OUT)/ines.map common/ines.asm -o $@

$(OUT)/intro-l.o: $(INCS-2) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro-l.map -D LOST=1 intro/intro.asm -o $@

$(OUT)/sm2main.o: $(INCS-2) $(WRAM) smb2/sm2main.asm
	$(AS) $(AFLAGS) -l $(OUT)/lost.map -D LOST=1 smb2/sm2main.asm -o $@

$(OUT)/smb2-levels.o: smb2/levels.asm
	$(AS) $(AFLAGS) -l $(OUT)/smb2-levels.map -D LOST=1 smb2/levels.asm -o $@

$(OUT)/common-l.o: common/common.asm common/sound-ll.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common-l.map -D LOST=1 common/common.asm -o $@

$(OUT)/dummy-l.o: $(INCS-2) dummy.asm
	$(AS) $(AFLAGS) -l $(OUT)/dummy-l.map -D LOST=1 dummy.asm -o $@

smb2.nes: $(OBJECTS-L)
	$(LD) -C scripts/smb2.cfg \
		$(OUT)/ines.o \
		$(OUT)/intro-l.o \
		$(OUT)/dummy-l.o \
        $(OUT)/sm2main.o \
        $(OUT)/smb2-levels.o \
		$(OUT)/common-l.o \
		--dbgfile "smb2.dbg" \
		-o smb2.tmp
	cat smb2.tmp > smb2.nes

#-----------------------------------------------------------------------------------------------------------------------------------

$(OUT)/intro-n.o: $(INCS-2) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro-n.map -D ANN=1 intro/intro.asm -o $@

$(OUT)/nsmmain.o: $(INCS-2) $(WRAM) smb2/sm2main.asm
	$(AS) $(AFLAGS) -l $(OUT)/nsmmain.map -D ANN=1 smb2/sm2main.asm -o $@

$(OUT)/ann-levels.o: smb2/levels.asm
	$(AS) $(AFLAGS) -l $(OUT)/ann-leveldata.map -D ANN=1 smb2/levels.asm -o $@

$(OUT)/common-n.o: common/common.asm common/sound-ll.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common-n.map -D ANN=1 common/common.asm -o $@

$(OUT)/dummy-n.o: $(INCS-2) dummy.asm
	$(AS) $(AFLAGS) -l $(OUT)/dummy-n.map -D ANN=1 dummy.asm -o $@

annsmb.nes: $(OBJECTS-N)
	$(LD) -C scripts/annsmb.cfg \
		$(OUT)/ines.o \
		$(OUT)/intro-n.o \
		$(OUT)/dummy-n.o \
        $(OUT)/nsmmain.o \
        $(OUT)/ann-levels.o \
		$(OUT)/common-n.o \
		--dbgfile "annsmb.dbg" \
		-o annsmb.tmp
	cat annsmb.tmp > annsmb.nes

#-----------------------------------------------------------------------------------------------------------------------------------

.PHONY: clean

clean:
	rm -f build/*

include $(wildcard build/*.dep)
