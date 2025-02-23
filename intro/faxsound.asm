fax_selected_song = $FA

		jmp loc_8681
sub_8003:
		jmp sub_862F
		jmp loc_801B
sub_8009:
		jmp loc_800D
		.byte $FF
loc_800D:
		lda $120
		bne loc_802E
		lda fax_selected_song
		beq loc_8038
		bpl loc_8079
		jmp loc_8106
loc_801B:
		lda #0
		sta fax_selected_song
		sta $FB
		sta $122
		sta $4015
		sta $120
		sta $121
		rts
loc_802E:
		bmi loc_8038
		ora #$80
		sta $120
		jsr sub_804A
loc_8038:
		lda fax_selected_song
		bne locret_8049
		ldx #3
loc_803E:
		lda $123,x
		bne locret_8049
		dex
		bpl loc_803E
		jmp sub_804A
locret_8049:
		rts
sub_804A:
		lda #$10
		sta $4000
		sta $4004
		sta $400C
		lda #0
		sta $4001
		sta $4002
		sta $4003
		sta $4005
		sta $4006
		sta $4007
		sta $4008
		sta $400A
		sta $400B
		sta $400E
		sta $400F
		rts
loc_8079:
		lda fax_selected_song
		ora #$80
		sta fax_selected_song
		asl
		asl
		asl
		tay
		ldx #7
loc_8085:
		lda data_8EFA,y
		sta $F2,x
		sta $150
		dey
		dex
		bpl loc_8085
		inx
		stx $160
		stx $161
		stx $162
		stx $163
		stx $174
		stx $175
		stx $176
		stx $177
		stx $179
		stx $17A
		stx $17C
		stx $17D
		stx $16D
		stx $16E
		stx $16F
		stx $17E
		stx $169
		stx $178
		stx $16C
		stx $17F
		stx $180
		stx $181
		inx
		stx $130
		stx $131
		stx $132
		stx $133
		stx $12C
		stx $12D
		stx $12E
		stx $12F
		lda #8
		sta $164
		sta $165
		sta $166
		sta $167
		lda #$90
		sta $172
		sta $173
		jmp sub_804A
loc_8106:
		lda #0
		sta $16B
		sta $16A
loc_810E:
		ldx $16A
		dec $130,x
		bne loc_8119
		jsr sub_823A
loc_8119:
		jsr sub_8132
		inc $16A
		lda $16A
		cmp #4
		bcc loc_810E
		lda $16B
		cmp #4
		bne locret_8131
		lda #0
		sta fax_selected_song
locret_8131:
		rts
sub_8132:
		ldx $16A
		beq loc_8160
		dex
		beq loc_8160
		dex
		beq loc_813E
		rts
loc_813E:
		ldx $16A
		lda $17E
		beq loc_814B
		dec $17E
		lda #$C0
loc_814B:
		sta $16C
		lda $123,x
		bne loc_815A
		lda $16C
		sta $4008
		rts
loc_815A:
		lda #0
		sta $4008
		rts
loc_8160:
		ldx $16A
		ldy $176,x
		beq loc_816F
		dey
		beq loc_8192
		dey
		beq loc_81BC
		rts
loc_816F:
		ldx $16A
		lda $170,x
		beq loc_817D
		sec
		sbc #3
		sta $170,x
loc_817D:
		lsr
		lsr
		lsr
		lsr
		and #$F
		sta $16C
		lda $123,x
		bne locret_8191
		jsr sub_81F1
		jsr sub_820D
locret_8191:
		rts
loc_8192:
		ldx $16A
		lda $170,x
		and #$F
		sta $170,x
		cmp #$D
		bcc loc_81A7
		dec $170,x
		dec $170,x
loc_81A7:
		inc $179,x
		lda $170,x
		sta $16C
		lda $123,x
		bne locret_81BB
		jsr sub_81F1
		jsr sub_820D
locret_81BB:
		rts
loc_81BC:
		ldx $16A
		lda $179,x
		lsr
		lsr
		tay
		lda data_81DC,y
		beq loc_81CD
		inc $179,x
loc_81CD:
		sta $16C
		lda $123,x
		bne locret_81DB
		jsr sub_81F1
		jsr sub_820D
locret_81DB:
		rts
data_81DC:
		.byte 7
		.byte $A
		.byte $D
		.byte $F
		.byte $E
		.byte $D
		.byte $C
		.byte $B
		.byte $A
		.byte 9
		.byte 8
		.byte 7
		.byte 6
		.byte 5
		.byte 4
		.byte 3
		.byte 2
		.byte 2
		.byte 1
		.byte 1
		.byte 0
