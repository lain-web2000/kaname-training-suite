AS = ca65
LD = ld65
AFLAGS = -W0 -U -I inc -g --create-dep "$@.dep"
OUT = build
OBJECTS-O = $(OUT)/intro-o.o \
          $(OUT)/original.o \
          $(OUT)/levels.o \
          $(OUT)/common-o.o \
          $(OUT)/dummy.o \
          $(OUT)/ines.o
		  
OBJECTS-L = $(OUT)/intro-l.o \
          $(OUT)/lost.o \
          $(OUT)/ll-leveldata.o \
          $(OUT)/common-l.o \
          $(OUT)/ines.o
		  
OBJECTS-N = $(OUT)/intro-n.o \
          $(OUT)/nippon.o \
          $(OUT)/ann-leveldata.o \
          $(OUT)/common-n.o \
          $(OUT)/ines.o

WRAM = inc/wram.inc \
		wram/full.bin \
		lost/wram-init.bin

INCS = inc/wram.inc \
       inc/macros.inc \
       inc/org.inc \
       inc/shared.inc \
       inc/utils.inc

all: smb1.nes smb2.nes nippon.nes

inc/wram.inc: wram/ram_layout.asm $(OUT)/ram_layout.map
	python scripts/genram.py $(OUT)/ram_layout.map inc/wram.inc

lost/wram-init.bin: wram/full.bin $(OUT)/ram_layout.map
	python scripts/segram.py $(OUT)/ram_layout.map wram/full.bin WRAM_LostStart WRAM_LostEnd lost/wram-init.bin

wram/full.bin $(OUT)/ram_layout.map: wram/ram_layout.asm
	$(AS) $(AFLAGS) -l $(OUT)/ram_layout.map wram/ram_layout.asm -o build/ram_layout.o
	$(LD) -C scripts/ram-link.cfg build/ram_layout.o -o wram/full.bin
	
$(OUT)/dummy.o: $(INCS) dummy.asm
	$(AS) $(AFLAGS) -l $(OUT)/dummy.map -D ORG=1 dummy.asm -o $@
	
chr/full.chr: chr/build_chr.sh
	(cd chr && sh build_chr.sh)
#-----------------------------------------------------------------------------------------------------------------------------------
	
$(OUT)/intro-o.o: $(INCS) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro.map -D ORG=1 intro/intro.asm -o $@
	
$(OUT)/original.o: $(INCS) org/original.asm
	$(AS) $(AFLAGS) -l $(OUT)/original.map -D ORG=1 org/original.asm -o $@
	
$(OUT)/levels.o: org/levels.asm
	$(AS) $(AFLAGS) -l $(OUT)/levels.map org/levels.asm -o $@
	
$(OUT)/common-o.o: common/common.asm common/sound.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common.map -D ORG=1 common/common.asm -o $@

smb1.nes: $(OBJECTS-O) chr/full.chr
	$(LD) -C scripts/smb1.cfg\
		$(OUT)/ines.o\
		$(OUT)/intro-o.o\
		$(OUT)/dummy.o \
		$(OUT)/levels.o \
		$(OUT)/original.o \
		$(OUT)/common-o.o\
		--dbgfile "smb1.dbg" \
		-o smb1.tmp
	cat smb1.tmp chr/org.chr > smb1.nes
	
#-----------------------------------------------------------------------------------------------------------------------------------
$(OUT)/ines.o: $(INCS) common/ines.asm
	$(AS) $(AFLAGS) -l $(OUT)/ines.map common/ines.asm -o $@

$(OUT)/intro-l.o: $(INCS) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro.map -D LOST=1 intro/intro.asm -o $@
	
$(OUT)/lost.o: $(INCS) $(WRAM) lost/lost.asm
	$(AS) $(AFLAGS) -l $(OUT)/lost.map -D LOST=1 lost/lost.asm -o $@

$(OUT)/ll-leveldata.o: lost/leveldata.asm
	$(AS) $(AFLAGS) -l $(OUT)/ll-leveldata.map -D LOST=1 lost/leveldata.asm -o $@

$(OUT)/common-l.o: common/common.asm common/sound-ll.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common.map -D LOST=1 common/common.asm -o $@
	
smb2.nes: $(OBJECTS-L) chr/full.chr
	$(LD) -C scripts/smb2.cfg \
		$(OUT)/ines.o \
		$(OUT)/intro-l.o \
        $(OUT)/lost.o \
        $(OUT)/ll-leveldata.o \
		$(OUT)/common-l.o \
		--dbgfile "smb2.dbg" \
		-o smb2.tmp
	cat smb2.tmp chr/lost.chr > smb2.nes
	
#-----------------------------------------------------------------------------------------------------------------------------------

$(OUT)/intro-n.o: $(INCS) intro/intro.asm intro/faxsound.asm intro/intro.inc intro/smlsound.asm intro/nt.asm intro/settings.asm
	$(AS) $(AFLAGS) -l $(OUT)/intro.map -D ANN=1 intro/intro.asm -o $@
	
$(OUT)/nippon.o: $(INCS) $(WRAM) lost/lost.asm
	$(AS) $(AFLAGS) -l $(OUT)/nippon.map -D ANN=1 lost/lost.asm -o $@

$(OUT)/ann-leveldata.o: lost/leveldata.asm
	$(AS) $(AFLAGS) -l $(OUT)/ann-leveldata.map -D ANN=1 lost/leveldata.asm -o $@
	
$(OUT)/common-n.o: common/common.asm common/sound-ll.asm common/practice.asm
	$(AS) $(AFLAGS) -l $(OUT)/common.map -D ANN=1 common/common.asm -o $@

nippon.nes: $(OBJECTS-N) chr/full.chr
	$(LD) -C scripts/nippon.cfg \
		$(OUT)/ines.o \
		$(OUT)/intro-n.o \
        $(OUT)/nippon.o \
        $(OUT)/ann-leveldata.o \
		$(OUT)/common-n.o \
		--dbgfile "nippon.dbg" \
		-o nippon.tmp
	cat nippon.tmp chr/nippon.chr > nippon.nes

#-----------------------------------------------------------------------------------------------------------------------------------

.PHONY: clean

clean:
	rm -f build/*

include $(wildcard build/*.dep)