sub_81F1:
		ldx $16A
		txa
		asl
		asl
		tay
		lda $16C
		sec
		sbc $174,x
		bcs loc_8203
		lda #0
loc_8203:
		ldx $16A
		ora $172,x
		sta $4000,y
		rts
sub_820D:
		ldx $16A
		lda $179,x
		cmp #$12
		bcc locret_8239
		lsr
		lsr
		and $17F,x
		sta $178
		lda $123,x
		bne locret_8239
		lda $16A
		asl
		asl
		tay
		lda $17C,x
		cmp $17F,x
		bcc locret_8239
		sec
		sbc $178
		sta $4002,y
locret_8239:
		rts
sub_823A:
		ldx $16A
		cpx #3
		bne loc_8249
		lda $169
		beq loc_8249
		jmp loc_82FF
loc_8249:
		jsr sub_8544
		sta $16C
		tay
		bmi loc_8255
		jmp loc_82E3
loc_8255:
		cmp #$EE
		bcc loc_828E
		sec
		lda #$FF
		sbc $16C
		asl
		tay
		lda data_callgate_2+1,y
		pha
		lda data_callgate_2,y
		pha
		rts
data_callgate_2:
		.word locret_8407
		.word locret_84A4
		.word locret_841E
		.word loc_8455+2
		.word loc_843A+2
		.word loc_847D+2
		.word loc_848C+2
		.word loc_84CD+2
		.word loc_850B+2
		.word loc_84FF+2
		.word loc_84ED+2
		.word loc_84B4+2
		.word loc_8293+1
		.word cg2_5+2
		.word loc_8514+2
		.word loc_8520+2
		.word loc_852C+2
		.word loc_8538+2
loc_828E:
		lda $16C
		and #$7F
loc_8293:
		bpl loc_8298
cg2_12:
		jsr sub_8544
loc_8298:
		ldx $16A
		sta $12C,x
		sta $16C
		ldx $16A
		cpx #2
		beq sub_823A
		lda $16C
		pha
		lsr
		lsr
		lsr
		sta $16C
		pla
		sec
		sbc $16C
		cmp #$10
		bcs loc_82CC
		asl
		asl
		asl
		asl
		ora #8
		sta $164,x
		cmp #8
		bne loc_82DD
		lda #$18
		bne loc_82DA
loc_82CC:
		ldy #0
loc_82CE:
		cmp data_856F,y
		bcs loc_82D7
		iny
		iny
		bne loc_82CE
loc_82D7:
		lda data_8570,y
loc_82DA:
		sta $164,x
loc_82DD:
		jmp sub_823A
		jmp sub_823A
loc_82E3:
		cmp #0
		bne loc_82EA
		jmp sub_83AD
loc_82EA:
		ldx $16A
		cpx #3
		bne loc_8326
		pha
		and #$F
		sta $169
		pla
		lsr
		lsr
		lsr
		lsr
		sta $168
loc_82FF:
		dec $169
		lda $126
		beq loc_830A
		jmp sub_83AD
loc_830A:
		lda $168
		bne loc_8312
		jmp sub_83AD
loc_8312:
		asl
		asl
		tax
		ldy #0
loc_8317:
		lda data_857F,x
		sta $400C,y
		inx
		iny
		cpy #4
		bcc loc_8317
		jmp sub_83AD
loc_8326:
		ldx $16A
		lda $123,x
		beq loc_8331
		jmp sub_83AD
loc_8331:
		ldx $16A
		beq loc_8355
		dex
		beq loc_8376
		lda #$C0
		sta $4008
		jsr sub_83CD
		lda $16D
		sta $400A
		ldx $16A
		lda $16E
		ora #$F8
		sta $400B
		jmp loc_83B7
loc_8355:
		jsr sub_83CD
		lda #0
		sta $4001
		lda $16D
		sta $4002
		sta $17C
		lda $16E
		ora $164
		sta $4003
		lda #0
		sta $179
		beq loc_83A1
loc_8376:
		jsr sub_83CD
		lda #0
		sta $4005
		ldy $16C
		lda $16D
		cmp $181
		bcc loc_838D
		sec
		sbc $181
loc_838D:
		sta $4006
		sta $17D
		lda $16E
		ora $165
		sta $4007
		lda #0
		sta $17A
loc_83A1:
		ldx $16A
		lda #$FF
		sta $170,x
		jsr sub_83AD
		rts
sub_83AD:
		ldx $16A
		lda $12C,x
		sta $130,x
		rts
loc_83B7:
		jsr sub_83AD
		sta $16C
		lsr
		lsr
		sta $178
		lda $16C
		sec
		sbc $178
		sta $17E
		rts
sub_83CD:
		ldx $16A
		lda $16C
		clc
		adc data_856C,x
		clc
		adc $161,x
		clc
		adc $160
		sty $16F
		ldy #1
		sec
loc_83E5:
		sbc #$C
		iny
		bcs loc_83E5
		dey
		adc #$D
		asl
		tax
		lda data_8552,x
		sta $16D
		lda data_8553,x
		sta $16E
loc_83FB:
		dey
		beq locret_8407
		lsr $16E
		ror $16D
		jmp loc_83FB
locret_8407:
		rts
cg2_1:
		ldx $16A
		lda #1
		sta $130,x
		txa
		asl
		tax
		lda $F2,x
		bne loc_8419
		dec $F3,x
loc_8419:
		dec $F2,x
		inc $16B
locret_841E:
		rts
		jsr sub_8544
		ldx $16A
		sta $148,x
		lda #1
		sta $14C,x
		txa
		asl
		tax
		lda $F2,x
		sta $138,x
		lda $F3,x
		sta $139,x
loc_843A:
		jmp sub_823A
cg2_4:
		jsr sub_8544
		ldx $16A
		cmp $14C,x
		bcs loc_8455
		txa
		asl
		tax
		lda $140,x
		sta $F2,x
		lda $141,x
		sta $F3,x
loc_8455:
		jmp sub_823A
cg2_3:
		ldx $16A
		lda $14C,x
		cmp $148,x
		bcs loc_847D
		inc $14C,x
		txa
		asl
		tax
		lda $F2,x
		sta $140,x
		lda $F3,x
		sta $141,x
		lda $138,x
		sta $F2,x
		lda $139,x
		sta $F3,x
loc_847D:
		jmp sub_823A
cg2_5:
		jmp sub_823A
cg2_13:
		jsr sub_8544
		ldx $16A
		sta $172,x
loc_848C:
		jmp sub_823A
cg2_6:
		jsr sub_8495
		jmp sub_823A
sub_8495:
		lda $16A
		asl
		tax
		lda $F2,x
		sta $150,x
		lda $F3,x
		sta $151,x
locret_84A4:
		rts
cg2_2:
		lda $16A
		asl
		tax
		lda $150,x
		sta $F2,x
		lda $151,x
		sta $F3,x
loc_84B4:
		jmp sub_823A
cg2_11:
		lda fax_selected_song
		asl
		asl
		sec
		sbc #4
		asl
		tay
		ldx #0
loc_84C2:
		lda music_table,y
		sta $F2,x
		iny
		inx
		cpx #8
		bne loc_84C2
loc_84CD:
		jmp sub_823A
cg2_7:
		jsr sub_8544
		pha
		jsr sub_8544
		pha
		lda $16A
		asl
		tax
		lda $F2,x
		sta $158,x
		lda $F3,x
		sta $159,x
		pla
		sta $F3,x
		pla
		sta $F2,x
loc_84ED:
		jmp sub_823A
cg2_10:
		lda $16A
		asl
		tax
		lda $158,x
		sta $F2,x
		lda $159,x
		sta $F3,x
loc_84FF:
		jmp sub_823A
cg2_9:
		jsr sub_8544
		ldx $16A
		sta $161,x
loc_850B:
		jmp sub_823A
cg2_8:
		jsr sub_8544
		sta $160
loc_8514:
		jmp sub_823A
cg2_14:
		jsr sub_8544
		ldx $16A
		sta $174,x
loc_8520:
		jmp sub_823A
cg2_15:
		jsr sub_8544
		ldx $16A
		sta $176,x
loc_852C:
		jmp sub_823A
cg2_16:
		jsr sub_8544
		ldx $16A
		sta $17F,x
loc_8538:
		jmp sub_823A
cg2_17:
		jsr sub_8544
		sta $181
		jmp sub_823A
sub_8544:
		lda $16A
		asl
		tax
		lda ($F2,X)
		inc $F2,x
		bne locret_8551
		inc $F3,x
locret_8551:
		rts
data_8552:
		.byte 0
data_8553:
		.byte 0
		.byte $AE
		.byte 6
		.byte $4E
		.byte 6
		.byte $F3
		.byte 5
		.byte $9F
		.byte 5
		.byte $4D
		.byte 5
		.byte 1
		.byte 5
		.byte $B9
		.byte 4
		.byte $75
		.byte 4
		.byte $35
		.byte 4
		.byte $F8
		.byte 3
		.byte $BF
		.byte 3
		.byte $89
		.byte 3
data_856C:
		.byte $F4
		.byte $F4
		.byte $C
data_856F:
		.byte $7F
data_8570:
		.byte 8
		.byte $60
		.byte $C0
		.byte $50
		.byte $40
		.byte $30
		.byte $B0
		.byte $28
		.byte $30
		.byte $24
		.byte $D0
		.byte $1E
		.byte $50
		.byte $18
		.byte $A0
data_857F:
		.byte $14
		.byte $20
		.byte 0
		.byte $F0
		.byte 0
		.byte 0
		.byte $F
		.byte $20
		.byte 0
		.byte 0
		.byte $A
		.byte $10
		.byte 0
		.byte 0
		.byte 5
		.byte 0
		.byte $FF
offsets_for_callgate:
		.byte 0
		.byte $2C
		.byte $60
		.byte $5C
		.byte $64
		.byte $70
		.byte $38
		.byte $40
		.byte $4C
		.byte $50
		.byte $68
		.byte $30
		.byte $58
		.byte $34
		.byte $28
		.byte $3C
		.byte $54
		.byte $48
		.byte $44
		.byte $24
		.byte $6C
		.byte $1C
		.byte $10
		.byte $14
		.byte $18
		.byte $20
		.byte $C
		.byte 8
		.byte 4
XXX_FIXME_callgate_thing:
		.word locret_8680
		.word loc_867F
		.word byte_8ECA
		.word loc_8ECB+2
		.word ret_from_callgate_off1
		.word loc_8E85+2
		.word locret_8DD7
		.word loc_8DE8+2
		.word locret_8C9B
		.word loc_8CB1+2
		.word byte_8D2B
		.word loc_8D33+2
		.word locret_8D5E
		.word loc_8D6E+2
		.word locret_8C68
		.word loc_8C70+2
		.word byte_8DB8
		.word off_861F+1
		.word unk_8BB2
		.word loc_8BC2+2
		.word unk_8A7D
		.word off_861F+1
		.word locret_869D
		.word loc_86A5+2
		.word locret_89A7
		.word loc_89AF+2
		.word data_8A3C
		.word loc_8A44+2
		.word unk_8809
		.word loc_881C+2
		.word locret_8A9C
		.word loc_8AA4+2
		.word unk_886C
		.word loc_8874+2
		.word locret_8B64
		.word loc_8B6C+2
		.word locret_8B07
		.word loc_8B1C+2
		.word unk_88C4
		.word loc_88CF+2
		.word unk_891E
		.word loc_892B+2
		.word unk_8ACF
		.word loc_8AD7+2
		.word unk_8A04
		.word loc_8A0C+2
		.word unk_8733
		.word loc_8740+2
		.word byte_86D2
		.word loc_86DD+2
		.word unk_8770
		.word loc_8778+2
		.word unk_8972
		.word loc_897F+2
		.word byte_8C06
		.word loc_8C1B+2
		.word unk_87B4
off_861F:
		.word loc_87BF+2
cg12:
		dec $127
		bne locret_862E
loc_8626:
		lda #0
		sta $122
		sta $121
locret_862E:
		rts
sub_862F:
		ldx #3
loc_8631:
		lda $123,x
		beq loc_8639
		dec $123,x
loc_8639:
		dex
		bpl loc_8631
		lda $FB
		bmi loc_866F
		tax
		ora #$80
		sta $FB
		cpx #$1D
		bcs loc_866F
		lda $122
		beq loc_8658
		lda offsets_for_callgate,x
		cmp $122
		bcc loc_8658
		bne loc_866F
loc_8658:
		lda offsets_for_callgate,x
		sta $122
		tax
		lda #0
		sta $123
		sta $124
		sta $125
		sta $126
		beq loc_8674
loc_866F:
		ldx $122
		inx
		inx
loc_8674:
		cpx #$74
		bcs loc_8626
		lda XXX_FIXME_callgate_thing+1,x
		pha
		lda XXX_FIXME_callgate_thing,x
loc_867F:
		pha
locret_8680:
		rts
loc_8681:
		lda #0
		sta $4011
		sta $123
		sta $124
		sta $125
		sta $126
		sta $121
		jsr sub_804A
		lda #$F
		sta $4015
locret_869D:
		rts
cg16:
		lda #6
		sta $126
		lda #0
loc_86A5:
		sta $127
cg17:
		lda #$1F
		sta $400C
		lda $127
		and #2
		tax
		lda unk_86D1,x
		sta $400E
		lda #0
		sta $400F
		inc $127
		lda $127
		cmp #4
		bcc locret_86D0
		lda #$10
		sta $400C
		jmp loc_8626
locret_86D0:
		rts
unk_86D1:
		.byte $10
byte_86D2:
		.byte 1
cg43:
		lda #$14
		sta $124
		sta $126
		lda #0
loc_86DD:
		sta $127
cg44:
		ldx $127
		lda data_term_ff_8724,x
		cmp #$FF
		bne loc_86F5
		lda #$10
		sta $4004
		sta $400C
		jmp loc_8626
loc_86F5:
		jsr sub_8ED1
		lda #$5F
		sta $4004
		sta $400C
		lda $127
		eor #$F
		ora #$98
		sta $4005
		lda $12A
		sta $4006
		and #7
		sta $400E
		lda #0
		sta $400F
		lda $12B
		sta $4007
		inc $127
		rts
data_term_ff_8724:
		.byte $62
		.byte $4E
		.byte $3C
		.byte $50
		.byte $48
		.byte $65
		.byte $51
		.byte $48
		.byte $56
		.byte $52
		.byte $5F
		.byte $58
		.byte $65
		.byte $4D
		.byte $55
unk_8733:
		.byte $FF
cg41:
		lda #$16
		sta $126
		lda #$14
		sta $127
		lda #0
loc_8740:
		sta $128
cg42:
		dec $127
		bne loc_8750
		lda #$10
		sta $400C
		jmp loc_8626
loc_8750:
		ldx $128
		lda #$1F
		sta $400C
		lda data_8767,x
		sta $400E
		lda #0
		sta $400F
		inc $128
		rts
data_8767:
		.byte $FF
unk_8770:
		.byte 0
cg45:
		lda #$F
		sta $124
		lda #0
loc_8778:
		sta $127
cg46:
		ldx $127
		lda data_87AA,x
		cmp #$FF
		bne loc_878D
		lda #$10
		sta $4004
		jmp loc_8626
loc_878D:
		jsr sub_8ED1
		lda #$DF
		sta $4004
		lda #0
		sta $4005
		lda $12A
		sta $4006
		lda $12B
		sta $4007
		inc $127
		rts
data_87AA:
		.byte $FF
unk_87B4:
		.byte $FF
cg51:
		lda #$32
		sta $124
		lda #0
		sta $127
loc_87BF:
		sta $128
cg52:
		ldx $128
		lda data_8800,x
		bne loc_87D2
		lda #$10
		sta $4004
		jmp loc_8626
loc_87D2:
		ora #$50
		sta $4004
		lda #0
		sta $4005
		lda $127
		and #3
		tax
		lda data_8806,x
		sta $4006
		lda #0
		sta $4007
		inc $127
		lda $127
		cmp #8
		bne locret_87FF
		lda #0
		sta $127
		inc $128
locret_87FF:
		rts
data_8800:
		.byte $FF
data_8806:
		.byte $B0
		.byte $A0
		.byte $A8
unk_8809:
		.byte $98
cg22:
		lda #$3C
		sta $124
		sta $126
		lda #$37
		sta $129
		lda #0
		sta $127
loc_881C:
		sta $128
cg23:
		dec $129
		bne loc_882F
		lda #$10
		sta $4004
		sta $400C
		jmp loc_8626
loc_882F:
		lda $127
		lsr
		lsr
		eor #$FF
		and #$F
		ora #$50
		sta $400C
		sta $4004
		lda #0
		sta $4005
		lda $127
		and #7
		tay
		lda #$60
		sec
		sbc data_8865,y
		sta $4006
		and #$F
		sta $400E
		lda #0
		sta $4007
		sta $400F
		inc $127
		rts
data_8865:
		.byte $FF
unk_886C:
		.byte 3
cg26:
		lda #$28
		sta $124
		lda #0
loc_8874:
		sta $127
cg27:
		lda $124
		and #1
		bne locret_88B3
		ldx $127
		lda data_88B4,x
		cmp #$FF
		bne loc_8890
		lda #$10
		sta $4004
		jmp loc_8626
loc_8890:
		jsr sub_8ED1
		inc $127
		lda $127
		eor #$FF
		and #$F
		ora #$D4
		sta $4004
		lda #$91
		sta $4005
		lda $12A
		sta $4006
		lda $12B
		sta $4007
locret_88B3:
		rts
data_88B4:
		.byte $FF
unk_88C4:
		.byte $FF
cg33:
		lda #$3C
		sta $124
		lda #0
		sta $127
loc_88CF:
		sta $128
cg34:
		ldx $127
		lda data_8918,x
		cmp #$FF
		bne loc_88E5
		inc $128
		lda #0
		sta $127
		rts
loc_88E5:
		jsr sub_8ED1
		ldx $128
		lda data_8912,x
		bne loc_88F8
		lda #$10
		sta $4004
		jmp loc_8626
loc_88F8:
		ora #$90
		sta $4004
		lda #0
		sta $4005
		lda $12A
		sta $4006
		lda $12B
		sta $4007
		inc $127
		rts
data_8912:
		.byte $FF
data_8918:
		.byte $FF
unk_891E:
		.byte $FF
cg35:
		lda #$1E
		sta $124
		lda #$50
		sta $127
		lda #0
loc_892B:
		sta $128
cg36:
		ldx $128
		lda data_896D,x
		bne loc_893E
		lda #$10
		sta $4004
		jmp loc_8626
loc_893E:
		ora #$D0
		sta $4004
		lda #0
		sta $4005
		lda $127
		sta $4006
		clc
		adc #4
		sta $4006
		lda #0
		sta $4007
		lda $127
		sec
		sbc #$10
		sta $127
		bne locret_896C
		inc $128
		lda #$50
		sta $127
locret_896C:
		rts
data_896D:
		.byte $FF
unk_8972:
		.byte 0
cg47:
		lda #$1E
		sta $126
		lda #$20
		sta $127
		lda #0
loc_897F:
		sta $128
cg48:
		dec $127
		bne loc_898F
		lda #$10
		sta $400C
		jmp loc_8626
loc_898F:
		lda $127
		lsr
		and #$F
		ora #$10
		sta $400C
		lda $127
		and #$F
		sta $400E
		lda #0
		sta $400F
locret_89A7:
		rts
cg18:
		lda #$16
		sta $124
		lda #$F
loc_89AF:
		sta $127
cg19:
		lda $127
		bne loc_89BF
		lda #$10
		sta $4004
		jmp loc_8626
loc_89BF:
		lda $127
		and #$F
		ora #$50
		sta $4004
		lda #0
		sta $4005
		lda $127
		and #7
		tay
		lda $127
		and #2
		sta $128
		lda $127
		and #1
		clc
		adc $128
		tax
		lda unk_89F9,x
		sec
		sbc unk_89FD,y
		sta $4006
		lda #0
		sta $4007
		dec $127
		rts
unk_89F9:
		.byte $51
		.byte $34
		.byte $B8
		.byte $93
unk_89FD:
		.byte $FF
unk_8A04:
		.byte 1
cg39:
		lda #$14
		sta $124
		lda #$10
loc_8A0C:
		sta $127
cg40:
		dec $127
		bne loc_8A1C
		lda #$10
		sta $4004
		jmp loc_8626
loc_8A1C:
		lda $127
		ora #$90
		sta $4004
		lda #0
		sta $4005
		lda $127
		and #1
		tax
		lda data_8A3B,x
		sta $4006
		lda #0
		sta $4007
		rts
data_8A3B:
		.byte $30
data_8A3C:
		.byte $1A
cg20:
		lda #$1E
		sta $124
		lda #0
loc_8A44:
		sta $127
cg21:
		inc $127
		lda $127
		lsr
		lsr
		tax
		lda data_8A79,x
		cmp #$FF
		bne loc_8A5F
		lda #$10
		sta $4004
		jmp loc_8626
loc_8A5F:
		jsr sub_8ED1
		lda #$BF
		sta $4004
		lda #0
		sta $4005
		lda $12A
		sta $4006
		lda $12B
		sta $4007
		rts
data_8A79:
		.byte $37
		.byte $39
		.byte $32
		.byte $34
unk_8A7D:
		.byte $FF
cg15:
		lda #$A
		sta $124
		lda #2
		sta $127
		lda #$81
		sta $4004
		lda #0
		sta $4005
		lda #$8E
		sta $4006
		lda #$10
		sta $4007
locret_8A9C:
		rts
cg24:
		lda #$20
		sta $126
		lda #$1E
loc_8AA4:
		sta $127
cg25:
		lda $127
		bne loc_8AB4
		lda #$10
		sta $400C
		jmp loc_8626
loc_8AB4:
		lda #$1F
		sta $400C
		lda $127
		and #1
		tax
		lda data_8ACE,x
		sta $400E
		lda #0
		sta $400F
		dec $127
		rts
data_8ACE:
		.byte $F
unk_8ACF:
		.byte $B
cg37:
		lda #$32
		sta $124
		lda #8
loc_8AD7:
		sta $127
cg38:
		lda #$86
		sta $4004
		lda #0
		sta $4005
		lda $127
		cmp #5
		bne loc_8AF5
		lda #$35
		sta $4006
		lda #$20
		sta $4007
loc_8AF5:
		dec $127
		bne locret_8B07
		lda #$20
		sta $4006
		lda #$30
		sta $4007
		jmp loc_8626
locret_8B07:
		rts
cg31:
		lda #$23
		sta $124
		sta $126
		lda #$16
		sta $128
		lda #0
		sta $127
		lda #$1E
loc_8B1C:
		sta $129
cg32:
		dec $129
		bne loc_8B2F
		lda #$10
		sta $4004
		sta $400C
		jmp loc_8626
loc_8B2F:
		lda $124
		and #1
		bne locret_8B64
		lda #$DF
		sta $4004
		lda #$16
		sta $400C
		lda #$A3
		sta $4005
		lda $127
		sta $4006
		clc
		adc #$10
		sta $127
		dec $128
		lda $128
		and #$F
		sta $400E
		lda #$12
		sta $4007
		sta $400F
locret_8B64:
		rts
cg29:
		lda #$46
		sta $124
		lda #0
loc_8B6C:
		sta $127
cg30:
		lda $124
		bne loc_8B7C
		lda #$10
		sta $4004
		jmp loc_8626
loc_8B7C:
		lda $127
		and #$3C
		lsr
		lsr
		and #$F
		ora #$F0
		sta $4004
		lda #0
		sta $4005
		lda #1
		sta $4007
		lda $127
		and #7
		tax
		lda $127
		clc
		adc #$32
		sec
		sbc data_8BAB,x
		sta $4006
		inc $127
		rts
data_8BAB:
		.byte 0
		.byte 8
		.byte $14
		.byte $20
		.byte $2D
		.byte $20
		.byte $14
unk_8BB2:
		.byte 8
cg13:
		lda #$23
		sta $124
		lda #0
		sta $127
		lda #$19
		sta $129
loc_8BC2:
		sta $128
cg14:
		dec $128
		bne loc_8BD2
		lda #$10
		sta $4004
		jmp loc_8626
loc_8BD2:
		lda $127
		and #3
		tay
		lda data_8C01,y
		sta $4004
		lda #$AA
		sta $4005
		lda $127
		and #1
		tax
		lda data_8C05,x
		ora $129
		sbc $127
		sta $129
		sta $4006
		lda #0
		sta $4007
		inc $127
		rts
data_8C01:
		.byte $1F
		.byte $5F
		.byte $9F
		.byte $DF
data_8C05:
		.byte $60
byte_8C06:
		.byte $30
cg49:
		lda #$1E
		sta $124
		sta $126
		lda #$F
		sta $129
		lda #1
		sta $127
		lda #7
loc_8C1B:
		sta $128
cg50:
		dec $127
		bne locret_8C68
		dec $128
		lda $128
		sta $127
		bne loc_8C39
		lda #$10
		sta $4004
loc_8C33:
		sta $400C
		jmp loc_8626
loc_8C39:
		lda #$48
		sta $4004
		lda #0
		sta $4005
		lda $129
		ora #$10
		sta $400C
		lda $129
		and #7
		sta $400E
		lda #0
		sta $400F
		lda $129
		ora #$18
		sta $4006
		lda #0
		sta $4007
		dec $129
locret_8C68:
		rts
cg9:
		lda #5
		sta $126
		lda #3
loc_8C70:
		sta $127
cg10:
		lda #1
		sta $400C
		lda $127
		cmp #3
		bne loc_8C89
		lda #$A
		sta $400E
		lda #0
		sta $400F
loc_8C89:
		dec $127
		bne locret_8C9B
		lda #2
		sta $400E
		lda #$10
		sta $400F
		jmp loc_8626
locret_8C9B:
		rts
cg3:
		lda #$41
		sta $123
		sta $124
		sta $125
		sta $126
		lda #0
		sta $127
		lda #$3C
loc_8CB1:
		sta $128
cg4:
		lda #0
		sta $4008
		sta $400A
		sta $400A
		dec $128
		bne loc_8CD2
		lda #$10
		sta $4000
		sta $4004
		sta $400C
		jmp loc_8626
loc_8CD2:
		lda $127
		eor #$FF
		lsr
		lsr
		and #$F
		ora #$D0
		sta $4004
		and #$5F
		sta $4000
		lda #$1F
		sta $400C
		lda #0
		sta $4005
		sta $4001
		lda $127
		and #3
		tax
		lda byte_8D28,x
		jsr sub_8ED1
		lda $12A
		clc
		adc $127
		sta $4006
		clc
		adc #$10
		sta $4002
		lda $12B
		sta $4007
		sta $4003
		lda $127
		and #3
		sta $400E
		lda #0
		sta $400F
		inc $127
		rts
byte_8D28:
		.byte $4F
		.byte $32
		.byte $4C
byte_8D2B:
		.byte $3C
cg5:
		lda #$A
		sta $126
		lda #3
loc_8D33:
		sta $127
cg6:
		lda #7
		sta $400C
		lda $127
		cmp #3
		bne loc_8D4C
		lda #$F
		sta $400E
		lda #$18
		sta $400F
loc_8D4C:
		dec $127
		bne locret_8D5E
		lda #5
		sta $400E
		lda #$18
		sta $400F
		jmp loc_8626
locret_8D5E:
		rts
cg7:
		lda #$23
		sta $124
		lda #0
		sta $127
		sta $128
		lda #$20
loc_8D6E:
		sta $129
cg8:
		dec $129
		lda $129
		lsr
		bne loc_8D82
		lda #$10
		sta $4004
		jmp loc_8626
loc_8D82:
		ora #$D0
		sta $4004
		lda #0
		sta $4005
		lda $128
		and #3
		tax
		lda data_8DB5,x
		jsr sub_8ED1
		lda $12A
		sec
		sbc $127
		sta $4006
		lda $12B
		sta $4007
		inc $127
		inc $127
		inc $127
		inc $128
		rts
data_8DB5:
		.byte $FF
byte_8DB8:
		.byte $37
cg11:
		lda #$A
		sta $124
		lda #2
		sta $127
		lda #$82
		sta $4004
		lda #0
		sta $4005
		lda #$28
		sta $4006
		lda #$10
		sta $4007
locret_8DD7:
		rts
call_from_cg:
		lda #$44
		sta $124
		sta $126
		lda #0
		sta $127
		sta $128
loc_8DE8:
		sta $129
cg1:
		lda $129
		lsr
		tax
		lda data_8E5F,x
		bne loc_8E00
		lda #$10
		sta $4004
		sta $400C
		jmp loc_8626
loc_8E00:
		ora #$90
		sta $400C
		sta $4004
		lda #0
		sta $4005
		lda $127
		asl
		sta $128
		ldx $127
		lda data_8E66,x
		cmp #$FF
		beq loc_8E56
		jsr sub_8ED1
		lda $12A
		clc
		adc $128
		sta $4006
		lda $12B
		sta $4007
		lda $127
		and #1
		tax
		lda data_8E64,x
		clc
		adc $127
		and #$F
		sta $400E
		lda #0
		sta $400F
		inc $127
		lda $127
		and #7
		bne locret_8E55
		inc $129
locret_8E55:
		rts
loc_8E56:
		lda #0
		sta $127
		inc $129
		rts
data_8E5F:
		.byte $F
		.byte $D
		.byte 9
		.byte 5
		.byte 0
data_8E64:
		.byte $C
		.byte 7
data_8E66:
		.byte $24
		.byte $27
		.byte $2B
		.byte $30
		.byte $48
		.byte $4B
		.byte $4F
		.byte $54
		.byte $33
		.byte $44
		.byte $52
		.byte $57
		.byte $57
		.byte $5C
		.byte $62
ret_from_callgate_off1:
		.byte $FF
		lda #$18
		sta $124
		lda #$FF
		sta $127
		lda #0
		sta $128
loc_8E85:
		sta $129
		lda $128
		lsr
		lsr
		tax
		lda byte_8EC5,x
		sta $129
		bne loc_8E9E
		lda #$10
		sta $4004
		jmp loc_8626
loc_8E9E:
		lda #$DF
		sta $4004
		lda #0
		sta $4005
		lda $127
		sec
		sbc $129
		sta $127
		sta $4006
		txa
		and #3
		tax
		lda byte_8EC5,x
		and #1
		sta $4007
		inc $128
		rts
byte_8EC5:
		.byte $FF
byte_8ECA:
		.byte 0
loc_8ECB:
		jmp cg35
		jmp cg36
sub_8ED1:
		sec
		sbc #$18
		ldy #1
		sec
loc_8ED7:
		sbc #$C
		iny
		bcs loc_8ED7
		dey
		adc #$D
		asl
		tax
		lda data_8552,x
		sta $12A
		lda data_8553,x
		sta $12B
loc_8EED:
		dey
		beq locret_8EF9
		lsr $12B
		ror $12A
		jmp loc_8EED
locret_8EF9:
		rts
data_8EFA:
		.byte $FF
music_table:
		.byte $FF
fax_update:
		jsr sub_8009
		jsr sub_8003
		rts
fax_load_song:
		cmp #$10
		bcc loc_B3E2
		sec
		sbc #$F
		sta $FB
		rts
loc_B3E2:
		tax
		lda fax_song_table,x
		sta fax_selected_song
		rts
fax_song_table:
		.byte $FF
