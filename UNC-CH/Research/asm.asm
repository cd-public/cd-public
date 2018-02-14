
asm.elf:     file format elf32-or1k


Disassembly of section .vectors:

00000000 <_or1k_reset-0x100>:
	...

00000100 <_or1k_reset>:
     100:	18 00 00 00 	l.movhi r0,0x0
     104:	18 20 00 00 	l.movhi r1,0x0
     108:	18 40 00 00 	l.movhi r2,0x0
     10c:	18 60 00 00 	l.movhi r3,0x0
     110:	18 80 00 00 	l.movhi r4,0x0
     114:	18 a0 00 00 	l.movhi r5,0x0
     118:	18 c0 00 00 	l.movhi r6,0x0
     11c:	18 e0 00 00 	l.movhi r7,0x0
     120:	19 00 00 00 	l.movhi r8,0x0
     124:	19 20 00 00 	l.movhi r9,0x0
     128:	19 40 00 00 	l.movhi r10,0x0
     12c:	19 60 00 00 	l.movhi r11,0x0
     130:	19 80 00 00 	l.movhi r12,0x0
     134:	19 a0 00 00 	l.movhi r13,0x0
     138:	19 c0 00 00 	l.movhi r14,0x0
     13c:	19 e0 00 00 	l.movhi r15,0x0
     140:	1a 00 00 00 	l.movhi r16,0x0
     144:	1a 20 00 00 	l.movhi r17,0x0
     148:	1a 40 00 00 	l.movhi r18,0x0
     14c:	1a 60 00 00 	l.movhi r19,0x0
     150:	1a 80 00 00 	l.movhi r20,0x0
     154:	1a a0 00 00 	l.movhi r21,0x0
     158:	1a c0 00 00 	l.movhi r22,0x0
     15c:	1a e0 00 00 	l.movhi r23,0x0
     160:	1b 00 00 00 	l.movhi r24,0x0
     164:	1b 20 00 00 	l.movhi r25,0x0
     168:	1b 40 00 00 	l.movhi r26,0x0
     16c:	1b 60 00 00 	l.movhi r27,0x0
     170:	1b 80 00 00 	l.movhi r28,0x0
     174:	1b a0 00 00 	l.movhi r29,0x0
     178:	1b c0 00 00 	l.movhi r30,0x0
     17c:	1b e0 00 00 	l.movhi r31,0x0
     180:	a8 20 00 01 	l.ori r1,r0,0x1
     184:	c0 00 08 11 	l.mtspr r0,r1,0x11
     188:	c1 40 00 00 	l.mtspr r0,r0,0x5000
     18c:	18 80 00 00 	l.movhi r4,0x0
     190:	a8 84 20 30 	l.ori r4,r4,0x2030
     194:	44 00 20 00 	l.jr r4
     198:	15 00 00 00 	l.nop 0x0
	...
     200:	d4 00 08 04 	l.sw 4(r0),r1
     204:	18 20 00 01 	l.movhi r1,0x1
     208:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     20c:	84 21 00 00 	l.lwz r1,0(r1)
     210:	e4 01 00 00 	l.sfeq r1,r0
     214:	0c 00 00 06 	l.bnf 22c <_or1k_reset+0x12c>
     218:	15 00 00 00 	l.nop 0x0
     21c:	18 20 00 01 	l.movhi r1,0x1
     220:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     224:	00 00 00 04 	l.j 234 <_or1k_reset+0x134>
     228:	84 21 00 00 	l.lwz r1,0(r1)
     22c:	84 20 00 04 	l.lwz r1,4(r0)
     230:	9c 21 ff 80 	l.addi r1,r1,-128
     234:	9c 21 ff 78 	l.addi r1,r1,-136
     238:	d4 01 18 0c 	l.sw 12(r1),r3
     23c:	84 60 00 04 	l.lwz r3,4(r0)
     240:	d4 01 18 04 	l.sw 4(r1),r3
     244:	d4 01 20 10 	l.sw 16(r1),r4
     248:	18 60 00 01 	l.movhi r3,0x1
     24c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     250:	84 83 00 00 	l.lwz r4,0(r3)
     254:	9c 84 00 01 	l.addi r4,r4,1
     258:	d4 03 20 00 	l.sw 0(r3),r4
     25c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     260:	00 00 35 d4 	l.j d9b0 <_or1k_exception_handler>
     264:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     300:	d4 00 08 04 	l.sw 4(r0),r1
     304:	18 20 00 01 	l.movhi r1,0x1
     308:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     30c:	84 21 00 00 	l.lwz r1,0(r1)
     310:	e4 01 00 00 	l.sfeq r1,r0
     314:	0c 00 00 06 	l.bnf 32c <_or1k_reset+0x22c>
     318:	15 00 00 00 	l.nop 0x0
     31c:	18 20 00 01 	l.movhi r1,0x1
     320:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     324:	00 00 00 04 	l.j 334 <_or1k_reset+0x234>
     328:	84 21 00 00 	l.lwz r1,0(r1)
     32c:	84 20 00 04 	l.lwz r1,4(r0)
     330:	9c 21 ff 80 	l.addi r1,r1,-128
     334:	9c 21 ff 78 	l.addi r1,r1,-136
     338:	d4 01 18 0c 	l.sw 12(r1),r3
     33c:	84 60 00 04 	l.lwz r3,4(r0)
     340:	d4 01 18 04 	l.sw 4(r1),r3
     344:	d4 01 20 10 	l.sw 16(r1),r4
     348:	18 60 00 01 	l.movhi r3,0x1
     34c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     350:	84 83 00 00 	l.lwz r4,0(r3)
     354:	9c 84 00 01 	l.addi r4,r4,1
     358:	d4 03 20 00 	l.sw 0(r3),r4
     35c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     360:	00 00 35 94 	l.j d9b0 <_or1k_exception_handler>
     364:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     400:	d4 00 08 04 	l.sw 4(r0),r1
     404:	18 20 00 01 	l.movhi r1,0x1
     408:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     40c:	84 21 00 00 	l.lwz r1,0(r1)
     410:	e4 01 00 00 	l.sfeq r1,r0
     414:	0c 00 00 06 	l.bnf 42c <_or1k_reset+0x32c>
     418:	15 00 00 00 	l.nop 0x0
     41c:	18 20 00 01 	l.movhi r1,0x1
     420:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     424:	00 00 00 04 	l.j 434 <_or1k_reset+0x334>
     428:	84 21 00 00 	l.lwz r1,0(r1)
     42c:	84 20 00 04 	l.lwz r1,4(r0)
     430:	9c 21 ff 80 	l.addi r1,r1,-128
     434:	9c 21 ff 78 	l.addi r1,r1,-136
     438:	d4 01 18 0c 	l.sw 12(r1),r3
     43c:	84 60 00 04 	l.lwz r3,4(r0)
     440:	d4 01 18 04 	l.sw 4(r1),r3
     444:	d4 01 20 10 	l.sw 16(r1),r4
     448:	18 60 00 01 	l.movhi r3,0x1
     44c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     450:	84 83 00 00 	l.lwz r4,0(r3)
     454:	9c 84 00 01 	l.addi r4,r4,1
     458:	d4 03 20 00 	l.sw 0(r3),r4
     45c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     460:	00 00 35 54 	l.j d9b0 <_or1k_exception_handler>
     464:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     500:	d4 00 08 04 	l.sw 4(r0),r1
     504:	18 20 00 01 	l.movhi r1,0x1
     508:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     50c:	84 21 00 00 	l.lwz r1,0(r1)
     510:	e4 01 00 00 	l.sfeq r1,r0
     514:	0c 00 00 06 	l.bnf 52c <_or1k_reset+0x42c>
     518:	15 00 00 00 	l.nop 0x0
     51c:	18 20 00 01 	l.movhi r1,0x1
     520:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     524:	00 00 00 04 	l.j 534 <_or1k_reset+0x434>
     528:	84 21 00 00 	l.lwz r1,0(r1)
     52c:	84 20 00 04 	l.lwz r1,4(r0)
     530:	9c 21 ff 80 	l.addi r1,r1,-128
     534:	9c 21 ff 78 	l.addi r1,r1,-136
     538:	d4 01 18 0c 	l.sw 12(r1),r3
     53c:	84 60 00 04 	l.lwz r3,4(r0)
     540:	d4 01 18 04 	l.sw 4(r1),r3
     544:	d4 01 20 10 	l.sw 16(r1),r4
     548:	18 60 00 01 	l.movhi r3,0x1
     54c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     550:	84 83 00 00 	l.lwz r4,0(r3)
     554:	9c 84 00 01 	l.addi r4,r4,1
     558:	d4 03 20 00 	l.sw 0(r3),r4
     55c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     560:	00 00 35 14 	l.j d9b0 <_or1k_exception_handler>
     564:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     600:	d4 00 08 04 	l.sw 4(r0),r1
     604:	18 20 00 01 	l.movhi r1,0x1
     608:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     60c:	84 21 00 00 	l.lwz r1,0(r1)
     610:	e4 01 00 00 	l.sfeq r1,r0
     614:	0c 00 00 06 	l.bnf 62c <_or1k_reset+0x52c>
     618:	15 00 00 00 	l.nop 0x0
     61c:	18 20 00 01 	l.movhi r1,0x1
     620:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     624:	00 00 00 04 	l.j 634 <_or1k_reset+0x534>
     628:	84 21 00 00 	l.lwz r1,0(r1)
     62c:	84 20 00 04 	l.lwz r1,4(r0)
     630:	9c 21 ff 80 	l.addi r1,r1,-128
     634:	9c 21 ff 78 	l.addi r1,r1,-136
     638:	d4 01 18 0c 	l.sw 12(r1),r3
     63c:	84 60 00 04 	l.lwz r3,4(r0)
     640:	d4 01 18 04 	l.sw 4(r1),r3
     644:	d4 01 20 10 	l.sw 16(r1),r4
     648:	18 60 00 01 	l.movhi r3,0x1
     64c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     650:	84 83 00 00 	l.lwz r4,0(r3)
     654:	9c 84 00 01 	l.addi r4,r4,1
     658:	d4 03 20 00 	l.sw 0(r3),r4
     65c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     660:	00 00 34 d4 	l.j d9b0 <_or1k_exception_handler>
     664:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     700:	d4 00 08 04 	l.sw 4(r0),r1
     704:	18 20 00 01 	l.movhi r1,0x1
     708:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     70c:	84 21 00 00 	l.lwz r1,0(r1)
     710:	e4 01 00 00 	l.sfeq r1,r0
     714:	0c 00 00 06 	l.bnf 72c <_or1k_reset+0x62c>
     718:	15 00 00 00 	l.nop 0x0
     71c:	18 20 00 01 	l.movhi r1,0x1
     720:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     724:	00 00 00 04 	l.j 734 <_or1k_reset+0x634>
     728:	84 21 00 00 	l.lwz r1,0(r1)
     72c:	84 20 00 04 	l.lwz r1,4(r0)
     730:	9c 21 ff 80 	l.addi r1,r1,-128
     734:	9c 21 ff 78 	l.addi r1,r1,-136
     738:	d4 01 18 0c 	l.sw 12(r1),r3
     73c:	84 60 00 04 	l.lwz r3,4(r0)
     740:	d4 01 18 04 	l.sw 4(r1),r3
     744:	d4 01 20 10 	l.sw 16(r1),r4
     748:	18 60 00 01 	l.movhi r3,0x1
     74c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     750:	84 83 00 00 	l.lwz r4,0(r3)
     754:	9c 84 00 01 	l.addi r4,r4,1
     758:	d4 03 20 00 	l.sw 0(r3),r4
     75c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     760:	00 00 34 94 	l.j d9b0 <_or1k_exception_handler>
     764:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     800:	d4 00 08 04 	l.sw 4(r0),r1
     804:	18 20 00 01 	l.movhi r1,0x1
     808:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     80c:	84 21 00 00 	l.lwz r1,0(r1)
     810:	e4 01 00 00 	l.sfeq r1,r0
     814:	0c 00 00 06 	l.bnf 82c <_or1k_reset+0x72c>
     818:	15 00 00 00 	l.nop 0x0
     81c:	18 20 00 01 	l.movhi r1,0x1
     820:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     824:	00 00 00 04 	l.j 834 <_or1k_reset+0x734>
     828:	84 21 00 00 	l.lwz r1,0(r1)
     82c:	84 20 00 04 	l.lwz r1,4(r0)
     830:	9c 21 ff 80 	l.addi r1,r1,-128
     834:	9c 21 ff 78 	l.addi r1,r1,-136
     838:	d4 01 18 0c 	l.sw 12(r1),r3
     83c:	84 60 00 04 	l.lwz r3,4(r0)
     840:	d4 01 18 04 	l.sw 4(r1),r3
     844:	d4 01 20 10 	l.sw 16(r1),r4
     848:	18 60 00 01 	l.movhi r3,0x1
     84c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     850:	84 83 00 00 	l.lwz r4,0(r3)
     854:	9c 84 00 01 	l.addi r4,r4,1
     858:	d4 03 20 00 	l.sw 0(r3),r4
     85c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     860:	00 00 34 54 	l.j d9b0 <_or1k_exception_handler>
     864:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     900:	d4 00 08 04 	l.sw 4(r0),r1
     904:	18 20 00 01 	l.movhi r1,0x1
     908:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     90c:	84 21 00 00 	l.lwz r1,0(r1)
     910:	e4 01 00 00 	l.sfeq r1,r0
     914:	0c 00 00 06 	l.bnf 92c <_or1k_reset+0x82c>
     918:	15 00 00 00 	l.nop 0x0
     91c:	18 20 00 01 	l.movhi r1,0x1
     920:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     924:	00 00 00 04 	l.j 934 <_or1k_reset+0x834>
     928:	84 21 00 00 	l.lwz r1,0(r1)
     92c:	84 20 00 04 	l.lwz r1,4(r0)
     930:	9c 21 ff 80 	l.addi r1,r1,-128
     934:	9c 21 ff 78 	l.addi r1,r1,-136
     938:	d4 01 18 0c 	l.sw 12(r1),r3
     93c:	84 60 00 04 	l.lwz r3,4(r0)
     940:	d4 01 18 04 	l.sw 4(r1),r3
     944:	d4 01 20 10 	l.sw 16(r1),r4
     948:	18 60 00 01 	l.movhi r3,0x1
     94c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     950:	84 83 00 00 	l.lwz r4,0(r3)
     954:	9c 84 00 01 	l.addi r4,r4,1
     958:	d4 03 20 00 	l.sw 0(r3),r4
     95c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     960:	00 00 34 14 	l.j d9b0 <_or1k_exception_handler>
     964:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     a00:	d4 00 08 04 	l.sw 4(r0),r1
     a04:	18 20 00 01 	l.movhi r1,0x1
     a08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     a0c:	84 21 00 00 	l.lwz r1,0(r1)
     a10:	e4 01 00 00 	l.sfeq r1,r0
     a14:	0c 00 00 06 	l.bnf a2c <_or1k_reset+0x92c>
     a18:	15 00 00 00 	l.nop 0x0
     a1c:	18 20 00 01 	l.movhi r1,0x1
     a20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     a24:	00 00 00 04 	l.j a34 <_or1k_reset+0x934>
     a28:	84 21 00 00 	l.lwz r1,0(r1)
     a2c:	84 20 00 04 	l.lwz r1,4(r0)
     a30:	9c 21 ff 80 	l.addi r1,r1,-128
     a34:	9c 21 ff 78 	l.addi r1,r1,-136
     a38:	d4 01 18 0c 	l.sw 12(r1),r3
     a3c:	84 60 00 04 	l.lwz r3,4(r0)
     a40:	d4 01 18 04 	l.sw 4(r1),r3
     a44:	d4 01 20 10 	l.sw 16(r1),r4
     a48:	18 60 00 01 	l.movhi r3,0x1
     a4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     a50:	84 83 00 00 	l.lwz r4,0(r3)
     a54:	9c 84 00 01 	l.addi r4,r4,1
     a58:	d4 03 20 00 	l.sw 0(r3),r4
     a5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     a60:	00 00 33 d4 	l.j d9b0 <_or1k_exception_handler>
     a64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     b00:	d4 00 08 04 	l.sw 4(r0),r1
     b04:	18 20 00 01 	l.movhi r1,0x1
     b08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     b0c:	84 21 00 00 	l.lwz r1,0(r1)
     b10:	e4 01 00 00 	l.sfeq r1,r0
     b14:	0c 00 00 06 	l.bnf b2c <_or1k_reset+0xa2c>
     b18:	15 00 00 00 	l.nop 0x0
     b1c:	18 20 00 01 	l.movhi r1,0x1
     b20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     b24:	00 00 00 04 	l.j b34 <_or1k_reset+0xa34>
     b28:	84 21 00 00 	l.lwz r1,0(r1)
     b2c:	84 20 00 04 	l.lwz r1,4(r0)
     b30:	9c 21 ff 80 	l.addi r1,r1,-128
     b34:	9c 21 ff 78 	l.addi r1,r1,-136
     b38:	d4 01 18 0c 	l.sw 12(r1),r3
     b3c:	84 60 00 04 	l.lwz r3,4(r0)
     b40:	d4 01 18 04 	l.sw 4(r1),r3
     b44:	d4 01 20 10 	l.sw 16(r1),r4
     b48:	18 60 00 01 	l.movhi r3,0x1
     b4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     b50:	84 83 00 00 	l.lwz r4,0(r3)
     b54:	9c 84 00 01 	l.addi r4,r4,1
     b58:	d4 03 20 00 	l.sw 0(r3),r4
     b5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     b60:	00 00 33 94 	l.j d9b0 <_or1k_exception_handler>
     b64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     c00:	d4 00 08 04 	l.sw 4(r0),r1
     c04:	18 20 00 01 	l.movhi r1,0x1
     c08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     c0c:	84 21 00 00 	l.lwz r1,0(r1)
     c10:	e4 01 00 00 	l.sfeq r1,r0
     c14:	0c 00 00 06 	l.bnf c2c <_or1k_reset+0xb2c>
     c18:	15 00 00 00 	l.nop 0x0
     c1c:	18 20 00 01 	l.movhi r1,0x1
     c20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     c24:	00 00 00 04 	l.j c34 <_or1k_reset+0xb34>
     c28:	84 21 00 00 	l.lwz r1,0(r1)
     c2c:	84 20 00 04 	l.lwz r1,4(r0)
     c30:	9c 21 ff 80 	l.addi r1,r1,-128
     c34:	9c 21 ff 78 	l.addi r1,r1,-136
     c38:	d4 01 18 0c 	l.sw 12(r1),r3
     c3c:	84 60 00 04 	l.lwz r3,4(r0)
     c40:	d4 01 18 04 	l.sw 4(r1),r3
     c44:	d4 01 20 10 	l.sw 16(r1),r4
     c48:	18 60 00 01 	l.movhi r3,0x1
     c4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     c50:	84 83 00 00 	l.lwz r4,0(r3)
     c54:	9c 84 00 01 	l.addi r4,r4,1
     c58:	d4 03 20 00 	l.sw 0(r3),r4
     c5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     c60:	00 00 33 54 	l.j d9b0 <_or1k_exception_handler>
     c64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     d00:	d4 00 08 04 	l.sw 4(r0),r1
     d04:	18 20 00 01 	l.movhi r1,0x1
     d08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     d0c:	84 21 00 00 	l.lwz r1,0(r1)
     d10:	e4 01 00 00 	l.sfeq r1,r0
     d14:	0c 00 00 06 	l.bnf d2c <_or1k_reset+0xc2c>
     d18:	15 00 00 00 	l.nop 0x0
     d1c:	18 20 00 01 	l.movhi r1,0x1
     d20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     d24:	00 00 00 04 	l.j d34 <_or1k_reset+0xc34>
     d28:	84 21 00 00 	l.lwz r1,0(r1)
     d2c:	84 20 00 04 	l.lwz r1,4(r0)
     d30:	9c 21 ff 80 	l.addi r1,r1,-128
     d34:	9c 21 ff 78 	l.addi r1,r1,-136
     d38:	d4 01 18 0c 	l.sw 12(r1),r3
     d3c:	84 60 00 04 	l.lwz r3,4(r0)
     d40:	d4 01 18 04 	l.sw 4(r1),r3
     d44:	d4 01 20 10 	l.sw 16(r1),r4
     d48:	18 60 00 01 	l.movhi r3,0x1
     d4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     d50:	84 83 00 00 	l.lwz r4,0(r3)
     d54:	9c 84 00 01 	l.addi r4,r4,1
     d58:	d4 03 20 00 	l.sw 0(r3),r4
     d5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     d60:	00 00 33 14 	l.j d9b0 <_or1k_exception_handler>
     d64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     e00:	d4 00 08 04 	l.sw 4(r0),r1
     e04:	18 20 00 01 	l.movhi r1,0x1
     e08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     e0c:	84 21 00 00 	l.lwz r1,0(r1)
     e10:	e4 01 00 00 	l.sfeq r1,r0
     e14:	0c 00 00 06 	l.bnf e2c <_or1k_reset+0xd2c>
     e18:	15 00 00 00 	l.nop 0x0
     e1c:	18 20 00 01 	l.movhi r1,0x1
     e20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     e24:	00 00 00 04 	l.j e34 <_or1k_reset+0xd34>
     e28:	84 21 00 00 	l.lwz r1,0(r1)
     e2c:	84 20 00 04 	l.lwz r1,4(r0)
     e30:	9c 21 ff 80 	l.addi r1,r1,-128
     e34:	9c 21 ff 78 	l.addi r1,r1,-136
     e38:	d4 01 18 0c 	l.sw 12(r1),r3
     e3c:	84 60 00 04 	l.lwz r3,4(r0)
     e40:	d4 01 18 04 	l.sw 4(r1),r3
     e44:	d4 01 20 10 	l.sw 16(r1),r4
     e48:	18 60 00 01 	l.movhi r3,0x1
     e4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     e50:	84 83 00 00 	l.lwz r4,0(r3)
     e54:	9c 84 00 01 	l.addi r4,r4,1
     e58:	d4 03 20 00 	l.sw 0(r3),r4
     e5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     e60:	00 00 32 d4 	l.j d9b0 <_or1k_exception_handler>
     e64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
     f00:	d4 00 08 04 	l.sw 4(r0),r1
     f04:	18 20 00 01 	l.movhi r1,0x1
     f08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
     f0c:	84 21 00 00 	l.lwz r1,0(r1)
     f10:	e4 01 00 00 	l.sfeq r1,r0
     f14:	0c 00 00 06 	l.bnf f2c <_or1k_reset+0xe2c>
     f18:	15 00 00 00 	l.nop 0x0
     f1c:	18 20 00 01 	l.movhi r1,0x1
     f20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
     f24:	00 00 00 04 	l.j f34 <_or1k_reset+0xe34>
     f28:	84 21 00 00 	l.lwz r1,0(r1)
     f2c:	84 20 00 04 	l.lwz r1,4(r0)
     f30:	9c 21 ff 80 	l.addi r1,r1,-128
     f34:	9c 21 ff 78 	l.addi r1,r1,-136
     f38:	d4 01 18 0c 	l.sw 12(r1),r3
     f3c:	84 60 00 04 	l.lwz r3,4(r0)
     f40:	d4 01 18 04 	l.sw 4(r1),r3
     f44:	d4 01 20 10 	l.sw 16(r1),r4
     f48:	18 60 00 01 	l.movhi r3,0x1
     f4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
     f50:	84 83 00 00 	l.lwz r4,0(r3)
     f54:	9c 84 00 01 	l.addi r4,r4,1
     f58:	d4 03 20 00 	l.sw 0(r3),r4
     f5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
     f60:	00 00 32 94 	l.j d9b0 <_or1k_exception_handler>
     f64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1000:	d4 00 08 04 	l.sw 4(r0),r1
    1004:	18 20 00 01 	l.movhi r1,0x1
    1008:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    100c:	84 21 00 00 	l.lwz r1,0(r1)
    1010:	e4 01 00 00 	l.sfeq r1,r0
    1014:	0c 00 00 06 	l.bnf 102c <_or1k_reset+0xf2c>
    1018:	15 00 00 00 	l.nop 0x0
    101c:	18 20 00 01 	l.movhi r1,0x1
    1020:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1024:	00 00 00 04 	l.j 1034 <_or1k_reset+0xf34>
    1028:	84 21 00 00 	l.lwz r1,0(r1)
    102c:	84 20 00 04 	l.lwz r1,4(r0)
    1030:	9c 21 ff 80 	l.addi r1,r1,-128
    1034:	9c 21 ff 78 	l.addi r1,r1,-136
    1038:	d4 01 18 0c 	l.sw 12(r1),r3
    103c:	84 60 00 04 	l.lwz r3,4(r0)
    1040:	d4 01 18 04 	l.sw 4(r1),r3
    1044:	d4 01 20 10 	l.sw 16(r1),r4
    1048:	18 60 00 01 	l.movhi r3,0x1
    104c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1050:	84 83 00 00 	l.lwz r4,0(r3)
    1054:	9c 84 00 01 	l.addi r4,r4,1
    1058:	d4 03 20 00 	l.sw 0(r3),r4
    105c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1060:	00 00 32 54 	l.j d9b0 <_or1k_exception_handler>
    1064:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1100:	d4 00 08 04 	l.sw 4(r0),r1
    1104:	18 20 00 01 	l.movhi r1,0x1
    1108:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    110c:	84 21 00 00 	l.lwz r1,0(r1)
    1110:	e4 01 00 00 	l.sfeq r1,r0
    1114:	0c 00 00 06 	l.bnf 112c <_or1k_reset+0x102c>
    1118:	15 00 00 00 	l.nop 0x0
    111c:	18 20 00 01 	l.movhi r1,0x1
    1120:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1124:	00 00 00 04 	l.j 1134 <_or1k_reset+0x1034>
    1128:	84 21 00 00 	l.lwz r1,0(r1)
    112c:	84 20 00 04 	l.lwz r1,4(r0)
    1130:	9c 21 ff 80 	l.addi r1,r1,-128
    1134:	9c 21 ff 78 	l.addi r1,r1,-136
    1138:	d4 01 18 0c 	l.sw 12(r1),r3
    113c:	84 60 00 04 	l.lwz r3,4(r0)
    1140:	d4 01 18 04 	l.sw 4(r1),r3
    1144:	d4 01 20 10 	l.sw 16(r1),r4
    1148:	18 60 00 01 	l.movhi r3,0x1
    114c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1150:	84 83 00 00 	l.lwz r4,0(r3)
    1154:	9c 84 00 01 	l.addi r4,r4,1
    1158:	d4 03 20 00 	l.sw 0(r3),r4
    115c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1160:	00 00 32 14 	l.j d9b0 <_or1k_exception_handler>
    1164:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1200:	d4 00 08 04 	l.sw 4(r0),r1
    1204:	18 20 00 01 	l.movhi r1,0x1
    1208:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    120c:	84 21 00 00 	l.lwz r1,0(r1)
    1210:	e4 01 00 00 	l.sfeq r1,r0
    1214:	0c 00 00 06 	l.bnf 122c <_or1k_reset+0x112c>
    1218:	15 00 00 00 	l.nop 0x0
    121c:	18 20 00 01 	l.movhi r1,0x1
    1220:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1224:	00 00 00 04 	l.j 1234 <_or1k_reset+0x1134>
    1228:	84 21 00 00 	l.lwz r1,0(r1)
    122c:	84 20 00 04 	l.lwz r1,4(r0)
    1230:	9c 21 ff 80 	l.addi r1,r1,-128
    1234:	9c 21 ff 78 	l.addi r1,r1,-136
    1238:	d4 01 18 0c 	l.sw 12(r1),r3
    123c:	84 60 00 04 	l.lwz r3,4(r0)
    1240:	d4 01 18 04 	l.sw 4(r1),r3
    1244:	d4 01 20 10 	l.sw 16(r1),r4
    1248:	18 60 00 01 	l.movhi r3,0x1
    124c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1250:	84 83 00 00 	l.lwz r4,0(r3)
    1254:	9c 84 00 01 	l.addi r4,r4,1
    1258:	d4 03 20 00 	l.sw 0(r3),r4
    125c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1260:	00 00 31 d4 	l.j d9b0 <_or1k_exception_handler>
    1264:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1300:	d4 00 08 04 	l.sw 4(r0),r1
    1304:	18 20 00 01 	l.movhi r1,0x1
    1308:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    130c:	84 21 00 00 	l.lwz r1,0(r1)
    1310:	e4 01 00 00 	l.sfeq r1,r0
    1314:	0c 00 00 06 	l.bnf 132c <_or1k_reset+0x122c>
    1318:	15 00 00 00 	l.nop 0x0
    131c:	18 20 00 01 	l.movhi r1,0x1
    1320:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1324:	00 00 00 04 	l.j 1334 <_or1k_reset+0x1234>
    1328:	84 21 00 00 	l.lwz r1,0(r1)
    132c:	84 20 00 04 	l.lwz r1,4(r0)
    1330:	9c 21 ff 80 	l.addi r1,r1,-128
    1334:	9c 21 ff 78 	l.addi r1,r1,-136
    1338:	d4 01 18 0c 	l.sw 12(r1),r3
    133c:	84 60 00 04 	l.lwz r3,4(r0)
    1340:	d4 01 18 04 	l.sw 4(r1),r3
    1344:	d4 01 20 10 	l.sw 16(r1),r4
    1348:	18 60 00 01 	l.movhi r3,0x1
    134c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1350:	84 83 00 00 	l.lwz r4,0(r3)
    1354:	9c 84 00 01 	l.addi r4,r4,1
    1358:	d4 03 20 00 	l.sw 0(r3),r4
    135c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1360:	00 00 31 94 	l.j d9b0 <_or1k_exception_handler>
    1364:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1400:	d4 00 08 04 	l.sw 4(r0),r1
    1404:	18 20 00 01 	l.movhi r1,0x1
    1408:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    140c:	84 21 00 00 	l.lwz r1,0(r1)
    1410:	e4 01 00 00 	l.sfeq r1,r0
    1414:	0c 00 00 06 	l.bnf 142c <_or1k_reset+0x132c>
    1418:	15 00 00 00 	l.nop 0x0
    141c:	18 20 00 01 	l.movhi r1,0x1
    1420:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1424:	00 00 00 04 	l.j 1434 <_or1k_reset+0x1334>
    1428:	84 21 00 00 	l.lwz r1,0(r1)
    142c:	84 20 00 04 	l.lwz r1,4(r0)
    1430:	9c 21 ff 80 	l.addi r1,r1,-128
    1434:	9c 21 ff 78 	l.addi r1,r1,-136
    1438:	d4 01 18 0c 	l.sw 12(r1),r3
    143c:	84 60 00 04 	l.lwz r3,4(r0)
    1440:	d4 01 18 04 	l.sw 4(r1),r3
    1444:	d4 01 20 10 	l.sw 16(r1),r4
    1448:	18 60 00 01 	l.movhi r3,0x1
    144c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1450:	84 83 00 00 	l.lwz r4,0(r3)
    1454:	9c 84 00 01 	l.addi r4,r4,1
    1458:	d4 03 20 00 	l.sw 0(r3),r4
    145c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1460:	00 00 31 54 	l.j d9b0 <_or1k_exception_handler>
    1464:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1500:	d4 00 08 04 	l.sw 4(r0),r1
    1504:	18 20 00 01 	l.movhi r1,0x1
    1508:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    150c:	84 21 00 00 	l.lwz r1,0(r1)
    1510:	e4 01 00 00 	l.sfeq r1,r0
    1514:	0c 00 00 06 	l.bnf 152c <_or1k_reset+0x142c>
    1518:	15 00 00 00 	l.nop 0x0
    151c:	18 20 00 01 	l.movhi r1,0x1
    1520:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1524:	00 00 00 04 	l.j 1534 <_or1k_reset+0x1434>
    1528:	84 21 00 00 	l.lwz r1,0(r1)
    152c:	84 20 00 04 	l.lwz r1,4(r0)
    1530:	9c 21 ff 80 	l.addi r1,r1,-128
    1534:	9c 21 ff 78 	l.addi r1,r1,-136
    1538:	d4 01 18 0c 	l.sw 12(r1),r3
    153c:	84 60 00 04 	l.lwz r3,4(r0)
    1540:	d4 01 18 04 	l.sw 4(r1),r3
    1544:	d4 01 20 10 	l.sw 16(r1),r4
    1548:	18 60 00 01 	l.movhi r3,0x1
    154c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1550:	84 83 00 00 	l.lwz r4,0(r3)
    1554:	9c 84 00 01 	l.addi r4,r4,1
    1558:	d4 03 20 00 	l.sw 0(r3),r4
    155c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1560:	00 00 31 14 	l.j d9b0 <_or1k_exception_handler>
    1564:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1600:	d4 00 08 04 	l.sw 4(r0),r1
    1604:	18 20 00 01 	l.movhi r1,0x1
    1608:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    160c:	84 21 00 00 	l.lwz r1,0(r1)
    1610:	e4 01 00 00 	l.sfeq r1,r0
    1614:	0c 00 00 06 	l.bnf 162c <_or1k_reset+0x152c>
    1618:	15 00 00 00 	l.nop 0x0
    161c:	18 20 00 01 	l.movhi r1,0x1
    1620:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1624:	00 00 00 04 	l.j 1634 <_or1k_reset+0x1534>
    1628:	84 21 00 00 	l.lwz r1,0(r1)
    162c:	84 20 00 04 	l.lwz r1,4(r0)
    1630:	9c 21 ff 80 	l.addi r1,r1,-128
    1634:	9c 21 ff 78 	l.addi r1,r1,-136
    1638:	d4 01 18 0c 	l.sw 12(r1),r3
    163c:	84 60 00 04 	l.lwz r3,4(r0)
    1640:	d4 01 18 04 	l.sw 4(r1),r3
    1644:	d4 01 20 10 	l.sw 16(r1),r4
    1648:	18 60 00 01 	l.movhi r3,0x1
    164c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1650:	84 83 00 00 	l.lwz r4,0(r3)
    1654:	9c 84 00 01 	l.addi r4,r4,1
    1658:	d4 03 20 00 	l.sw 0(r3),r4
    165c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1660:	00 00 30 d4 	l.j d9b0 <_or1k_exception_handler>
    1664:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1700:	d4 00 08 04 	l.sw 4(r0),r1
    1704:	18 20 00 01 	l.movhi r1,0x1
    1708:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    170c:	84 21 00 00 	l.lwz r1,0(r1)
    1710:	e4 01 00 00 	l.sfeq r1,r0
    1714:	0c 00 00 06 	l.bnf 172c <_or1k_reset+0x162c>
    1718:	15 00 00 00 	l.nop 0x0
    171c:	18 20 00 01 	l.movhi r1,0x1
    1720:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1724:	00 00 00 04 	l.j 1734 <_or1k_reset+0x1634>
    1728:	84 21 00 00 	l.lwz r1,0(r1)
    172c:	84 20 00 04 	l.lwz r1,4(r0)
    1730:	9c 21 ff 80 	l.addi r1,r1,-128
    1734:	9c 21 ff 78 	l.addi r1,r1,-136
    1738:	d4 01 18 0c 	l.sw 12(r1),r3
    173c:	84 60 00 04 	l.lwz r3,4(r0)
    1740:	d4 01 18 04 	l.sw 4(r1),r3
    1744:	d4 01 20 10 	l.sw 16(r1),r4
    1748:	18 60 00 01 	l.movhi r3,0x1
    174c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1750:	84 83 00 00 	l.lwz r4,0(r3)
    1754:	9c 84 00 01 	l.addi r4,r4,1
    1758:	d4 03 20 00 	l.sw 0(r3),r4
    175c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1760:	00 00 30 94 	l.j d9b0 <_or1k_exception_handler>
    1764:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1800:	d4 00 08 04 	l.sw 4(r0),r1
    1804:	18 20 00 01 	l.movhi r1,0x1
    1808:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    180c:	84 21 00 00 	l.lwz r1,0(r1)
    1810:	e4 01 00 00 	l.sfeq r1,r0
    1814:	0c 00 00 06 	l.bnf 182c <_or1k_reset+0x172c>
    1818:	15 00 00 00 	l.nop 0x0
    181c:	18 20 00 01 	l.movhi r1,0x1
    1820:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1824:	00 00 00 04 	l.j 1834 <_or1k_reset+0x1734>
    1828:	84 21 00 00 	l.lwz r1,0(r1)
    182c:	84 20 00 04 	l.lwz r1,4(r0)
    1830:	9c 21 ff 80 	l.addi r1,r1,-128
    1834:	9c 21 ff 78 	l.addi r1,r1,-136
    1838:	d4 01 18 0c 	l.sw 12(r1),r3
    183c:	84 60 00 04 	l.lwz r3,4(r0)
    1840:	d4 01 18 04 	l.sw 4(r1),r3
    1844:	d4 01 20 10 	l.sw 16(r1),r4
    1848:	18 60 00 01 	l.movhi r3,0x1
    184c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1850:	84 83 00 00 	l.lwz r4,0(r3)
    1854:	9c 84 00 01 	l.addi r4,r4,1
    1858:	d4 03 20 00 	l.sw 0(r3),r4
    185c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1860:	00 00 30 54 	l.j d9b0 <_or1k_exception_handler>
    1864:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1900:	d4 00 08 04 	l.sw 4(r0),r1
    1904:	18 20 00 01 	l.movhi r1,0x1
    1908:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    190c:	84 21 00 00 	l.lwz r1,0(r1)
    1910:	e4 01 00 00 	l.sfeq r1,r0
    1914:	0c 00 00 06 	l.bnf 192c <_or1k_reset+0x182c>
    1918:	15 00 00 00 	l.nop 0x0
    191c:	18 20 00 01 	l.movhi r1,0x1
    1920:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1924:	00 00 00 04 	l.j 1934 <_or1k_reset+0x1834>
    1928:	84 21 00 00 	l.lwz r1,0(r1)
    192c:	84 20 00 04 	l.lwz r1,4(r0)
    1930:	9c 21 ff 80 	l.addi r1,r1,-128
    1934:	9c 21 ff 78 	l.addi r1,r1,-136
    1938:	d4 01 18 0c 	l.sw 12(r1),r3
    193c:	84 60 00 04 	l.lwz r3,4(r0)
    1940:	d4 01 18 04 	l.sw 4(r1),r3
    1944:	d4 01 20 10 	l.sw 16(r1),r4
    1948:	18 60 00 01 	l.movhi r3,0x1
    194c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1950:	84 83 00 00 	l.lwz r4,0(r3)
    1954:	9c 84 00 01 	l.addi r4,r4,1
    1958:	d4 03 20 00 	l.sw 0(r3),r4
    195c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1960:	00 00 30 14 	l.j d9b0 <_or1k_exception_handler>
    1964:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1a00:	d4 00 08 04 	l.sw 4(r0),r1
    1a04:	18 20 00 01 	l.movhi r1,0x1
    1a08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1a0c:	84 21 00 00 	l.lwz r1,0(r1)
    1a10:	e4 01 00 00 	l.sfeq r1,r0
    1a14:	0c 00 00 06 	l.bnf 1a2c <_or1k_reset+0x192c>
    1a18:	15 00 00 00 	l.nop 0x0
    1a1c:	18 20 00 01 	l.movhi r1,0x1
    1a20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1a24:	00 00 00 04 	l.j 1a34 <_or1k_reset+0x1934>
    1a28:	84 21 00 00 	l.lwz r1,0(r1)
    1a2c:	84 20 00 04 	l.lwz r1,4(r0)
    1a30:	9c 21 ff 80 	l.addi r1,r1,-128
    1a34:	9c 21 ff 78 	l.addi r1,r1,-136
    1a38:	d4 01 18 0c 	l.sw 12(r1),r3
    1a3c:	84 60 00 04 	l.lwz r3,4(r0)
    1a40:	d4 01 18 04 	l.sw 4(r1),r3
    1a44:	d4 01 20 10 	l.sw 16(r1),r4
    1a48:	18 60 00 01 	l.movhi r3,0x1
    1a4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1a50:	84 83 00 00 	l.lwz r4,0(r3)
    1a54:	9c 84 00 01 	l.addi r4,r4,1
    1a58:	d4 03 20 00 	l.sw 0(r3),r4
    1a5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1a60:	00 00 2f d4 	l.j d9b0 <_or1k_exception_handler>
    1a64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1b00:	d4 00 08 04 	l.sw 4(r0),r1
    1b04:	18 20 00 01 	l.movhi r1,0x1
    1b08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1b0c:	84 21 00 00 	l.lwz r1,0(r1)
    1b10:	e4 01 00 00 	l.sfeq r1,r0
    1b14:	0c 00 00 06 	l.bnf 1b2c <_or1k_reset+0x1a2c>
    1b18:	15 00 00 00 	l.nop 0x0
    1b1c:	18 20 00 01 	l.movhi r1,0x1
    1b20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1b24:	00 00 00 04 	l.j 1b34 <_or1k_reset+0x1a34>
    1b28:	84 21 00 00 	l.lwz r1,0(r1)
    1b2c:	84 20 00 04 	l.lwz r1,4(r0)
    1b30:	9c 21 ff 80 	l.addi r1,r1,-128
    1b34:	9c 21 ff 78 	l.addi r1,r1,-136
    1b38:	d4 01 18 0c 	l.sw 12(r1),r3
    1b3c:	84 60 00 04 	l.lwz r3,4(r0)
    1b40:	d4 01 18 04 	l.sw 4(r1),r3
    1b44:	d4 01 20 10 	l.sw 16(r1),r4
    1b48:	18 60 00 01 	l.movhi r3,0x1
    1b4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1b50:	84 83 00 00 	l.lwz r4,0(r3)
    1b54:	9c 84 00 01 	l.addi r4,r4,1
    1b58:	d4 03 20 00 	l.sw 0(r3),r4
    1b5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1b60:	00 00 2f 94 	l.j d9b0 <_or1k_exception_handler>
    1b64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1c00:	d4 00 08 04 	l.sw 4(r0),r1
    1c04:	18 20 00 01 	l.movhi r1,0x1
    1c08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1c0c:	84 21 00 00 	l.lwz r1,0(r1)
    1c10:	e4 01 00 00 	l.sfeq r1,r0
    1c14:	0c 00 00 06 	l.bnf 1c2c <_or1k_reset+0x1b2c>
    1c18:	15 00 00 00 	l.nop 0x0
    1c1c:	18 20 00 01 	l.movhi r1,0x1
    1c20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1c24:	00 00 00 04 	l.j 1c34 <_or1k_reset+0x1b34>
    1c28:	84 21 00 00 	l.lwz r1,0(r1)
    1c2c:	84 20 00 04 	l.lwz r1,4(r0)
    1c30:	9c 21 ff 80 	l.addi r1,r1,-128
    1c34:	9c 21 ff 78 	l.addi r1,r1,-136
    1c38:	d4 01 18 0c 	l.sw 12(r1),r3
    1c3c:	84 60 00 04 	l.lwz r3,4(r0)
    1c40:	d4 01 18 04 	l.sw 4(r1),r3
    1c44:	d4 01 20 10 	l.sw 16(r1),r4
    1c48:	18 60 00 01 	l.movhi r3,0x1
    1c4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1c50:	84 83 00 00 	l.lwz r4,0(r3)
    1c54:	9c 84 00 01 	l.addi r4,r4,1
    1c58:	d4 03 20 00 	l.sw 0(r3),r4
    1c5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1c60:	00 00 2f 54 	l.j d9b0 <_or1k_exception_handler>
    1c64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1d00:	d4 00 08 04 	l.sw 4(r0),r1
    1d04:	18 20 00 01 	l.movhi r1,0x1
    1d08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1d0c:	84 21 00 00 	l.lwz r1,0(r1)
    1d10:	e4 01 00 00 	l.sfeq r1,r0
    1d14:	0c 00 00 06 	l.bnf 1d2c <_or1k_reset+0x1c2c>
    1d18:	15 00 00 00 	l.nop 0x0
    1d1c:	18 20 00 01 	l.movhi r1,0x1
    1d20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1d24:	00 00 00 04 	l.j 1d34 <_or1k_reset+0x1c34>
    1d28:	84 21 00 00 	l.lwz r1,0(r1)
    1d2c:	84 20 00 04 	l.lwz r1,4(r0)
    1d30:	9c 21 ff 80 	l.addi r1,r1,-128
    1d34:	9c 21 ff 78 	l.addi r1,r1,-136
    1d38:	d4 01 18 0c 	l.sw 12(r1),r3
    1d3c:	84 60 00 04 	l.lwz r3,4(r0)
    1d40:	d4 01 18 04 	l.sw 4(r1),r3
    1d44:	d4 01 20 10 	l.sw 16(r1),r4
    1d48:	18 60 00 01 	l.movhi r3,0x1
    1d4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1d50:	84 83 00 00 	l.lwz r4,0(r3)
    1d54:	9c 84 00 01 	l.addi r4,r4,1
    1d58:	d4 03 20 00 	l.sw 0(r3),r4
    1d5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1d60:	00 00 2f 14 	l.j d9b0 <_or1k_exception_handler>
    1d64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1e00:	d4 00 08 04 	l.sw 4(r0),r1
    1e04:	18 20 00 01 	l.movhi r1,0x1
    1e08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1e0c:	84 21 00 00 	l.lwz r1,0(r1)
    1e10:	e4 01 00 00 	l.sfeq r1,r0
    1e14:	0c 00 00 06 	l.bnf 1e2c <_or1k_reset+0x1d2c>
    1e18:	15 00 00 00 	l.nop 0x0
    1e1c:	18 20 00 01 	l.movhi r1,0x1
    1e20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1e24:	00 00 00 04 	l.j 1e34 <_or1k_reset+0x1d34>
    1e28:	84 21 00 00 	l.lwz r1,0(r1)
    1e2c:	84 20 00 04 	l.lwz r1,4(r0)
    1e30:	9c 21 ff 80 	l.addi r1,r1,-128
    1e34:	9c 21 ff 78 	l.addi r1,r1,-136
    1e38:	d4 01 18 0c 	l.sw 12(r1),r3
    1e3c:	84 60 00 04 	l.lwz r3,4(r0)
    1e40:	d4 01 18 04 	l.sw 4(r1),r3
    1e44:	d4 01 20 10 	l.sw 16(r1),r4
    1e48:	18 60 00 01 	l.movhi r3,0x1
    1e4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1e50:	84 83 00 00 	l.lwz r4,0(r3)
    1e54:	9c 84 00 01 	l.addi r4,r4,1
    1e58:	d4 03 20 00 	l.sw 0(r3),r4
    1e5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1e60:	00 00 2e d4 	l.j d9b0 <_or1k_exception_handler>
    1e64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1f00:	d4 00 08 04 	l.sw 4(r0),r1
    1f04:	18 20 00 01 	l.movhi r1,0x1
    1f08:	a8 21 2e e0 	l.ori r1,r1,0x2ee0
    1f0c:	84 21 00 00 	l.lwz r1,0(r1)
    1f10:	e4 01 00 00 	l.sfeq r1,r0
    1f14:	0c 00 00 06 	l.bnf 1f2c <_or1k_reset+0x1e2c>
    1f18:	15 00 00 00 	l.nop 0x0
    1f1c:	18 20 00 01 	l.movhi r1,0x1
    1f20:	a8 21 2e e4 	l.ori r1,r1,0x2ee4
    1f24:	00 00 00 04 	l.j 1f34 <_or1k_reset+0x1e34>
    1f28:	84 21 00 00 	l.lwz r1,0(r1)
    1f2c:	84 20 00 04 	l.lwz r1,4(r0)
    1f30:	9c 21 ff 80 	l.addi r1,r1,-128
    1f34:	9c 21 ff 78 	l.addi r1,r1,-136
    1f38:	d4 01 18 0c 	l.sw 12(r1),r3
    1f3c:	84 60 00 04 	l.lwz r3,4(r0)
    1f40:	d4 01 18 04 	l.sw 4(r1),r3
    1f44:	d4 01 20 10 	l.sw 16(r1),r4
    1f48:	18 60 00 01 	l.movhi r3,0x1
    1f4c:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    1f50:	84 83 00 00 	l.lwz r4,0(r3)
    1f54:	9c 84 00 01 	l.addi r4,r4,1
    1f58:	d4 03 20 00 	l.sw 0(r3),r4
    1f5c:	b4 60 00 10 	l.mfspr r3,r0,0x10
    1f60:	00 00 2e 94 	l.j d9b0 <_or1k_exception_handler>
    1f64:	b4 80 00 20 	l.mfspr r4,r0,0x20
	...
    1ffc:	15 00 00 00 	l.nop 0x0

Disassembly of section .init:

00002000 <_init-0x4>:
    2000:	15 00 00 00 	l.nop 0x0

00002004 <_init>:
    2004:	9c 21 ff fc 	l.addi r1,r1,-4
    2008:	d4 01 48 00 	l.sw 0(r1),r9
    200c:	04 00 00 bd 	l.jal 2300 <frame_dummy>
    2010:	15 00 00 00 	l.nop 0x0
    2014:	04 00 3e 0e 	l.jal 1184c <__do_global_ctors_aux>
    2018:	15 00 00 00 	l.nop 0x0
    201c:	85 21 00 00 	l.lwz r9,0(r1)
    2020:	44 00 48 00 	l.jr r9
    2024:	9c 21 00 04 	l.addi r1,r1,4

Disassembly of section .text:

00002028 <_or1k_start-0x8>:
    2028:	44 00 48 00 	l.jr r9
    202c:	15 00 00 00 	l.nop 0x0

00002030 <_or1k_start>:
    2030:	04 00 2d f8 	l.jal d810 <_or1k_cache_init>
    2034:	15 00 00 00 	l.nop 0x0
    2038:	04 00 31 02 	l.jal e440 <_or1k_board_init_early>
    203c:	15 00 00 00 	l.nop 0x0
    2040:	18 60 00 01 	l.movhi r3,0x1
    2044:	a8 63 2d 54 	l.ori r3,r3,0x2d54
    2048:	18 80 00 01 	l.movhi r4,0x1
    204c:	a8 84 2f 6c 	l.ori r4,r4,0x2f6c
    2050:	d4 03 00 00 	l.sw 0(r3),r0
    2054:	e4 83 20 00 	l.sfltu r3,r4
    2058:	13 ff ff fe 	l.bf 2050 <_or1k_start+0x20>
    205c:	9c 63 00 04 	l.addi r3,r3,4
    2060:	18 20 00 00 	l.movhi r1,0x0
    2064:	a8 21 e4 1c 	l.ori r1,r1,0xe41c
    2068:	84 21 00 00 	l.lwz r1,0(r1)
    206c:	18 40 00 00 	l.movhi r2,0x0
    2070:	a8 42 e4 20 	l.ori r2,r2,0xe420
    2074:	84 42 00 00 	l.lwz r2,0(r2)
    2078:	e0 21 10 00 	l.add r1,r1,r2
    207c:	18 60 00 01 	l.movhi r3,0x1
    2080:	a8 63 2e e4 	l.ori r3,r3,0x2ee4
    2084:	d4 03 08 00 	l.sw 0(r3),r1
    2088:	18 60 00 01 	l.movhi r3,0x1
    208c:	a8 63 20 64 	l.ori r3,r3,0x2064
    2090:	84 63 00 00 	l.lwz r3,0(r3)
    2094:	e0 81 18 02 	l.sub r4,r1,r3
    2098:	18 a0 00 01 	l.movhi r5,0x1
    209c:	a8 a5 2e ec 	l.ori r5,r5,0x2eec
    20a0:	d4 05 20 00 	l.sw 0(r5),r4
    20a4:	e0 20 20 04 	l.or r1,r0,r4
    20a8:	e0 41 08 04 	l.or r2,r1,r1
    20ac:	18 60 00 01 	l.movhi r3,0x1
    20b0:	a8 63 2e e8 	l.ori r3,r3,0x2ee8
    20b4:	d4 03 08 00 	l.sw 0(r3),r1
    20b8:	18 60 00 01 	l.movhi r3,0x1
    20bc:	a8 63 20 60 	l.ori r3,r3,0x2060
    20c0:	84 63 00 00 	l.lwz r3,0(r3)
    20c4:	e0 81 18 02 	l.sub r4,r1,r3
    20c8:	18 a0 00 01 	l.movhi r5,0x1
    20cc:	a8 a5 2e f0 	l.ori r5,r5,0x2ef0
    20d0:	d4 05 20 00 	l.sw 0(r5),r4
    20d4:	04 00 2f 9f 	l.jal df50 <_or1k_init>
    20d8:	15 00 00 00 	l.nop 0x0
    20dc:	04 00 2f 30 	l.jal dd9c <_or1k_libc_impure_init>
    20e0:	15 00 00 00 	l.nop 0x0
    20e4:	07 ff ff c8 	l.jal 2004 <_init>
    20e8:	15 00 00 00 	l.nop 0x0
    20ec:	18 60 00 01 	l.movhi r3,0x1
    20f0:	04 00 01 18 	l.jal 2550 <atexit>
    20f4:	a8 63 18 bc 	l.ori r3,r3,0x18bc
    20f8:	18 80 00 00 	l.movhi r4,0x0
    20fc:	a8 84 e4 28 	l.ori r4,r4,0xe428
    2100:	84 84 00 00 	l.lwz r4,0(r4)
    2104:	e4 24 00 00 	l.sfne r4,r0
    2108:	0c 00 00 04 	l.bnf 2118 <_or1k_start+0xe8>
    210c:	e0 60 00 04 	l.or r3,r0,r0
    2110:	04 00 2d 53 	l.jal d65c <_or1k_uart_init>
    2114:	15 00 00 00 	l.nop 0x0
    2118:	04 00 30 cc 	l.jal e448 <_or1k_board_init>
    211c:	15 00 00 00 	l.nop 0x0
    2120:	e0 60 00 04 	l.or r3,r0,r0
    2124:	e0 80 00 04 	l.or r4,r0,r0
    2128:	04 00 00 a5 	l.jal 23bc <main>
    212c:	e0 a0 00 04 	l.or r5,r0,r0
    2130:	04 00 01 14 	l.jal 2580 <exit>
    2134:	9c 6b 00 00 	l.addi r3,r11,0
    2138:	00 00 00 00 	l.j 2138 <_or1k_start+0x108>
    213c:	15 00 00 00 	l.nop 0x0

00002140 <deregister_tm_clones>:
    2140:	d7 e1 17 f8 	l.sw -8(r1),r2
    2144:	18 60 00 01 	l.movhi r3,0x1
    2148:	18 40 00 01 	l.movhi r2,0x1
    214c:	a8 63 2d 57 	l.ori r3,r3,0x2d57
    2150:	a8 42 2d 54 	l.ori r2,r2,0x2d54
    2154:	d7 e1 4f fc 	l.sw -4(r1),r9
    2158:	e0 63 10 02 	l.sub r3,r3,r2
    215c:	d7 e1 0f f4 	l.sw -12(r1),r1
    2160:	bc a3 00 06 	l.sfleui r3,6
    2164:	10 00 00 09 	l.bf 2188 <deregister_tm_clones+0x48>
    2168:	9c 21 ff f4 	l.addi r1,r1,-12
    216c:	18 80 00 00 	l.movhi r4,0x0
    2170:	a8 84 00 00 	l.ori r4,r4,0x0
    2174:	bc 04 00 00 	l.sfeqi r4,0
    2178:	10 00 00 04 	l.bf 2188 <deregister_tm_clones+0x48>
    217c:	15 00 00 00 	l.nop 0x0
    2180:	48 00 20 00 	l.jalr r4
    2184:	a8 62 00 00 	l.ori r3,r2,0x0
    2188:	9c 21 00 0c 	l.addi r1,r1,12
    218c:	85 21 ff fc 	l.lwz r9,-4(r1)
    2190:	84 21 ff f4 	l.lwz r1,-12(r1)
    2194:	44 00 48 00 	l.jr r9
    2198:	84 41 ff f8 	l.lwz r2,-8(r1)

0000219c <register_tm_clones>:
    219c:	d7 e1 17 f8 	l.sw -8(r1),r2
    21a0:	18 60 00 01 	l.movhi r3,0x1
    21a4:	18 40 00 01 	l.movhi r2,0x1
    21a8:	a8 63 2d 54 	l.ori r3,r3,0x2d54
    21ac:	a8 42 2d 54 	l.ori r2,r2,0x2d54
    21b0:	d7 e1 4f fc 	l.sw -4(r1),r9
    21b4:	e0 63 10 02 	l.sub r3,r3,r2
    21b8:	d7 e1 0f f4 	l.sw -12(r1),r1
    21bc:	b8 63 00 82 	l.srai r3,r3,0x2
    21c0:	b8 83 00 5f 	l.srli r4,r3,0x1f
    21c4:	e0 84 18 00 	l.add r4,r4,r3
    21c8:	b8 84 00 81 	l.srai r4,r4,0x1
    21cc:	bc 04 00 00 	l.sfeqi r4,0
    21d0:	10 00 00 09 	l.bf 21f4 <register_tm_clones+0x58>
    21d4:	9c 21 ff f4 	l.addi r1,r1,-12
    21d8:	18 a0 00 00 	l.movhi r5,0x0
    21dc:	a8 a5 00 00 	l.ori r5,r5,0x0
    21e0:	bc 05 00 00 	l.sfeqi r5,0
    21e4:	10 00 00 04 	l.bf 21f4 <register_tm_clones+0x58>
    21e8:	15 00 00 00 	l.nop 0x0
    21ec:	48 00 28 00 	l.jalr r5
    21f0:	a8 62 00 00 	l.ori r3,r2,0x0
    21f4:	9c 21 00 0c 	l.addi r1,r1,12
    21f8:	85 21 ff fc 	l.lwz r9,-4(r1)
    21fc:	84 21 ff f4 	l.lwz r1,-12(r1)
    2200:	44 00 48 00 	l.jr r9
    2204:	84 41 ff f8 	l.lwz r2,-8(r1)

00002208 <__do_global_dtors_aux>:
    2208:	d7 e1 a7 f8 	l.sw -8(r1),r20
    220c:	1a 80 00 01 	l.movhi r20,0x1
    2210:	d7 e1 17 ec 	l.sw -20(r1),r2
    2214:	aa 94 2d 54 	l.ori r20,r20,0x2d54
    2218:	d7 e1 4f fc 	l.sw -4(r1),r9
    221c:	8c 54 00 00 	l.lbz r2,0(r20)
    2220:	d7 e1 0f e8 	l.sw -24(r1),r1
    2224:	d7 e1 77 f0 	l.sw -16(r1),r14
    2228:	d7 e1 97 f4 	l.sw -12(r1),r18
    222c:	bc 22 00 00 	l.sfnei r2,0
    2230:	10 00 00 25 	l.bf 22c4 <__do_global_dtors_aux+0xbc>
    2234:	9c 21 ff e8 	l.addi r1,r1,-24
    2238:	19 c0 00 01 	l.movhi r14,0x1
    223c:	18 80 00 01 	l.movhi r4,0x1
    2240:	a9 ce 20 58 	l.ori r14,r14,0x2058
    2244:	a8 84 20 54 	l.ori r4,r4,0x2054
    2248:	18 40 00 01 	l.movhi r2,0x1
    224c:	e1 ce 20 02 	l.sub r14,r14,r4
    2250:	a8 42 2d 58 	l.ori r2,r2,0x2d58
    2254:	b9 ce 00 82 	l.srai r14,r14,0x2
    2258:	84 62 00 00 	l.lwz r3,0(r2)
    225c:	aa 44 00 00 	l.ori r18,r4,0x0
    2260:	9d ce ff ff 	l.addi r14,r14,-1
    2264:	e4 83 70 00 	l.sfltu r3,r14
    2268:	0c 00 00 0c 	l.bnf 2298 <__do_global_dtors_aux+0x90>
    226c:	9c 63 00 01 	l.addi r3,r3,1
    2270:	b8 83 00 02 	l.slli r4,r3,0x2
    2274:	d4 02 18 00 	l.sw 0(r2),r3
    2278:	e0 72 20 00 	l.add r3,r18,r4
    227c:	84 63 00 00 	l.lwz r3,0(r3)
    2280:	48 00 18 00 	l.jalr r3
    2284:	15 00 00 00 	l.nop 0x0
    2288:	84 62 00 00 	l.lwz r3,0(r2)
    228c:	e4 83 70 00 	l.sfltu r3,r14
    2290:	13 ff ff f8 	l.bf 2270 <__do_global_dtors_aux+0x68>
    2294:	9c 63 00 01 	l.addi r3,r3,1
    2298:	07 ff ff aa 	l.jal 2140 <deregister_tm_clones>
    229c:	18 40 00 00 	l.movhi r2,0x0
    22a0:	a8 42 00 00 	l.ori r2,r2,0x0
    22a4:	bc 22 00 00 	l.sfnei r2,0
    22a8:	0c 00 00 06 	l.bnf 22c0 <__do_global_dtors_aux+0xb8>
    22ac:	9c 40 00 01 	l.addi r2,r0,1
    22b0:	18 60 00 01 	l.movhi r3,0x1
    22b4:	07 ff f7 53 	l.jal 0 <_or1k_reset-0x100>
    22b8:	a8 63 20 00 	l.ori r3,r3,0x2000
    22bc:	9c 40 00 01 	l.addi r2,r0,1
    22c0:	d8 14 10 00 	l.sb 0(r20),r2
    22c4:	9c 21 00 18 	l.addi r1,r1,24
    22c8:	85 21 ff fc 	l.lwz r9,-4(r1)
    22cc:	84 21 ff e8 	l.lwz r1,-24(r1)
    22d0:	84 41 ff ec 	l.lwz r2,-20(r1)
    22d4:	85 c1 ff f0 	l.lwz r14,-16(r1)
    22d8:	86 41 ff f4 	l.lwz r18,-12(r1)
    22dc:	44 00 48 00 	l.jr r9
    22e0:	86 81 ff f8 	l.lwz r20,-8(r1)

000022e4 <call___do_global_dtors_aux>:
    22e4:	d7 e1 4f fc 	l.sw -4(r1),r9
    22e8:	d7 e1 0f f8 	l.sw -8(r1),r1
    22ec:	9c 21 ff f8 	l.addi r1,r1,-8
    22f0:	9c 21 00 08 	l.addi r1,r1,8
    22f4:	85 21 ff fc 	l.lwz r9,-4(r1)
    22f8:	44 00 48 00 	l.jr r9
    22fc:	84 21 ff f8 	l.lwz r1,-8(r1)

00002300 <frame_dummy>:
    2300:	18 60 00 00 	l.movhi r3,0x0
    2304:	d7 e1 4f fc 	l.sw -4(r1),r9
    2308:	a8 63 00 00 	l.ori r3,r3,0x0
    230c:	d7 e1 0f f8 	l.sw -8(r1),r1
    2310:	bc 03 00 00 	l.sfeqi r3,0
    2314:	10 00 00 07 	l.bf 2330 <frame_dummy+0x30>
    2318:	9c 21 ff f8 	l.addi r1,r1,-8
    231c:	18 80 00 01 	l.movhi r4,0x1
    2320:	18 60 00 01 	l.movhi r3,0x1
    2324:	a8 84 2d 5c 	l.ori r4,r4,0x2d5c
    2328:	07 ff f7 36 	l.jal 0 <_or1k_reset-0x100>
    232c:	a8 63 20 00 	l.ori r3,r3,0x2000
    2330:	18 60 00 01 	l.movhi r3,0x1
    2334:	a8 63 20 5c 	l.ori r3,r3,0x205c
    2338:	84 83 00 00 	l.lwz r4,0(r3)
    233c:	bc 04 00 00 	l.sfeqi r4,0
    2340:	0c 00 00 08 	l.bnf 2360 <frame_dummy+0x60>
    2344:	18 80 00 00 	l.movhi r4,0x0
    2348:	07 ff ff 95 	l.jal 219c <register_tm_clones>
    234c:	15 00 00 00 	l.nop 0x0
    2350:	9c 21 00 08 	l.addi r1,r1,8
    2354:	85 21 ff fc 	l.lwz r9,-4(r1)
    2358:	44 00 48 00 	l.jr r9
    235c:	84 21 ff f8 	l.lwz r1,-8(r1)
    2360:	a8 84 00 00 	l.ori r4,r4,0x0
    2364:	bc 04 00 00 	l.sfeqi r4,0
    2368:	13 ff ff f8 	l.bf 2348 <frame_dummy+0x48>
    236c:	15 00 00 00 	l.nop 0x0
    2370:	48 00 20 00 	l.jalr r4
    2374:	15 00 00 00 	l.nop 0x0
    2378:	03 ff ff f4 	l.j 2348 <frame_dummy+0x48>
    237c:	15 00 00 00 	l.nop 0x0

00002380 <call_frame_dummy>:
    2380:	d7 e1 4f fc 	l.sw -4(r1),r9
    2384:	d7 e1 0f f8 	l.sw -8(r1),r1
    2388:	9c 21 ff f8 	l.addi r1,r1,-8
    238c:	9c 21 00 08 	l.addi r1,r1,8
    2390:	85 21 ff fc 	l.lwz r9,-4(r1)
    2394:	44 00 48 00 	l.jr r9
    2398:	84 21 ff f8 	l.lwz r1,-8(r1)

0000239c <triv>:
    239c:	d7 e1 17 fc 	l.sw -4(r1),r2
    23a0:	9c 41 00 00 	l.addi r2,r1,0
    23a4:	9c 21 ff fc 	l.addi r1,r1,-4
    23a8:	15 00 00 00 	l.nop 0x0
    23ac:	a8 22 00 00 	l.ori r1,r2,0x0
    23b0:	84 41 ff fc 	l.lwz r2,-4(r1)
    23b4:	44 00 48 00 	l.jr r9
    23b8:	15 00 00 00 	l.nop 0x0

000023bc <main>:
    23bc:	d7 e1 17 f8 	l.sw -8(r1),r2
    23c0:	9c 41 00 00 	l.addi r2,r1,0
    23c4:	d7 e1 4f fc 	l.sw -4(r1),r9
    23c8:	9c 21 ff d4 	l.addi r1,r1,-44
    23cc:	d7 e2 1f e4 	l.sw -28(r2),r3
    23d0:	d7 e2 27 e0 	l.sw -32(r2),r4
    23d4:	18 60 00 00 	l.movhi r3,0x0
    23d8:	a8 63 23 9c 	l.ori r3,r3,0x239c
    23dc:	d7 e2 1f f4 	l.sw -12(r2),r3
    23e0:	9c 60 00 31 	l.addi r3,r0,49
    23e4:	d7 e2 1f f0 	l.sw -16(r2),r3
    23e8:	9c 60 00 40 	l.addi r3,r0,64
    23ec:	d7 e2 1f ec 	l.sw -20(r2),r3
    23f0:	9c 60 00 51 	l.addi r3,r0,81
    23f4:	d7 e2 1f e8 	l.sw -24(r2),r3
    23f8:	84 62 ff e8 	l.lwz r3,-24(r2)
    23fc:	d4 01 18 08 	l.sw 8(r1),r3
    2400:	84 62 ff ec 	l.lwz r3,-20(r2)
    2404:	d4 01 18 04 	l.sw 4(r1),r3
    2408:	84 62 ff f0 	l.lwz r3,-16(r2)
    240c:	d4 01 18 00 	l.sw 0(r1),r3
    2410:	18 60 00 01 	l.movhi r3,0x1
    2414:	a8 63 18 d8 	l.ori r3,r3,0x18d8
    2418:	04 00 00 77 	l.jal 25f4 <printf>
    241c:	15 00 00 00 	l.nop 0x0
    2420:	84 62 ff f0 	l.lwz r3,-16(r2)
    2424:	e0 63 18 05 	l.xor r3,r3,r3
    2428:	d7 e2 1f f0 	l.sw -16(r2),r3
    242c:	84 62 ff e8 	l.lwz r3,-24(r2)
    2430:	d4 01 18 08 	l.sw 8(r1),r3
    2434:	84 62 ff ec 	l.lwz r3,-20(r2)
    2438:	d4 01 18 04 	l.sw 4(r1),r3
    243c:	84 62 ff f0 	l.lwz r3,-16(r2)
    2440:	d4 01 18 00 	l.sw 0(r1),r3
    2444:	18 60 00 01 	l.movhi r3,0x1
    2448:	a8 63 18 f8 	l.ori r3,r3,0x18f8
    244c:	04 00 00 6a 	l.jal 25f4 <printf>
    2450:	15 00 00 00 	l.nop 0x0
    2454:	84 62 ff f0 	l.lwz r3,-16(r2)
    2458:	e0 63 18 00 	l.add r3,r3,r3
    245c:	d7 e2 1f f0 	l.sw -16(r2),r3
    2460:	84 62 ff e8 	l.lwz r3,-24(r2)
    2464:	d4 01 18 08 	l.sw 8(r1),r3
    2468:	84 62 ff ec 	l.lwz r3,-20(r2)
    246c:	d4 01 18 04 	l.sw 4(r1),r3
    2470:	84 62 ff f0 	l.lwz r3,-16(r2)
    2474:	d4 01 18 00 	l.sw 0(r1),r3
    2478:	18 60 00 01 	l.movhi r3,0x1
    247c:	a8 63 19 18 	l.ori r3,r3,0x1918
    2480:	04 00 00 5d 	l.jal 25f4 <printf>
    2484:	15 00 00 00 	l.nop 0x0
    2488:	84 62 ff f0 	l.lwz r3,-16(r2)
    248c:	e0 63 18 05 	l.xor r3,r3,r3
    2490:	d7 e2 1f f0 	l.sw -16(r2),r3
    2494:	84 62 ff f0 	l.lwz r3,-16(r2)
    2498:	9c 63 00 01 	l.addi r3,r3,1
    249c:	d7 e2 1f f0 	l.sw -16(r2),r3
    24a0:	84 62 ff f0 	l.lwz r3,-16(r2)
    24a4:	e0 64 20 00 	l.add r3,r4,r4
    24a8:	d7 e2 1f f0 	l.sw -16(r2),r3
    24ac:	84 62 ff f0 	l.lwz r3,-16(r2)
    24b0:	e0 63 18 00 	l.add r3,r3,r3
    24b4:	d7 e2 1f ec 	l.sw -20(r2),r3
    24b8:	84 62 ff ec 	l.lwz r3,-20(r2)
    24bc:	e0 63 18 00 	l.add r3,r3,r3
    24c0:	d7 e2 1f e8 	l.sw -24(r2),r3
    24c4:	15 00 00 00 	l.nop 0x0
    24c8:	84 62 ff e8 	l.lwz r3,-24(r2)
    24cc:	d4 01 18 08 	l.sw 8(r1),r3
    24d0:	84 62 ff ec 	l.lwz r3,-20(r2)
    24d4:	d4 01 18 04 	l.sw 4(r1),r3
    24d8:	84 62 ff f0 	l.lwz r3,-16(r2)
    24dc:	d4 01 18 00 	l.sw 0(r1),r3
    24e0:	18 60 00 01 	l.movhi r3,0x1
    24e4:	a8 63 19 38 	l.ori r3,r3,0x1938
    24e8:	04 00 00 43 	l.jal 25f4 <printf>
    24ec:	15 00 00 00 	l.nop 0x0
    24f0:	00 00 00 01 	l.j 24f4 <main+0x138>
    24f4:	15 00 00 00 	l.nop 0x0
    24f8:	15 00 00 00 	l.nop 0x0
    24fc:	15 00 00 00 	l.nop 0x0
    2500:	15 00 00 00 	l.nop 0x0
    2504:	15 00 00 00 	l.nop 0x0
    2508:	15 00 00 00 	l.nop 0x0
    250c:	84 62 ff e8 	l.lwz r3,-24(r2)
    2510:	d4 01 18 08 	l.sw 8(r1),r3
    2514:	84 62 ff ec 	l.lwz r3,-20(r2)
    2518:	d4 01 18 04 	l.sw 4(r1),r3
    251c:	84 62 ff f0 	l.lwz r3,-16(r2)
    2520:	d4 01 18 00 	l.sw 0(r1),r3
    2524:	18 60 00 01 	l.movhi r3,0x1
    2528:	a8 63 19 58 	l.ori r3,r3,0x1958
    252c:	04 00 00 32 	l.jal 25f4 <printf>
    2530:	15 00 00 00 	l.nop 0x0
    2534:	9c 60 00 00 	l.addi r3,r0,0
    2538:	a9 63 00 00 	l.ori r11,r3,0x0
    253c:	a8 22 00 00 	l.ori r1,r2,0x0
    2540:	84 41 ff f8 	l.lwz r2,-8(r1)
    2544:	85 21 ff fc 	l.lwz r9,-4(r1)
    2548:	44 00 48 00 	l.jr r9
    254c:	15 00 00 00 	l.nop 0x0

00002550 <atexit>:
    2550:	9c c0 00 00 	l.addi r6,r0,0
    2554:	d7 e1 4f fc 	l.sw -4(r1),r9
    2558:	d7 e1 0f f8 	l.sw -8(r1),r1
    255c:	a8 83 00 00 	l.ori r4,r3,0x0
    2560:	9c 21 ff f8 	l.addi r1,r1,-8
    2564:	a8 a6 00 00 	l.ori r5,r6,0x0
    2568:	04 00 09 aa 	l.jal 4c10 <__register_exitproc>
    256c:	a8 66 00 00 	l.ori r3,r6,0x0
    2570:	9c 21 00 08 	l.addi r1,r1,8
    2574:	85 21 ff fc 	l.lwz r9,-4(r1)
    2578:	44 00 48 00 	l.jr r9
    257c:	84 21 ff f8 	l.lwz r1,-8(r1)

00002580 <exit>:
    2580:	d7 e1 17 f8 	l.sw -8(r1),r2
    2584:	d7 e1 4f fc 	l.sw -4(r1),r9
    2588:	d7 e1 0f f4 	l.sw -12(r1),r1
    258c:	9c 80 00 00 	l.addi r4,r0,0
    2590:	9c 21 ff f4 	l.addi r1,r1,-12
    2594:	04 00 09 eb 	l.jal 4d40 <__call_exitprocs>
    2598:	a8 43 00 00 	l.ori r2,r3,0x0
    259c:	18 60 00 01 	l.movhi r3,0x1
    25a0:	a8 63 19 78 	l.ori r3,r3,0x1978
    25a4:	84 63 00 00 	l.lwz r3,0(r3)
    25a8:	84 83 00 3c 	l.lwz r4,60(r3)
    25ac:	bc 04 00 00 	l.sfeqi r4,0
    25b0:	10 00 00 04 	l.bf 25c0 <exit+0x40>
    25b4:	15 00 00 00 	l.nop 0x0
    25b8:	48 00 20 00 	l.jalr r4
    25bc:	15 00 00 00 	l.nop 0x0
    25c0:	04 00 2b 99 	l.jal d424 <_exit>
    25c4:	a8 62 00 00 	l.ori r3,r2,0x0

000025c8 <_printf_r>:
    25c8:	d7 e1 4f fc 	l.sw -4(r1),r9
    25cc:	d7 e1 0f f8 	l.sw -8(r1),r1
    25d0:	9c 21 ff f8 	l.addi r1,r1,-8
    25d4:	a8 a4 00 00 	l.ori r5,r4,0x0
    25d8:	9c c1 00 08 	l.addi r6,r1,8
    25dc:	04 00 00 15 	l.jal 2630 <_vfprintf_r>
    25e0:	84 83 00 08 	l.lwz r4,8(r3)
    25e4:	9c 21 00 08 	l.addi r1,r1,8
    25e8:	85 21 ff fc 	l.lwz r9,-4(r1)
    25ec:	44 00 48 00 	l.jr r9
    25f0:	84 21 ff f8 	l.lwz r1,-8(r1)

000025f4 <printf>:
    25f4:	d7 e1 4f fc 	l.sw -4(r1),r9
    25f8:	d7 e1 0f f8 	l.sw -8(r1),r1
    25fc:	9c 21 ff f4 	l.addi r1,r1,-12
    2600:	04 00 15 92 	l.jal 7c48 <__getreent>
    2604:	d4 01 18 00 	l.sw 0(r1),r3
    2608:	84 61 00 00 	l.lwz r3,0(r1)
    260c:	9c c1 00 0c 	l.addi r6,r1,12
    2610:	a8 a3 00 00 	l.ori r5,r3,0x0
    2614:	84 8b 00 08 	l.lwz r4,8(r11)
    2618:	04 00 00 06 	l.jal 2630 <_vfprintf_r>
    261c:	a8 6b 00 00 	l.ori r3,r11,0x0
    2620:	9c 21 00 0c 	l.addi r1,r1,12
    2624:	85 21 ff fc 	l.lwz r9,-4(r1)
    2628:	44 00 48 00 	l.jr r9
    262c:	84 21 ff f8 	l.lwz r1,-8(r1)

00002630 <_vfprintf_r>:
    2630:	d7 e1 4f fc 	l.sw -4(r1),r9
    2634:	d7 e1 97 e0 	l.sw -32(r1),r18
    2638:	d7 e1 b7 e8 	l.sw -24(r1),r22
    263c:	d7 e1 d7 f0 	l.sw -16(r1),r26
    2640:	d7 e1 0f d4 	l.sw -44(r1),r1
    2644:	d7 e1 17 d8 	l.sw -40(r1),r2
    2648:	d7 e1 77 dc 	l.sw -36(r1),r14
    264c:	d7 e1 a7 e4 	l.sw -28(r1),r20
    2650:	d7 e1 c7 ec 	l.sw -20(r1),r24
    2654:	d7 e1 e7 f4 	l.sw -12(r1),r28
    2658:	d7 e1 f7 f8 	l.sw -8(r1),r30
    265c:	9c 21 fe ec 	l.addi r1,r1,-276
    2660:	aa c3 00 00 	l.ori r22,r3,0x0
    2664:	ab 44 00 00 	l.ori r26,r4,0x0
    2668:	aa 45 00 00 	l.ori r18,r5,0x0
    266c:	04 00 15 b9 	l.jal 7d50 <_localeconv_r>
    2670:	d4 01 30 2c 	l.sw 44(r1),r6
    2674:	85 6b 00 00 	l.lwz r11,0(r11)
    2678:	a8 6b 00 00 	l.ori r3,r11,0x0
    267c:	04 00 1f cf 	l.jal a5b8 <strlen>
    2680:	d4 01 58 44 	l.sw 68(r1),r11
    2684:	bc 16 00 00 	l.sfeqi r22,0
    2688:	10 00 00 06 	l.bf 26a0 <_vfprintf_r+0x70>
    268c:	d4 01 58 50 	l.sw 80(r1),r11
    2690:	84 56 00 38 	l.lwz r2,56(r22)
    2694:	bc 22 00 00 	l.sfnei r2,0
    2698:	0c 00 00 ad 	l.bnf 294c <_vfprintf_r+0x31c>
    269c:	15 00 00 00 	l.nop 0x0
    26a0:	98 7a 00 0c 	l.lhs r3,12(r26)
    26a4:	a4 43 ff ff 	l.andi r2,r3,0xffff
    26a8:	a4 82 20 00 	l.andi r4,r2,0x2000
    26ac:	bc 24 00 00 	l.sfnei r4,0
    26b0:	10 00 00 08 	l.bf 26d0 <_vfprintf_r+0xa0>
    26b4:	9c a0 df ff 	l.addi r5,r0,-8193
    26b8:	84 9a 00 64 	l.lwz r4,100(r26)
    26bc:	a8 43 20 00 	l.ori r2,r3,0x2000
    26c0:	e0 64 28 03 	l.and r3,r4,r5
    26c4:	dc 1a 10 0c 	l.sh 12(r26),r2
    26c8:	d4 1a 18 64 	l.sw 100(r26),r3
    26cc:	a4 42 ff ff 	l.andi r2,r2,0xffff
    26d0:	a4 62 00 08 	l.andi r3,r2,0x8
    26d4:	bc 03 00 00 	l.sfeqi r3,0
    26d8:	10 00 00 65 	l.bf 286c <_vfprintf_r+0x23c>
    26dc:	a8 9a 00 00 	l.ori r4,r26,0x0
    26e0:	84 7a 00 10 	l.lwz r3,16(r26)
    26e4:	bc 23 00 00 	l.sfnei r3,0
    26e8:	0c 00 00 61 	l.bnf 286c <_vfprintf_r+0x23c>
    26ec:	a4 42 00 1a 	l.andi r2,r2,0x1a
    26f0:	bc 22 00 0a 	l.sfnei r2,10
    26f4:	0c 00 00 68 	l.bnf 2894 <_vfprintf_r+0x264>
    26f8:	9c 41 00 a8 	l.addi r2,r1,168
    26fc:	9c e0 00 00 	l.addi r7,r0,0
    2700:	d4 01 10 1c 	l.sw 28(r1),r2
    2704:	d4 01 10 74 	l.sw 116(r1),r2
    2708:	a9 82 00 00 	l.ori r12,r2,0x0
    270c:	9c 41 00 74 	l.addi r2,r1,116
    2710:	d4 01 38 3c 	l.sw 60(r1),r7
    2714:	d4 01 10 18 	l.sw 24(r1),r2
    2718:	9c 41 00 64 	l.addi r2,r1,100
    271c:	d4 01 38 7c 	l.sw 124(r1),r7
    2720:	d4 01 10 14 	l.sw 20(r1),r2
    2724:	9c 41 00 a7 	l.addi r2,r1,167
    2728:	d4 01 38 78 	l.sw 120(r1),r7
    272c:	d4 01 38 48 	l.sw 72(r1),r7
    2730:	d4 01 38 4c 	l.sw 76(r1),r7
    2734:	d4 01 38 54 	l.sw 84(r1),r7
    2738:	d4 01 38 30 	l.sw 48(r1),r7
    273c:	d4 01 10 10 	l.sw 16(r1),r2
    2740:	90 52 00 00 	l.lbs r2,0(r18)
    2744:	a4 62 00 ff 	l.andi r3,r2,0xff
    2748:	bc 03 00 00 	l.sfeqi r3,0
    274c:	10 00 00 25 	l.bf 27e0 <_vfprintf_r+0x1b0>
    2750:	a9 d2 00 00 	l.ori r14,r18,0x0
    2754:	ac 42 00 25 	l.xori r2,r2,37
    2758:	a4 42 00 ff 	l.andi r2,r2,0xff
    275c:	bc 02 00 00 	l.sfeqi r2,0
    2760:	0c 00 00 0a 	l.bnf 2788 <_vfprintf_r+0x158>
    2764:	9d ce 00 01 	l.addi r14,r14,1
    2768:	9d ce ff ff 	l.addi r14,r14,-1
    276c:	00 00 00 1e 	l.j 27e4 <_vfprintf_r+0x1b4>
    2770:	90 4e 00 00 	l.lbs r2,0(r14)
    2774:	a4 42 00 ff 	l.andi r2,r2,0xff
    2778:	bc 22 00 00 	l.sfnei r2,0
    277c:	0c 00 00 09 	l.bnf 27a0 <_vfprintf_r+0x170>
    2780:	e0 4e 90 02 	l.sub r2,r14,r18
    2784:	9d ce 00 01 	l.addi r14,r14,1
    2788:	90 4e 00 00 	l.lbs r2,0(r14)
    278c:	a4 62 00 ff 	l.andi r3,r2,0xff
    2790:	bc 03 00 00 	l.sfeqi r3,0
    2794:	0f ff ff f8 	l.bnf 2774 <_vfprintf_r+0x144>
    2798:	ac 42 00 25 	l.xori r2,r2,37
    279c:	e0 4e 90 02 	l.sub r2,r14,r18
    27a0:	bc 02 00 00 	l.sfeqi r2,0
    27a4:	10 00 00 0f 	l.bf 27e0 <_vfprintf_r+0x1b0>
    27a8:	84 81 00 7c 	l.lwz r4,124(r1)
    27ac:	84 61 00 78 	l.lwz r3,120(r1)
    27b0:	e0 84 10 00 	l.add r4,r4,r2
    27b4:	9c 63 00 01 	l.addi r3,r3,1
    27b8:	d4 0c 90 00 	l.sw 0(r12),r18
    27bc:	d4 0c 10 04 	l.sw 4(r12),r2
    27c0:	d4 01 20 7c 	l.sw 124(r1),r4
    27c4:	bd 43 00 07 	l.sfgtsi r3,7
    27c8:	10 00 00 3e 	l.bf 28c0 <_vfprintf_r+0x290>
    27cc:	d4 01 18 78 	l.sw 120(r1),r3
    27d0:	9d 8c 00 08 	l.addi r12,r12,8
    27d4:	84 61 00 30 	l.lwz r3,48(r1)
    27d8:	e0 63 10 00 	l.add r3,r3,r2
    27dc:	d4 01 18 30 	l.sw 48(r1),r3
    27e0:	90 4e 00 00 	l.lbs r2,0(r14)
    27e4:	bc 02 00 00 	l.sfeqi r2,0
    27e8:	10 00 00 3f 	l.bf 28e4 <_vfprintf_r+0x2b4>
    27ec:	9c a0 00 00 	l.addi r5,r0,0
    27f0:	9c 80 00 00 	l.addi r4,r0,0
    27f4:	9e 4e 00 01 	l.addi r18,r14,1
    27f8:	d8 01 20 59 	l.sb 89(r1),r4
    27fc:	a8 e5 00 00 	l.ori r7,r5,0x0
    2800:	9c 40 ff ff 	l.addi r2,r0,-1
    2804:	d4 01 28 24 	l.sw 36(r1),r5
    2808:	a9 c5 00 00 	l.ori r14,r5,0x0
    280c:	a8 85 00 00 	l.ori r4,r5,0x0
    2810:	92 92 00 00 	l.lbs r20,0(r18)
    2814:	9e 52 00 01 	l.addi r18,r18,1
    2818:	9c 74 ff e0 	l.addi r3,r20,-32
    281c:	bc 43 00 58 	l.sfgtui r3,88
    2820:	10 00 02 30 	l.bf 30e0 <_vfprintf_r+0xab0>
    2824:	18 c0 00 01 	l.movhi r6,0x1
    2828:	b8 63 00 02 	l.slli r3,r3,0x2
    282c:	a8 c6 19 c4 	l.ori r6,r6,0x19c4
    2830:	e0 63 30 00 	l.add r3,r3,r6
    2834:	84 63 00 00 	l.lwz r3,0(r3)
    2838:	44 00 18 00 	l.jr r3
    283c:	15 00 00 00 	l.nop 0x0
    2840:	03 ff ff f4 	l.j 2810 <_vfprintf_r+0x1e0>
    2844:	a9 ce 00 10 	l.ori r14,r14,0x10
    2848:	85 01 00 2c 	l.lwz r8,44(r1)
    284c:	84 88 00 00 	l.lwz r4,0(r8)
    2850:	9d 08 00 04 	l.addi r8,r8,4
    2854:	bd 64 00 00 	l.sfgesi r4,0
    2858:	13 ff ff ee 	l.bf 2810 <_vfprintf_r+0x1e0>
    285c:	d4 01 40 2c 	l.sw 44(r1),r8
    2860:	e0 80 20 02 	l.sub r4,r0,r4
    2864:	03 ff ff eb 	l.j 2810 <_vfprintf_r+0x1e0>
    2868:	a9 ce 00 04 	l.ori r14,r14,0x4
    286c:	04 00 08 7a 	l.jal 4a54 <__swsetup_r>
    2870:	a8 76 00 00 	l.ori r3,r22,0x0
    2874:	bc 0b 00 00 	l.sfeqi r11,0
    2878:	0c 00 06 4f 	l.bnf 41b4 <_vfprintf_r+0x1b84>
    287c:	15 00 00 00 	l.nop 0x0
    2880:	94 5a 00 0c 	l.lhz r2,12(r26)
    2884:	a4 42 00 1a 	l.andi r2,r2,0x1a
    2888:	bc 22 00 0a 	l.sfnei r2,10
    288c:	13 ff ff 9c 	l.bf 26fc <_vfprintf_r+0xcc>
    2890:	9c 41 00 a8 	l.addi r2,r1,168
    2894:	98 5a 00 0e 	l.lhs r2,14(r26)
    2898:	bd 82 00 00 	l.sfltsi r2,0
    289c:	13 ff ff 98 	l.bf 26fc <_vfprintf_r+0xcc>
    28a0:	9c 41 00 a8 	l.addi r2,r1,168
    28a4:	84 c1 00 2c 	l.lwz r6,44(r1)
    28a8:	a8 b2 00 00 	l.ori r5,r18,0x0
    28ac:	a8 9a 00 00 	l.ori r4,r26,0x0
    28b0:	04 00 08 30 	l.jal 4970 <__sbprintf>
    28b4:	a8 76 00 00 	l.ori r3,r22,0x0
    28b8:	00 00 00 19 	l.j 291c <_vfprintf_r+0x2ec>
    28bc:	9c 21 01 14 	l.addi r1,r1,276
    28c0:	9c a1 00 74 	l.addi r5,r1,116
    28c4:	a8 9a 00 00 	l.ori r4,r26,0x0
    28c8:	04 00 1f c5 	l.jal a7dc <__sprint_r>
    28cc:	a8 76 00 00 	l.ori r3,r22,0x0
    28d0:	bc 2b 00 00 	l.sfnei r11,0
    28d4:	10 00 00 0b 	l.bf 2900 <_vfprintf_r+0x2d0>
    28d8:	9d 81 00 a8 	l.addi r12,r1,168
    28dc:	03 ff ff bf 	l.j 27d8 <_vfprintf_r+0x1a8>
    28e0:	84 61 00 30 	l.lwz r3,48(r1)
    28e4:	84 41 00 7c 	l.lwz r2,124(r1)
    28e8:	bc 22 00 00 	l.sfnei r2,0
    28ec:	0c 00 00 05 	l.bnf 2900 <_vfprintf_r+0x2d0>
    28f0:	9c a1 00 74 	l.addi r5,r1,116
    28f4:	a8 9a 00 00 	l.ori r4,r26,0x0
    28f8:	04 00 1f b9 	l.jal a7dc <__sprint_r>
    28fc:	a8 76 00 00 	l.ori r3,r22,0x0
    2900:	94 5a 00 0c 	l.lhz r2,12(r26)
    2904:	a4 42 00 40 	l.andi r2,r2,0x40
    2908:	bc 22 00 00 	l.sfnei r2,0
    290c:	10 00 00 03 	l.bf 2918 <_vfprintf_r+0x2e8>
    2910:	9d 60 ff ff 	l.addi r11,r0,-1
    2914:	85 61 00 30 	l.lwz r11,48(r1)
    2918:	9c 21 01 14 	l.addi r1,r1,276
    291c:	85 21 ff fc 	l.lwz r9,-4(r1)
    2920:	84 21 ff d4 	l.lwz r1,-44(r1)
    2924:	84 41 ff d8 	l.lwz r2,-40(r1)
    2928:	85 c1 ff dc 	l.lwz r14,-36(r1)
    292c:	86 41 ff e0 	l.lwz r18,-32(r1)
    2930:	86 81 ff e4 	l.lwz r20,-28(r1)
    2934:	86 c1 ff e8 	l.lwz r22,-24(r1)
    2938:	87 01 ff ec 	l.lwz r24,-20(r1)
    293c:	87 41 ff f0 	l.lwz r26,-16(r1)
    2940:	87 81 ff f4 	l.lwz r28,-12(r1)
    2944:	44 00 48 00 	l.jr r9
    2948:	87 c1 ff f8 	l.lwz r30,-8(r1)
    294c:	04 00 12 f4 	l.jal 751c <__sinit>
    2950:	a8 76 00 00 	l.ori r3,r22,0x0
    2954:	03 ff ff 54 	l.j 26a4 <_vfprintf_r+0x74>
    2958:	98 7a 00 0c 	l.lhs r3,12(r26)
    295c:	9c a0 00 01 	l.addi r5,r0,1
    2960:	03 ff ff ac 	l.j 2810 <_vfprintf_r+0x1e0>
    2964:	9c e0 00 2b 	l.addi r7,r0,43
    2968:	85 01 00 2c 	l.lwz r8,44(r1)
    296c:	9d 60 00 00 	l.addi r11,r0,0
    2970:	87 08 00 00 	l.lwz r24,0(r8)
    2974:	d4 01 20 24 	l.sw 36(r1),r4
    2978:	d8 01 58 59 	l.sb 89(r1),r11
    297c:	bc 38 00 00 	l.sfnei r24,0
    2980:	0c 00 06 c2 	l.bnf 4488 <_vfprintf_r+0x1e58>
    2984:	9f 88 00 04 	l.addi r28,r8,4
    2988:	bd 82 00 00 	l.sfltsi r2,0
    298c:	10 00 06 4c 	l.bf 42bc <_vfprintf_r+0x1c8c>
    2990:	a8 a2 00 00 	l.ori r5,r2,0x0
    2994:	9c 80 00 00 	l.addi r4,r0,0
    2998:	a8 78 00 00 	l.ori r3,r24,0x0
    299c:	04 00 18 00 	l.jal 899c <memchr>
    29a0:	d4 01 60 08 	l.sw 8(r1),r12
    29a4:	bc 2b 00 00 	l.sfnei r11,0
    29a8:	0c 00 06 fc 	l.bnf 4598 <_vfprintf_r+0x1f68>
    29ac:	85 81 00 08 	l.lwz r12,8(r1)
    29b0:	e1 6b c0 02 	l.sub r11,r11,r24
    29b4:	d4 01 58 28 	l.sw 40(r1),r11
    29b8:	bd 6b 00 00 	l.sfgesi r11,0
    29bc:	0c 00 06 48 	l.bnf 42dc <_vfprintf_r+0x1cac>
    29c0:	a8 6b 00 00 	l.ori r3,r11,0x0
    29c4:	9c 40 00 00 	l.addi r2,r0,0
    29c8:	90 a1 00 59 	l.lbs r5,89(r1)
    29cc:	d4 01 18 20 	l.sw 32(r1),r3
    29d0:	d4 01 e0 2c 	l.sw 44(r1),r28
    29d4:	d4 01 10 40 	l.sw 64(r1),r2
    29d8:	bc 05 00 00 	l.sfeqi r5,0
    29dc:	10 00 00 04 	l.bf 29ec <_vfprintf_r+0x3bc>
    29e0:	84 61 00 20 	l.lwz r3,32(r1)
    29e4:	9c 63 00 01 	l.addi r3,r3,1
    29e8:	d4 01 18 20 	l.sw 32(r1),r3
    29ec:	a4 ce 00 02 	l.andi r6,r14,0x2
    29f0:	bc 06 00 00 	l.sfeqi r6,0
    29f4:	10 00 00 05 	l.bf 2a08 <_vfprintf_r+0x3d8>
    29f8:	d4 01 30 34 	l.sw 52(r1),r6
    29fc:	84 e1 00 20 	l.lwz r7,32(r1)
    2a00:	9c e7 00 02 	l.addi r7,r7,2
    2a04:	d4 01 38 20 	l.sw 32(r1),r7
    2a08:	a5 0e 00 84 	l.andi r8,r14,0x84
    2a0c:	bc 08 00 00 	l.sfeqi r8,0
    2a10:	0c 00 01 ed 	l.bnf 31c4 <_vfprintf_r+0xb94>
    2a14:	d4 01 40 38 	l.sw 56(r1),r8
    2a18:	85 61 00 24 	l.lwz r11,36(r1)
    2a1c:	84 e1 00 20 	l.lwz r7,32(r1)
    2a20:	e3 cb 38 02 	l.sub r30,r11,r7
    2a24:	bd 5e 00 00 	l.sfgtsi r30,0
    2a28:	0c 00 01 e7 	l.bnf 31c4 <_vfprintf_r+0xb94>
    2a2c:	1b 80 00 01 	l.movhi r28,0x1
    2a30:	bd 5e 00 10 	l.sfgtsi r30,16
    2a34:	84 e1 00 7c 	l.lwz r7,124(r1)
    2a38:	84 61 00 78 	l.lwz r3,120(r1)
    2a3c:	0c 00 00 1e 	l.bnf 2ab4 <_vfprintf_r+0x484>
    2a40:	ab 9c 1b 38 	l.ori r28,r28,0x1b38
    2a44:	00 00 00 06 	l.j 2a5c <_vfprintf_r+0x42c>
    2a48:	9d a0 00 10 	l.addi r13,r0,16
    2a4c:	9f de ff f0 	l.addi r30,r30,-16
    2a50:	bd 5e 00 10 	l.sfgtsi r30,16
    2a54:	0c 00 00 18 	l.bnf 2ab4 <_vfprintf_r+0x484>
    2a58:	9d 8c 00 08 	l.addi r12,r12,8
    2a5c:	9c 63 00 01 	l.addi r3,r3,1
    2a60:	9c e7 00 10 	l.addi r7,r7,16
    2a64:	d4 0c e0 00 	l.sw 0(r12),r28
    2a68:	d4 0c 68 04 	l.sw 4(r12),r13
    2a6c:	d4 01 38 7c 	l.sw 124(r1),r7
    2a70:	bd 43 00 07 	l.sfgtsi r3,7
    2a74:	0f ff ff f6 	l.bnf 2a4c <_vfprintf_r+0x41c>
    2a78:	d4 01 18 78 	l.sw 120(r1),r3
    2a7c:	9c a1 00 74 	l.addi r5,r1,116
    2a80:	a8 9a 00 00 	l.ori r4,r26,0x0
    2a84:	a8 76 00 00 	l.ori r3,r22,0x0
    2a88:	04 00 1f 55 	l.jal a7dc <__sprint_r>
    2a8c:	d4 01 68 0c 	l.sw 12(r1),r13
    2a90:	bc 2b 00 00 	l.sfnei r11,0
    2a94:	13 ff ff 9b 	l.bf 2900 <_vfprintf_r+0x2d0>
    2a98:	85 a1 00 0c 	l.lwz r13,12(r1)
    2a9c:	9f de ff f0 	l.addi r30,r30,-16
    2aa0:	84 e1 00 7c 	l.lwz r7,124(r1)
    2aa4:	bd 5e 00 10 	l.sfgtsi r30,16
    2aa8:	84 61 00 78 	l.lwz r3,120(r1)
    2aac:	13 ff ff ec 	l.bf 2a5c <_vfprintf_r+0x42c>
    2ab0:	9d 81 00 a8 	l.addi r12,r1,168
    2ab4:	9c 63 00 01 	l.addi r3,r3,1
    2ab8:	e0 fe 38 00 	l.add r7,r30,r7
    2abc:	d4 0c e0 00 	l.sw 0(r12),r28
    2ac0:	d4 0c f0 04 	l.sw 4(r12),r30
    2ac4:	d4 01 38 7c 	l.sw 124(r1),r7
    2ac8:	bd 43 00 07 	l.sfgtsi r3,7
    2acc:	10 00 03 b6 	l.bf 39a4 <_vfprintf_r+0x1374>
    2ad0:	d4 01 18 78 	l.sw 120(r1),r3
    2ad4:	9d 8c 00 08 	l.addi r12,r12,8
    2ad8:	00 00 01 bc 	l.j 31c8 <_vfprintf_r+0xb98>
    2adc:	90 a1 00 59 	l.lbs r5,89(r1)
    2ae0:	bc 05 00 00 	l.sfeqi r5,0
    2ae4:	0c 00 07 74 	l.bnf 48b4 <_vfprintf_r+0x2284>
    2ae8:	d4 01 20 24 	l.sw 36(r1),r4
    2aec:	a4 6e 00 10 	l.andi r3,r14,0x10
    2af0:	bc 03 00 00 	l.sfeqi r3,0
    2af4:	10 00 00 92 	l.bf 2d3c <_vfprintf_r+0x70c>
    2af8:	a4 ae 00 40 	l.andi r5,r14,0x40
    2afc:	9c 60 00 00 	l.addi r3,r0,0
    2b00:	84 a1 00 2c 	l.lwz r5,44(r1)
    2b04:	d8 01 18 59 	l.sb 89(r1),r3
    2b08:	bd 82 00 00 	l.sfltsi r2,0
    2b0c:	9c 85 00 04 	l.addi r4,r5,4
    2b10:	10 00 05 d2 	l.bf 4258 <_vfprintf_r+0x1c28>
    2b14:	87 85 00 00 	l.lwz r28,0(r5)
    2b18:	e0 60 e0 02 	l.sub r3,r0,r28
    2b1c:	9c c0 ff 7f 	l.addi r6,r0,-129
    2b20:	e0 63 e0 04 	l.or r3,r3,r28
    2b24:	d4 01 20 2c 	l.sw 44(r1),r4
    2b28:	bd 83 00 00 	l.sfltsi r3,0
    2b2c:	10 00 00 9a 	l.bf 2d94 <_vfprintf_r+0x764>
    2b30:	e1 ce 30 03 	l.and r14,r14,r6
    2b34:	e0 60 10 02 	l.sub r3,r0,r2
    2b38:	e0 63 10 04 	l.or r3,r3,r2
    2b3c:	b8 63 00 5f 	l.srli r3,r3,0x1f
    2b40:	bc 23 00 00 	l.sfnei r3,0
    2b44:	10 00 00 94 	l.bf 2d94 <_vfprintf_r+0x764>
    2b48:	a8 a3 00 00 	l.ori r5,r3,0x0
    2b4c:	00 00 00 46 	l.j 2c64 <_vfprintf_r+0x634>
    2b50:	15 00 00 00 	l.nop 0x0
    2b54:	03 ff ff 2f 	l.j 2810 <_vfprintf_r+0x1e0>
    2b58:	a9 ce 00 80 	l.ori r14,r14,0x80
    2b5c:	a8 d2 00 00 	l.ori r6,r18,0x0
    2b60:	9c 80 00 00 	l.addi r4,r0,0
    2b64:	9c 74 ff d0 	l.addi r3,r20,-48
    2b68:	e0 84 20 00 	l.add r4,r4,r4
    2b6c:	92 86 00 00 	l.lbs r20,0(r6)
    2b70:	b8 c4 00 02 	l.slli r6,r4,0x2
    2b74:	9e 52 00 01 	l.addi r18,r18,1
    2b78:	e0 84 30 00 	l.add r4,r4,r6
    2b7c:	e0 83 20 00 	l.add r4,r3,r4
    2b80:	9c 74 ff d0 	l.addi r3,r20,-48
    2b84:	bc a3 00 09 	l.sfleui r3,9
    2b88:	13 ff ff f8 	l.bf 2b68 <_vfprintf_r+0x538>
    2b8c:	a8 d2 00 00 	l.ori r6,r18,0x0
    2b90:	03 ff ff 23 	l.j 281c <_vfprintf_r+0x1ec>
    2b94:	9c 74 ff e0 	l.addi r3,r20,-32
    2b98:	92 92 00 00 	l.lbs r20,0(r18)
    2b9c:	bc 14 00 2a 	l.sfeqi r20,42
    2ba0:	10 00 07 3b 	l.bf 488c <_vfprintf_r+0x225c>
    2ba4:	9e 52 00 01 	l.addi r18,r18,1
    2ba8:	9c 74 ff d0 	l.addi r3,r20,-48
    2bac:	a9 12 00 00 	l.ori r8,r18,0x0
    2bb0:	bc a3 00 09 	l.sfleui r3,9
    2bb4:	0f ff ff 19 	l.bnf 2818 <_vfprintf_r+0x1e8>
    2bb8:	9c 40 00 00 	l.addi r2,r0,0
    2bbc:	e0 42 10 00 	l.add r2,r2,r2
    2bc0:	92 88 00 00 	l.lbs r20,0(r8)
    2bc4:	b8 c2 00 02 	l.slli r6,r2,0x2
    2bc8:	9e 48 00 01 	l.addi r18,r8,1
    2bcc:	e0 42 30 00 	l.add r2,r2,r6
    2bd0:	e0 42 18 00 	l.add r2,r2,r3
    2bd4:	9c 74 ff d0 	l.addi r3,r20,-48
    2bd8:	bc a3 00 09 	l.sfleui r3,9
    2bdc:	13 ff ff f8 	l.bf 2bbc <_vfprintf_r+0x58c>
    2be0:	a9 12 00 00 	l.ori r8,r18,0x0
    2be4:	bd 62 00 00 	l.sfgesi r2,0
    2be8:	13 ff ff 0d 	l.bf 281c <_vfprintf_r+0x1ec>
    2bec:	9c 74 ff e0 	l.addi r3,r20,-32
    2bf0:	03 ff ff 0b 	l.j 281c <_vfprintf_r+0x1ec>
    2bf4:	9c 40 ff ff 	l.addi r2,r0,-1
    2bf8:	9c c0 00 00 	l.addi r6,r0,0
    2bfc:	d4 01 20 24 	l.sw 36(r1),r4
    2c00:	9c a0 00 78 	l.addi r5,r0,120
    2c04:	9c 80 00 30 	l.addi r4,r0,48
    2c08:	84 e1 00 2c 	l.lwz r7,44(r1)
    2c0c:	d8 01 30 59 	l.sb 89(r1),r6
    2c10:	d8 01 20 5a 	l.sb 90(r1),r4
    2c14:	d8 01 28 5b 	l.sb 91(r1),r5
    2c18:	bd 62 00 00 	l.sfgesi r2,0
    2c1c:	9c c7 00 04 	l.addi r6,r7,4
    2c20:	0c 00 05 88 	l.bnf 4240 <_vfprintf_r+0x1c10>
    2c24:	84 67 00 00 	l.lwz r3,0(r7)
    2c28:	e0 80 18 02 	l.sub r4,r0,r3
    2c2c:	9d 60 ff 7f 	l.addi r11,r0,-129
    2c30:	e0 84 18 04 	l.or r4,r4,r3
    2c34:	e1 ce 58 03 	l.and r14,r14,r11
    2c38:	d4 01 30 2c 	l.sw 44(r1),r6
    2c3c:	bd 84 00 00 	l.sfltsi r4,0
    2c40:	10 00 04 da 	l.bf 3fa8 <_vfprintf_r+0x1978>
    2c44:	a9 ce 00 02 	l.ori r14,r14,0x2
    2c48:	e0 a0 10 02 	l.sub r5,r0,r2
    2c4c:	e0 a5 10 04 	l.or r5,r5,r2
    2c50:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    2c54:	bc 25 00 00 	l.sfnei r5,0
    2c58:	10 00 04 d5 	l.bf 3fac <_vfprintf_r+0x197c>
    2c5c:	18 c0 00 01 	l.movhi r6,0x1
    2c60:	9e 80 00 78 	l.addi r20,r0,120
    2c64:	9c 40 00 00 	l.addi r2,r0,0
    2c68:	9f 01 00 a8 	l.addi r24,r1,168
    2c6c:	d4 01 10 28 	l.sw 40(r1),r2
    2c70:	85 01 00 28 	l.lwz r8,40(r1)
    2c74:	e5 68 10 00 	l.sfges r8,r2
    2c78:	10 00 00 03 	l.bf 2c84 <_vfprintf_r+0x654>
    2c7c:	a8 68 00 00 	l.ori r3,r8,0x0
    2c80:	a8 62 00 00 	l.ori r3,r2,0x0
    2c84:	9c e0 00 00 	l.addi r7,r0,0
    2c88:	d4 01 18 20 	l.sw 32(r1),r3
    2c8c:	03 ff ff 53 	l.j 29d8 <_vfprintf_r+0x3a8>
    2c90:	d4 01 38 40 	l.sw 64(r1),r7
    2c94:	bc 05 00 00 	l.sfeqi r5,0
    2c98:	0c 00 07 0f 	l.bnf 48d4 <_vfprintf_r+0x22a4>
    2c9c:	d4 01 20 24 	l.sw 36(r1),r4
    2ca0:	a9 ce 00 10 	l.ori r14,r14,0x10
    2ca4:	a4 8e 00 10 	l.andi r4,r14,0x10
    2ca8:	bc 04 00 00 	l.sfeqi r4,0
    2cac:	10 00 01 1a 	l.bf 3114 <_vfprintf_r+0xae4>
    2cb0:	84 a1 00 2c 	l.lwz r5,44(r1)
    2cb4:	9c 80 00 00 	l.addi r4,r0,0
    2cb8:	d8 01 20 59 	l.sb 89(r1),r4
    2cbc:	bd 82 00 00 	l.sfltsi r2,0
    2cc0:	9c c5 00 04 	l.addi r6,r5,4
    2cc4:	10 00 01 28 	l.bf 3164 <_vfprintf_r+0xb34>
    2cc8:	84 65 00 00 	l.lwz r3,0(r5)
    2ccc:	e0 80 18 02 	l.sub r4,r0,r3
    2cd0:	9c e0 ff 7f 	l.addi r7,r0,-129
    2cd4:	e0 84 18 04 	l.or r4,r4,r3
    2cd8:	bd 84 00 00 	l.sfltsi r4,0
    2cdc:	10 00 01 22 	l.bf 3164 <_vfprintf_r+0xb34>
    2ce0:	e1 ce 38 03 	l.and r14,r14,r7
    2ce4:	e0 80 10 02 	l.sub r4,r0,r2
    2ce8:	e0 84 10 04 	l.or r4,r4,r2
    2cec:	bd 84 00 00 	l.sfltsi r4,0
    2cf0:	10 00 01 1e 	l.bf 3168 <_vfprintf_r+0xb38>
    2cf4:	9c a1 00 a8 	l.addi r5,r1,168
    2cf8:	d4 01 30 2c 	l.sw 44(r1),r6
    2cfc:	a4 6e 00 01 	l.andi r3,r14,0x1
    2d00:	bc 23 00 00 	l.sfnei r3,0
    2d04:	10 00 03 1e 	l.bf 397c <_vfprintf_r+0x134c>
    2d08:	84 c1 00 1c 	l.lwz r6,28(r1)
    2d0c:	a8 a3 00 00 	l.ori r5,r3,0x0
    2d10:	9f 01 00 a8 	l.addi r24,r1,168
    2d14:	03 ff ff d7 	l.j 2c70 <_vfprintf_r+0x640>
    2d18:	d4 01 18 28 	l.sw 40(r1),r3
    2d1c:	bc 05 00 00 	l.sfeqi r5,0
    2d20:	0c 00 06 f1 	l.bnf 48e4 <_vfprintf_r+0x22b4>
    2d24:	d4 01 20 24 	l.sw 36(r1),r4
    2d28:	a9 ce 00 10 	l.ori r14,r14,0x10
    2d2c:	a4 6e 00 10 	l.andi r3,r14,0x10
    2d30:	bc 03 00 00 	l.sfeqi r3,0
    2d34:	0f ff ff 72 	l.bnf 2afc <_vfprintf_r+0x4cc>
    2d38:	a4 ae 00 40 	l.andi r5,r14,0x40
    2d3c:	bc 05 00 00 	l.sfeqi r5,0
    2d40:	10 00 04 b3 	l.bf 400c <_vfprintf_r+0x19dc>
    2d44:	85 61 00 2c 	l.lwz r11,44(r1)
    2d48:	84 e1 00 2c 	l.lwz r7,44(r1)
    2d4c:	d8 01 18 59 	l.sb 89(r1),r3
    2d50:	87 87 00 00 	l.lwz r28,0(r7)
    2d54:	bd 82 00 00 	l.sfltsi r2,0
    2d58:	9c 87 00 04 	l.addi r4,r7,4
    2d5c:	10 00 05 e6 	l.bf 44f4 <_vfprintf_r+0x1ec4>
    2d60:	a7 9c ff ff 	l.andi r28,r28,0xffff
    2d64:	e0 60 10 02 	l.sub r3,r0,r2
    2d68:	9d 00 ff 7f 	l.addi r8,r0,-129
    2d6c:	e0 63 10 04 	l.or r3,r3,r2
    2d70:	d4 01 20 2c 	l.sw 44(r1),r4
    2d74:	bd 83 00 00 	l.sfltsi r3,0
    2d78:	10 00 00 07 	l.bf 2d94 <_vfprintf_r+0x764>
    2d7c:	e1 ce 40 03 	l.and r14,r14,r8
    2d80:	e0 60 e0 02 	l.sub r3,r0,r28
    2d84:	b8 63 00 5f 	l.srli r3,r3,0x1f
    2d88:	bc 23 00 00 	l.sfnei r3,0
    2d8c:	0f ff ff b6 	l.bnf 2c64 <_vfprintf_r+0x634>
    2d90:	a8 a3 00 00 	l.ori r5,r3,0x0
    2d94:	9c a0 00 00 	l.addi r5,r0,0
    2d98:	bc 5c 00 09 	l.sfgtui r28,9
    2d9c:	10 00 03 bb 	l.bf 3c88 <_vfprintf_r+0x1658>
    2da0:	ab cc 00 00 	l.ori r30,r12,0x0
    2da4:	85 01 00 1c 	l.lwz r8,28(r1)
    2da8:	85 61 00 10 	l.lwz r11,16(r1)
    2dac:	9f 9c 00 30 	l.addi r28,r28,48
    2db0:	e1 08 58 02 	l.sub r8,r8,r11
    2db4:	d8 01 e0 a7 	l.sb 167(r1),r28
    2db8:	d4 01 40 28 	l.sw 40(r1),r8
    2dbc:	03 ff ff ad 	l.j 2c70 <_vfprintf_r+0x640>
    2dc0:	9f 01 00 a7 	l.addi r24,r1,167
    2dc4:	bc 05 00 00 	l.sfeqi r5,0
    2dc8:	0c 00 06 c5 	l.bnf 48dc <_vfprintf_r+0x22ac>
    2dcc:	d4 01 20 24 	l.sw 36(r1),r4
    2dd0:	a4 6e 00 10 	l.andi r3,r14,0x10
    2dd4:	18 c0 00 01 	l.movhi r6,0x1
    2dd8:	bc 03 00 00 	l.sfeqi r3,0
    2ddc:	10 00 00 9c 	l.bf 304c <_vfprintf_r+0xa1c>
    2de0:	a8 c6 19 8e 	l.ori r6,r6,0x198e
    2de4:	84 81 00 2c 	l.lwz r4,44(r1)
    2de8:	84 64 00 00 	l.lwz r3,0(r4)
    2dec:	9c 84 00 04 	l.addi r4,r4,4
    2df0:	d4 01 20 2c 	l.sw 44(r1),r4
    2df4:	a4 8e 00 01 	l.andi r4,r14,0x1
    2df8:	bc 04 00 00 	l.sfeqi r4,0
    2dfc:	10 00 03 16 	l.bf 3a54 <_vfprintf_r+0x1424>
    2e00:	bd 82 00 00 	l.sfltsi r2,0
    2e04:	bc 03 00 00 	l.sfeqi r3,0
    2e08:	10 00 03 c8 	l.bf 3d28 <_vfprintf_r+0x16f8>
    2e0c:	bd 82 00 00 	l.sfltsi r2,0
    2e10:	9d 00 00 30 	l.addi r8,r0,48
    2e14:	9d 60 00 00 	l.addi r11,r0,0
    2e18:	d8 01 40 5a 	l.sb 90(r1),r8
    2e1c:	d8 01 a0 5b 	l.sb 91(r1),r20
    2e20:	bd 62 00 00 	l.sfgesi r2,0
    2e24:	0c 00 00 04 	l.bnf 2e34 <_vfprintf_r+0x804>
    2e28:	d8 01 58 59 	l.sb 89(r1),r11
    2e2c:	9c 80 ff 7f 	l.addi r4,r0,-129
    2e30:	e1 ce 20 03 	l.and r14,r14,r4
    2e34:	a9 ce 00 02 	l.ori r14,r14,0x2
    2e38:	9f 01 00 a8 	l.addi r24,r1,168
    2e3c:	a4 83 00 0f 	l.andi r4,r3,0xf
    2e40:	b8 63 00 44 	l.srli r3,r3,0x4
    2e44:	e0 86 20 00 	l.add r4,r6,r4
    2e48:	9f 18 ff ff 	l.addi r24,r24,-1
    2e4c:	8c 84 00 00 	l.lbz r4,0(r4)
    2e50:	bc 23 00 00 	l.sfnei r3,0
    2e54:	13 ff ff fa 	l.bf 2e3c <_vfprintf_r+0x80c>
    2e58:	d8 18 20 00 	l.sb 0(r24),r4
    2e5c:	84 e1 00 1c 	l.lwz r7,28(r1)
    2e60:	a8 a3 00 00 	l.ori r5,r3,0x0
    2e64:	e0 e7 c0 02 	l.sub r7,r7,r24
    2e68:	03 ff ff 82 	l.j 2c70 <_vfprintf_r+0x640>
    2e6c:	d4 01 38 28 	l.sw 40(r1),r7
    2e70:	84 61 00 2c 	l.lwz r3,44(r1)
    2e74:	9c e0 00 01 	l.addi r7,r0,1
    2e78:	84 43 00 00 	l.lwz r2,0(r3)
    2e7c:	9d 00 00 00 	l.addi r8,r0,0
    2e80:	9c 63 00 04 	l.addi r3,r3,4
    2e84:	d4 01 20 24 	l.sw 36(r1),r4
    2e88:	d4 01 38 20 	l.sw 32(r1),r7
    2e8c:	d8 01 10 80 	l.sb 128(r1),r2
    2e90:	d8 01 40 59 	l.sb 89(r1),r8
    2e94:	d4 01 18 2c 	l.sw 44(r1),r3
    2e98:	d4 01 38 28 	l.sw 40(r1),r7
    2e9c:	9f 01 00 80 	l.addi r24,r1,128
    2ea0:	9c a0 00 00 	l.addi r5,r0,0
    2ea4:	a8 45 00 00 	l.ori r2,r5,0x0
    2ea8:	03 ff fe d1 	l.j 29ec <_vfprintf_r+0x3bc>
    2eac:	d4 01 28 40 	l.sw 64(r1),r5
    2eb0:	bc 05 00 00 	l.sfeqi r5,0
    2eb4:	13 ff ff 7c 	l.bf 2ca4 <_vfprintf_r+0x674>
    2eb8:	d4 01 20 24 	l.sw 36(r1),r4
    2ebc:	03 ff ff 7a 	l.j 2ca4 <_vfprintf_r+0x674>
    2ec0:	d8 01 38 59 	l.sb 89(r1),r7
    2ec4:	bc 05 00 00 	l.sfeqi r5,0
    2ec8:	0c 00 06 91 	l.bnf 490c <_vfprintf_r+0x22dc>
    2ecc:	d4 01 20 24 	l.sw 36(r1),r4
    2ed0:	a9 ce 00 10 	l.ori r14,r14,0x10
    2ed4:	a4 6e 00 10 	l.andi r3,r14,0x10
    2ed8:	bc 03 00 00 	l.sfeqi r3,0
    2edc:	10 00 02 ee 	l.bf 3a94 <_vfprintf_r+0x1464>
    2ee0:	a4 6e 00 40 	l.andi r3,r14,0x40
    2ee4:	85 61 00 2c 	l.lwz r11,44(r1)
    2ee8:	87 8b 00 00 	l.lwz r28,0(r11)
    2eec:	9d 6b 00 04 	l.addi r11,r11,4
    2ef0:	d4 01 58 2c 	l.sw 44(r1),r11
    2ef4:	bd 9c 00 00 	l.sfltsi r28,0
    2ef8:	10 00 03 84 	l.bf 3d08 <_vfprintf_r+0x16d8>
    2efc:	bd 82 00 00 	l.sfltsi r2,0
    2f00:	13 ff ff a6 	l.bf 2d98 <_vfprintf_r+0x768>
    2f04:	90 a1 00 59 	l.lbs r5,89(r1)
    2f08:	e0 60 e0 02 	l.sub r3,r0,r28
    2f0c:	9c a0 ff 7f 	l.addi r5,r0,-129
    2f10:	e0 63 e0 04 	l.or r3,r3,r28
    2f14:	bd 83 00 00 	l.sfltsi r3,0
    2f18:	10 00 02 a1 	l.bf 399c <_vfprintf_r+0x136c>
    2f1c:	e1 ce 28 03 	l.and r14,r14,r5
    2f20:	e0 60 10 02 	l.sub r3,r0,r2
    2f24:	e0 63 10 04 	l.or r3,r3,r2
    2f28:	bd 83 00 00 	l.sfltsi r3,0
    2f2c:	10 00 02 9c 	l.bf 399c <_vfprintf_r+0x136c>
    2f30:	15 00 00 00 	l.nop 0x0
    2f34:	03 ff ff 4c 	l.j 2c64 <_vfprintf_r+0x634>
    2f38:	90 a1 00 59 	l.lbs r5,89(r1)
    2f3c:	bc 05 00 00 	l.sfeqi r5,0
    2f40:	0c 00 06 75 	l.bnf 4914 <_vfprintf_r+0x22e4>
    2f44:	d4 01 20 24 	l.sw 36(r1),r4
    2f48:	a4 6e 00 08 	l.andi r3,r14,0x8
    2f4c:	bc 03 00 00 	l.sfeqi r3,0
    2f50:	10 00 03 fb 	l.bf 3f3c <_vfprintf_r+0x190c>
    2f54:	84 81 00 2c 	l.lwz r4,44(r1)
    2f58:	85 01 00 2c 	l.lwz r8,44(r1)
    2f5c:	85 61 00 2c 	l.lwz r11,44(r1)
    2f60:	84 61 00 2c 	l.lwz r3,44(r1)
    2f64:	85 08 00 00 	l.lwz r8,0(r8)
    2f68:	85 6b 00 04 	l.lwz r11,4(r11)
    2f6c:	9c 63 00 08 	l.addi r3,r3,8
    2f70:	d4 01 40 48 	l.sw 72(r1),r8
    2f74:	d4 01 58 4c 	l.sw 76(r1),r11
    2f78:	d4 01 18 2c 	l.sw 44(r1),r3
    2f7c:	84 61 00 4c 	l.lwz r3,76(r1)
    2f80:	84 c1 00 48 	l.lwz r6,72(r1)
    2f84:	a8 a3 00 00 	l.ori r5,r3,0x0
    2f88:	a8 86 00 00 	l.ori r4,r6,0x0
    2f8c:	e0 64 00 04 	l.or r3,r4,r0
    2f90:	e0 85 00 04 	l.or r4,r5,r0
    2f94:	04 00 1c b0 	l.jal a254 <__fpclassifyd>
    2f98:	d4 01 60 08 	l.sw 8(r1),r12
    2f9c:	bc 2b 00 01 	l.sfnei r11,1
    2fa0:	10 00 03 6a 	l.bf 3d48 <_vfprintf_r+0x1718>
    2fa4:	85 81 00 08 	l.lwz r12,8(r1)
    2fa8:	84 a1 00 48 	l.lwz r5,72(r1)
    2fac:	84 81 00 4c 	l.lwz r4,76(r1)
    2fb0:	18 e0 00 01 	l.movhi r7,0x1
    2fb4:	a8 45 00 00 	l.ori r2,r5,0x0
    2fb8:	a8 e7 19 bc 	l.ori r7,r7,0x19bc
    2fbc:	a8 64 00 00 	l.ori r3,r4,0x0
    2fc0:	84 a7 00 00 	l.lwz r5,0(r7)
    2fc4:	84 c7 00 04 	l.lwz r6,4(r7)
    2fc8:	e0 83 00 04 	l.or r4,r3,r0
    2fcc:	e0 62 00 04 	l.or r3,r2,r0
    2fd0:	04 00 34 19 	l.jal 10034 <__ledf2>
    2fd4:	15 00 00 00 	l.nop 0x0
    2fd8:	bd 8b 00 00 	l.sfltsi r11,0
    2fdc:	10 00 05 42 	l.bf 44e4 <_vfprintf_r+0x1eb4>
    2fe0:	85 81 00 08 	l.lwz r12,8(r1)
    2fe4:	90 a1 00 59 	l.lbs r5,89(r1)
    2fe8:	1b 00 00 01 	l.movhi r24,0x1
    2fec:	bd 54 00 47 	l.sfgtsi r20,71
    2ff0:	10 00 00 04 	l.bf 3000 <_vfprintf_r+0x9d0>
    2ff4:	ab 18 19 82 	l.ori r24,r24,0x1982
    2ff8:	1b 00 00 01 	l.movhi r24,0x1
    2ffc:	ab 18 19 7e 	l.ori r24,r24,0x197e
    3000:	9c 40 00 03 	l.addi r2,r0,3
    3004:	9c 60 ff 7f 	l.addi r3,r0,-129
    3008:	d4 01 10 20 	l.sw 32(r1),r2
    300c:	9c 40 00 00 	l.addi r2,r0,0
    3010:	84 e1 00 20 	l.lwz r7,32(r1)
    3014:	e1 ce 18 03 	l.and r14,r14,r3
    3018:	d4 01 38 28 	l.sw 40(r1),r7
    301c:	03 ff fe 6f 	l.j 29d8 <_vfprintf_r+0x3a8>
    3020:	d4 01 10 40 	l.sw 64(r1),r2
    3024:	03 ff fd fb 	l.j 2810 <_vfprintf_r+0x1e0>
    3028:	a9 ce 00 08 	l.ori r14,r14,0x8
    302c:	bc 05 00 00 	l.sfeqi r5,0
    3030:	0c 00 06 27 	l.bnf 48cc <_vfprintf_r+0x229c>
    3034:	d4 01 20 24 	l.sw 36(r1),r4
    3038:	a4 6e 00 10 	l.andi r3,r14,0x10
    303c:	18 c0 00 01 	l.movhi r6,0x1
    3040:	bc 03 00 00 	l.sfeqi r3,0
    3044:	0f ff ff 68 	l.bnf 2de4 <_vfprintf_r+0x7b4>
    3048:	a8 c6 19 9f 	l.ori r6,r6,0x199f
    304c:	a4 6e 00 40 	l.andi r3,r14,0x40
    3050:	bc 03 00 00 	l.sfeqi r3,0
    3054:	10 00 03 e4 	l.bf 3fe4 <_vfprintf_r+0x19b4>
    3058:	84 a1 00 2c 	l.lwz r5,44(r1)
    305c:	84 65 00 00 	l.lwz r3,0(r5)
    3060:	9c a5 00 04 	l.addi r5,r5,4
    3064:	a4 63 ff ff 	l.andi r3,r3,0xffff
    3068:	03 ff ff 63 	l.j 2df4 <_vfprintf_r+0x7c4>
    306c:	d4 01 28 2c 	l.sw 44(r1),r5
    3070:	bc 05 00 00 	l.sfeqi r5,0
    3074:	0c 00 06 24 	l.bnf 4904 <_vfprintf_r+0x22d4>
    3078:	15 00 00 00 	l.nop 0x0
    307c:	a4 4e 00 10 	l.andi r2,r14,0x10
    3080:	bc 02 00 00 	l.sfeqi r2,0
    3084:	10 00 03 cd 	l.bf 3fb8 <_vfprintf_r+0x1988>
    3088:	84 a1 00 2c 	l.lwz r5,44(r1)
    308c:	84 c1 00 30 	l.lwz r6,48(r1)
    3090:	84 45 00 00 	l.lwz r2,0(r5)
    3094:	9c a5 00 04 	l.addi r5,r5,4
    3098:	d4 02 30 00 	l.sw 0(r2),r6
    309c:	03 ff fd a9 	l.j 2740 <_vfprintf_r+0x110>
    30a0:	d4 01 28 2c 	l.sw 44(r1),r5
    30a4:	03 ff fd db 	l.j 2810 <_vfprintf_r+0x1e0>
    30a8:	a9 ce 00 40 	l.ori r14,r14,0x40
    30ac:	bc 05 00 00 	l.sfeqi r5,0
    30b0:	13 ff ff 89 	l.bf 2ed4 <_vfprintf_r+0x8a4>
    30b4:	d4 01 20 24 	l.sw 36(r1),r4
    30b8:	03 ff ff 87 	l.j 2ed4 <_vfprintf_r+0x8a4>
    30bc:	d8 01 38 59 	l.sb 89(r1),r7
    30c0:	bc 07 00 00 	l.sfeqi r7,0
    30c4:	0f ff fd d3 	l.bnf 2810 <_vfprintf_r+0x1e0>
    30c8:	15 00 00 00 	l.nop 0x0
    30cc:	9c a0 00 01 	l.addi r5,r0,1
    30d0:	03 ff fd d0 	l.j 2810 <_vfprintf_r+0x1e0>
    30d4:	9c e0 00 20 	l.addi r7,r0,32
    30d8:	03 ff fd ce 	l.j 2810 <_vfprintf_r+0x1e0>
    30dc:	a9 ce 00 01 	l.ori r14,r14,0x1
    30e0:	bc 05 00 00 	l.sfeqi r5,0
    30e4:	0c 00 05 f8 	l.bnf 48c4 <_vfprintf_r+0x2294>
    30e8:	d4 01 20 24 	l.sw 36(r1),r4
    30ec:	bc 14 00 00 	l.sfeqi r20,0
    30f0:	13 ff fd fd 	l.bf 28e4 <_vfprintf_r+0x2b4>
    30f4:	9d 00 00 01 	l.addi r8,r0,1
    30f8:	9d 60 00 00 	l.addi r11,r0,0
    30fc:	d4 01 40 20 	l.sw 32(r1),r8
    3100:	d8 01 a0 80 	l.sb 128(r1),r20
    3104:	d8 01 58 59 	l.sb 89(r1),r11
    3108:	d4 01 40 28 	l.sw 40(r1),r8
    310c:	03 ff ff 65 	l.j 2ea0 <_vfprintf_r+0x870>
    3110:	9f 01 00 80 	l.addi r24,r1,128
    3114:	a4 6e 00 40 	l.andi r3,r14,0x40
    3118:	bc 03 00 00 	l.sfeqi r3,0
    311c:	10 00 03 91 	l.bf 3f60 <_vfprintf_r+0x1930>
    3120:	bd 62 00 00 	l.sfgesi r2,0
    3124:	85 01 00 2c 	l.lwz r8,44(r1)
    3128:	d8 01 20 59 	l.sb 89(r1),r4
    312c:	84 68 00 00 	l.lwz r3,0(r8)
    3130:	bd 82 00 00 	l.sfltsi r2,0
    3134:	9c c8 00 04 	l.addi r6,r8,4
    3138:	10 00 00 0b 	l.bf 3164 <_vfprintf_r+0xb34>
    313c:	a4 63 ff ff 	l.andi r3,r3,0xffff
    3140:	e0 80 10 02 	l.sub r4,r0,r2
    3144:	9d 60 ff 7f 	l.addi r11,r0,-129
    3148:	e0 84 10 04 	l.or r4,r4,r2
    314c:	bd 84 00 00 	l.sfltsi r4,0
    3150:	10 00 00 05 	l.bf 3164 <_vfprintf_r+0xb34>
    3154:	e1 ce 58 03 	l.and r14,r14,r11
    3158:	bc 23 00 00 	l.sfnei r3,0
    315c:	0f ff fe e7 	l.bnf 2cf8 <_vfprintf_r+0x6c8>
    3160:	15 00 00 00 	l.nop 0x0
    3164:	9c a1 00 a8 	l.addi r5,r1,168
    3168:	a4 83 00 07 	l.andi r4,r3,0x7
    316c:	b8 63 00 43 	l.srli r3,r3,0x3
    3170:	9c 84 00 30 	l.addi r4,r4,48
    3174:	9c a5 ff ff 	l.addi r5,r5,-1
    3178:	bc 23 00 00 	l.sfnei r3,0
    317c:	13 ff ff fb 	l.bf 3168 <_vfprintf_r+0xb38>
    3180:	d8 05 20 00 	l.sb 0(r5),r4
    3184:	ac 84 00 30 	l.xori r4,r4,48
    3188:	a4 84 00 ff 	l.andi r4,r4,0xff
    318c:	bc 04 00 00 	l.sfeqi r4,0
    3190:	10 00 04 02 	l.bf 4198 <_vfprintf_r+0x1b68>
    3194:	a4 8e 00 01 	l.andi r4,r14,0x1
    3198:	bc 24 00 00 	l.sfnei r4,0
    319c:	0c 00 03 ff 	l.bnf 4198 <_vfprintf_r+0x1b68>
    31a0:	84 e1 00 1c 	l.lwz r7,28(r1)
    31a4:	9f 05 ff ff 	l.addi r24,r5,-1
    31a8:	9d 00 00 30 	l.addi r8,r0,48
    31ac:	e0 e7 c0 02 	l.sub r7,r7,r24
    31b0:	db e5 47 ff 	l.sb -1(r5),r8
    31b4:	d4 01 38 28 	l.sw 40(r1),r7
    31b8:	d4 01 30 2c 	l.sw 44(r1),r6
    31bc:	03 ff fe ad 	l.j 2c70 <_vfprintf_r+0x640>
    31c0:	a8 a3 00 00 	l.ori r5,r3,0x0
    31c4:	84 e1 00 7c 	l.lwz r7,124(r1)
    31c8:	bc 05 00 00 	l.sfeqi r5,0
    31cc:	10 00 00 0f 	l.bf 3208 <_vfprintf_r+0xbd8>
    31d0:	84 c1 00 34 	l.lwz r6,52(r1)
    31d4:	84 61 00 78 	l.lwz r3,120(r1)
    31d8:	9c e7 00 01 	l.addi r7,r7,1
    31dc:	9c 63 00 01 	l.addi r3,r3,1
    31e0:	9d 01 00 59 	l.addi r8,r1,89
    31e4:	9c 80 00 01 	l.addi r4,r0,1
    31e8:	d4 0c 40 00 	l.sw 0(r12),r8
    31ec:	d4 0c 20 04 	l.sw 4(r12),r4
    31f0:	d4 01 38 7c 	l.sw 124(r1),r7
    31f4:	bd 43 00 07 	l.sfgtsi r3,7
    31f8:	10 00 01 95 	l.bf 384c <_vfprintf_r+0x121c>
    31fc:	d4 01 18 78 	l.sw 120(r1),r3
    3200:	9d 8c 00 08 	l.addi r12,r12,8
    3204:	84 c1 00 34 	l.lwz r6,52(r1)
    3208:	bc 06 00 00 	l.sfeqi r6,0
    320c:	10 00 00 0f 	l.bf 3248 <_vfprintf_r+0xc18>
    3210:	84 c1 00 38 	l.lwz r6,56(r1)
    3214:	84 61 00 78 	l.lwz r3,120(r1)
    3218:	9c e7 00 02 	l.addi r7,r7,2
    321c:	9c 63 00 01 	l.addi r3,r3,1
    3220:	9d 01 00 5a 	l.addi r8,r1,90
    3224:	9c 80 00 02 	l.addi r4,r0,2
    3228:	d4 0c 40 00 	l.sw 0(r12),r8
    322c:	d4 0c 20 04 	l.sw 4(r12),r4
    3230:	d4 01 38 7c 	l.sw 124(r1),r7
    3234:	bd 43 00 07 	l.sfgtsi r3,7
    3238:	10 00 01 8e 	l.bf 3870 <_vfprintf_r+0x1240>
    323c:	d4 01 18 78 	l.sw 120(r1),r3
    3240:	9d 8c 00 08 	l.addi r12,r12,8
    3244:	84 c1 00 38 	l.lwz r6,56(r1)
    3248:	bc 26 00 80 	l.sfnei r6,128
    324c:	0c 00 00 e9 	l.bnf 35f0 <_vfprintf_r+0xfc0>
    3250:	85 01 00 24 	l.lwz r8,36(r1)
    3254:	84 c1 00 28 	l.lwz r6,40(r1)
    3258:	e0 42 30 02 	l.sub r2,r2,r6
    325c:	bd a2 00 00 	l.sflesi r2,0
    3260:	10 00 00 29 	l.bf 3304 <_vfprintf_r+0xcd4>
    3264:	1b 80 00 01 	l.movhi r28,0x1
    3268:	bd 42 00 10 	l.sfgtsi r2,16
    326c:	84 61 00 78 	l.lwz r3,120(r1)
    3270:	0c 00 00 1c 	l.bnf 32e0 <_vfprintf_r+0xcb0>
    3274:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    3278:	00 00 00 06 	l.j 3290 <_vfprintf_r+0xc60>
    327c:	9f c0 00 10 	l.addi r30,r0,16
    3280:	9c 42 ff f0 	l.addi r2,r2,-16
    3284:	bd 42 00 10 	l.sfgtsi r2,16
    3288:	0c 00 00 16 	l.bnf 32e0 <_vfprintf_r+0xcb0>
    328c:	9d 8c 00 08 	l.addi r12,r12,8
    3290:	9c 63 00 01 	l.addi r3,r3,1
    3294:	9c e7 00 10 	l.addi r7,r7,16
    3298:	d4 0c e0 00 	l.sw 0(r12),r28
    329c:	d4 0c f0 04 	l.sw 4(r12),r30
    32a0:	d4 01 38 7c 	l.sw 124(r1),r7
    32a4:	bd 43 00 07 	l.sfgtsi r3,7
    32a8:	0f ff ff f6 	l.bnf 3280 <_vfprintf_r+0xc50>
    32ac:	d4 01 18 78 	l.sw 120(r1),r3
    32b0:	9c a1 00 74 	l.addi r5,r1,116
    32b4:	a8 9a 00 00 	l.ori r4,r26,0x0
    32b8:	04 00 1d 49 	l.jal a7dc <__sprint_r>
    32bc:	a8 76 00 00 	l.ori r3,r22,0x0
    32c0:	bc 2b 00 00 	l.sfnei r11,0
    32c4:	13 ff fd 8f 	l.bf 2900 <_vfprintf_r+0x2d0>
    32c8:	9c 42 ff f0 	l.addi r2,r2,-16
    32cc:	84 e1 00 7c 	l.lwz r7,124(r1)
    32d0:	bd 42 00 10 	l.sfgtsi r2,16
    32d4:	84 61 00 78 	l.lwz r3,120(r1)
    32d8:	13 ff ff ee 	l.bf 3290 <_vfprintf_r+0xc60>
    32dc:	9d 81 00 a8 	l.addi r12,r1,168
    32e0:	9c 63 00 01 	l.addi r3,r3,1
    32e4:	e0 e7 10 00 	l.add r7,r7,r2
    32e8:	d4 0c e0 00 	l.sw 0(r12),r28
    32ec:	d4 0c 10 04 	l.sw 4(r12),r2
    32f0:	d4 01 38 7c 	l.sw 124(r1),r7
    32f4:	bd 43 00 07 	l.sfgtsi r3,7
    32f8:	10 00 01 4c 	l.bf 3828 <_vfprintf_r+0x11f8>
    32fc:	d4 01 18 78 	l.sw 120(r1),r3
    3300:	9d 8c 00 08 	l.addi r12,r12,8
    3304:	a4 4e 01 00 	l.andi r2,r14,0x100
    3308:	bc 22 00 00 	l.sfnei r2,0
    330c:	10 00 00 62 	l.bf 3494 <_vfprintf_r+0xe64>
    3310:	bd b4 00 65 	l.sflesi r20,101
    3314:	85 01 00 28 	l.lwz r8,40(r1)
    3318:	84 41 00 78 	l.lwz r2,120(r1)
    331c:	e0 e7 40 00 	l.add r7,r7,r8
    3320:	9c 42 00 01 	l.addi r2,r2,1
    3324:	d4 0c c0 00 	l.sw 0(r12),r24
    3328:	d4 0c 40 04 	l.sw 4(r12),r8
    332c:	d4 01 38 7c 	l.sw 124(r1),r7
    3330:	bd 42 00 07 	l.sfgtsi r2,7
    3334:	10 00 00 4f 	l.bf 3470 <_vfprintf_r+0xe40>
    3338:	d4 01 10 78 	l.sw 120(r1),r2
    333c:	9d 8c 00 08 	l.addi r12,r12,8
    3340:	a5 ce 00 04 	l.andi r14,r14,0x4
    3344:	bc 0e 00 00 	l.sfeqi r14,0
    3348:	10 00 00 35 	l.bf 341c <_vfprintf_r+0xdec>
    334c:	84 41 00 24 	l.lwz r2,36(r1)
    3350:	85 01 00 20 	l.lwz r8,32(r1)
    3354:	e1 c2 40 02 	l.sub r14,r2,r8
    3358:	bd ae 00 00 	l.sflesi r14,0
    335c:	10 00 00 30 	l.bf 341c <_vfprintf_r+0xdec>
    3360:	1b 80 00 01 	l.movhi r28,0x1
    3364:	bd 4e 00 10 	l.sfgtsi r14,16
    3368:	84 41 00 78 	l.lwz r2,120(r1)
    336c:	0c 00 00 1c 	l.bnf 33dc <_vfprintf_r+0xdac>
    3370:	ab 9c 1b 38 	l.ori r28,r28,0x1b38
    3374:	00 00 00 06 	l.j 338c <_vfprintf_r+0xd5c>
    3378:	9e 80 00 10 	l.addi r20,r0,16
    337c:	9d ce ff f0 	l.addi r14,r14,-16
    3380:	bd 4e 00 10 	l.sfgtsi r14,16
    3384:	0c 00 00 16 	l.bnf 33dc <_vfprintf_r+0xdac>
    3388:	9d 8c 00 08 	l.addi r12,r12,8
    338c:	9c 42 00 01 	l.addi r2,r2,1
    3390:	9c e7 00 10 	l.addi r7,r7,16
    3394:	d4 0c e0 00 	l.sw 0(r12),r28
    3398:	d4 0c a0 04 	l.sw 4(r12),r20
    339c:	d4 01 38 7c 	l.sw 124(r1),r7
    33a0:	bd 42 00 07 	l.sfgtsi r2,7
    33a4:	0f ff ff f6 	l.bnf 337c <_vfprintf_r+0xd4c>
    33a8:	d4 01 10 78 	l.sw 120(r1),r2
    33ac:	9c a1 00 74 	l.addi r5,r1,116
    33b0:	a8 9a 00 00 	l.ori r4,r26,0x0
    33b4:	04 00 1d 0a 	l.jal a7dc <__sprint_r>
    33b8:	a8 76 00 00 	l.ori r3,r22,0x0
    33bc:	bc 2b 00 00 	l.sfnei r11,0
    33c0:	13 ff fd 50 	l.bf 2900 <_vfprintf_r+0x2d0>
    33c4:	9d ce ff f0 	l.addi r14,r14,-16
    33c8:	84 e1 00 7c 	l.lwz r7,124(r1)
    33cc:	bd 4e 00 10 	l.sfgtsi r14,16
    33d0:	84 41 00 78 	l.lwz r2,120(r1)
    33d4:	13 ff ff ee 	l.bf 338c <_vfprintf_r+0xd5c>
    33d8:	9d 81 00 a8 	l.addi r12,r1,168
    33dc:	9c 42 00 01 	l.addi r2,r2,1
    33e0:	e0 e7 70 00 	l.add r7,r7,r14
    33e4:	d4 0c e0 00 	l.sw 0(r12),r28
    33e8:	d4 0c 70 04 	l.sw 4(r12),r14
    33ec:	d4 01 38 7c 	l.sw 124(r1),r7
    33f0:	bd a2 00 07 	l.sflesi r2,7
    33f4:	10 00 00 09 	l.bf 3418 <_vfprintf_r+0xde8>
    33f8:	d4 01 10 78 	l.sw 120(r1),r2
    33fc:	9c a1 00 74 	l.addi r5,r1,116
    3400:	a8 9a 00 00 	l.ori r4,r26,0x0
    3404:	04 00 1c f6 	l.jal a7dc <__sprint_r>
    3408:	a8 76 00 00 	l.ori r3,r22,0x0
    340c:	bc 2b 00 00 	l.sfnei r11,0
    3410:	13 ff fd 3c 	l.bf 2900 <_vfprintf_r+0x2d0>
    3414:	84 e1 00 7c 	l.lwz r7,124(r1)
    3418:	84 41 00 24 	l.lwz r2,36(r1)
    341c:	85 01 00 20 	l.lwz r8,32(r1)
    3420:	e5 62 40 00 	l.sfges r2,r8
    3424:	10 00 00 03 	l.bf 3430 <_vfprintf_r+0xe00>
    3428:	85 61 00 30 	l.lwz r11,48(r1)
    342c:	a8 48 00 00 	l.ori r2,r8,0x0
    3430:	bc 27 00 00 	l.sfnei r7,0
    3434:	e1 6b 10 00 	l.add r11,r11,r2
    3438:	10 00 00 f3 	l.bf 3804 <_vfprintf_r+0x11d4>
    343c:	d4 01 58 30 	l.sw 48(r1),r11
    3440:	9c 40 00 00 	l.addi r2,r0,0
    3444:	9d 81 00 a8 	l.addi r12,r1,168
    3448:	03 ff fc be 	l.j 2740 <_vfprintf_r+0x110>
    344c:	d4 01 10 78 	l.sw 120(r1),r2
    3450:	9c 42 00 01 	l.addi r2,r2,1
    3454:	e0 e7 a0 00 	l.add r7,r7,r20
    3458:	d4 0c e0 00 	l.sw 0(r12),r28
    345c:	d4 0c a0 04 	l.sw 4(r12),r20
    3460:	d4 01 38 7c 	l.sw 124(r1),r7
    3464:	bd 42 00 07 	l.sfgtsi r2,7
    3468:	0f ff ff b5 	l.bnf 333c <_vfprintf_r+0xd0c>
    346c:	d4 01 10 78 	l.sw 120(r1),r2
    3470:	9c a1 00 74 	l.addi r5,r1,116
    3474:	a8 9a 00 00 	l.ori r4,r26,0x0
    3478:	04 00 1c d9 	l.jal a7dc <__sprint_r>
    347c:	a8 76 00 00 	l.ori r3,r22,0x0
    3480:	bc 2b 00 00 	l.sfnei r11,0
    3484:	13 ff fd 1f 	l.bf 2900 <_vfprintf_r+0x2d0>
    3488:	84 e1 00 7c 	l.lwz r7,124(r1)
    348c:	03 ff ff ad 	l.j 3340 <_vfprintf_r+0xd10>
    3490:	9d 81 00 a8 	l.addi r12,r1,168
    3494:	10 00 00 86 	l.bf 36ac <_vfprintf_r+0x107c>
    3498:	84 41 00 3c 	l.lwz r2,60(r1)
    349c:	84 a1 00 48 	l.lwz r5,72(r1)
    34a0:	84 81 00 4c 	l.lwz r4,76(r1)
    34a4:	19 60 00 01 	l.movhi r11,0x1
    34a8:	a8 45 00 00 	l.ori r2,r5,0x0
    34ac:	a9 6b 19 bc 	l.ori r11,r11,0x19bc
    34b0:	a8 64 00 00 	l.ori r3,r4,0x0
    34b4:	d4 01 38 0c 	l.sw 12(r1),r7
    34b8:	84 ab 00 00 	l.lwz r5,0(r11)
    34bc:	84 cb 00 04 	l.lwz r6,4(r11)
    34c0:	e0 83 00 04 	l.or r4,r3,r0
    34c4:	e0 62 00 04 	l.or r3,r2,r0
    34c8:	04 00 32 25 	l.jal fd5c <__eqdf2>
    34cc:	d4 01 60 08 	l.sw 8(r1),r12
    34d0:	bc 0b 00 00 	l.sfeqi r11,0
    34d4:	84 e1 00 0c 	l.lwz r7,12(r1)
    34d8:	0c 00 00 ef 	l.bnf 3894 <_vfprintf_r+0x1264>
    34dc:	85 81 00 08 	l.lwz r12,8(r1)
    34e0:	18 60 00 01 	l.movhi r3,0x1
    34e4:	84 41 00 78 	l.lwz r2,120(r1)
    34e8:	a8 63 19 b7 	l.ori r3,r3,0x19b7
    34ec:	9c 42 00 01 	l.addi r2,r2,1
    34f0:	9c e7 00 01 	l.addi r7,r7,1
    34f4:	d4 0c 18 00 	l.sw 0(r12),r3
    34f8:	9c 60 00 01 	l.addi r3,r0,1
    34fc:	d4 01 38 7c 	l.sw 124(r1),r7
    3500:	d4 0c 18 04 	l.sw 4(r12),r3
    3504:	bd 42 00 07 	l.sfgtsi r2,7
    3508:	10 00 02 d9 	l.bf 406c <_vfprintf_r+0x1a3c>
    350c:	d4 01 10 78 	l.sw 120(r1),r2
    3510:	9d 8c 00 08 	l.addi r12,r12,8
    3514:	84 41 00 5c 	l.lwz r2,92(r1)
    3518:	85 01 00 3c 	l.lwz r8,60(r1)
    351c:	e5 48 10 00 	l.sfgts r8,r2
    3520:	10 00 00 06 	l.bf 3538 <_vfprintf_r+0xf08>
    3524:	84 41 00 50 	l.lwz r2,80(r1)
    3528:	a4 4e 00 01 	l.andi r2,r14,0x1
    352c:	bc 02 00 00 	l.sfeqi r2,0
    3530:	13 ff ff 84 	l.bf 3340 <_vfprintf_r+0xd10>
    3534:	84 41 00 50 	l.lwz r2,80(r1)
    3538:	84 61 00 44 	l.lwz r3,68(r1)
    353c:	e0 e7 10 00 	l.add r7,r7,r2
    3540:	84 41 00 78 	l.lwz r2,120(r1)
    3544:	84 81 00 50 	l.lwz r4,80(r1)
    3548:	9c 42 00 01 	l.addi r2,r2,1
    354c:	d4 0c 18 00 	l.sw 0(r12),r3
    3550:	d4 0c 20 04 	l.sw 4(r12),r4
    3554:	d4 01 38 7c 	l.sw 124(r1),r7
    3558:	bd 42 00 07 	l.sfgtsi r2,7
    355c:	10 00 03 42 	l.bf 4264 <_vfprintf_r+0x1c34>
    3560:	d4 01 10 78 	l.sw 120(r1),r2
    3564:	9d 8c 00 08 	l.addi r12,r12,8
    3568:	85 01 00 3c 	l.lwz r8,60(r1)
    356c:	9e 88 ff ff 	l.addi r20,r8,-1
    3570:	bd b4 00 00 	l.sflesi r20,0
    3574:	13 ff ff 73 	l.bf 3340 <_vfprintf_r+0xd10>
    3578:	1b 80 00 01 	l.movhi r28,0x1
    357c:	bd 54 00 10 	l.sfgtsi r20,16
    3580:	84 41 00 78 	l.lwz r2,120(r1)
    3584:	0f ff ff b3 	l.bnf 3450 <_vfprintf_r+0xe20>
    3588:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    358c:	00 00 00 07 	l.j 35a8 <_vfprintf_r+0xf78>
    3590:	9f 00 00 10 	l.addi r24,r0,16
    3594:	9d 8c 00 08 	l.addi r12,r12,8
    3598:	9e 94 ff f0 	l.addi r20,r20,-16
    359c:	bd 54 00 10 	l.sfgtsi r20,16
    35a0:	0f ff ff ac 	l.bnf 3450 <_vfprintf_r+0xe20>
    35a4:	15 00 00 00 	l.nop 0x0
    35a8:	9c 42 00 01 	l.addi r2,r2,1
    35ac:	9c e7 00 10 	l.addi r7,r7,16
    35b0:	d4 0c e0 00 	l.sw 0(r12),r28
    35b4:	d4 0c c0 04 	l.sw 4(r12),r24
    35b8:	d4 01 38 7c 	l.sw 124(r1),r7
    35bc:	bd 42 00 07 	l.sfgtsi r2,7
    35c0:	0f ff ff f5 	l.bnf 3594 <_vfprintf_r+0xf64>
    35c4:	d4 01 10 78 	l.sw 120(r1),r2
    35c8:	9c a1 00 74 	l.addi r5,r1,116
    35cc:	a8 9a 00 00 	l.ori r4,r26,0x0
    35d0:	04 00 1c 83 	l.jal a7dc <__sprint_r>
    35d4:	a8 76 00 00 	l.ori r3,r22,0x0
    35d8:	bc 2b 00 00 	l.sfnei r11,0
    35dc:	13 ff fc c9 	l.bf 2900 <_vfprintf_r+0x2d0>
    35e0:	84 e1 00 7c 	l.lwz r7,124(r1)
    35e4:	84 41 00 78 	l.lwz r2,120(r1)
    35e8:	03 ff ff ec 	l.j 3598 <_vfprintf_r+0xf68>
    35ec:	9d 81 00 a8 	l.addi r12,r1,168
    35f0:	85 61 00 20 	l.lwz r11,32(r1)
    35f4:	e3 c8 58 02 	l.sub r30,r8,r11
    35f8:	bd be 00 00 	l.sflesi r30,0
    35fc:	13 ff ff 16 	l.bf 3254 <_vfprintf_r+0xc24>
    3600:	1b 80 00 01 	l.movhi r28,0x1
    3604:	bd 5e 00 10 	l.sfgtsi r30,16
    3608:	84 61 00 78 	l.lwz r3,120(r1)
    360c:	0c 00 00 1e 	l.bnf 3684 <_vfprintf_r+0x1054>
    3610:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    3614:	00 00 00 06 	l.j 362c <_vfprintf_r+0xffc>
    3618:	9c c0 00 10 	l.addi r6,r0,16
    361c:	9f de ff f0 	l.addi r30,r30,-16
    3620:	bd 5e 00 10 	l.sfgtsi r30,16
    3624:	0c 00 00 18 	l.bnf 3684 <_vfprintf_r+0x1054>
    3628:	9d 8c 00 08 	l.addi r12,r12,8
    362c:	9c 63 00 01 	l.addi r3,r3,1
    3630:	9c e7 00 10 	l.addi r7,r7,16
    3634:	d4 0c e0 00 	l.sw 0(r12),r28
    3638:	d4 0c 30 04 	l.sw 4(r12),r6
    363c:	d4 01 38 7c 	l.sw 124(r1),r7
    3640:	bd 43 00 07 	l.sfgtsi r3,7
    3644:	0f ff ff f6 	l.bnf 361c <_vfprintf_r+0xfec>
    3648:	d4 01 18 78 	l.sw 120(r1),r3
    364c:	9c a1 00 74 	l.addi r5,r1,116
    3650:	a8 9a 00 00 	l.ori r4,r26,0x0
    3654:	a8 76 00 00 	l.ori r3,r22,0x0
    3658:	04 00 1c 61 	l.jal a7dc <__sprint_r>
    365c:	d4 01 30 0c 	l.sw 12(r1),r6
    3660:	bc 2b 00 00 	l.sfnei r11,0
    3664:	13 ff fc a7 	l.bf 2900 <_vfprintf_r+0x2d0>
    3668:	84 c1 00 0c 	l.lwz r6,12(r1)
    366c:	9f de ff f0 	l.addi r30,r30,-16
    3670:	84 e1 00 7c 	l.lwz r7,124(r1)
    3674:	bd 5e 00 10 	l.sfgtsi r30,16
    3678:	84 61 00 78 	l.lwz r3,120(r1)
    367c:	13 ff ff ec 	l.bf 362c <_vfprintf_r+0xffc>
    3680:	9d 81 00 a8 	l.addi r12,r1,168
    3684:	9c 63 00 01 	l.addi r3,r3,1
    3688:	e0 e7 f0 00 	l.add r7,r7,r30
    368c:	d4 0c e0 00 	l.sw 0(r12),r28
    3690:	d4 0c f0 04 	l.sw 4(r12),r30
    3694:	d4 01 38 7c 	l.sw 124(r1),r7
    3698:	bd 43 00 07 	l.sfgtsi r3,7
    369c:	10 00 01 92 	l.bf 3ce4 <_vfprintf_r+0x16b4>
    36a0:	d4 01 18 78 	l.sw 120(r1),r3
    36a4:	03 ff fe ec 	l.j 3254 <_vfprintf_r+0xc24>
    36a8:	9d 8c 00 08 	l.addi r12,r12,8
    36ac:	bd 42 00 01 	l.sfgtsi r2,1
    36b0:	0c 00 00 3f 	l.bnf 37ac <_vfprintf_r+0x117c>
    36b4:	a4 4e 00 01 	l.andi r2,r14,0x1
    36b8:	84 41 00 78 	l.lwz r2,120(r1)
    36bc:	9c e7 00 01 	l.addi r7,r7,1
    36c0:	9c 42 00 01 	l.addi r2,r2,1
    36c4:	9c 60 00 01 	l.addi r3,r0,1
    36c8:	d4 0c c0 00 	l.sw 0(r12),r24
    36cc:	d4 0c 18 04 	l.sw 4(r12),r3
    36d0:	d4 01 38 7c 	l.sw 124(r1),r7
    36d4:	bd 42 00 07 	l.sfgtsi r2,7
    36d8:	10 00 01 4e 	l.bf 3c10 <_vfprintf_r+0x15e0>
    36dc:	d4 01 10 78 	l.sw 120(r1),r2
    36e0:	9d 8c 00 08 	l.addi r12,r12,8
    36e4:	84 61 00 50 	l.lwz r3,80(r1)
    36e8:	9c 42 00 01 	l.addi r2,r2,1
    36ec:	e3 c3 38 00 	l.add r30,r3,r7
    36f0:	84 81 00 44 	l.lwz r4,68(r1)
    36f4:	d4 0c 18 04 	l.sw 4(r12),r3
    36f8:	d4 0c 20 00 	l.sw 0(r12),r4
    36fc:	d4 01 f0 7c 	l.sw 124(r1),r30
    3700:	bd 42 00 07 	l.sfgtsi r2,7
    3704:	10 00 01 57 	l.bf 3c60 <_vfprintf_r+0x1630>
    3708:	d4 01 10 78 	l.sw 120(r1),r2
    370c:	9e 8c 00 08 	l.addi r20,r12,8
    3710:	84 81 00 48 	l.lwz r4,72(r1)
    3714:	84 61 00 4c 	l.lwz r3,76(r1)
    3718:	18 e0 00 01 	l.movhi r7,0x1
    371c:	a9 84 00 00 	l.ori r12,r4,0x0
    3720:	a8 e7 19 bc 	l.ori r7,r7,0x19bc
    3724:	a9 a3 00 00 	l.ori r13,r3,0x0
    3728:	84 a7 00 00 	l.lwz r5,0(r7)
    372c:	84 c7 00 04 	l.lwz r6,4(r7)
    3730:	e0 6c 00 04 	l.or r3,r12,r0
    3734:	e0 8d 00 04 	l.or r4,r13,r0
    3738:	04 00 31 89 	l.jal fd5c <__eqdf2>
    373c:	15 00 00 00 	l.nop 0x0
    3740:	bc 2b 00 00 	l.sfnei r11,0
    3744:	0c 00 00 a2 	l.bnf 39cc <_vfprintf_r+0x139c>
    3748:	84 e1 00 3c 	l.lwz r7,60(r1)
    374c:	85 01 00 3c 	l.lwz r8,60(r1)
    3750:	9c 42 00 01 	l.addi r2,r2,1
    3754:	9c 68 ff ff 	l.addi r3,r8,-1
    3758:	9f 18 00 01 	l.addi r24,r24,1
    375c:	e3 de 18 00 	l.add r30,r30,r3
    3760:	d4 14 c0 00 	l.sw 0(r20),r24
    3764:	d4 14 18 04 	l.sw 4(r20),r3
    3768:	d4 01 f0 7c 	l.sw 124(r1),r30
    376c:	bd 42 00 07 	l.sfgtsi r2,7
    3770:	10 00 00 1b 	l.bf 37dc <_vfprintf_r+0x11ac>
    3774:	d4 01 10 78 	l.sw 120(r1),r2
    3778:	9e 94 00 08 	l.addi r20,r20,8
    377c:	85 01 00 54 	l.lwz r8,84(r1)
    3780:	9c 42 00 01 	l.addi r2,r2,1
    3784:	e0 e8 f0 00 	l.add r7,r8,r30
    3788:	9d 61 00 64 	l.addi r11,r1,100
    378c:	d4 14 40 04 	l.sw 4(r20),r8
    3790:	d4 14 58 00 	l.sw 0(r20),r11
    3794:	d4 01 38 7c 	l.sw 124(r1),r7
    3798:	bd 42 00 07 	l.sfgtsi r2,7
    379c:	13 ff ff 35 	l.bf 3470 <_vfprintf_r+0xe40>
    37a0:	d4 01 10 78 	l.sw 120(r1),r2
    37a4:	03 ff fe e7 	l.j 3340 <_vfprintf_r+0xd10>
    37a8:	9d 94 00 08 	l.addi r12,r20,8
    37ac:	bc 02 00 00 	l.sfeqi r2,0
    37b0:	0f ff ff c3 	l.bnf 36bc <_vfprintf_r+0x108c>
    37b4:	84 41 00 78 	l.lwz r2,120(r1)
    37b8:	9f c7 00 01 	l.addi r30,r7,1
    37bc:	9c 42 00 01 	l.addi r2,r2,1
    37c0:	9c 60 00 01 	l.addi r3,r0,1
    37c4:	d4 0c c0 00 	l.sw 0(r12),r24
    37c8:	d4 0c 18 04 	l.sw 4(r12),r3
    37cc:	d4 01 f0 7c 	l.sw 124(r1),r30
    37d0:	bd 42 00 07 	l.sfgtsi r2,7
    37d4:	0c 00 02 8f 	l.bnf 4210 <_vfprintf_r+0x1be0>
    37d8:	d4 01 10 78 	l.sw 120(r1),r2
    37dc:	9c a1 00 74 	l.addi r5,r1,116
    37e0:	a8 9a 00 00 	l.ori r4,r26,0x0
    37e4:	04 00 1b fe 	l.jal a7dc <__sprint_r>
    37e8:	a8 76 00 00 	l.ori r3,r22,0x0
    37ec:	bc 2b 00 00 	l.sfnei r11,0
    37f0:	13 ff fc 44 	l.bf 2900 <_vfprintf_r+0x2d0>
    37f4:	87 c1 00 7c 	l.lwz r30,124(r1)
    37f8:	84 41 00 78 	l.lwz r2,120(r1)
    37fc:	03 ff ff e0 	l.j 377c <_vfprintf_r+0x114c>
    3800:	9e 81 00 a8 	l.addi r20,r1,168
    3804:	9c a1 00 74 	l.addi r5,r1,116
    3808:	a8 9a 00 00 	l.ori r4,r26,0x0
    380c:	04 00 1b f4 	l.jal a7dc <__sprint_r>
    3810:	a8 76 00 00 	l.ori r3,r22,0x0
    3814:	bc 2b 00 00 	l.sfnei r11,0
    3818:	0f ff ff 0a 	l.bnf 3440 <_vfprintf_r+0xe10>
    381c:	15 00 00 00 	l.nop 0x0
    3820:	03 ff fc 39 	l.j 2904 <_vfprintf_r+0x2d4>
    3824:	94 5a 00 0c 	l.lhz r2,12(r26)
    3828:	9c a1 00 74 	l.addi r5,r1,116
    382c:	a8 9a 00 00 	l.ori r4,r26,0x0
    3830:	04 00 1b eb 	l.jal a7dc <__sprint_r>
    3834:	a8 76 00 00 	l.ori r3,r22,0x0
    3838:	bc 2b 00 00 	l.sfnei r11,0
    383c:	13 ff fc 31 	l.bf 2900 <_vfprintf_r+0x2d0>
    3840:	84 e1 00 7c 	l.lwz r7,124(r1)
    3844:	03 ff fe b0 	l.j 3304 <_vfprintf_r+0xcd4>
    3848:	9d 81 00 a8 	l.addi r12,r1,168
    384c:	9c a1 00 74 	l.addi r5,r1,116
    3850:	a8 9a 00 00 	l.ori r4,r26,0x0
    3854:	04 00 1b e2 	l.jal a7dc <__sprint_r>
    3858:	a8 76 00 00 	l.ori r3,r22,0x0
    385c:	bc 2b 00 00 	l.sfnei r11,0
    3860:	13 ff fc 28 	l.bf 2900 <_vfprintf_r+0x2d0>
    3864:	84 e1 00 7c 	l.lwz r7,124(r1)
    3868:	03 ff fe 67 	l.j 3204 <_vfprintf_r+0xbd4>
    386c:	9d 81 00 a8 	l.addi r12,r1,168
    3870:	9c a1 00 74 	l.addi r5,r1,116
    3874:	a8 9a 00 00 	l.ori r4,r26,0x0
    3878:	04 00 1b d9 	l.jal a7dc <__sprint_r>
    387c:	a8 76 00 00 	l.ori r3,r22,0x0
    3880:	bc 2b 00 00 	l.sfnei r11,0
    3884:	13 ff fc 1f 	l.bf 2900 <_vfprintf_r+0x2d0>
    3888:	84 e1 00 7c 	l.lwz r7,124(r1)
    388c:	03 ff fe 6e 	l.j 3244 <_vfprintf_r+0xc14>
    3890:	9d 81 00 a8 	l.addi r12,r1,168
    3894:	86 81 00 5c 	l.lwz r20,92(r1)
    3898:	bd 54 00 00 	l.sfgtsi r20,0
    389c:	0c 00 01 fd 	l.bnf 4090 <_vfprintf_r+0x1a60>
    38a0:	84 41 00 40 	l.lwz r2,64(r1)
    38a4:	85 01 00 3c 	l.lwz r8,60(r1)
    38a8:	e5 a2 40 00 	l.sfles r2,r8
    38ac:	10 00 00 03 	l.bf 38b8 <_vfprintf_r+0x1288>
    38b0:	aa 82 00 00 	l.ori r20,r2,0x0
    38b4:	aa 88 00 00 	l.ori r20,r8,0x0
    38b8:	bd b4 00 00 	l.sflesi r20,0
    38bc:	10 00 00 0b 	l.bf 38e8 <_vfprintf_r+0x12b8>
    38c0:	84 41 00 78 	l.lwz r2,120(r1)
    38c4:	e0 e7 a0 00 	l.add r7,r7,r20
    38c8:	9c 42 00 01 	l.addi r2,r2,1
    38cc:	d4 0c c0 00 	l.sw 0(r12),r24
    38d0:	d4 0c a0 04 	l.sw 4(r12),r20
    38d4:	d4 01 38 7c 	l.sw 124(r1),r7
    38d8:	bd 42 00 07 	l.sfgtsi r2,7
    38dc:	10 00 02 82 	l.bf 42e4 <_vfprintf_r+0x1cb4>
    38e0:	d4 01 10 78 	l.sw 120(r1),r2
    38e4:	9d 8c 00 08 	l.addi r12,r12,8
    38e8:	bd 74 00 00 	l.sfgesi r20,0
    38ec:	0c 00 02 87 	l.bnf 4308 <_vfprintf_r+0x1cd8>
    38f0:	15 00 00 00 	l.nop 0x0
    38f4:	84 41 00 40 	l.lwz r2,64(r1)
    38f8:	e2 82 a0 02 	l.sub r20,r2,r20
    38fc:	bd b4 00 00 	l.sflesi r20,0
    3900:	10 00 00 74 	l.bf 3ad0 <_vfprintf_r+0x14a0>
    3904:	1b 80 00 01 	l.movhi r28,0x1
    3908:	bd 54 00 10 	l.sfgtsi r20,16
    390c:	84 41 00 78 	l.lwz r2,120(r1)
    3910:	0c 00 01 cd 	l.bnf 4044 <_vfprintf_r+0x1a14>
    3914:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    3918:	00 00 00 07 	l.j 3934 <_vfprintf_r+0x1304>
    391c:	9f c0 00 10 	l.addi r30,r0,16
    3920:	9d 8c 00 08 	l.addi r12,r12,8
    3924:	9e 94 ff f0 	l.addi r20,r20,-16
    3928:	bd 54 00 10 	l.sfgtsi r20,16
    392c:	0c 00 01 c6 	l.bnf 4044 <_vfprintf_r+0x1a14>
    3930:	15 00 00 00 	l.nop 0x0
    3934:	9c 42 00 01 	l.addi r2,r2,1
    3938:	9c e7 00 10 	l.addi r7,r7,16
    393c:	d4 0c e0 00 	l.sw 0(r12),r28
    3940:	d4 0c f0 04 	l.sw 4(r12),r30
    3944:	d4 01 38 7c 	l.sw 124(r1),r7
    3948:	bd 42 00 07 	l.sfgtsi r2,7
    394c:	0f ff ff f5 	l.bnf 3920 <_vfprintf_r+0x12f0>
    3950:	d4 01 10 78 	l.sw 120(r1),r2
    3954:	9c a1 00 74 	l.addi r5,r1,116
    3958:	a8 9a 00 00 	l.ori r4,r26,0x0
    395c:	04 00 1b a0 	l.jal a7dc <__sprint_r>
    3960:	a8 76 00 00 	l.ori r3,r22,0x0
    3964:	bc 2b 00 00 	l.sfnei r11,0
    3968:	13 ff fb e6 	l.bf 2900 <_vfprintf_r+0x2d0>
    396c:	84 e1 00 7c 	l.lwz r7,124(r1)
    3970:	84 41 00 78 	l.lwz r2,120(r1)
    3974:	03 ff ff ec 	l.j 3924 <_vfprintf_r+0x12f4>
    3978:	9d 81 00 a8 	l.addi r12,r1,168
    397c:	84 e1 00 10 	l.lwz r7,16(r1)
    3980:	9d 00 00 30 	l.addi r8,r0,48
    3984:	e0 c6 38 02 	l.sub r6,r6,r7
    3988:	d8 01 40 a7 	l.sb 167(r1),r8
    398c:	d4 01 30 28 	l.sw 40(r1),r6
    3990:	9c a0 00 00 	l.addi r5,r0,0
    3994:	03 ff fc b7 	l.j 2c70 <_vfprintf_r+0x640>
    3998:	9f 01 00 a7 	l.addi r24,r1,167
    399c:	03 ff fc ff 	l.j 2d98 <_vfprintf_r+0x768>
    39a0:	90 a1 00 59 	l.lbs r5,89(r1)
    39a4:	9c a1 00 74 	l.addi r5,r1,116
    39a8:	a8 9a 00 00 	l.ori r4,r26,0x0
    39ac:	04 00 1b 8c 	l.jal a7dc <__sprint_r>
    39b0:	a8 76 00 00 	l.ori r3,r22,0x0
    39b4:	bc 2b 00 00 	l.sfnei r11,0
    39b8:	13 ff fb d2 	l.bf 2900 <_vfprintf_r+0x2d0>
    39bc:	90 a1 00 59 	l.lbs r5,89(r1)
    39c0:	84 e1 00 7c 	l.lwz r7,124(r1)
    39c4:	03 ff fe 01 	l.j 31c8 <_vfprintf_r+0xb98>
    39c8:	9d 81 00 a8 	l.addi r12,r1,168
    39cc:	9f 07 ff ff 	l.addi r24,r7,-1
    39d0:	bd b8 00 00 	l.sflesi r24,0
    39d4:	13 ff ff 6a 	l.bf 377c <_vfprintf_r+0x114c>
    39d8:	1b 80 00 01 	l.movhi r28,0x1
    39dc:	bd b8 00 10 	l.sflesi r24,16
    39e0:	10 00 00 96 	l.bf 3c38 <_vfprintf_r+0x1608>
    39e4:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    39e8:	00 00 00 07 	l.j 3a04 <_vfprintf_r+0x13d4>
    39ec:	9c c0 00 10 	l.addi r6,r0,16
    39f0:	9e 94 00 08 	l.addi r20,r20,8
    39f4:	9f 18 ff f0 	l.addi r24,r24,-16
    39f8:	bd 58 00 10 	l.sfgtsi r24,16
    39fc:	0c 00 00 8f 	l.bnf 3c38 <_vfprintf_r+0x1608>
    3a00:	15 00 00 00 	l.nop 0x0
    3a04:	9c 42 00 01 	l.addi r2,r2,1
    3a08:	9f de 00 10 	l.addi r30,r30,16
    3a0c:	d4 14 e0 00 	l.sw 0(r20),r28
    3a10:	d4 14 30 04 	l.sw 4(r20),r6
    3a14:	d4 01 f0 7c 	l.sw 124(r1),r30
    3a18:	bd 42 00 07 	l.sfgtsi r2,7
    3a1c:	0f ff ff f5 	l.bnf 39f0 <_vfprintf_r+0x13c0>
    3a20:	d4 01 10 78 	l.sw 120(r1),r2
    3a24:	9c a1 00 74 	l.addi r5,r1,116
    3a28:	a8 9a 00 00 	l.ori r4,r26,0x0
    3a2c:	a8 76 00 00 	l.ori r3,r22,0x0
    3a30:	04 00 1b 6b 	l.jal a7dc <__sprint_r>
    3a34:	d4 01 30 0c 	l.sw 12(r1),r6
    3a38:	bc 2b 00 00 	l.sfnei r11,0
    3a3c:	13 ff fb b1 	l.bf 2900 <_vfprintf_r+0x2d0>
    3a40:	84 c1 00 0c 	l.lwz r6,12(r1)
    3a44:	87 c1 00 7c 	l.lwz r30,124(r1)
    3a48:	84 41 00 78 	l.lwz r2,120(r1)
    3a4c:	03 ff ff ea 	l.j 39f4 <_vfprintf_r+0x13c4>
    3a50:	9e 81 00 a8 	l.addi r20,r1,168
    3a54:	13 ff fc f9 	l.bf 2e38 <_vfprintf_r+0x808>
    3a58:	d8 01 20 59 	l.sb 89(r1),r4
    3a5c:	e0 80 10 02 	l.sub r4,r0,r2
    3a60:	9c e0 ff 7f 	l.addi r7,r0,-129
    3a64:	e0 84 10 04 	l.or r4,r4,r2
    3a68:	bd 84 00 00 	l.sfltsi r4,0
    3a6c:	13 ff fc f3 	l.bf 2e38 <_vfprintf_r+0x808>
    3a70:	e1 ce 38 03 	l.and r14,r14,r7
    3a74:	e0 a0 18 02 	l.sub r5,r0,r3
    3a78:	e0 a5 18 04 	l.or r5,r5,r3
    3a7c:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    3a80:	bc 25 00 00 	l.sfnei r5,0
    3a84:	0f ff fc 78 	l.bnf 2c64 <_vfprintf_r+0x634>
    3a88:	9f 01 00 a8 	l.addi r24,r1,168
    3a8c:	03 ff fc ed 	l.j 2e40 <_vfprintf_r+0x810>
    3a90:	a4 83 00 0f 	l.andi r4,r3,0xf
    3a94:	bc 03 00 00 	l.sfeqi r3,0
    3a98:	10 00 01 58 	l.bf 3ff8 <_vfprintf_r+0x19c8>
    3a9c:	84 61 00 2c 	l.lwz r3,44(r1)
    3aa0:	9b 83 00 02 	l.lhs r28,2(r3)
    3aa4:	9c 63 00 04 	l.addi r3,r3,4
    3aa8:	03 ff fd 13 	l.j 2ef4 <_vfprintf_r+0x8c4>
    3aac:	d4 01 18 2c 	l.sw 44(r1),r3
    3ab0:	9c a1 00 74 	l.addi r5,r1,116
    3ab4:	a8 9a 00 00 	l.ori r4,r26,0x0
    3ab8:	04 00 1b 49 	l.jal a7dc <__sprint_r>
    3abc:	a8 76 00 00 	l.ori r3,r22,0x0
    3ac0:	bc 2b 00 00 	l.sfnei r11,0
    3ac4:	13 ff fb 8f 	l.bf 2900 <_vfprintf_r+0x2d0>
    3ac8:	84 e1 00 7c 	l.lwz r7,124(r1)
    3acc:	9d 81 00 a8 	l.addi r12,r1,168
    3ad0:	85 01 00 40 	l.lwz r8,64(r1)
    3ad4:	84 41 00 5c 	l.lwz r2,92(r1)
    3ad8:	e3 98 40 00 	l.add r28,r24,r8
    3adc:	85 01 00 3c 	l.lwz r8,60(r1)
    3ae0:	e5 48 10 00 	l.sfgts r8,r2
    3ae4:	10 00 00 3f 	l.bf 3be0 <_vfprintf_r+0x15b0>
    3ae8:	85 61 00 50 	l.lwz r11,80(r1)
    3aec:	a4 6e 00 01 	l.andi r3,r14,0x1
    3af0:	bc 03 00 00 	l.sfeqi r3,0
    3af4:	0c 00 00 3c 	l.bnf 3be4 <_vfprintf_r+0x15b4>
    3af8:	84 61 00 78 	l.lwz r3,120(r1)
    3afc:	85 01 00 3c 	l.lwz r8,60(r1)
    3b00:	e2 98 40 00 	l.add r20,r24,r8
    3b04:	e0 48 10 02 	l.sub r2,r8,r2
    3b08:	e2 94 e0 02 	l.sub r20,r20,r28
    3b0c:	e5 b4 10 00 	l.sfles r20,r2
    3b10:	10 00 00 04 	l.bf 3b20 <_vfprintf_r+0x14f0>
    3b14:	bd b4 00 00 	l.sflesi r20,0
    3b18:	aa 82 00 00 	l.ori r20,r2,0x0
    3b1c:	bd b4 00 00 	l.sflesi r20,0
    3b20:	10 00 00 0d 	l.bf 3b54 <_vfprintf_r+0x1524>
    3b24:	bd 74 00 00 	l.sfgesi r20,0
    3b28:	84 61 00 78 	l.lwz r3,120(r1)
    3b2c:	e0 e7 a0 00 	l.add r7,r7,r20
    3b30:	9c 63 00 01 	l.addi r3,r3,1
    3b34:	d4 0c e0 00 	l.sw 0(r12),r28
    3b38:	d4 0c a0 04 	l.sw 4(r12),r20
    3b3c:	d4 01 38 7c 	l.sw 124(r1),r7
    3b40:	bd 43 00 07 	l.sfgtsi r3,7
    3b44:	10 00 01 f3 	l.bf 4310 <_vfprintf_r+0x1ce0>
    3b48:	d4 01 18 78 	l.sw 120(r1),r3
    3b4c:	9d 8c 00 08 	l.addi r12,r12,8
    3b50:	bd 74 00 00 	l.sfgesi r20,0
    3b54:	0c 00 02 59 	l.bnf 44b8 <_vfprintf_r+0x1e88>
    3b58:	15 00 00 00 	l.nop 0x0
    3b5c:	e2 82 a0 02 	l.sub r20,r2,r20
    3b60:	bd b4 00 00 	l.sflesi r20,0
    3b64:	13 ff fd f7 	l.bf 3340 <_vfprintf_r+0xd10>
    3b68:	1b 80 00 01 	l.movhi r28,0x1
    3b6c:	bd 54 00 10 	l.sfgtsi r20,16
    3b70:	84 41 00 78 	l.lwz r2,120(r1)
    3b74:	0f ff fe 37 	l.bnf 3450 <_vfprintf_r+0xe20>
    3b78:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    3b7c:	00 00 00 07 	l.j 3b98 <_vfprintf_r+0x1568>
    3b80:	9f 00 00 10 	l.addi r24,r0,16
    3b84:	9d 8c 00 08 	l.addi r12,r12,8
    3b88:	9e 94 ff f0 	l.addi r20,r20,-16
    3b8c:	bd 54 00 10 	l.sfgtsi r20,16
    3b90:	0f ff fe 30 	l.bnf 3450 <_vfprintf_r+0xe20>
    3b94:	15 00 00 00 	l.nop 0x0
    3b98:	9c 42 00 01 	l.addi r2,r2,1
    3b9c:	9c e7 00 10 	l.addi r7,r7,16
    3ba0:	d4 0c e0 00 	l.sw 0(r12),r28
    3ba4:	d4 0c c0 04 	l.sw 4(r12),r24
    3ba8:	d4 01 38 7c 	l.sw 124(r1),r7
    3bac:	bd 42 00 07 	l.sfgtsi r2,7
    3bb0:	0f ff ff f5 	l.bnf 3b84 <_vfprintf_r+0x1554>
    3bb4:	d4 01 10 78 	l.sw 120(r1),r2
    3bb8:	9c a1 00 74 	l.addi r5,r1,116
    3bbc:	a8 9a 00 00 	l.ori r4,r26,0x0
    3bc0:	04 00 1b 07 	l.jal a7dc <__sprint_r>
    3bc4:	a8 76 00 00 	l.ori r3,r22,0x0
    3bc8:	bc 2b 00 00 	l.sfnei r11,0
    3bcc:	13 ff fb 4d 	l.bf 2900 <_vfprintf_r+0x2d0>
    3bd0:	84 e1 00 7c 	l.lwz r7,124(r1)
    3bd4:	84 41 00 78 	l.lwz r2,120(r1)
    3bd8:	03 ff ff ec 	l.j 3b88 <_vfprintf_r+0x1558>
    3bdc:	9d 81 00 a8 	l.addi r12,r1,168
    3be0:	84 61 00 78 	l.lwz r3,120(r1)
    3be4:	e0 e7 58 00 	l.add r7,r7,r11
    3be8:	9c 63 00 01 	l.addi r3,r3,1
    3bec:	84 81 00 44 	l.lwz r4,68(r1)
    3bf0:	d4 0c 58 04 	l.sw 4(r12),r11
    3bf4:	d4 0c 20 00 	l.sw 0(r12),r4
    3bf8:	d4 01 38 7c 	l.sw 124(r1),r7
    3bfc:	bd 43 00 07 	l.sfgtsi r3,7
    3c00:	10 00 02 16 	l.bf 4458 <_vfprintf_r+0x1e28>
    3c04:	d4 01 18 78 	l.sw 120(r1),r3
    3c08:	03 ff ff bd 	l.j 3afc <_vfprintf_r+0x14cc>
    3c0c:	9d 8c 00 08 	l.addi r12,r12,8
    3c10:	9c a1 00 74 	l.addi r5,r1,116
    3c14:	a8 9a 00 00 	l.ori r4,r26,0x0
    3c18:	04 00 1a f1 	l.jal a7dc <__sprint_r>
    3c1c:	a8 76 00 00 	l.ori r3,r22,0x0
    3c20:	bc 2b 00 00 	l.sfnei r11,0
    3c24:	13 ff fb 37 	l.bf 2900 <_vfprintf_r+0x2d0>
    3c28:	84 e1 00 7c 	l.lwz r7,124(r1)
    3c2c:	84 41 00 78 	l.lwz r2,120(r1)
    3c30:	03 ff fe ad 	l.j 36e4 <_vfprintf_r+0x10b4>
    3c34:	9d 81 00 a8 	l.addi r12,r1,168
    3c38:	9c 42 00 01 	l.addi r2,r2,1
    3c3c:	e3 de c0 00 	l.add r30,r30,r24
    3c40:	d4 14 e0 00 	l.sw 0(r20),r28
    3c44:	d4 14 c0 04 	l.sw 4(r20),r24
    3c48:	d4 01 f0 7c 	l.sw 124(r1),r30
    3c4c:	bd 42 00 07 	l.sfgtsi r2,7
    3c50:	0f ff fe ca 	l.bnf 3778 <_vfprintf_r+0x1148>
    3c54:	d4 01 10 78 	l.sw 120(r1),r2
    3c58:	03 ff fe e2 	l.j 37e0 <_vfprintf_r+0x11b0>
    3c5c:	9c a1 00 74 	l.addi r5,r1,116
    3c60:	9c a1 00 74 	l.addi r5,r1,116
    3c64:	a8 9a 00 00 	l.ori r4,r26,0x0
    3c68:	04 00 1a dd 	l.jal a7dc <__sprint_r>
    3c6c:	a8 76 00 00 	l.ori r3,r22,0x0
    3c70:	bc 2b 00 00 	l.sfnei r11,0
    3c74:	13 ff fb 23 	l.bf 2900 <_vfprintf_r+0x2d0>
    3c78:	87 c1 00 7c 	l.lwz r30,124(r1)
    3c7c:	84 41 00 78 	l.lwz r2,120(r1)
    3c80:	03 ff fe a4 	l.j 3710 <_vfprintf_r+0x10e0>
    3c84:	9e 81 00 a8 	l.addi r20,r1,168
    3c88:	d4 01 10 20 	l.sw 32(r1),r2
    3c8c:	9f 01 00 a8 	l.addi r24,r1,168
    3c90:	a8 5c 00 00 	l.ori r2,r28,0x0
    3c94:	ab 85 00 00 	l.ori r28,r5,0x0
    3c98:	a8 62 00 00 	l.ori r3,r2,0x0
    3c9c:	9c 80 00 0a 	l.addi r4,r0,10
    3ca0:	04 00 2a 4c 	l.jal e5d0 <__umodsi3>
    3ca4:	9f 18 ff ff 	l.addi r24,r24,-1
    3ca8:	9d 6b 00 30 	l.addi r11,r11,48
    3cac:	a8 62 00 00 	l.ori r3,r2,0x0
    3cb0:	9c 80 00 0a 	l.addi r4,r0,10
    3cb4:	04 00 29 ef 	l.jal e470 <__udivsi3>
    3cb8:	d8 18 58 00 	l.sb 0(r24),r11
    3cbc:	bc 2b 00 00 	l.sfnei r11,0
    3cc0:	13 ff ff f6 	l.bf 3c98 <_vfprintf_r+0x1668>
    3cc4:	a8 4b 00 00 	l.ori r2,r11,0x0
    3cc8:	84 c1 00 1c 	l.lwz r6,28(r1)
    3ccc:	84 41 00 20 	l.lwz r2,32(r1)
    3cd0:	e0 c6 c0 02 	l.sub r6,r6,r24
    3cd4:	a9 9e 00 00 	l.ori r12,r30,0x0
    3cd8:	a8 bc 00 00 	l.ori r5,r28,0x0
    3cdc:	03 ff fb e5 	l.j 2c70 <_vfprintf_r+0x640>
    3ce0:	d4 01 30 28 	l.sw 40(r1),r6
    3ce4:	9c a1 00 74 	l.addi r5,r1,116
    3ce8:	a8 9a 00 00 	l.ori r4,r26,0x0
    3cec:	04 00 1a bc 	l.jal a7dc <__sprint_r>
    3cf0:	a8 76 00 00 	l.ori r3,r22,0x0
    3cf4:	bc 2b 00 00 	l.sfnei r11,0
    3cf8:	13 ff fb 02 	l.bf 2900 <_vfprintf_r+0x2d0>
    3cfc:	84 e1 00 7c 	l.lwz r7,124(r1)
    3d00:	03 ff fd 55 	l.j 3254 <_vfprintf_r+0xc24>
    3d04:	9d 81 00 a8 	l.addi r12,r1,168
    3d08:	9c c0 00 2d 	l.addi r6,r0,45
    3d0c:	d8 01 30 59 	l.sb 89(r1),r6
    3d10:	10 00 01 dc 	l.bf 4480 <_vfprintf_r+0x1e50>
    3d14:	e3 80 e0 02 	l.sub r28,r0,r28
    3d18:	9c e0 ff 7f 	l.addi r7,r0,-129
    3d1c:	9c a0 00 2d 	l.addi r5,r0,45
    3d20:	03 ff fc 1e 	l.j 2d98 <_vfprintf_r+0x768>
    3d24:	e1 ce 38 03 	l.and r14,r14,r7
    3d28:	13 ff fc 44 	l.bf 2e38 <_vfprintf_r+0x808>
    3d2c:	d8 01 18 59 	l.sb 89(r1),r3
    3d30:	9c a0 ff 7f 	l.addi r5,r0,-129
    3d34:	bc 22 00 00 	l.sfnei r2,0
    3d38:	13 ff fc 40 	l.bf 2e38 <_vfprintf_r+0x808>
    3d3c:	e1 ce 28 03 	l.and r14,r14,r5
    3d40:	03 ff fb c9 	l.j 2c64 <_vfprintf_r+0x634>
    3d44:	a8 a2 00 00 	l.ori r5,r2,0x0
    3d48:	84 61 00 4c 	l.lwz r3,76(r1)
    3d4c:	84 c1 00 48 	l.lwz r6,72(r1)
    3d50:	a8 a3 00 00 	l.ori r5,r3,0x0
    3d54:	a8 86 00 00 	l.ori r4,r6,0x0
    3d58:	e0 64 00 04 	l.or r3,r4,r0
    3d5c:	e0 85 00 04 	l.or r4,r5,r0
    3d60:	04 00 19 3d 	l.jal a254 <__fpclassifyd>
    3d64:	d4 01 60 08 	l.sw 8(r1),r12
    3d68:	bc 2b 00 00 	l.sfnei r11,0
    3d6c:	0c 00 01 1a 	l.bnf 41d4 <_vfprintf_r+0x1ba4>
    3d70:	85 81 00 08 	l.lwz r12,8(r1)
    3d74:	bc 22 ff ff 	l.sfnei r2,-1
    3d78:	0c 00 01 7c 	l.bnf 4368 <_vfprintf_r+0x1d38>
    3d7c:	9c 60 ff df 	l.addi r3,r0,-33
    3d80:	e3 94 18 03 	l.and r28,r20,r3
    3d84:	ac 7c 00 47 	l.xori r3,r28,71
    3d88:	e0 80 18 02 	l.sub r4,r0,r3
    3d8c:	e0 64 18 04 	l.or r3,r4,r3
    3d90:	bd 83 00 00 	l.sfltsi r3,0
    3d94:	10 00 01 78 	l.bf 4374 <_vfprintf_r+0x1d44>
    3d98:	e0 60 10 02 	l.sub r3,r0,r2
    3d9c:	e0 63 10 04 	l.or r3,r3,r2
    3da0:	bd 63 00 00 	l.sfgesi r3,0
    3da4:	0c 00 01 75 	l.bnf 4378 <_vfprintf_r+0x1d48>
    3da8:	84 81 00 48 	l.lwz r4,72(r1)
    3dac:	84 41 00 48 	l.lwz r2,72(r1)
    3db0:	bd 82 00 00 	l.sfltsi r2,0
    3db4:	a8 4e 01 00 	l.ori r2,r14,0x100
    3db8:	10 00 02 1c 	l.bf 4628 <_vfprintf_r+0x1ff8>
    3dbc:	d4 01 10 38 	l.sw 56(r1),r2
    3dc0:	9c 60 00 00 	l.addi r3,r0,0
    3dc4:	87 c1 00 48 	l.lwz r30,72(r1)
    3dc8:	9f 80 00 47 	l.addi r28,r0,71
    3dcc:	9c 40 00 01 	l.addi r2,r0,1
    3dd0:	d4 01 18 34 	l.sw 52(r1),r3
    3dd4:	84 61 00 4c 	l.lwz r3,76(r1)
    3dd8:	9c c1 00 6c 	l.addi r6,r1,108
    3ddc:	a8 a3 00 00 	l.ori r5,r3,0x0
    3de0:	9c 61 00 60 	l.addi r3,r1,96
    3de4:	d4 01 30 04 	l.sw 4(r1),r6
    3de8:	d4 01 18 00 	l.sw 0(r1),r3
    3dec:	a8 9e 00 00 	l.ori r4,r30,0x0
    3df0:	9d 01 00 5c 	l.addi r8,r1,92
    3df4:	a8 e2 00 00 	l.ori r7,r2,0x0
    3df8:	9c c0 00 02 	l.addi r6,r0,2
    3dfc:	a8 76 00 00 	l.ori r3,r22,0x0
    3e00:	04 00 04 e4 	l.jal 5190 <_dtoa_r>
    3e04:	d4 01 60 08 	l.sw 8(r1),r12
    3e08:	bc 3c 00 47 	l.sfnei r28,71
    3e0c:	ab 0b 00 00 	l.ori r24,r11,0x0
    3e10:	10 00 02 ba 	l.bf 48f8 <_vfprintf_r+0x22c8>
    3e14:	85 81 00 08 	l.lwz r12,8(r1)
    3e18:	a4 6e 00 01 	l.andi r3,r14,0x1
    3e1c:	bc 23 00 00 	l.sfnei r3,0
    3e20:	0c 00 02 23 	l.bnf 46ac <_vfprintf_r+0x207c>
    3e24:	e0 eb 10 00 	l.add r7,r11,r2
    3e28:	85 01 00 4c 	l.lwz r8,76(r1)
    3e2c:	19 60 00 01 	l.movhi r11,0x1
    3e30:	a8 7e 00 00 	l.ori r3,r30,0x0
    3e34:	a9 6b 19 bc 	l.ori r11,r11,0x19bc
    3e38:	a8 88 00 00 	l.ori r4,r8,0x0
    3e3c:	d4 01 38 0c 	l.sw 12(r1),r7
    3e40:	84 ab 00 00 	l.lwz r5,0(r11)
    3e44:	84 cb 00 04 	l.lwz r6,4(r11)
    3e48:	04 00 2f c5 	l.jal fd5c <__eqdf2>
    3e4c:	d4 01 60 08 	l.sw 8(r1),r12
    3e50:	84 e1 00 0c 	l.lwz r7,12(r1)
    3e54:	bc 0b 00 00 	l.sfeqi r11,0
    3e58:	a8 67 00 00 	l.ori r3,r7,0x0
    3e5c:	10 00 00 0d 	l.bf 3e90 <_vfprintf_r+0x1860>
    3e60:	85 81 00 08 	l.lwz r12,8(r1)
    3e64:	84 61 00 6c 	l.lwz r3,108(r1)
    3e68:	e4 a7 18 00 	l.sfleu r7,r3
    3e6c:	10 00 00 09 	l.bf 3e90 <_vfprintf_r+0x1860>
    3e70:	9c 83 00 01 	l.addi r4,r3,1
    3e74:	d4 01 20 6c 	l.sw 108(r1),r4
    3e78:	9c 80 00 30 	l.addi r4,r0,48
    3e7c:	d8 03 20 00 	l.sb 0(r3),r4
    3e80:	84 61 00 6c 	l.lwz r3,108(r1)
    3e84:	e4 47 18 00 	l.sfgtu r7,r3
    3e88:	13 ff ff fb 	l.bf 3e74 <_vfprintf_r+0x1844>
    3e8c:	9c 83 00 01 	l.addi r4,r3,1
    3e90:	e0 63 c0 02 	l.sub r3,r3,r24
    3e94:	bc 3c 00 47 	l.sfnei r28,71
    3e98:	10 00 01 8c 	l.bf 44c8 <_vfprintf_r+0x1e98>
    3e9c:	d4 01 18 3c 	l.sw 60(r1),r3
    3ea0:	84 61 00 5c 	l.lwz r3,92(r1)
    3ea4:	e5 43 10 00 	l.sfgts r3,r2
    3ea8:	10 00 00 03 	l.bf 3eb4 <_vfprintf_r+0x1884>
    3eac:	9c 80 00 01 	l.addi r4,r0,1
    3eb0:	9c 80 00 00 	l.addi r4,r0,0
    3eb4:	a4 44 00 ff 	l.andi r2,r4,0xff
    3eb8:	bc 22 00 00 	l.sfnei r2,0
    3ebc:	10 00 01 96 	l.bf 4514 <_vfprintf_r+0x1ee4>
    3ec0:	bd 83 ff fd 	l.sfltsi r3,-3
    3ec4:	10 00 00 03 	l.bf 3ed0 <_vfprintf_r+0x18a0>
    3ec8:	9c 80 00 01 	l.addi r4,r0,1
    3ecc:	a8 82 00 00 	l.ori r4,r2,0x0
    3ed0:	a4 84 00 ff 	l.andi r4,r4,0xff
    3ed4:	bc 04 00 00 	l.sfeqi r4,0
    3ed8:	0c 00 01 8f 	l.bnf 4514 <_vfprintf_r+0x1ee4>
    3edc:	d4 01 18 40 	l.sw 64(r1),r3
    3ee0:	84 41 00 3c 	l.lwz r2,60(r1)
    3ee4:	84 e1 00 40 	l.lwz r7,64(r1)
    3ee8:	e5 42 38 00 	l.sfgts r2,r7
    3eec:	10 00 01 bd 	l.bf 45e0 <_vfprintf_r+0x1fb0>
    3ef0:	bd 47 00 00 	l.sfgtsi r7,0
    3ef4:	a5 ce 00 01 	l.andi r14,r14,0x1
    3ef8:	bc 2e 00 00 	l.sfnei r14,0
    3efc:	10 00 01 c3 	l.bf 4608 <_vfprintf_r+0x1fd8>
    3f00:	84 41 00 40 	l.lwz r2,64(r1)
    3f04:	bd 67 00 00 	l.sfgesi r7,0
    3f08:	0c 00 02 6d 	l.bnf 48bc <_vfprintf_r+0x228c>
    3f0c:	a8 67 00 00 	l.ori r3,r7,0x0
    3f10:	85 01 00 40 	l.lwz r8,64(r1)
    3f14:	9e 80 00 67 	l.addi r20,r0,103
    3f18:	d4 01 40 28 	l.sw 40(r1),r8
    3f1c:	84 41 00 34 	l.lwz r2,52(r1)
    3f20:	bc 22 00 00 	l.sfnei r2,0
    3f24:	10 00 01 77 	l.bf 4500 <_vfprintf_r+0x1ed0>
    3f28:	9c 80 00 2d 	l.addi r4,r0,45
    3f2c:	90 a1 00 59 	l.lbs r5,89(r1)
    3f30:	d4 01 18 20 	l.sw 32(r1),r3
    3f34:	03 ff fa a9 	l.j 29d8 <_vfprintf_r+0x3a8>
    3f38:	85 c1 00 38 	l.lwz r14,56(r1)
    3f3c:	84 a1 00 2c 	l.lwz r5,44(r1)
    3f40:	84 c1 00 2c 	l.lwz r6,44(r1)
    3f44:	84 84 00 00 	l.lwz r4,0(r4)
    3f48:	84 a5 00 04 	l.lwz r5,4(r5)
    3f4c:	9c c6 00 08 	l.addi r6,r6,8
    3f50:	d4 01 20 48 	l.sw 72(r1),r4
    3f54:	d4 01 28 4c 	l.sw 76(r1),r5
    3f58:	03 ff fc 09 	l.j 2f7c <_vfprintf_r+0x94c>
    3f5c:	d4 01 30 2c 	l.sw 44(r1),r6
    3f60:	d8 01 18 59 	l.sb 89(r1),r3
    3f64:	84 61 00 2c 	l.lwz r3,44(r1)
    3f68:	9c c3 00 04 	l.addi r6,r3,4
    3f6c:	0f ff fc 7e 	l.bnf 3164 <_vfprintf_r+0xb34>
    3f70:	84 63 00 00 	l.lwz r3,0(r3)
    3f74:	e0 80 18 02 	l.sub r4,r0,r3
    3f78:	9c a0 ff 7f 	l.addi r5,r0,-129
    3f7c:	e0 84 18 04 	l.or r4,r4,r3
    3f80:	bd 84 00 00 	l.sfltsi r4,0
    3f84:	13 ff fc 78 	l.bf 3164 <_vfprintf_r+0xb34>
    3f88:	e1 ce 28 03 	l.and r14,r14,r5
    3f8c:	e0 80 10 02 	l.sub r4,r0,r2
    3f90:	e0 84 10 04 	l.or r4,r4,r2
    3f94:	bd 64 00 00 	l.sfgesi r4,0
    3f98:	13 ff fb 59 	l.bf 2cfc <_vfprintf_r+0x6cc>
    3f9c:	d4 01 30 2c 	l.sw 44(r1),r6
    3fa0:	03 ff fc 72 	l.j 3168 <_vfprintf_r+0xb38>
    3fa4:	9c a1 00 a8 	l.addi r5,r1,168
    3fa8:	18 c0 00 01 	l.movhi r6,0x1
    3fac:	9e 80 00 78 	l.addi r20,r0,120
    3fb0:	03 ff fb a2 	l.j 2e38 <_vfprintf_r+0x808>
    3fb4:	a8 c6 19 9f 	l.ori r6,r6,0x199f
    3fb8:	a5 ce 00 40 	l.andi r14,r14,0x40
    3fbc:	bc 0e 00 00 	l.sfeqi r14,0
    3fc0:	10 00 00 7f 	l.bf 41bc <_vfprintf_r+0x1b8c>
    3fc4:	84 61 00 30 	l.lwz r3,48(r1)
    3fc8:	84 e1 00 2c 	l.lwz r7,44(r1)
    3fcc:	85 01 00 30 	l.lwz r8,48(r1)
    3fd0:	84 47 00 00 	l.lwz r2,0(r7)
    3fd4:	9c e7 00 04 	l.addi r7,r7,4
    3fd8:	dc 02 40 00 	l.sh 0(r2),r8
    3fdc:	03 ff f9 d9 	l.j 2740 <_vfprintf_r+0x110>
    3fe0:	d4 01 38 2c 	l.sw 44(r1),r7
    3fe4:	84 e1 00 2c 	l.lwz r7,44(r1)
    3fe8:	84 67 00 00 	l.lwz r3,0(r7)
    3fec:	9c e7 00 04 	l.addi r7,r7,4
    3ff0:	03 ff fb 81 	l.j 2df4 <_vfprintf_r+0x7c4>
    3ff4:	d4 01 38 2c 	l.sw 44(r1),r7
    3ff8:	84 81 00 2c 	l.lwz r4,44(r1)
    3ffc:	87 84 00 00 	l.lwz r28,0(r4)
    4000:	9c 84 00 04 	l.addi r4,r4,4
    4004:	03 ff fb bc 	l.j 2ef4 <_vfprintf_r+0x8c4>
    4008:	d4 01 20 2c 	l.sw 44(r1),r4
    400c:	d8 01 28 59 	l.sb 89(r1),r5
    4010:	bd 62 00 00 	l.sfgesi r2,0
    4014:	9c 8b 00 04 	l.addi r4,r11,4
    4018:	0c 00 01 2a 	l.bnf 44c0 <_vfprintf_r+0x1e90>
    401c:	87 8b 00 00 	l.lwz r28,0(r11)
    4020:	e0 60 e0 02 	l.sub r3,r0,r28
    4024:	9d 00 ff 7f 	l.addi r8,r0,-129
    4028:	e0 63 e0 04 	l.or r3,r3,r28
    402c:	d4 01 20 2c 	l.sw 44(r1),r4
    4030:	bd 83 00 00 	l.sfltsi r3,0
    4034:	0f ff fa c0 	l.bnf 2b34 <_vfprintf_r+0x504>
    4038:	e1 ce 40 03 	l.and r14,r14,r8
    403c:	03 ff fb 57 	l.j 2d98 <_vfprintf_r+0x768>
    4040:	9c a0 00 00 	l.addi r5,r0,0
    4044:	9c 42 00 01 	l.addi r2,r2,1
    4048:	e0 e7 a0 00 	l.add r7,r7,r20
    404c:	d4 0c e0 00 	l.sw 0(r12),r28
    4050:	d4 0c a0 04 	l.sw 4(r12),r20
    4054:	d4 01 38 7c 	l.sw 124(r1),r7
    4058:	bd 42 00 07 	l.sfgtsi r2,7
    405c:	13 ff fe 95 	l.bf 3ab0 <_vfprintf_r+0x1480>
    4060:	d4 01 10 78 	l.sw 120(r1),r2
    4064:	03 ff fe 9b 	l.j 3ad0 <_vfprintf_r+0x14a0>
    4068:	9d 8c 00 08 	l.addi r12,r12,8
    406c:	9c a1 00 74 	l.addi r5,r1,116
    4070:	a8 9a 00 00 	l.ori r4,r26,0x0
    4074:	04 00 19 da 	l.jal a7dc <__sprint_r>
    4078:	a8 76 00 00 	l.ori r3,r22,0x0
    407c:	bc 2b 00 00 	l.sfnei r11,0
    4080:	13 ff fa 20 	l.bf 2900 <_vfprintf_r+0x2d0>
    4084:	84 e1 00 7c 	l.lwz r7,124(r1)
    4088:	03 ff fd 23 	l.j 3514 <_vfprintf_r+0xee4>
    408c:	9d 81 00 a8 	l.addi r12,r1,168
    4090:	18 60 00 01 	l.movhi r3,0x1
    4094:	84 41 00 78 	l.lwz r2,120(r1)
    4098:	a8 63 19 b7 	l.ori r3,r3,0x19b7
    409c:	9c 42 00 01 	l.addi r2,r2,1
    40a0:	9c e7 00 01 	l.addi r7,r7,1
    40a4:	d4 0c 18 00 	l.sw 0(r12),r3
    40a8:	9c 60 00 01 	l.addi r3,r0,1
    40ac:	d4 01 38 7c 	l.sw 124(r1),r7
    40b0:	d4 0c 18 04 	l.sw 4(r12),r3
    40b4:	bd 42 00 07 	l.sfgtsi r2,7
    40b8:	10 00 00 58 	l.bf 4218 <_vfprintf_r+0x1be8>
    40bc:	d4 01 10 78 	l.sw 120(r1),r2
    40c0:	9d 8c 00 08 	l.addi r12,r12,8
    40c4:	85 01 00 3c 	l.lwz r8,60(r1)
    40c8:	e0 48 a0 04 	l.or r2,r8,r20
    40cc:	bc 22 00 00 	l.sfnei r2,0
    40d0:	10 00 00 06 	l.bf 40e8 <_vfprintf_r+0x1ab8>
    40d4:	84 41 00 50 	l.lwz r2,80(r1)
    40d8:	a4 4e 00 01 	l.andi r2,r14,0x1
    40dc:	bc 02 00 00 	l.sfeqi r2,0
    40e0:	13 ff fc 98 	l.bf 3340 <_vfprintf_r+0xd10>
    40e4:	84 41 00 50 	l.lwz r2,80(r1)
    40e8:	84 61 00 44 	l.lwz r3,68(r1)
    40ec:	e0 e2 38 00 	l.add r7,r2,r7
    40f0:	84 41 00 78 	l.lwz r2,120(r1)
    40f4:	84 81 00 50 	l.lwz r4,80(r1)
    40f8:	9c 42 00 01 	l.addi r2,r2,1
    40fc:	d4 0c 18 00 	l.sw 0(r12),r3
    4100:	d4 0c 20 04 	l.sw 4(r12),r4
    4104:	d4 01 38 7c 	l.sw 124(r1),r7
    4108:	bd 42 00 07 	l.sfgtsi r2,7
    410c:	10 00 01 2a 	l.bf 45b4 <_vfprintf_r+0x1f84>
    4110:	d4 01 10 78 	l.sw 120(r1),r2
    4114:	9d 8c 00 08 	l.addi r12,r12,8
    4118:	e2 80 a0 02 	l.sub r20,r0,r20
    411c:	bd b4 00 00 	l.sflesi r20,0
    4120:	10 00 00 63 	l.bf 42ac <_vfprintf_r+0x1c7c>
    4124:	1b 80 00 01 	l.movhi r28,0x1
    4128:	bd b4 00 10 	l.sflesi r20,16
    412c:	10 00 00 85 	l.bf 4340 <_vfprintf_r+0x1d10>
    4130:	ab 9c 1b 28 	l.ori r28,r28,0x1b28
    4134:	00 00 00 07 	l.j 4150 <_vfprintf_r+0x1b20>
    4138:	9f c0 00 10 	l.addi r30,r0,16
    413c:	9d 8c 00 08 	l.addi r12,r12,8
    4140:	9e 94 ff f0 	l.addi r20,r20,-16
    4144:	bd 54 00 10 	l.sfgtsi r20,16
    4148:	0c 00 00 7e 	l.bnf 4340 <_vfprintf_r+0x1d10>
    414c:	15 00 00 00 	l.nop 0x0
    4150:	9c 42 00 01 	l.addi r2,r2,1
    4154:	9c e7 00 10 	l.addi r7,r7,16
    4158:	d4 0c e0 00 	l.sw 0(r12),r28
    415c:	d4 0c f0 04 	l.sw 4(r12),r30
    4160:	d4 01 38 7c 	l.sw 124(r1),r7
    4164:	bd 42 00 07 	l.sfgtsi r2,7
    4168:	0f ff ff f5 	l.bnf 413c <_vfprintf_r+0x1b0c>
    416c:	d4 01 10 78 	l.sw 120(r1),r2
    4170:	9c a1 00 74 	l.addi r5,r1,116
    4174:	a8 9a 00 00 	l.ori r4,r26,0x0
    4178:	04 00 19 99 	l.jal a7dc <__sprint_r>
    417c:	a8 76 00 00 	l.ori r3,r22,0x0
    4180:	bc 2b 00 00 	l.sfnei r11,0
    4184:	13 ff f9 df 	l.bf 2900 <_vfprintf_r+0x2d0>
    4188:	84 e1 00 7c 	l.lwz r7,124(r1)
    418c:	84 41 00 78 	l.lwz r2,120(r1)
    4190:	03 ff ff ec 	l.j 4140 <_vfprintf_r+0x1b10>
    4194:	9d 81 00 a8 	l.addi r12,r1,168
    4198:	84 e1 00 1c 	l.lwz r7,28(r1)
    419c:	ab 05 00 00 	l.ori r24,r5,0x0
    41a0:	e0 e7 28 02 	l.sub r7,r7,r5
    41a4:	d4 01 30 2c 	l.sw 44(r1),r6
    41a8:	d4 01 38 28 	l.sw 40(r1),r7
    41ac:	03 ff fa b1 	l.j 2c70 <_vfprintf_r+0x640>
    41b0:	9c a0 00 00 	l.addi r5,r0,0
    41b4:	03 ff f9 d9 	l.j 2918 <_vfprintf_r+0x2e8>
    41b8:	9d 60 ff ff 	l.addi r11,r0,-1
    41bc:	85 61 00 2c 	l.lwz r11,44(r1)
    41c0:	84 4b 00 00 	l.lwz r2,0(r11)
    41c4:	9d 6b 00 04 	l.addi r11,r11,4
    41c8:	d4 02 18 00 	l.sw 0(r2),r3
    41cc:	03 ff f9 5d 	l.j 2740 <_vfprintf_r+0x110>
    41d0:	d4 01 58 2c 	l.sw 44(r1),r11
    41d4:	1b 00 00 01 	l.movhi r24,0x1
    41d8:	bd 54 00 47 	l.sfgtsi r20,71
    41dc:	10 00 00 04 	l.bf 41ec <_vfprintf_r+0x1bbc>
    41e0:	ab 18 19 8a 	l.ori r24,r24,0x198a
    41e4:	1b 00 00 01 	l.movhi r24,0x1
    41e8:	ab 18 19 86 	l.ori r24,r24,0x1986
    41ec:	9d 00 00 03 	l.addi r8,r0,3
    41f0:	9c 40 00 00 	l.addi r2,r0,0
    41f4:	9d 60 ff 7f 	l.addi r11,r0,-129
    41f8:	d4 01 40 20 	l.sw 32(r1),r8
    41fc:	e1 ce 58 03 	l.and r14,r14,r11
    4200:	90 a1 00 59 	l.lbs r5,89(r1)
    4204:	d4 01 40 28 	l.sw 40(r1),r8
    4208:	03 ff f9 f4 	l.j 29d8 <_vfprintf_r+0x3a8>
    420c:	d4 01 10 40 	l.sw 64(r1),r2
    4210:	03 ff fd 5b 	l.j 377c <_vfprintf_r+0x114c>
    4214:	9e 8c 00 08 	l.addi r20,r12,8
    4218:	9c a1 00 74 	l.addi r5,r1,116
    421c:	a8 9a 00 00 	l.ori r4,r26,0x0
    4220:	04 00 19 6f 	l.jal a7dc <__sprint_r>
    4224:	a8 76 00 00 	l.ori r3,r22,0x0
    4228:	bc 2b 00 00 	l.sfnei r11,0
    422c:	13 ff f9 b5 	l.bf 2900 <_vfprintf_r+0x2d0>
    4230:	86 81 00 5c 	l.lwz r20,92(r1)
    4234:	84 e1 00 7c 	l.lwz r7,124(r1)
    4238:	03 ff ff a3 	l.j 40c4 <_vfprintf_r+0x1a94>
    423c:	9d 81 00 a8 	l.addi r12,r1,168
    4240:	d4 01 30 2c 	l.sw 44(r1),r6
    4244:	18 c0 00 01 	l.movhi r6,0x1
    4248:	a9 ce 00 02 	l.ori r14,r14,0x2
    424c:	a8 c6 19 9f 	l.ori r6,r6,0x199f
    4250:	03 ff fa fa 	l.j 2e38 <_vfprintf_r+0x808>
    4254:	9e 80 00 78 	l.addi r20,r0,120
    4258:	d4 01 20 2c 	l.sw 44(r1),r4
    425c:	03 ff fa cf 	l.j 2d98 <_vfprintf_r+0x768>
    4260:	9c a0 00 00 	l.addi r5,r0,0
    4264:	9c a1 00 74 	l.addi r5,r1,116
    4268:	a8 9a 00 00 	l.ori r4,r26,0x0
    426c:	04 00 19 5c 	l.jal a7dc <__sprint_r>
    4270:	a8 76 00 00 	l.ori r3,r22,0x0
    4274:	bc 2b 00 00 	l.sfnei r11,0
    4278:	13 ff f9 a2 	l.bf 2900 <_vfprintf_r+0x2d0>
    427c:	84 e1 00 7c 	l.lwz r7,124(r1)
    4280:	03 ff fc ba 	l.j 3568 <_vfprintf_r+0xf38>
    4284:	9d 81 00 a8 	l.addi r12,r1,168
    4288:	9c a1 00 74 	l.addi r5,r1,116
    428c:	a8 9a 00 00 	l.ori r4,r26,0x0
    4290:	04 00 19 53 	l.jal a7dc <__sprint_r>
    4294:	a8 76 00 00 	l.ori r3,r22,0x0
    4298:	bc 2b 00 00 	l.sfnei r11,0
    429c:	13 ff f9 99 	l.bf 2900 <_vfprintf_r+0x2d0>
    42a0:	84 e1 00 7c 	l.lwz r7,124(r1)
    42a4:	84 41 00 78 	l.lwz r2,120(r1)
    42a8:	9d 81 00 a8 	l.addi r12,r1,168
    42ac:	85 01 00 3c 	l.lwz r8,60(r1)
    42b0:	9c 42 00 01 	l.addi r2,r2,1
    42b4:	03 ff fc 1c 	l.j 3324 <_vfprintf_r+0xcf4>
    42b8:	e0 e8 38 00 	l.add r7,r8,r7
    42bc:	a8 78 00 00 	l.ori r3,r24,0x0
    42c0:	04 00 18 be 	l.jal a5b8 <strlen>
    42c4:	d4 01 60 08 	l.sw 8(r1),r12
    42c8:	d4 01 58 28 	l.sw 40(r1),r11
    42cc:	bd 6b 00 00 	l.sfgesi r11,0
    42d0:	a8 6b 00 00 	l.ori r3,r11,0x0
    42d4:	13 ff f9 bc 	l.bf 29c4 <_vfprintf_r+0x394>
    42d8:	85 81 00 08 	l.lwz r12,8(r1)
    42dc:	03 ff f9 ba 	l.j 29c4 <_vfprintf_r+0x394>
    42e0:	9c 60 00 00 	l.addi r3,r0,0
    42e4:	9c a1 00 74 	l.addi r5,r1,116
    42e8:	a8 9a 00 00 	l.ori r4,r26,0x0
    42ec:	04 00 19 3c 	l.jal a7dc <__sprint_r>
    42f0:	a8 76 00 00 	l.ori r3,r22,0x0
    42f4:	bc 2b 00 00 	l.sfnei r11,0
    42f8:	13 ff f9 82 	l.bf 2900 <_vfprintf_r+0x2d0>
    42fc:	84 e1 00 7c 	l.lwz r7,124(r1)
    4300:	03 ff fd 7a 	l.j 38e8 <_vfprintf_r+0x12b8>
    4304:	9d 81 00 a8 	l.addi r12,r1,168
    4308:	03 ff fd 7b 	l.j 38f4 <_vfprintf_r+0x12c4>
    430c:	9e 80 00 00 	l.addi r20,r0,0
    4310:	9c a1 00 74 	l.addi r5,r1,116
    4314:	a8 9a 00 00 	l.ori r4,r26,0x0
    4318:	04 00 19 31 	l.jal a7dc <__sprint_r>
    431c:	a8 76 00 00 	l.ori r3,r22,0x0
    4320:	bc 2b 00 00 	l.sfnei r11,0
    4324:	13 ff f9 77 	l.bf 2900 <_vfprintf_r+0x2d0>
    4328:	84 41 00 5c 	l.lwz r2,92(r1)
    432c:	85 01 00 3c 	l.lwz r8,60(r1)
    4330:	84 e1 00 7c 	l.lwz r7,124(r1)
    4334:	e0 48 10 02 	l.sub r2,r8,r2
    4338:	03 ff fe 06 	l.j 3b50 <_vfprintf_r+0x1520>
    433c:	9d 81 00 a8 	l.addi r12,r1,168
    4340:	9c 42 00 01 	l.addi r2,r2,1
    4344:	e0 e7 a0 00 	l.add r7,r7,r20
    4348:	d4 0c e0 00 	l.sw 0(r12),r28
    434c:	d4 0c a0 04 	l.sw 4(r12),r20
    4350:	d4 01 38 7c 	l.sw 124(r1),r7
    4354:	bd 42 00 07 	l.sfgtsi r2,7
    4358:	13 ff ff cc 	l.bf 4288 <_vfprintf_r+0x1c58>
    435c:	d4 01 10 78 	l.sw 120(r1),r2
    4360:	03 ff ff d3 	l.j 42ac <_vfprintf_r+0x1c7c>
    4364:	9d 8c 00 08 	l.addi r12,r12,8
    4368:	9c 40 ff df 	l.addi r2,r0,-33
    436c:	e3 94 10 03 	l.and r28,r20,r2
    4370:	9c 40 00 06 	l.addi r2,r0,6
    4374:	84 81 00 48 	l.lwz r4,72(r1)
    4378:	a8 ae 01 00 	l.ori r5,r14,0x100
    437c:	bd 64 00 00 	l.sfgesi r4,0
    4380:	0c 00 00 ac 	l.bnf 4630 <_vfprintf_r+0x2000>
    4384:	d4 01 28 38 	l.sw 56(r1),r5
    4388:	bc 1c 00 46 	l.sfeqi r28,70
    438c:	0c 00 00 fc 	l.bnf 477c <_vfprintf_r+0x214c>
    4390:	84 c1 00 48 	l.lwz r6,72(r1)
    4394:	84 61 00 4c 	l.lwz r3,76(r1)
    4398:	a8 86 00 00 	l.ori r4,r6,0x0
    439c:	a8 a3 00 00 	l.ori r5,r3,0x0
    43a0:	9c c1 00 6c 	l.addi r6,r1,108
    43a4:	9c 61 00 60 	l.addi r3,r1,96
    43a8:	d4 01 30 04 	l.sw 4(r1),r6
    43ac:	d4 01 18 00 	l.sw 0(r1),r3
    43b0:	a8 e2 00 00 	l.ori r7,r2,0x0
    43b4:	9d 01 00 5c 	l.addi r8,r1,92
    43b8:	9c c0 00 03 	l.addi r6,r0,3
    43bc:	a8 76 00 00 	l.ori r3,r22,0x0
    43c0:	d4 01 60 08 	l.sw 8(r1),r12
    43c4:	04 00 03 73 	l.jal 5190 <_dtoa_r>
    43c8:	87 c1 00 48 	l.lwz r30,72(r1)
    43cc:	9c e0 00 00 	l.addi r7,r0,0
    43d0:	ab 0b 00 00 	l.ori r24,r11,0x0
    43d4:	d4 01 38 34 	l.sw 52(r1),r7
    43d8:	85 81 00 08 	l.lwz r12,8(r1)
    43dc:	8c 78 00 00 	l.lbz r3,0(r24)
    43e0:	ac 63 00 30 	l.xori r3,r3,48
    43e4:	9c 63 ff ff 	l.addi r3,r3,-1
    43e8:	bd 63 00 00 	l.sfgesi r3,0
    43ec:	10 00 00 ae 	l.bf 46a4 <_vfprintf_r+0x2074>
    43f0:	19 00 00 01 	l.movhi r8,0x1
    43f4:	84 e1 00 4c 	l.lwz r7,76(r1)
    43f8:	a8 87 00 00 	l.ori r4,r7,0x0
    43fc:	a9 08 19 bc 	l.ori r8,r8,0x19bc
    4400:	9c e0 00 01 	l.addi r7,r0,1
    4404:	a8 7e 00 00 	l.ori r3,r30,0x0
    4408:	d4 01 38 0c 	l.sw 12(r1),r7
    440c:	84 a8 00 00 	l.lwz r5,0(r8)
    4410:	84 c8 00 04 	l.lwz r6,4(r8)
    4414:	04 00 2e 52 	l.jal fd5c <__eqdf2>
    4418:	d4 01 60 08 	l.sw 8(r1),r12
    441c:	bc 2b 00 00 	l.sfnei r11,0
    4420:	84 e1 00 0c 	l.lwz r7,12(r1)
    4424:	10 00 00 03 	l.bf 4430 <_vfprintf_r+0x1e00>
    4428:	85 81 00 08 	l.lwz r12,8(r1)
    442c:	a8 eb 00 00 	l.ori r7,r11,0x0
    4430:	a4 e7 00 ff 	l.andi r7,r7,0xff
    4434:	bc 27 00 00 	l.sfnei r7,0
    4438:	0c 00 00 05 	l.bnf 444c <_vfprintf_r+0x1e1c>
    443c:	84 61 00 5c 	l.lwz r3,92(r1)
    4440:	9c 60 00 01 	l.addi r3,r0,1
    4444:	e0 63 10 02 	l.sub r3,r3,r2
    4448:	d4 01 18 5c 	l.sw 92(r1),r3
    444c:	e0 63 10 00 	l.add r3,r3,r2
    4450:	03 ff fe 76 	l.j 3e28 <_vfprintf_r+0x17f8>
    4454:	e0 f8 18 00 	l.add r7,r24,r3
    4458:	9c a1 00 74 	l.addi r5,r1,116
    445c:	a8 9a 00 00 	l.ori r4,r26,0x0
    4460:	04 00 18 df 	l.jal a7dc <__sprint_r>
    4464:	a8 76 00 00 	l.ori r3,r22,0x0
    4468:	bc 2b 00 00 	l.sfnei r11,0
    446c:	13 ff f9 25 	l.bf 2900 <_vfprintf_r+0x2d0>
    4470:	84 41 00 5c 	l.lwz r2,92(r1)
    4474:	84 e1 00 7c 	l.lwz r7,124(r1)
    4478:	03 ff fd a1 	l.j 3afc <_vfprintf_r+0x14cc>
    447c:	9d 81 00 a8 	l.addi r12,r1,168
    4480:	03 ff fa 46 	l.j 2d98 <_vfprintf_r+0x768>
    4484:	9c a0 00 2d 	l.addi r5,r0,45
    4488:	bc a2 00 06 	l.sfleui r2,6
    448c:	10 00 00 04 	l.bf 449c <_vfprintf_r+0x1e6c>
    4490:	bd 62 00 00 	l.sfgesi r2,0
    4494:	9c 40 00 06 	l.addi r2,r0,6
    4498:	bd 62 00 00 	l.sfgesi r2,0
    449c:	0c 00 00 ce 	l.bnf 47d4 <_vfprintf_r+0x21a4>
    44a0:	d4 01 10 28 	l.sw 40(r1),r2
    44a4:	1b 00 00 01 	l.movhi r24,0x1
    44a8:	d4 01 10 20 	l.sw 32(r1),r2
    44ac:	d4 01 e0 2c 	l.sw 44(r1),r28
    44b0:	03 ff fa 7c 	l.j 2ea0 <_vfprintf_r+0x870>
    44b4:	ab 18 19 b0 	l.ori r24,r24,0x19b0
    44b8:	03 ff fd a9 	l.j 3b5c <_vfprintf_r+0x152c>
    44bc:	9e 80 00 00 	l.addi r20,r0,0
    44c0:	03 ff fa 36 	l.j 2d98 <_vfprintf_r+0x768>
    44c4:	d4 01 20 2c 	l.sw 44(r1),r4
    44c8:	bd 54 00 65 	l.sfgtsi r20,101
    44cc:	0c 00 00 f8 	l.bnf 48ac <_vfprintf_r+0x227c>
    44d0:	bc 14 00 66 	l.sfeqi r20,102
    44d4:	10 00 00 78 	l.bf 46b4 <_vfprintf_r+0x2084>
    44d8:	85 01 00 5c 	l.lwz r8,92(r1)
    44dc:	03 ff fe 81 	l.j 3ee0 <_vfprintf_r+0x18b0>
    44e0:	d4 01 40 40 	l.sw 64(r1),r8
    44e4:	9d 00 00 2d 	l.addi r8,r0,45
    44e8:	9c a0 00 2d 	l.addi r5,r0,45
    44ec:	03 ff fa bf 	l.j 2fe8 <_vfprintf_r+0x9b8>
    44f0:	d8 01 40 59 	l.sb 89(r1),r8
    44f4:	d4 01 20 2c 	l.sw 44(r1),r4
    44f8:	03 ff fa 28 	l.j 2d98 <_vfprintf_r+0x768>
    44fc:	a8 a3 00 00 	l.ori r5,r3,0x0
    4500:	85 c1 00 38 	l.lwz r14,56(r1)
    4504:	d8 01 20 59 	l.sb 89(r1),r4
    4508:	9c a0 00 2d 	l.addi r5,r0,45
    450c:	03 ff f9 36 	l.j 29e4 <_vfprintf_r+0x3b4>
    4510:	9c 40 00 00 	l.addi r2,r0,0
    4514:	9e 94 ff fe 	l.addi r20,r20,-2
    4518:	9c 43 ff ff 	l.addi r2,r3,-1
    451c:	d8 01 a0 64 	l.sb 100(r1),r20
    4520:	bd 62 00 00 	l.sfgesi r2,0
    4524:	0c 00 00 c0 	l.bnf 4824 <_vfprintf_r+0x21f4>
    4528:	d4 01 10 5c 	l.sw 92(r1),r2
    452c:	9c c0 00 2b 	l.addi r6,r0,43
    4530:	d8 01 30 65 	l.sb 101(r1),r6
    4534:	bd a2 00 09 	l.sflesi r2,9
    4538:	0c 00 00 6c 	l.bnf 46e8 <_vfprintf_r+0x20b8>
    453c:	9f c1 00 73 	l.addi r30,r1,115
    4540:	9c 42 00 30 	l.addi r2,r2,48
    4544:	9d 60 00 30 	l.addi r11,r0,48
    4548:	d8 01 10 67 	l.sb 103(r1),r2
    454c:	d8 01 58 66 	l.sb 102(r1),r11
    4550:	9c 41 00 68 	l.addi r2,r1,104
    4554:	84 61 00 14 	l.lwz r3,20(r1)
    4558:	84 e1 00 3c 	l.lwz r7,60(r1)
    455c:	e0 42 18 02 	l.sub r2,r2,r3
    4560:	bd 47 00 01 	l.sfgtsi r7,1
    4564:	e1 07 10 00 	l.add r8,r7,r2
    4568:	d4 01 10 54 	l.sw 84(r1),r2
    456c:	0c 00 00 bb 	l.bnf 4858 <_vfprintf_r+0x2228>
    4570:	d4 01 40 28 	l.sw 40(r1),r8
    4574:	84 c1 00 28 	l.lwz r6,40(r1)
    4578:	9c c6 00 01 	l.addi r6,r6,1
    457c:	d4 01 30 28 	l.sw 40(r1),r6
    4580:	bd 66 00 00 	l.sfgesi r6,0
    4584:	0c 00 00 b3 	l.bnf 4850 <_vfprintf_r+0x2220>
    4588:	a8 66 00 00 	l.ori r3,r6,0x0
    458c:	9c e0 00 00 	l.addi r7,r0,0
    4590:	03 ff fe 63 	l.j 3f1c <_vfprintf_r+0x18ec>
    4594:	d4 01 38 40 	l.sw 64(r1),r7
    4598:	d4 01 10 20 	l.sw 32(r1),r2
    459c:	d4 01 10 28 	l.sw 40(r1),r2
    45a0:	90 a1 00 59 	l.lbs r5,89(r1)
    45a4:	a8 4b 00 00 	l.ori r2,r11,0x0
    45a8:	d4 01 e0 2c 	l.sw 44(r1),r28
    45ac:	03 ff f9 0b 	l.j 29d8 <_vfprintf_r+0x3a8>
    45b0:	d4 01 58 40 	l.sw 64(r1),r11
    45b4:	9c a1 00 74 	l.addi r5,r1,116
    45b8:	a8 9a 00 00 	l.ori r4,r26,0x0
    45bc:	04 00 18 88 	l.jal a7dc <__sprint_r>
    45c0:	a8 76 00 00 	l.ori r3,r22,0x0
    45c4:	bc 2b 00 00 	l.sfnei r11,0
    45c8:	13 ff f8 ce 	l.bf 2900 <_vfprintf_r+0x2d0>
    45cc:	86 81 00 5c 	l.lwz r20,92(r1)
    45d0:	84 e1 00 7c 	l.lwz r7,124(r1)
    45d4:	84 41 00 78 	l.lwz r2,120(r1)
    45d8:	03 ff fe d0 	l.j 4118 <_vfprintf_r+0x1ae8>
    45dc:	9d 81 00 a8 	l.addi r12,r1,168
    45e0:	0c 00 00 a8 	l.bnf 4880 <_vfprintf_r+0x2250>
    45e4:	9c 40 00 01 	l.addi r2,r0,1
    45e8:	85 01 00 3c 	l.lwz r8,60(r1)
    45ec:	e0 42 40 00 	l.add r2,r2,r8
    45f0:	d4 01 10 28 	l.sw 40(r1),r2
    45f4:	bd 62 00 00 	l.sfgesi r2,0
    45f8:	0c 00 00 09 	l.bnf 461c <_vfprintf_r+0x1fec>
    45fc:	a8 62 00 00 	l.ori r3,r2,0x0
    4600:	03 ff fe 47 	l.j 3f1c <_vfprintf_r+0x18ec>
    4604:	9e 80 00 67 	l.addi r20,r0,103
    4608:	9c 42 00 01 	l.addi r2,r2,1
    460c:	d4 01 10 28 	l.sw 40(r1),r2
    4610:	bd 62 00 00 	l.sfgesi r2,0
    4614:	13 ff ff fb 	l.bf 4600 <_vfprintf_r+0x1fd0>
    4618:	a8 62 00 00 	l.ori r3,r2,0x0
    461c:	9c 60 00 00 	l.addi r3,r0,0
    4620:	03 ff fe 3f 	l.j 3f1c <_vfprintf_r+0x18ec>
    4624:	9e 80 00 67 	l.addi r20,r0,103
    4628:	9f 80 00 47 	l.addi r28,r0,71
    462c:	9c 40 00 01 	l.addi r2,r0,1
    4630:	84 c1 00 48 	l.lwz r6,72(r1)
    4634:	18 e0 80 00 	l.movhi r7,0x8000
    4638:	bc 1c 00 46 	l.sfeqi r28,70
    463c:	10 00 00 54 	l.bf 478c <_vfprintf_r+0x215c>
    4640:	e3 c6 38 00 	l.add r30,r6,r7
    4644:	9d 00 00 2d 	l.addi r8,r0,45
    4648:	d4 01 40 34 	l.sw 52(r1),r8
    464c:	bc 3c 00 45 	l.sfnei r28,69
    4650:	13 ff fd e2 	l.bf 3dd8 <_vfprintf_r+0x17a8>
    4654:	84 61 00 4c 	l.lwz r3,76(r1)
    4658:	9d a2 00 01 	l.addi r13,r2,1
    465c:	9d 61 00 6c 	l.addi r11,r1,108
    4660:	a8 a3 00 00 	l.ori r5,r3,0x0
    4664:	9c 61 00 60 	l.addi r3,r1,96
    4668:	a8 ed 00 00 	l.ori r7,r13,0x0
    466c:	d4 01 18 00 	l.sw 0(r1),r3
    4670:	a8 9e 00 00 	l.ori r4,r30,0x0
    4674:	d4 01 58 04 	l.sw 4(r1),r11
    4678:	9d 01 00 5c 	l.addi r8,r1,92
    467c:	9c c0 00 02 	l.addi r6,r0,2
    4680:	a8 76 00 00 	l.ori r3,r22,0x0
    4684:	d4 01 60 08 	l.sw 8(r1),r12
    4688:	04 00 02 c2 	l.jal 5190 <_dtoa_r>
    468c:	d4 01 68 0c 	l.sw 12(r1),r13
    4690:	85 a1 00 0c 	l.lwz r13,12(r1)
    4694:	ab 0b 00 00 	l.ori r24,r11,0x0
    4698:	85 81 00 08 	l.lwz r12,8(r1)
    469c:	03 ff fd e3 	l.j 3e28 <_vfprintf_r+0x17f8>
    46a0:	e0 f8 68 00 	l.add r7,r24,r13
    46a4:	03 ff ff 6a 	l.j 444c <_vfprintf_r+0x1e1c>
    46a8:	84 61 00 5c 	l.lwz r3,92(r1)
    46ac:	03 ff fd f9 	l.j 3e90 <_vfprintf_r+0x1860>
    46b0:	84 61 00 6c 	l.lwz r3,108(r1)
    46b4:	84 e1 00 5c 	l.lwz r7,92(r1)
    46b8:	bd a7 00 00 	l.sflesi r7,0
    46bc:	10 00 00 51 	l.bf 4800 <_vfprintf_r+0x21d0>
    46c0:	d4 01 38 40 	l.sw 64(r1),r7
    46c4:	bc 22 00 00 	l.sfnei r2,0
    46c8:	10 00 00 45 	l.bf 47dc <_vfprintf_r+0x21ac>
    46cc:	a5 ce 00 01 	l.andi r14,r14,0x1
    46d0:	bc 2e 00 00 	l.sfnei r14,0
    46d4:	10 00 00 43 	l.bf 47e0 <_vfprintf_r+0x21b0>
    46d8:	9c 42 00 01 	l.addi r2,r2,1
    46dc:	a8 67 00 00 	l.ori r3,r7,0x0
    46e0:	03 ff fe 0f 	l.j 3f1c <_vfprintf_r+0x18ec>
    46e4:	d4 01 38 28 	l.sw 40(r1),r7
    46e8:	d4 01 70 20 	l.sw 32(r1),r14
    46ec:	ab 9e 00 00 	l.ori r28,r30,0x0
    46f0:	a9 cc 00 00 	l.ori r14,r12,0x0
    46f4:	a8 62 00 00 	l.ori r3,r2,0x0
    46f8:	9c 80 00 0a 	l.addi r4,r0,10
    46fc:	04 00 27 bd 	l.jal e5f0 <__modsi3>
    4700:	9f 9c ff ff 	l.addi r28,r28,-1
    4704:	9d 6b 00 30 	l.addi r11,r11,48
    4708:	a8 62 00 00 	l.ori r3,r2,0x0
    470c:	9c 80 00 0a 	l.addi r4,r0,10
    4710:	04 00 27 97 	l.jal e56c <__divsi3>
    4714:	d8 1c 58 00 	l.sb 0(r28),r11
    4718:	bd 4b 00 09 	l.sfgtsi r11,9
    471c:	13 ff ff f6 	l.bf 46f4 <_vfprintf_r+0x20c4>
    4720:	a8 4b 00 00 	l.ori r2,r11,0x0
    4724:	9c 4b 00 30 	l.addi r2,r11,48
    4728:	9c 7c ff ff 	l.addi r3,r28,-1
    472c:	b8 42 00 18 	l.slli r2,r2,0x18
    4730:	e4 63 f0 00 	l.sfgeu r3,r30
    4734:	a9 8e 00 00 	l.ori r12,r14,0x0
    4738:	b8 42 00 98 	l.srai r2,r2,0x18
    473c:	85 c1 00 20 	l.lwz r14,32(r1)
    4740:	10 00 00 6c 	l.bf 48f0 <_vfprintf_r+0x22c0>
    4744:	db fc 17 ff 	l.sb -1(r28),r2
    4748:	00 00 00 03 	l.j 4754 <_vfprintf_r+0x2124>
    474c:	9c 81 00 66 	l.addi r4,r1,102
    4750:	90 43 00 00 	l.lbs r2,0(r3)
    4754:	9c 63 00 01 	l.addi r3,r3,1
    4758:	d8 04 10 00 	l.sb 0(r4),r2
    475c:	e4 23 f0 00 	l.sfne r3,r30
    4760:	13 ff ff fc 	l.bf 4750 <_vfprintf_r+0x2120>
    4764:	9c 84 00 01 	l.addi r4,r4,1
    4768:	84 e1 00 18 	l.lwz r7,24(r1)
    476c:	9d 01 00 66 	l.addi r8,r1,102
    4770:	e0 47 e0 02 	l.sub r2,r7,r28
    4774:	03 ff ff 78 	l.j 4554 <_vfprintf_r+0x1f24>
    4778:	e0 48 10 00 	l.add r2,r8,r2
    477c:	9d 00 00 00 	l.addi r8,r0,0
    4780:	87 c1 00 48 	l.lwz r30,72(r1)
    4784:	03 ff ff b2 	l.j 464c <_vfprintf_r+0x201c>
    4788:	d4 01 40 34 	l.sw 52(r1),r8
    478c:	84 61 00 4c 	l.lwz r3,76(r1)
    4790:	9d 61 00 6c 	l.addi r11,r1,108
    4794:	a8 a3 00 00 	l.ori r5,r3,0x0
    4798:	9c 61 00 60 	l.addi r3,r1,96
    479c:	d4 01 58 04 	l.sw 4(r1),r11
    47a0:	d4 01 18 00 	l.sw 0(r1),r3
    47a4:	9d 60 00 2d 	l.addi r11,r0,45
    47a8:	a8 9e 00 00 	l.ori r4,r30,0x0
    47ac:	9d 01 00 5c 	l.addi r8,r1,92
    47b0:	a8 e2 00 00 	l.ori r7,r2,0x0
    47b4:	9c c0 00 03 	l.addi r6,r0,3
    47b8:	a8 76 00 00 	l.ori r3,r22,0x0
    47bc:	d4 01 60 08 	l.sw 8(r1),r12
    47c0:	04 00 02 74 	l.jal 5190 <_dtoa_r>
    47c4:	d4 01 58 34 	l.sw 52(r1),r11
    47c8:	85 81 00 08 	l.lwz r12,8(r1)
    47cc:	03 ff ff 04 	l.j 43dc <_vfprintf_r+0x1dac>
    47d0:	ab 0b 00 00 	l.ori r24,r11,0x0
    47d4:	03 ff ff 34 	l.j 44a4 <_vfprintf_r+0x1e74>
    47d8:	9c 40 00 00 	l.addi r2,r0,0
    47dc:	9c 42 00 01 	l.addi r2,r2,1
    47e0:	85 01 00 40 	l.lwz r8,64(r1)
    47e4:	e0 48 10 00 	l.add r2,r8,r2
    47e8:	d4 01 10 28 	l.sw 40(r1),r2
    47ec:	bd 62 00 00 	l.sfgesi r2,0
    47f0:	13 ff fd cb 	l.bf 3f1c <_vfprintf_r+0x18ec>
    47f4:	a8 62 00 00 	l.ori r3,r2,0x0
    47f8:	03 ff fd c9 	l.j 3f1c <_vfprintf_r+0x18ec>
    47fc:	9c 60 00 00 	l.addi r3,r0,0
    4800:	bc 22 00 00 	l.sfnei r2,0
    4804:	10 00 00 0c 	l.bf 4834 <_vfprintf_r+0x2204>
    4808:	a5 ce 00 01 	l.andi r14,r14,0x1
    480c:	bc 0e 00 00 	l.sfeqi r14,0
    4810:	0c 00 00 0a 	l.bnf 4838 <_vfprintf_r+0x2208>
    4814:	9c 42 00 02 	l.addi r2,r2,2
    4818:	9c 60 00 01 	l.addi r3,r0,1
    481c:	03 ff fd c0 	l.j 3f1c <_vfprintf_r+0x18ec>
    4820:	d4 01 18 28 	l.sw 40(r1),r3
    4824:	9c a0 00 2d 	l.addi r5,r0,45
    4828:	e0 40 10 02 	l.sub r2,r0,r2
    482c:	03 ff ff 42 	l.j 4534 <_vfprintf_r+0x1f04>
    4830:	d8 01 28 65 	l.sb 101(r1),r5
    4834:	9c 42 00 02 	l.addi r2,r2,2
    4838:	d4 01 10 28 	l.sw 40(r1),r2
    483c:	bd 62 00 00 	l.sfgesi r2,0
    4840:	13 ff fd b7 	l.bf 3f1c <_vfprintf_r+0x18ec>
    4844:	a8 62 00 00 	l.ori r3,r2,0x0
    4848:	03 ff fd b5 	l.j 3f1c <_vfprintf_r+0x18ec>
    484c:	9c 60 00 00 	l.addi r3,r0,0
    4850:	03 ff ff 4f 	l.j 458c <_vfprintf_r+0x1f5c>
    4854:	9c 60 00 00 	l.addi r3,r0,0
    4858:	a5 ce 00 01 	l.andi r14,r14,0x1
    485c:	bc 2e 00 00 	l.sfnei r14,0
    4860:	13 ff ff 46 	l.bf 4578 <_vfprintf_r+0x1f48>
    4864:	84 c1 00 28 	l.lwz r6,40(r1)
    4868:	bd 68 00 00 	l.sfgesi r8,0
    486c:	0c 00 00 2c 	l.bnf 491c <_vfprintf_r+0x22ec>
    4870:	a8 68 00 00 	l.ori r3,r8,0x0
    4874:	9c 40 00 00 	l.addi r2,r0,0
    4878:	03 ff fd a9 	l.j 3f1c <_vfprintf_r+0x18ec>
    487c:	d4 01 10 40 	l.sw 64(r1),r2
    4880:	9c 40 00 02 	l.addi r2,r0,2
    4884:	03 ff ff 59 	l.j 45e8 <_vfprintf_r+0x1fb8>
    4888:	e0 42 38 02 	l.sub r2,r2,r7
    488c:	85 61 00 2c 	l.lwz r11,44(r1)
    4890:	84 4b 00 00 	l.lwz r2,0(r11)
    4894:	9c 6b 00 04 	l.addi r3,r11,4
    4898:	bd 82 00 00 	l.sfltsi r2,0
    489c:	0f ff f7 dd 	l.bnf 2810 <_vfprintf_r+0x1e0>
    48a0:	d4 01 18 2c 	l.sw 44(r1),r3
    48a4:	03 ff f7 db 	l.j 2810 <_vfprintf_r+0x1e0>
    48a8:	9c 40 ff ff 	l.addi r2,r0,-1
    48ac:	03 ff ff 1b 	l.j 4518 <_vfprintf_r+0x1ee8>
    48b0:	84 61 00 5c 	l.lwz r3,92(r1)
    48b4:	03 ff f8 8e 	l.j 2aec <_vfprintf_r+0x4bc>
    48b8:	d8 01 38 59 	l.sb 89(r1),r7
    48bc:	03 ff fd 95 	l.j 3f10 <_vfprintf_r+0x18e0>
    48c0:	a8 6e 00 00 	l.ori r3,r14,0x0
    48c4:	03 ff fa 0a 	l.j 30ec <_vfprintf_r+0xabc>
    48c8:	d8 01 38 59 	l.sb 89(r1),r7
    48cc:	03 ff f9 db 	l.j 3038 <_vfprintf_r+0xa08>
    48d0:	d8 01 38 59 	l.sb 89(r1),r7
    48d4:	03 ff f8 f3 	l.j 2ca0 <_vfprintf_r+0x670>
    48d8:	d8 01 38 59 	l.sb 89(r1),r7
    48dc:	03 ff f9 3d 	l.j 2dd0 <_vfprintf_r+0x7a0>
    48e0:	d8 01 38 59 	l.sb 89(r1),r7
    48e4:	d8 01 38 59 	l.sb 89(r1),r7
    48e8:	03 ff f9 11 	l.j 2d2c <_vfprintf_r+0x6fc>
    48ec:	a9 ce 00 10 	l.ori r14,r14,0x10
    48f0:	03 ff ff 19 	l.j 4554 <_vfprintf_r+0x1f24>
    48f4:	9c 41 00 66 	l.addi r2,r1,102
    48f8:	a9 a2 00 00 	l.ori r13,r2,0x0
    48fc:	03 ff fd 4b 	l.j 3e28 <_vfprintf_r+0x17f8>
    4900:	e0 f8 68 00 	l.add r7,r24,r13
    4904:	03 ff f9 de 	l.j 307c <_vfprintf_r+0xa4c>
    4908:	d8 01 38 59 	l.sb 89(r1),r7
    490c:	03 ff f9 71 	l.j 2ed0 <_vfprintf_r+0x8a0>
    4910:	d8 01 38 59 	l.sb 89(r1),r7
    4914:	03 ff f9 8d 	l.j 2f48 <_vfprintf_r+0x918>
    4918:	d8 01 38 59 	l.sb 89(r1),r7
    491c:	03 ff ff d6 	l.j 4874 <_vfprintf_r+0x2244>
    4920:	a8 6e 00 00 	l.ori r3,r14,0x0

00004924 <vfprintf>:
    4924:	d7 e1 4f fc 	l.sw -4(r1),r9
    4928:	d7 e1 0f f8 	l.sw -8(r1),r1
    492c:	9c 21 ff ec 	l.addi r1,r1,-20
    4930:	d4 01 18 08 	l.sw 8(r1),r3
    4934:	d4 01 20 04 	l.sw 4(r1),r4
    4938:	04 00 0c c4 	l.jal 7c48 <__getreent>
    493c:	d4 01 28 00 	l.sw 0(r1),r5
    4940:	84 a1 00 00 	l.lwz r5,0(r1)
    4944:	84 81 00 04 	l.lwz r4,4(r1)
    4948:	84 61 00 08 	l.lwz r3,8(r1)
    494c:	a8 c5 00 00 	l.ori r6,r5,0x0
    4950:	a8 a4 00 00 	l.ori r5,r4,0x0
    4954:	a8 83 00 00 	l.ori r4,r3,0x0
    4958:	07 ff f7 36 	l.jal 2630 <_vfprintf_r>
    495c:	a8 6b 00 00 	l.ori r3,r11,0x0
    4960:	9c 21 00 14 	l.addi r1,r1,20
    4964:	85 21 ff fc 	l.lwz r9,-4(r1)
    4968:	44 00 48 00 	l.jr r9
    496c:	84 21 ff f8 	l.lwz r1,-8(r1)

00004970 <__sbprintf>:
    4970:	94 e4 00 0c 	l.lhz r7,12(r4)
    4974:	d7 e1 17 f0 	l.sw -16(r1),r2
    4978:	d7 e1 77 f4 	l.sw -12(r1),r14
    497c:	a8 44 00 00 	l.ori r2,r4,0x0
    4980:	85 c4 00 64 	l.lwz r14,100(r4)
    4984:	9c 80 ff fd 	l.addi r4,r0,-3
    4988:	d7 e1 97 f8 	l.sw -8(r1),r18
    498c:	e0 e7 20 03 	l.and r7,r7,r4
    4990:	d7 e1 4f fc 	l.sw -4(r1),r9
    4994:	d7 e1 0f ec 	l.sw -20(r1),r1
    4998:	9c 21 fb 84 	l.addi r1,r1,-1148
    499c:	9d 00 04 00 	l.addi r8,r0,1024
    49a0:	dc 01 38 0c 	l.sh 12(r1),r7
    49a4:	94 e2 00 0e 	l.lhz r7,14(r2)
    49a8:	9d 61 00 68 	l.addi r11,r1,104
    49ac:	85 a2 00 1c 	l.lwz r13,28(r2)
    49b0:	85 82 00 24 	l.lwz r12,36(r2)
    49b4:	dc 01 38 0e 	l.sh 14(r1),r7
    49b8:	a8 81 00 00 	l.ori r4,r1,0x0
    49bc:	9c e0 00 00 	l.addi r7,r0,0
    49c0:	d4 01 70 64 	l.sw 100(r1),r14
    49c4:	aa 43 00 00 	l.ori r18,r3,0x0
    49c8:	d4 01 68 1c 	l.sw 28(r1),r13
    49cc:	d4 01 60 24 	l.sw 36(r1),r12
    49d0:	d4 01 58 00 	l.sw 0(r1),r11
    49d4:	d4 01 58 10 	l.sw 16(r1),r11
    49d8:	d4 01 40 08 	l.sw 8(r1),r8
    49dc:	d4 01 40 14 	l.sw 20(r1),r8
    49e0:	07 ff f7 14 	l.jal 2630 <_vfprintf_r>
    49e4:	d4 01 38 18 	l.sw 24(r1),r7
    49e8:	bd 8b 00 00 	l.sfltsi r11,0
    49ec:	10 00 00 08 	l.bf 4a0c <__sbprintf+0x9c>
    49f0:	a9 cb 00 00 	l.ori r14,r11,0x0
    49f4:	a8 81 00 00 	l.ori r4,r1,0x0
    49f8:	04 00 09 9a 	l.jal 7060 <_fflush_r>
    49fc:	a8 72 00 00 	l.ori r3,r18,0x0
    4a00:	bc 0b 00 00 	l.sfeqi r11,0
    4a04:	0c 00 00 12 	l.bnf 4a4c <__sbprintf+0xdc>
    4a08:	15 00 00 00 	l.nop 0x0
    4a0c:	94 61 00 0c 	l.lhz r3,12(r1)
    4a10:	a4 63 00 40 	l.andi r3,r3,0x40
    4a14:	bc 03 00 00 	l.sfeqi r3,0
    4a18:	10 00 00 05 	l.bf 4a2c <__sbprintf+0xbc>
    4a1c:	15 00 00 00 	l.nop 0x0
    4a20:	94 62 00 0c 	l.lhz r3,12(r2)
    4a24:	a8 63 00 40 	l.ori r3,r3,0x40
    4a28:	dc 02 18 0c 	l.sh 12(r2),r3
    4a2c:	9c 21 04 7c 	l.addi r1,r1,1148
    4a30:	a9 6e 00 00 	l.ori r11,r14,0x0
    4a34:	85 21 ff fc 	l.lwz r9,-4(r1)
    4a38:	84 21 ff ec 	l.lwz r1,-20(r1)
    4a3c:	84 41 ff f0 	l.lwz r2,-16(r1)
    4a40:	85 c1 ff f4 	l.lwz r14,-12(r1)
    4a44:	44 00 48 00 	l.jr r9
    4a48:	86 41 ff f8 	l.lwz r18,-8(r1)
    4a4c:	03 ff ff f0 	l.j 4a0c <__sbprintf+0x9c>
    4a50:	9d c0 ff ff 	l.addi r14,r0,-1

00004a54 <__swsetup_r>:
    4a54:	d7 e1 17 f4 	l.sw -12(r1),r2
    4a58:	d7 e1 77 f8 	l.sw -8(r1),r14
    4a5c:	d7 e1 4f fc 	l.sw -4(r1),r9
    4a60:	d7 e1 0f f0 	l.sw -16(r1),r1
    4a64:	9c 21 ff f0 	l.addi r1,r1,-16
    4a68:	a9 c3 00 00 	l.ori r14,r3,0x0
    4a6c:	04 00 0c 77 	l.jal 7c48 <__getreent>
    4a70:	a8 44 00 00 	l.ori r2,r4,0x0
    4a74:	bc 0b 00 00 	l.sfeqi r11,0
    4a78:	10 00 00 06 	l.bf 4a90 <__swsetup_r+0x3c>
    4a7c:	15 00 00 00 	l.nop 0x0
    4a80:	84 6b 00 38 	l.lwz r3,56(r11)
    4a84:	bc 23 00 00 	l.sfnei r3,0
    4a88:	0c 00 00 44 	l.bnf 4b98 <__swsetup_r+0x144>
    4a8c:	15 00 00 00 	l.nop 0x0
    4a90:	98 a2 00 0c 	l.lhs r5,12(r2)
    4a94:	a4 65 ff ff 	l.andi r3,r5,0xffff
    4a98:	a4 83 00 08 	l.andi r4,r3,0x8
    4a9c:	bc 04 00 00 	l.sfeqi r4,0
    4aa0:	10 00 00 18 	l.bf 4b00 <__swsetup_r+0xac>
    4aa4:	a4 83 00 10 	l.andi r4,r3,0x10
    4aa8:	84 c2 00 10 	l.lwz r6,16(r2)
    4aac:	bc 26 00 00 	l.sfnei r6,0
    4ab0:	0c 00 00 21 	l.bnf 4b34 <__swsetup_r+0xe0>
    4ab4:	a4 83 02 80 	l.andi r4,r3,0x280
    4ab8:	a4 83 00 01 	l.andi r4,r3,0x1
    4abc:	bc 04 00 00 	l.sfeqi r4,0
    4ac0:	10 00 00 26 	l.bf 4b58 <__swsetup_r+0x104>
    4ac4:	a4 63 00 02 	l.andi r3,r3,0x2
    4ac8:	84 62 00 14 	l.lwz r3,20(r2)
    4acc:	9c 80 00 00 	l.addi r4,r0,0
    4ad0:	e0 60 18 02 	l.sub r3,r0,r3
    4ad4:	d4 02 20 08 	l.sw 8(r2),r4
    4ad8:	d4 02 18 18 	l.sw 24(r2),r3
    4adc:	bc 26 00 00 	l.sfnei r6,0
    4ae0:	0c 00 00 26 	l.bnf 4b78 <__swsetup_r+0x124>
    4ae4:	9d 60 00 00 	l.addi r11,r0,0
    4ae8:	9c 21 00 10 	l.addi r1,r1,16
    4aec:	85 21 ff fc 	l.lwz r9,-4(r1)
    4af0:	84 21 ff f0 	l.lwz r1,-16(r1)
    4af4:	84 41 ff f4 	l.lwz r2,-12(r1)
    4af8:	44 00 48 00 	l.jr r9
    4afc:	85 c1 ff f8 	l.lwz r14,-8(r1)
    4b00:	bc 24 00 00 	l.sfnei r4,0
    4b04:	0c 00 00 3d 	l.bnf 4bf8 <__swsetup_r+0x1a4>
    4b08:	a4 63 00 04 	l.andi r3,r3,0x4
    4b0c:	bc 23 00 00 	l.sfnei r3,0
    4b10:	10 00 00 26 	l.bf 4ba8 <__swsetup_r+0x154>
    4b14:	15 00 00 00 	l.nop 0x0
    4b18:	84 c2 00 10 	l.lwz r6,16(r2)
    4b1c:	a8 65 00 08 	l.ori r3,r5,0x8
    4b20:	bc 26 00 00 	l.sfnei r6,0
    4b24:	dc 02 18 0c 	l.sh 12(r2),r3
    4b28:	13 ff ff e4 	l.bf 4ab8 <__swsetup_r+0x64>
    4b2c:	a4 63 ff ff 	l.andi r3,r3,0xffff
    4b30:	a4 83 02 80 	l.andi r4,r3,0x280
    4b34:	bc 04 02 00 	l.sfeqi r4,512
    4b38:	13 ff ff e1 	l.bf 4abc <__swsetup_r+0x68>
    4b3c:	a4 83 00 01 	l.andi r4,r3,0x1
    4b40:	a8 6e 00 00 	l.ori r3,r14,0x0
    4b44:	04 00 0c a4 	l.jal 7dd4 <__smakebuf_r>
    4b48:	a8 82 00 00 	l.ori r4,r2,0x0
    4b4c:	94 62 00 0c 	l.lhz r3,12(r2)
    4b50:	03 ff ff da 	l.j 4ab8 <__swsetup_r+0x64>
    4b54:	84 c2 00 10 	l.lwz r6,16(r2)
    4b58:	bc 23 00 00 	l.sfnei r3,0
    4b5c:	10 00 00 03 	l.bf 4b68 <__swsetup_r+0x114>
    4b60:	15 00 00 00 	l.nop 0x0
    4b64:	84 82 00 14 	l.lwz r4,20(r2)
    4b68:	d4 02 20 08 	l.sw 8(r2),r4
    4b6c:	bc 26 00 00 	l.sfnei r6,0
    4b70:	13 ff ff de 	l.bf 4ae8 <__swsetup_r+0x94>
    4b74:	9d 60 00 00 	l.addi r11,r0,0
    4b78:	98 62 00 0c 	l.lhs r3,12(r2)
    4b7c:	a4 83 00 80 	l.andi r4,r3,0x80
    4b80:	e4 04 58 00 	l.sfeq r4,r11
    4b84:	13 ff ff d9 	l.bf 4ae8 <__swsetup_r+0x94>
    4b88:	a8 63 00 40 	l.ori r3,r3,0x40
    4b8c:	9d 60 ff ff 	l.addi r11,r0,-1
    4b90:	03 ff ff d6 	l.j 4ae8 <__swsetup_r+0x94>
    4b94:	dc 02 18 0c 	l.sh 12(r2),r3
    4b98:	04 00 0a 61 	l.jal 751c <__sinit>
    4b9c:	a8 6b 00 00 	l.ori r3,r11,0x0
    4ba0:	03 ff ff bd 	l.j 4a94 <__swsetup_r+0x40>
    4ba4:	98 a2 00 0c 	l.lhs r5,12(r2)
    4ba8:	84 82 00 30 	l.lwz r4,48(r2)
    4bac:	bc 04 00 00 	l.sfeqi r4,0
    4bb0:	10 00 00 0b 	l.bf 4bdc <__swsetup_r+0x188>
    4bb4:	15 00 00 00 	l.nop 0x0
    4bb8:	9c 62 00 40 	l.addi r3,r2,64
    4bbc:	e4 04 18 00 	l.sfeq r4,r3
    4bc0:	10 00 00 05 	l.bf 4bd4 <__swsetup_r+0x180>
    4bc4:	15 00 00 00 	l.nop 0x0
    4bc8:	04 00 0a e0 	l.jal 7748 <_free_r>
    4bcc:	a8 6e 00 00 	l.ori r3,r14,0x0
    4bd0:	98 a2 00 0c 	l.lhs r5,12(r2)
    4bd4:	9c 60 00 00 	l.addi r3,r0,0
    4bd8:	d4 02 18 30 	l.sw 48(r2),r3
    4bdc:	84 c2 00 10 	l.lwz r6,16(r2)
    4be0:	9c 80 ff db 	l.addi r4,r0,-37
    4be4:	9c 60 00 00 	l.addi r3,r0,0
    4be8:	e0 a5 20 03 	l.and r5,r5,r4
    4bec:	d4 02 18 04 	l.sw 4(r2),r3
    4bf0:	03 ff ff cb 	l.j 4b1c <__swsetup_r+0xc8>
    4bf4:	d4 02 30 00 	l.sw 0(r2),r6
    4bf8:	9c 60 00 09 	l.addi r3,r0,9
    4bfc:	a8 a5 00 40 	l.ori r5,r5,0x40
    4c00:	d4 0e 18 00 	l.sw 0(r14),r3
    4c04:	dc 02 28 0c 	l.sh 12(r2),r5
    4c08:	03 ff ff b8 	l.j 4ae8 <__swsetup_r+0x94>
    4c0c:	9d 60 ff ff 	l.addi r11,r0,-1

00004c10 <__register_exitproc>:
    4c10:	d7 e1 17 f4 	l.sw -12(r1),r2
    4c14:	18 40 00 01 	l.movhi r2,0x1
    4c18:	d7 e1 77 f8 	l.sw -8(r1),r14
    4c1c:	a8 42 19 78 	l.ori r2,r2,0x1978
    4c20:	d7 e1 4f fc 	l.sw -4(r1),r9
    4c24:	84 42 00 00 	l.lwz r2,0(r2)
    4c28:	d7 e1 0f f0 	l.sw -16(r1),r1
    4c2c:	84 e2 01 48 	l.lwz r7,328(r2)
    4c30:	9c 21 ff e4 	l.addi r1,r1,-28
    4c34:	bc 27 00 00 	l.sfnei r7,0
    4c38:	0c 00 00 3d 	l.bnf 4d2c <__register_exitproc+0x11c>
    4c3c:	a9 c3 00 00 	l.ori r14,r3,0x0
    4c40:	84 67 00 04 	l.lwz r3,4(r7)
    4c44:	bd 43 00 1f 	l.sfgtsi r3,31
    4c48:	10 00 00 10 	l.bf 4c88 <__register_exitproc+0x78>
    4c4c:	bc 2e 00 00 	l.sfnei r14,0
    4c50:	10 00 00 28 	l.bf 4cf0 <__register_exitproc+0xe0>
    4c54:	9d 63 00 01 	l.addi r11,r3,1
    4c58:	9c 63 00 02 	l.addi r3,r3,2
    4c5c:	d4 07 58 04 	l.sw 4(r7),r11
    4c60:	b8 63 00 02 	l.slli r3,r3,0x2
    4c64:	9d 60 00 00 	l.addi r11,r0,0
    4c68:	e0 67 18 00 	l.add r3,r7,r3
    4c6c:	d4 03 20 00 	l.sw 0(r3),r4
    4c70:	9c 21 00 1c 	l.addi r1,r1,28
    4c74:	85 21 ff fc 	l.lwz r9,-4(r1)
    4c78:	84 21 ff f0 	l.lwz r1,-16(r1)
    4c7c:	84 41 ff f4 	l.lwz r2,-12(r1)
    4c80:	44 00 48 00 	l.jr r9
    4c84:	85 c1 ff f8 	l.lwz r14,-8(r1)
    4c88:	18 60 00 00 	l.movhi r3,0x0
    4c8c:	a8 63 00 00 	l.ori r3,r3,0x0
    4c90:	bc 23 00 00 	l.sfnei r3,0
    4c94:	0c 00 00 29 	l.bnf 4d38 <__register_exitproc+0x128>
    4c98:	9c 60 01 90 	l.addi r3,r0,400
    4c9c:	d4 01 20 08 	l.sw 8(r1),r4
    4ca0:	d4 01 28 04 	l.sw 4(r1),r5
    4ca4:	07 ff ec d7 	l.jal 0 <_or1k_reset-0x100>
    4ca8:	d4 01 30 00 	l.sw 0(r1),r6
    4cac:	bc 0b 00 00 	l.sfeqi r11,0
    4cb0:	a8 eb 00 00 	l.ori r7,r11,0x0
    4cb4:	84 81 00 08 	l.lwz r4,8(r1)
    4cb8:	84 a1 00 04 	l.lwz r5,4(r1)
    4cbc:	10 00 00 1f 	l.bf 4d38 <__register_exitproc+0x128>
    4cc0:	84 c1 00 00 	l.lwz r6,0(r1)
    4cc4:	84 62 01 48 	l.lwz r3,328(r2)
    4cc8:	9d 00 00 00 	l.addi r8,r0,0
    4ccc:	d4 0b 18 00 	l.sw 0(r11),r3
    4cd0:	d4 0b 40 04 	l.sw 4(r11),r8
    4cd4:	d4 02 59 48 	l.sw 328(r2),r11
    4cd8:	d4 0b 41 88 	l.sw 392(r11),r8
    4cdc:	d4 0b 41 8c 	l.sw 396(r11),r8
    4ce0:	bc 2e 00 00 	l.sfnei r14,0
    4ce4:	9d 60 00 01 	l.addi r11,r0,1
    4ce8:	0f ff ff dc 	l.bnf 4c58 <__register_exitproc+0x48>
    4cec:	a8 68 00 00 	l.ori r3,r8,0x0
    4cf0:	b9 03 00 02 	l.slli r8,r3,0x2
    4cf4:	9c 40 00 01 	l.addi r2,r0,1
    4cf8:	bc 2e 00 02 	l.sfnei r14,2
    4cfc:	e1 07 40 00 	l.add r8,r7,r8
    4d00:	e0 42 18 08 	l.sll r2,r2,r3
    4d04:	d4 08 28 88 	l.sw 136(r8),r5
    4d08:	84 a7 01 88 	l.lwz r5,392(r7)
    4d0c:	e0 a5 10 04 	l.or r5,r5,r2
    4d10:	d4 07 29 88 	l.sw 392(r7),r5
    4d14:	13 ff ff d1 	l.bf 4c58 <__register_exitproc+0x48>
    4d18:	d4 08 31 08 	l.sw 264(r8),r6
    4d1c:	84 a7 01 8c 	l.lwz r5,396(r7)
    4d20:	e0 45 10 04 	l.or r2,r5,r2
    4d24:	03 ff ff cd 	l.j 4c58 <__register_exitproc+0x48>
    4d28:	d4 07 11 8c 	l.sw 396(r7),r2
    4d2c:	9c e2 01 4c 	l.addi r7,r2,332
    4d30:	03 ff ff c4 	l.j 4c40 <__register_exitproc+0x30>
    4d34:	d4 02 39 48 	l.sw 328(r2),r7
    4d38:	03 ff ff ce 	l.j 4c70 <__register_exitproc+0x60>
    4d3c:	9d 60 ff ff 	l.addi r11,r0,-1

00004d40 <__call_exitprocs>:
    4d40:	d7 e1 17 d8 	l.sw -40(r1),r2
    4d44:	18 40 00 01 	l.movhi r2,0x1
    4d48:	d7 e1 97 e0 	l.sw -32(r1),r18
    4d4c:	a8 42 19 78 	l.ori r2,r2,0x1978
    4d50:	d7 e1 a7 e4 	l.sw -28(r1),r20
    4d54:	d7 e1 b7 e8 	l.sw -24(r1),r22
    4d58:	d7 e1 e7 f4 	l.sw -12(r1),r28
    4d5c:	84 42 00 00 	l.lwz r2,0(r2)
    4d60:	d7 e1 4f fc 	l.sw -4(r1),r9
    4d64:	d7 e1 0f d4 	l.sw -44(r1),r1
    4d68:	d7 e1 77 dc 	l.sw -36(r1),r14
    4d6c:	d7 e1 c7 ec 	l.sw -20(r1),r24
    4d70:	d7 e1 d7 f0 	l.sw -16(r1),r26
    4d74:	d7 e1 f7 f8 	l.sw -8(r1),r30
    4d78:	9c 21 ff cc 	l.addi r1,r1,-52
    4d7c:	1a c0 00 00 	l.movhi r22,0x0
    4d80:	d4 01 10 00 	l.sw 0(r1),r2
    4d84:	9c 42 01 48 	l.addi r2,r2,328
    4d88:	aa 83 00 00 	l.ori r20,r3,0x0
    4d8c:	ab 84 00 00 	l.ori r28,r4,0x0
    4d90:	d4 01 10 04 	l.sw 4(r1),r2
    4d94:	9e 40 00 01 	l.addi r18,r0,1
    4d98:	aa d6 00 00 	l.ori r22,r22,0x0
    4d9c:	84 41 00 00 	l.lwz r2,0(r1)
    4da0:	87 42 01 48 	l.lwz r26,328(r2)
    4da4:	bc 3a 00 00 	l.sfnei r26,0
    4da8:	0c 00 00 48 	l.bnf 4ec8 <__call_exitprocs+0x188>
    4dac:	87 01 00 04 	l.lwz r24,4(r1)
    4db0:	84 7a 00 04 	l.lwz r3,4(r26)
    4db4:	9c 43 ff ff 	l.addi r2,r3,-1
    4db8:	bd 62 00 00 	l.sfgesi r2,0
    4dbc:	0c 00 00 34 	l.bnf 4e8c <__call_exitprocs+0x14c>
    4dc0:	bc 16 00 00 	l.sfeqi r22,0
    4dc4:	9d c3 00 01 	l.addi r14,r3,1
    4dc8:	b9 ce 00 02 	l.slli r14,r14,0x2
    4dcc:	00 00 00 0a 	l.j 4df4 <__call_exitprocs+0xb4>
    4dd0:	e1 da 70 00 	l.add r14,r26,r14
    4dd4:	84 6e 01 00 	l.lwz r3,256(r14)
    4dd8:	e4 1c 18 00 	l.sfeq r28,r3
    4ddc:	10 00 00 09 	l.bf 4e00 <__call_exitprocs+0xc0>
    4de0:	15 00 00 00 	l.nop 0x0
    4de4:	9c 42 ff ff 	l.addi r2,r2,-1
    4de8:	bc 22 ff ff 	l.sfnei r2,-1
    4dec:	0c 00 00 27 	l.bnf 4e88 <__call_exitprocs+0x148>
    4df0:	9d ce ff fc 	l.addi r14,r14,-4
    4df4:	bc 1c 00 00 	l.sfeqi r28,0
    4df8:	0f ff ff f7 	l.bnf 4dd4 <__call_exitprocs+0x94>
    4dfc:	15 00 00 00 	l.nop 0x0
    4e00:	84 7a 00 04 	l.lwz r3,4(r26)
    4e04:	9c 63 ff ff 	l.addi r3,r3,-1
    4e08:	e4 23 10 00 	l.sfne r3,r2
    4e0c:	0c 00 00 40 	l.bnf 4f0c <__call_exitprocs+0x1cc>
    4e10:	84 ce 00 00 	l.lwz r6,0(r14)
    4e14:	9c 60 00 00 	l.addi r3,r0,0
    4e18:	d4 0e 18 00 	l.sw 0(r14),r3
    4e1c:	bc 06 00 00 	l.sfeqi r6,0
    4e20:	13 ff ff f1 	l.bf 4de4 <__call_exitprocs+0xa4>
    4e24:	e0 92 10 08 	l.sll r4,r18,r2
    4e28:	84 7a 01 88 	l.lwz r3,392(r26)
    4e2c:	e0 64 18 03 	l.and r3,r4,r3
    4e30:	bc 03 00 00 	l.sfeqi r3,0
    4e34:	10 00 00 32 	l.bf 4efc <__call_exitprocs+0x1bc>
    4e38:	87 da 00 04 	l.lwz r30,4(r26)
    4e3c:	84 7a 01 8c 	l.lwz r3,396(r26)
    4e40:	e0 84 18 03 	l.and r4,r4,r3
    4e44:	bc 24 00 00 	l.sfnei r4,0
    4e48:	10 00 00 33 	l.bf 4f14 <__call_exitprocs+0x1d4>
    4e4c:	15 00 00 00 	l.nop 0x0
    4e50:	84 8e 00 80 	l.lwz r4,128(r14)
    4e54:	48 00 30 00 	l.jalr r6
    4e58:	a8 74 00 00 	l.ori r3,r20,0x0
    4e5c:	84 7a 00 04 	l.lwz r3,4(r26)
    4e60:	e4 23 f0 00 	l.sfne r3,r30
    4e64:	13 ff ff ce 	l.bf 4d9c <__call_exitprocs+0x5c>
    4e68:	15 00 00 00 	l.nop 0x0
    4e6c:	84 78 00 00 	l.lwz r3,0(r24)
    4e70:	e4 23 d0 00 	l.sfne r3,r26
    4e74:	13 ff ff ca 	l.bf 4d9c <__call_exitprocs+0x5c>
    4e78:	9c 42 ff ff 	l.addi r2,r2,-1
    4e7c:	bc 22 ff ff 	l.sfnei r2,-1
    4e80:	13 ff ff dd 	l.bf 4df4 <__call_exitprocs+0xb4>
    4e84:	9d ce ff fc 	l.addi r14,r14,-4
    4e88:	bc 16 00 00 	l.sfeqi r22,0
    4e8c:	10 00 00 0f 	l.bf 4ec8 <__call_exitprocs+0x188>
    4e90:	15 00 00 00 	l.nop 0x0
    4e94:	84 5a 00 04 	l.lwz r2,4(r26)
    4e98:	bc 22 00 00 	l.sfnei r2,0
    4e9c:	10 00 00 22 	l.bf 4f24 <__call_exitprocs+0x1e4>
    4ea0:	84 5a 00 00 	l.lwz r2,0(r26)
    4ea4:	bc 02 00 00 	l.sfeqi r2,0
    4ea8:	10 00 00 1f 	l.bf 4f24 <__call_exitprocs+0x1e4>
    4eac:	a8 7a 00 00 	l.ori r3,r26,0x0
    4eb0:	07 ff ec 54 	l.jal 0 <_or1k_reset-0x100>
    4eb4:	d4 18 10 00 	l.sw 0(r24),r2
    4eb8:	87 58 00 00 	l.lwz r26,0(r24)
    4ebc:	bc 3a 00 00 	l.sfnei r26,0
    4ec0:	13 ff ff bc 	l.bf 4db0 <__call_exitprocs+0x70>
    4ec4:	15 00 00 00 	l.nop 0x0
    4ec8:	9c 21 00 34 	l.addi r1,r1,52
    4ecc:	85 21 ff fc 	l.lwz r9,-4(r1)
    4ed0:	84 21 ff d4 	l.lwz r1,-44(r1)
    4ed4:	84 41 ff d8 	l.lwz r2,-40(r1)
    4ed8:	85 c1 ff dc 	l.lwz r14,-36(r1)
    4edc:	86 41 ff e0 	l.lwz r18,-32(r1)
    4ee0:	86 81 ff e4 	l.lwz r20,-28(r1)
    4ee4:	86 c1 ff e8 	l.lwz r22,-24(r1)
    4ee8:	87 01 ff ec 	l.lwz r24,-20(r1)
    4eec:	87 41 ff f0 	l.lwz r26,-16(r1)
    4ef0:	87 81 ff f4 	l.lwz r28,-12(r1)
    4ef4:	44 00 48 00 	l.jr r9
    4ef8:	87 c1 ff f8 	l.lwz r30,-8(r1)
    4efc:	48 00 30 00 	l.jalr r6
    4f00:	15 00 00 00 	l.nop 0x0
    4f04:	03 ff ff d7 	l.j 4e60 <__call_exitprocs+0x120>
    4f08:	84 7a 00 04 	l.lwz r3,4(r26)
    4f0c:	03 ff ff c4 	l.j 4e1c <__call_exitprocs+0xdc>
    4f10:	d4 1a 10 04 	l.sw 4(r26),r2
    4f14:	48 00 30 00 	l.jalr r6
    4f18:	84 6e 00 80 	l.lwz r3,128(r14)
    4f1c:	03 ff ff d1 	l.j 4e60 <__call_exitprocs+0x120>
    4f20:	84 7a 00 04 	l.lwz r3,4(r26)
    4f24:	ab 1a 00 00 	l.ori r24,r26,0x0
    4f28:	03 ff ff e5 	l.j 4ebc <__call_exitprocs+0x17c>
    4f2c:	ab 42 00 00 	l.ori r26,r2,0x0

00004f30 <quorem>:
    4f30:	d7 e1 97 e0 	l.sw -32(r1),r18
    4f34:	d7 e1 d7 f0 	l.sw -16(r1),r26
    4f38:	86 44 00 10 	l.lwz r18,16(r4)
    4f3c:	ab 43 00 00 	l.ori r26,r3,0x0
    4f40:	84 63 00 10 	l.lwz r3,16(r3)
    4f44:	d7 e1 17 d8 	l.sw -40(r1),r2
    4f48:	d7 e1 f7 f8 	l.sw -8(r1),r30
    4f4c:	d7 e1 4f fc 	l.sw -4(r1),r9
    4f50:	d7 e1 0f d4 	l.sw -44(r1),r1
    4f54:	d7 e1 77 dc 	l.sw -36(r1),r14
    4f58:	d7 e1 a7 e4 	l.sw -28(r1),r20
    4f5c:	d7 e1 b7 e8 	l.sw -24(r1),r22
    4f60:	d7 e1 c7 ec 	l.sw -20(r1),r24
    4f64:	d7 e1 e7 f4 	l.sw -12(r1),r28
    4f68:	e5 52 18 00 	l.sfgts r18,r3
    4f6c:	9c 21 ff d4 	l.addi r1,r1,-44
    4f70:	ab c4 00 00 	l.ori r30,r4,0x0
    4f74:	10 00 00 79 	l.bf 5158 <quorem+0x228>
    4f78:	9c 40 00 00 	l.addi r2,r0,0
    4f7c:	9e 52 ff ff 	l.addi r18,r18,-1
    4f80:	9d c4 00 14 	l.addi r14,r4,20
    4f84:	bb 92 00 02 	l.slli r28,r18,0x2
    4f88:	9f 1a 00 14 	l.addi r24,r26,20
    4f8c:	e2 8e e0 00 	l.add r20,r14,r28
    4f90:	e3 98 e0 00 	l.add r28,r24,r28
    4f94:	84 94 00 00 	l.lwz r4,0(r20)
    4f98:	84 7c 00 00 	l.lwz r3,0(r28)
    4f9c:	04 00 25 35 	l.jal e470 <__udivsi3>
    4fa0:	9c 84 00 01 	l.addi r4,r4,1
    4fa4:	e4 0b 10 00 	l.sfeq r11,r2
    4fa8:	10 00 00 37 	l.bf 5084 <quorem+0x154>
    4fac:	aa cb 00 00 	l.ori r22,r11,0x0
    4fb0:	a9 62 00 00 	l.ori r11,r2,0x0
    4fb4:	a9 18 00 00 	l.ori r8,r24,0x0
    4fb8:	a8 ee 00 00 	l.ori r7,r14,0x0
    4fbc:	a8 82 00 00 	l.ori r4,r2,0x0
    4fc0:	84 c7 00 00 	l.lwz r6,0(r7)
    4fc4:	84 48 00 00 	l.lwz r2,0(r8)
    4fc8:	a4 a6 ff ff 	l.andi r5,r6,0xffff
    4fcc:	b8 c6 00 50 	l.srli r6,r6,0x10
    4fd0:	e0 a5 b3 06 	l.mul r5,r5,r22
    4fd4:	e0 c6 b3 06 	l.mul r6,r6,r22
    4fd8:	e0 a5 58 00 	l.add r5,r5,r11
    4fdc:	a4 62 ff ff 	l.andi r3,r2,0xffff
    4fe0:	b9 65 00 50 	l.srli r11,r5,0x10
    4fe4:	e0 83 20 00 	l.add r4,r3,r4
    4fe8:	a4 65 ff ff 	l.andi r3,r5,0xffff
    4fec:	e0 a6 58 00 	l.add r5,r6,r11
    4ff0:	e0 64 18 02 	l.sub r3,r4,r3
    4ff4:	b8 42 00 50 	l.srli r2,r2,0x10
    4ff8:	a4 c5 ff ff 	l.andi r6,r5,0xffff
    4ffc:	b8 83 00 90 	l.srai r4,r3,0x10
    5000:	e0 42 30 02 	l.sub r2,r2,r6
    5004:	a4 63 ff ff 	l.andi r3,r3,0xffff
    5008:	e0 42 20 00 	l.add r2,r2,r4
    500c:	9c e7 00 04 	l.addi r7,r7,4
    5010:	b8 82 00 10 	l.slli r4,r2,0x10
    5014:	e4 74 38 00 	l.sfgeu r20,r7
    5018:	b9 65 00 50 	l.srli r11,r5,0x10
    501c:	e0 64 18 04 	l.or r3,r4,r3
    5020:	9d 08 00 04 	l.addi r8,r8,4
    5024:	d7 e8 1f fc 	l.sw -4(r8),r3
    5028:	13 ff ff e6 	l.bf 4fc0 <quorem+0x90>
    502c:	b8 82 00 90 	l.srai r4,r2,0x10
    5030:	84 5c 00 00 	l.lwz r2,0(r28)
    5034:	bc 22 00 00 	l.sfnei r2,0
    5038:	10 00 00 13 	l.bf 5084 <quorem+0x154>
    503c:	9c 5c ff fc 	l.addi r2,r28,-4
    5040:	e4 78 10 00 	l.sfgeu r24,r2
    5044:	10 00 00 0f 	l.bf 5080 <quorem+0x150>
    5048:	15 00 00 00 	l.nop 0x0
    504c:	84 7c ff fc 	l.lwz r3,-4(r28)
    5050:	bc 23 00 00 	l.sfnei r3,0
    5054:	0c 00 00 08 	l.bnf 5074 <quorem+0x144>
    5058:	9c 42 ff fc 	l.addi r2,r2,-4
    505c:	00 00 00 0a 	l.j 5084 <quorem+0x154>
    5060:	d4 1a 90 10 	l.sw 16(r26),r18
    5064:	84 62 00 00 	l.lwz r3,0(r2)
    5068:	bc 03 00 00 	l.sfeqi r3,0
    506c:	0c 00 00 05 	l.bnf 5080 <quorem+0x150>
    5070:	9c 42 ff fc 	l.addi r2,r2,-4
    5074:	e4 78 10 00 	l.sfgeu r24,r2
    5078:	0f ff ff fb 	l.bnf 5064 <quorem+0x134>
    507c:	9e 52 ff ff 	l.addi r18,r18,-1
    5080:	d4 1a 90 10 	l.sw 16(r26),r18
    5084:	a8 9e 00 00 	l.ori r4,r30,0x0
    5088:	04 00 12 2c 	l.jal 9938 <__mcmp>
    508c:	a8 7a 00 00 	l.ori r3,r26,0x0
    5090:	bd 8b 00 00 	l.sfltsi r11,0
    5094:	10 00 00 30 	l.bf 5154 <quorem+0x224>
    5098:	a8 d8 00 00 	l.ori r6,r24,0x0
    509c:	9e d6 00 01 	l.addi r22,r22,1
    50a0:	9c 80 00 00 	l.addi r4,r0,0
    50a4:	84 a6 00 00 	l.lwz r5,0(r6)
    50a8:	84 4e 00 00 	l.lwz r2,0(r14)
    50ac:	a4 65 ff ff 	l.andi r3,r5,0xffff
    50b0:	a4 e2 ff ff 	l.andi r7,r2,0xffff
    50b4:	e0 83 20 00 	l.add r4,r3,r4
    50b8:	b8 42 00 50 	l.srli r2,r2,0x10
    50bc:	e0 64 38 02 	l.sub r3,r4,r7
    50c0:	b8 a5 00 50 	l.srli r5,r5,0x10
    50c4:	b8 83 00 90 	l.srai r4,r3,0x10
    50c8:	a4 63 ff ff 	l.andi r3,r3,0xffff
    50cc:	e0 a5 10 02 	l.sub r5,r5,r2
    50d0:	9d ce 00 04 	l.addi r14,r14,4
    50d4:	e0 a5 20 00 	l.add r5,r5,r4
    50d8:	9c c6 00 04 	l.addi r6,r6,4
    50dc:	b8 45 00 10 	l.slli r2,r5,0x10
    50e0:	e4 74 70 00 	l.sfgeu r20,r14
    50e4:	b8 85 00 90 	l.srai r4,r5,0x10
    50e8:	e0 62 18 04 	l.or r3,r2,r3
    50ec:	13 ff ff ee 	l.bf 50a4 <quorem+0x174>
    50f0:	d7 e6 1f fc 	l.sw -4(r6),r3
    50f4:	b8 72 00 02 	l.slli r3,r18,0x2
    50f8:	e0 78 18 00 	l.add r3,r24,r3
    50fc:	84 43 00 00 	l.lwz r2,0(r3)
    5100:	bc 22 00 00 	l.sfnei r2,0
    5104:	10 00 00 15 	l.bf 5158 <quorem+0x228>
    5108:	a8 56 00 00 	l.ori r2,r22,0x0
    510c:	9c 43 ff fc 	l.addi r2,r3,-4
    5110:	e4 78 10 00 	l.sfgeu r24,r2
    5114:	10 00 00 0f 	l.bf 5150 <quorem+0x220>
    5118:	15 00 00 00 	l.nop 0x0
    511c:	84 63 ff fc 	l.lwz r3,-4(r3)
    5120:	bc 23 00 00 	l.sfnei r3,0
    5124:	0c 00 00 08 	l.bnf 5144 <quorem+0x214>
    5128:	9c 42 ff fc 	l.addi r2,r2,-4
    512c:	00 00 00 0a 	l.j 5154 <quorem+0x224>
    5130:	d4 1a 90 10 	l.sw 16(r26),r18
    5134:	84 62 00 00 	l.lwz r3,0(r2)
    5138:	bc 03 00 00 	l.sfeqi r3,0
    513c:	0c 00 00 05 	l.bnf 5150 <quorem+0x220>
    5140:	9c 42 ff fc 	l.addi r2,r2,-4
    5144:	e4 78 10 00 	l.sfgeu r24,r2
    5148:	0f ff ff fb 	l.bnf 5134 <quorem+0x204>
    514c:	9e 52 ff ff 	l.addi r18,r18,-1
    5150:	d4 1a 90 10 	l.sw 16(r26),r18
    5154:	a8 56 00 00 	l.ori r2,r22,0x0
    5158:	9c 21 00 2c 	l.addi r1,r1,44
    515c:	a9 62 00 00 	l.ori r11,r2,0x0
    5160:	85 21 ff fc 	l.lwz r9,-4(r1)
    5164:	84 21 ff d4 	l.lwz r1,-44(r1)
    5168:	84 41 ff d8 	l.lwz r2,-40(r1)
    516c:	85 c1 ff dc 	l.lwz r14,-36(r1)
    5170:	86 41 ff e0 	l.lwz r18,-32(r1)
    5174:	86 81 ff e4 	l.lwz r20,-28(r1)
    5178:	86 c1 ff e8 	l.lwz r22,-24(r1)
    517c:	87 01 ff ec 	l.lwz r24,-20(r1)
    5180:	87 41 ff f0 	l.lwz r26,-16(r1)
    5184:	87 81 ff f4 	l.lwz r28,-12(r1)
    5188:	44 00 48 00 	l.jr r9
    518c:	87 c1 ff f8 	l.lwz r30,-8(r1)

00005190 <_dtoa_r>:
    5190:	d7 e1 17 d8 	l.sw -40(r1),r2
    5194:	d7 e1 77 dc 	l.sw -36(r1),r14
    5198:	d7 e1 97 e0 	l.sw -32(r1),r18
    519c:	d7 e1 a7 e4 	l.sw -28(r1),r20
    51a0:	d7 e1 b7 e8 	l.sw -24(r1),r22
    51a4:	d7 e1 d7 f0 	l.sw -16(r1),r26
    51a8:	d7 e1 4f fc 	l.sw -4(r1),r9
    51ac:	d7 e1 0f d4 	l.sw -44(r1),r1
    51b0:	d7 e1 c7 ec 	l.sw -20(r1),r24
    51b4:	d7 e1 e7 f4 	l.sw -12(r1),r28
    51b8:	d7 e1 f7 f8 	l.sw -8(r1),r30
    51bc:	85 63 00 40 	l.lwz r11,64(r3)
    51c0:	9c 21 ff 58 	l.addi r1,r1,-168
    51c4:	bc 0b 00 00 	l.sfeqi r11,0
    51c8:	d4 01 30 08 	l.sw 8(r1),r6
    51cc:	d4 01 38 1c 	l.sw 28(r1),r7
    51d0:	d4 01 40 18 	l.sw 24(r1),r8
    51d4:	ab 43 00 00 	l.ori r26,r3,0x0
    51d8:	aa c4 00 00 	l.ori r22,r4,0x0
    51dc:	a8 45 00 00 	l.ori r2,r5,0x0
    51e0:	86 41 00 a8 	l.lwz r18,168(r1)
    51e4:	aa 84 00 00 	l.ori r20,r4,0x0
    51e8:	10 00 00 0b 	l.bf 5214 <_dtoa_r+0x84>
    51ec:	a9 c5 00 00 	l.ori r14,r5,0x0
    51f0:	84 a3 00 44 	l.lwz r5,68(r3)
    51f4:	9c 80 00 01 	l.addi r4,r0,1
    51f8:	d4 0b 28 04 	l.sw 4(r11),r5
    51fc:	e0 a4 28 08 	l.sll r5,r4,r5
    5200:	a8 8b 00 00 	l.ori r4,r11,0x0
    5204:	04 00 0f 5a 	l.jal 8f6c <_Bfree>
    5208:	d4 0b 28 08 	l.sw 8(r11),r5
    520c:	9c 60 00 00 	l.addi r3,r0,0
    5210:	d4 1a 18 40 	l.sw 64(r26),r3
    5214:	bd 76 00 00 	l.sfgesi r22,0
    5218:	0c 00 00 47 	l.bnf 5334 <_dtoa_r+0x1a4>
    521c:	ab 96 00 00 	l.ori r28,r22,0x0
    5220:	9c a0 00 00 	l.addi r5,r0,0
    5224:	d4 12 28 00 	l.sw 0(r18),r5
    5228:	18 c0 7f f0 	l.movhi r6,0x7ff0
    522c:	e0 7c 30 03 	l.and r3,r28,r6
    5230:	e4 23 30 00 	l.sfne r3,r6
    5234:	0c 00 00 25 	l.bnf 52c8 <_dtoa_r+0x138>
    5238:	1b 00 00 01 	l.movhi r24,0x1
    523c:	a9 94 00 00 	l.ori r12,r20,0x0
    5240:	a9 a2 00 00 	l.ori r13,r2,0x0
    5244:	ab 18 1b 58 	l.ori r24,r24,0x1b58
    5248:	e0 6c 00 04 	l.or r3,r12,r0
    524c:	e0 8d 00 04 	l.or r4,r13,r0
    5250:	84 b8 00 00 	l.lwz r5,0(r24)
    5254:	84 d8 00 04 	l.lwz r6,4(r24)
    5258:	04 00 2a c1 	l.jal fd5c <__eqdf2>
    525c:	15 00 00 00 	l.nop 0x0
    5260:	bc 0b 00 00 	l.sfeqi r11,0
    5264:	0c 00 00 3b 	l.bnf 5350 <_dtoa_r+0x1c0>
    5268:	84 61 00 18 	l.lwz r3,24(r1)
    526c:	84 41 00 ac 	l.lwz r2,172(r1)
    5270:	bc 02 00 00 	l.sfeqi r2,0
    5274:	9c 40 00 01 	l.addi r2,r0,1
    5278:	19 60 00 01 	l.movhi r11,0x1
    527c:	d4 03 10 00 	l.sw 0(r3),r2
    5280:	10 00 00 05 	l.bf 5294 <_dtoa_r+0x104>
    5284:	a9 6b 19 b7 	l.ori r11,r11,0x19b7
    5288:	e0 4b 10 00 	l.add r2,r11,r2
    528c:	84 81 00 ac 	l.lwz r4,172(r1)
    5290:	d4 04 10 00 	l.sw 0(r4),r2
    5294:	9c 21 00 a8 	l.addi r1,r1,168
    5298:	85 21 ff fc 	l.lwz r9,-4(r1)
    529c:	84 21 ff d4 	l.lwz r1,-44(r1)
    52a0:	84 41 ff d8 	l.lwz r2,-40(r1)
    52a4:	85 c1 ff dc 	l.lwz r14,-36(r1)
    52a8:	86 41 ff e0 	l.lwz r18,-32(r1)
    52ac:	86 81 ff e4 	l.lwz r20,-28(r1)
    52b0:	86 c1 ff e8 	l.lwz r22,-24(r1)
    52b4:	87 01 ff ec 	l.lwz r24,-20(r1)
    52b8:	87 41 ff f0 	l.lwz r26,-16(r1)
    52bc:	87 81 ff f4 	l.lwz r28,-12(r1)
    52c0:	44 00 48 00 	l.jr r9
    52c4:	87 c1 ff f8 	l.lwz r30,-8(r1)
    52c8:	bc 22 00 00 	l.sfnei r2,0
    52cc:	84 61 00 18 	l.lwz r3,24(r1)
    52d0:	9c 40 27 0f 	l.addi r2,r0,9999
    52d4:	19 60 00 01 	l.movhi r11,0x1
    52d8:	d4 03 10 00 	l.sw 0(r3),r2
    52dc:	10 00 00 0a 	l.bf 5304 <_dtoa_r+0x174>
    52e0:	a9 6b 1b 51 	l.ori r11,r11,0x1b51
    52e4:	18 80 00 0f 	l.movhi r4,0xf
    52e8:	a8 84 ff ff 	l.ori r4,r4,0xffff
    52ec:	e3 9c 20 03 	l.and r28,r28,r4
    52f0:	bc 3c 00 00 	l.sfnei r28,0
    52f4:	10 00 00 05 	l.bf 5308 <_dtoa_r+0x178>
    52f8:	84 41 00 ac 	l.lwz r2,172(r1)
    52fc:	19 60 00 01 	l.movhi r11,0x1
    5300:	a9 6b 1b 48 	l.ori r11,r11,0x1b48
    5304:	84 41 00 ac 	l.lwz r2,172(r1)
    5308:	bc 02 00 00 	l.sfeqi r2,0
    530c:	13 ff ff e2 	l.bf 5294 <_dtoa_r+0x104>
    5310:	15 00 00 00 	l.nop 0x0
    5314:	90 4b 00 03 	l.lbs r2,3(r11)
    5318:	bc 02 00 00 	l.sfeqi r2,0
    531c:	0c 00 00 03 	l.bnf 5328 <_dtoa_r+0x198>
    5320:	9c 4b 00 08 	l.addi r2,r11,8
    5324:	9c 4b 00 03 	l.addi r2,r11,3
    5328:	84 61 00 ac 	l.lwz r3,172(r1)
    532c:	03 ff ff da 	l.j 5294 <_dtoa_r+0x104>
    5330:	d4 03 10 00 	l.sw 0(r3),r2
    5334:	18 80 7f ff 	l.movhi r4,0x7fff
    5338:	9c 60 00 01 	l.addi r3,r0,1
    533c:	a8 84 ff ff 	l.ori r4,r4,0xffff
    5340:	d4 12 18 00 	l.sw 0(r18),r3
    5344:	e2 96 20 03 	l.and r20,r22,r4
    5348:	03 ff ff b8 	l.j 5228 <_dtoa_r+0x98>
    534c:	ab 94 00 00 	l.ori r28,r20,0x0
    5350:	a8 94 00 00 	l.ori r4,r20,0x0
    5354:	9c e1 00 74 	l.addi r7,r1,116
    5358:	a8 a2 00 00 	l.ori r5,r2,0x0
    535c:	9c c1 00 78 	l.addi r6,r1,120
    5360:	a8 7a 00 00 	l.ori r3,r26,0x0
    5364:	ba 5c 00 54 	l.srli r18,r28,0x14
    5368:	04 00 12 a6 	l.jal 9e00 <__d2b>
    536c:	d4 01 10 00 	l.sw 0(r1),r2
    5370:	bc 12 00 00 	l.sfeqi r18,0
    5374:	d4 01 58 3c 	l.sw 60(r1),r11
    5378:	0c 00 01 ad 	l.bnf 5a2c <_dtoa_r+0x89c>
    537c:	85 81 00 00 	l.lwz r12,0(r1)
    5380:	86 c1 00 74 	l.lwz r22,116(r1)
    5384:	86 41 00 78 	l.lwz r18,120(r1)
    5388:	e2 56 90 00 	l.add r18,r22,r18
    538c:	9c 92 04 32 	l.addi r4,r18,1074
    5390:	bd a4 00 20 	l.sflesi r4,32
    5394:	10 00 02 c7 	l.bf 5eb0 <_dtoa_r+0xd20>
    5398:	9c 60 00 20 	l.addi r3,r0,32
    539c:	9c 60 00 40 	l.addi r3,r0,64
    53a0:	9c b2 04 12 	l.addi r5,r18,1042
    53a4:	e0 63 20 02 	l.sub r3,r3,r4
    53a8:	e0 a2 28 48 	l.srl r5,r2,r5
    53ac:	e3 9c 18 08 	l.sll r28,r28,r3
    53b0:	e0 65 e0 04 	l.or r3,r5,r28
    53b4:	04 00 30 d4 	l.jal 11704 <__floatunsidf>
    53b8:	9e 52 ff ff 	l.addi r18,r18,-1
    53bc:	18 80 fe 10 	l.movhi r4,0xfe10
    53c0:	9c a0 00 01 	l.addi r5,r0,1
    53c4:	e1 6b 20 00 	l.add r11,r11,r4
    53c8:	d4 01 28 5c 	l.sw 92(r1),r5
    53cc:	18 60 00 01 	l.movhi r3,0x1
    53d0:	ab ac 00 00 	l.ori r29,r12,0x0
    53d4:	ab 8b 00 00 	l.ori r28,r11,0x0
    53d8:	a8 63 1b 60 	l.ori r3,r3,0x1b60
    53dc:	84 a3 00 00 	l.lwz r5,0(r3)
    53e0:	84 c3 00 04 	l.lwz r6,4(r3)
    53e4:	e0 7c 00 04 	l.or r3,r28,r0
    53e8:	e0 9d 00 04 	l.or r4,r29,r0
    53ec:	04 00 2d 7c 	l.jal 109dc <__subdf3>
    53f0:	15 00 00 00 	l.nop 0x0
    53f4:	18 a0 00 01 	l.movhi r5,0x1
    53f8:	e0 6b 00 04 	l.or r3,r11,r0
    53fc:	e0 8c 00 04 	l.or r4,r12,r0
    5400:	a8 a5 1b 68 	l.ori r5,r5,0x1b68
    5404:	84 c5 00 04 	l.lwz r6,4(r5)
    5408:	84 a5 00 00 	l.lwz r5,0(r5)
    540c:	04 00 2b 81 	l.jal 10210 <__muldf3>
    5410:	15 00 00 00 	l.nop 0x0
    5414:	18 a0 00 01 	l.movhi r5,0x1
    5418:	e0 6b 00 04 	l.or r3,r11,r0
    541c:	e0 8c 00 04 	l.or r4,r12,r0
    5420:	a8 a5 1b 70 	l.ori r5,r5,0x1b70
    5424:	84 c5 00 04 	l.lwz r6,4(r5)
    5428:	84 a5 00 00 	l.lwz r5,0(r5)
    542c:	04 00 24 88 	l.jal e64c <__adddf3>
    5430:	15 00 00 00 	l.nop 0x0
    5434:	a8 72 00 00 	l.ori r3,r18,0x0
    5438:	e3 8b 00 04 	l.or r28,r11,r0
    543c:	e3 ac 00 04 	l.or r29,r12,r0
    5440:	04 00 30 75 	l.jal 11614 <__floatsidf>
    5444:	d4 01 e8 04 	l.sw 4(r1),r29
    5448:	18 a0 00 01 	l.movhi r5,0x1
    544c:	e0 6b 00 04 	l.or r3,r11,r0
    5450:	e0 8c 00 04 	l.or r4,r12,r0
    5454:	a8 a5 1b 78 	l.ori r5,r5,0x1b78
    5458:	84 c5 00 04 	l.lwz r6,4(r5)
    545c:	84 a5 00 00 	l.lwz r5,0(r5)
    5460:	04 00 2b 6c 	l.jal 10210 <__muldf3>
    5464:	15 00 00 00 	l.nop 0x0
    5468:	87 a1 00 04 	l.lwz r29,4(r1)
    546c:	e0 ab 00 04 	l.or r5,r11,r0
    5470:	e0 cc 00 04 	l.or r6,r12,r0
    5474:	e0 7c 00 04 	l.or r3,r28,r0
    5478:	e0 9d 00 04 	l.or r4,r29,r0
    547c:	04 00 24 74 	l.jal e64c <__adddf3>
    5480:	15 00 00 00 	l.nop 0x0
    5484:	e0 6b 00 04 	l.or r3,r11,r0
    5488:	e0 8c 00 04 	l.or r4,r12,r0
    548c:	d4 01 58 10 	l.sw 16(r1),r11
    5490:	d4 01 60 14 	l.sw 20(r1),r12
    5494:	04 00 30 35 	l.jal 11568 <__fixdfsi>
    5498:	15 00 00 00 	l.nop 0x0
    549c:	84 b8 00 00 	l.lwz r5,0(r24)
    54a0:	84 d8 00 04 	l.lwz r6,4(r24)
    54a4:	84 61 00 10 	l.lwz r3,16(r1)
    54a8:	84 81 00 14 	l.lwz r4,20(r1)
    54ac:	04 00 2a e2 	l.jal 10034 <__ledf2>
    54b0:	ab cb 00 00 	l.ori r30,r11,0x0
    54b4:	bd 8b 00 00 	l.sfltsi r11,0
    54b8:	10 00 02 6f 	l.bf 5e74 <_dtoa_r+0xce4>
    54bc:	9c c0 00 01 	l.addi r6,r0,1
    54c0:	bc 5e 00 16 	l.sfgtui r30,22
    54c4:	10 00 00 14 	l.bf 5514 <_dtoa_r+0x384>
    54c8:	d4 01 30 44 	l.sw 68(r1),r6
    54cc:	18 a0 00 01 	l.movhi r5,0x1
    54d0:	b8 7e 00 03 	l.slli r3,r30,0x3
    54d4:	a8 a5 1c 1c 	l.ori r5,r5,0x1c1c
    54d8:	a8 e2 00 00 	l.ori r7,r2,0x0
    54dc:	e0 63 28 00 	l.add r3,r3,r5
    54e0:	a8 d4 00 00 	l.ori r6,r20,0x0
    54e4:	84 83 00 04 	l.lwz r4,4(r3)
    54e8:	84 63 00 00 	l.lwz r3,0(r3)
    54ec:	e0 a6 00 04 	l.or r5,r6,r0
    54f0:	e0 c7 00 04 	l.or r6,r7,r0
    54f4:	04 00 2a 5d 	l.jal fe68 <__gedf2>
    54f8:	15 00 00 00 	l.nop 0x0
    54fc:	bd 4b 00 00 	l.sfgtsi r11,0
    5500:	0c 00 02 6a 	l.bnf 5ea8 <_dtoa_r+0xd18>
    5504:	9c 60 00 00 	l.addi r3,r0,0
    5508:	9c c0 00 00 	l.addi r6,r0,0
    550c:	9f de ff ff 	l.addi r30,r30,-1
    5510:	d4 01 30 44 	l.sw 68(r1),r6
    5514:	e2 56 90 02 	l.sub r18,r22,r18
    5518:	9c 80 00 00 	l.addi r4,r0,0
    551c:	9e 52 ff ff 	l.addi r18,r18,-1
    5520:	d4 01 20 38 	l.sw 56(r1),r4
    5524:	e5 72 20 00 	l.sfges r18,r4
    5528:	0c 00 02 4f 	l.bnf 5e64 <_dtoa_r+0xcd4>
    552c:	d4 01 90 10 	l.sw 16(r1),r18
    5530:	bd 9e 00 00 	l.sfltsi r30,0
    5534:	10 00 02 44 	l.bf 5e44 <_dtoa_r+0xcb4>
    5538:	84 61 00 10 	l.lwz r3,16(r1)
    553c:	9c 80 00 00 	l.addi r4,r0,0
    5540:	e0 63 f0 00 	l.add r3,r3,r30
    5544:	d4 01 f0 4c 	l.sw 76(r1),r30
    5548:	d4 01 18 10 	l.sw 16(r1),r3
    554c:	d4 01 20 40 	l.sw 64(r1),r4
    5550:	84 81 00 08 	l.lwz r4,8(r1)
    5554:	bc 44 00 09 	l.sfgtui r4,9
    5558:	10 00 01 3f 	l.bf 5a54 <_dtoa_r+0x8c4>
    555c:	9c a0 ff ff 	l.addi r5,r0,-1
    5560:	bd a4 00 05 	l.sflesi r4,5
    5564:	10 00 00 06 	l.bf 557c <_dtoa_r+0x3ec>
    5568:	9c 60 00 01 	l.addi r3,r0,1
    556c:	9c 84 ff fc 	l.addi r4,r4,-4
    5570:	9c 60 00 00 	l.addi r3,r0,0
    5574:	d4 01 20 08 	l.sw 8(r1),r4
    5578:	84 81 00 08 	l.lwz r4,8(r1)
    557c:	bc 04 00 03 	l.sfeqi r4,3
    5580:	10 00 04 24 	l.bf 6610 <_dtoa_r+0x1480>
    5584:	bd 44 00 03 	l.sfgtsi r4,3
    5588:	0c 00 03 d4 	l.bnf 64d8 <_dtoa_r+0x1348>
    558c:	84 c1 00 08 	l.lwz r6,8(r1)
    5590:	bc 06 00 04 	l.sfeqi r6,4
    5594:	10 00 02 71 	l.bf 5f58 <_dtoa_r+0xdc8>
    5598:	9c 80 00 01 	l.addi r4,r0,1
    559c:	bc 06 00 05 	l.sfeqi r6,5
    55a0:	0c 00 03 d2 	l.bnf 64e8 <_dtoa_r+0x1358>
    55a4:	d4 01 20 48 	l.sw 72(r1),r4
    55a8:	84 a1 00 1c 	l.lwz r5,28(r1)
    55ac:	e0 be 28 00 	l.add r5,r30,r5
    55b0:	9c c5 00 01 	l.addi r6,r5,1
    55b4:	d4 01 28 50 	l.sw 80(r1),r5
    55b8:	bd 46 00 00 	l.sfgtsi r6,0
    55bc:	0c 00 05 19 	l.bnf 6a20 <_dtoa_r+0x1890>
    55c0:	d4 01 30 28 	l.sw 40(r1),r6
    55c4:	84 81 00 28 	l.lwz r4,40(r1)
    55c8:	9e 40 00 01 	l.addi r18,r0,1
    55cc:	bc a4 00 0e 	l.sfleui r4,14
    55d0:	10 00 00 03 	l.bf 55dc <_dtoa_r+0x44c>
    55d4:	a8 e4 00 00 	l.ori r7,r4,0x0
    55d8:	9e 40 00 00 	l.addi r18,r0,0
    55dc:	e2 43 90 03 	l.and r18,r3,r18
    55e0:	9c a0 00 00 	l.addi r5,r0,0
    55e4:	bc a7 00 17 	l.sfleui r7,23
    55e8:	d4 1a 28 44 	l.sw 68(r26),r5
    55ec:	10 00 00 0b 	l.bf 5618 <_dtoa_r+0x488>
    55f0:	a8 85 00 00 	l.ori r4,r5,0x0
    55f4:	9c a0 00 01 	l.addi r5,r0,1
    55f8:	9c 60 00 04 	l.addi r3,r0,4
    55fc:	e0 63 18 00 	l.add r3,r3,r3
    5600:	a8 85 00 00 	l.ori r4,r5,0x0
    5604:	9c c3 00 14 	l.addi r6,r3,20
    5608:	e4 a6 38 00 	l.sfleu r6,r7
    560c:	13 ff ff fc 	l.bf 55fc <_dtoa_r+0x46c>
    5610:	9c a5 00 01 	l.addi r5,r5,1
    5614:	d4 1a 20 44 	l.sw 68(r26),r4
    5618:	04 00 0e 26 	l.jal 8eb0 <_Balloc>
    561c:	a8 7a 00 00 	l.ori r3,r26,0x0
    5620:	bc 12 00 00 	l.sfeqi r18,0
    5624:	d4 01 58 34 	l.sw 52(r1),r11
    5628:	10 00 01 1a 	l.bf 5a90 <_dtoa_r+0x900>
    562c:	d4 1a 58 40 	l.sw 64(r26),r11
    5630:	bd be 00 00 	l.sflesi r30,0
    5634:	d4 01 a0 60 	l.sw 96(r1),r20
    5638:	10 00 03 cc 	l.bf 6568 <_dtoa_r+0x13d8>
    563c:	d4 01 10 64 	l.sw 100(r1),r2
    5640:	a4 7e 00 0f 	l.andi r3,r30,0xf
    5644:	ba 5e 00 84 	l.srai r18,r30,0x4
    5648:	18 c0 00 01 	l.movhi r6,0x1
    564c:	b8 63 00 03 	l.slli r3,r3,0x3
    5650:	a4 92 00 10 	l.andi r4,r18,0x10
    5654:	a8 c6 1c 1c 	l.ori r6,r6,0x1c1c
    5658:	bc 04 00 00 	l.sfeqi r4,0
    565c:	e0 63 30 00 	l.add r3,r3,r6
    5660:	86 c3 00 00 	l.lwz r22,0(r3)
    5664:	86 e3 00 04 	l.lwz r23,4(r3)
    5668:	10 00 03 97 	l.bf 64c4 <_dtoa_r+0x1334>
    566c:	a8 94 00 00 	l.ori r4,r20,0x0
    5670:	a9 a2 00 00 	l.ori r13,r2,0x0
    5674:	18 40 00 01 	l.movhi r2,0x1
    5678:	a9 94 00 00 	l.ori r12,r20,0x0
    567c:	a8 42 1b f4 	l.ori r2,r2,0x1bf4
    5680:	84 a2 00 20 	l.lwz r5,32(r2)
    5684:	84 c2 00 24 	l.lwz r6,36(r2)
    5688:	e0 6c 00 04 	l.or r3,r12,r0
    568c:	e0 8d 00 04 	l.or r4,r13,r0
    5690:	04 00 26 ba 	l.jal f178 <__divdf3>
    5694:	d4 01 b8 04 	l.sw 4(r1),r23
    5698:	a6 52 00 0f 	l.andi r18,r18,0xf
    569c:	9d c0 00 03 	l.addi r14,r0,3
    56a0:	86 e1 00 04 	l.lwz r23,4(r1)
    56a4:	d4 01 58 20 	l.sw 32(r1),r11
    56a8:	d4 01 60 24 	l.sw 36(r1),r12
    56ac:	bc 12 00 00 	l.sfeqi r18,0
    56b0:	10 00 00 13 	l.bf 56fc <_dtoa_r+0x56c>
    56b4:	15 00 00 00 	l.nop 0x0
    56b8:	1a 80 00 01 	l.movhi r20,0x1
    56bc:	aa 94 1b f4 	l.ori r20,r20,0x1bf4
    56c0:	a4 52 00 01 	l.andi r2,r18,0x1
    56c4:	e0 76 00 04 	l.or r3,r22,r0
    56c8:	e0 97 00 04 	l.or r4,r23,r0
    56cc:	bc 02 00 00 	l.sfeqi r2,0
    56d0:	10 00 00 08 	l.bf 56f0 <_dtoa_r+0x560>
    56d4:	ba 52 00 81 	l.srai r18,r18,0x1
    56d8:	84 b4 00 00 	l.lwz r5,0(r20)
    56dc:	84 d4 00 04 	l.lwz r6,4(r20)
    56e0:	04 00 2a cc 	l.jal 10210 <__muldf3>
    56e4:	9d ce 00 01 	l.addi r14,r14,1
    56e8:	e2 cb 00 04 	l.or r22,r11,r0
    56ec:	e2 ec 00 04 	l.or r23,r12,r0
    56f0:	bc 32 00 00 	l.sfnei r18,0
    56f4:	13 ff ff f3 	l.bf 56c0 <_dtoa_r+0x530>
    56f8:	9e 94 00 08 	l.addi r20,r20,8
    56fc:	84 61 00 20 	l.lwz r3,32(r1)
    5700:	84 81 00 24 	l.lwz r4,36(r1)
    5704:	e0 b6 00 04 	l.or r5,r22,r0
    5708:	e0 d7 00 04 	l.or r6,r23,r0
    570c:	04 00 26 9b 	l.jal f178 <__divdf3>
    5710:	15 00 00 00 	l.nop 0x0
    5714:	d4 01 58 20 	l.sw 32(r1),r11
    5718:	d4 01 60 24 	l.sw 36(r1),r12
    571c:	84 41 00 44 	l.lwz r2,68(r1)
    5720:	bc 02 00 00 	l.sfeqi r2,0
    5724:	10 00 00 0d 	l.bf 5758 <_dtoa_r+0x5c8>
    5728:	a8 6e 00 00 	l.ori r3,r14,0x0
    572c:	18 40 00 01 	l.movhi r2,0x1
    5730:	84 61 00 20 	l.lwz r3,32(r1)
    5734:	84 81 00 24 	l.lwz r4,36(r1)
    5738:	a8 42 1b 80 	l.ori r2,r2,0x1b80
    573c:	84 a2 00 00 	l.lwz r5,0(r2)
    5740:	84 c2 00 04 	l.lwz r6,4(r2)
    5744:	04 00 2a 3c 	l.jal 10034 <__ledf2>
    5748:	15 00 00 00 	l.nop 0x0
    574c:	bd 8b 00 00 	l.sfltsi r11,0
    5750:	10 00 04 c3 	l.bf 6a5c <_dtoa_r+0x18cc>
    5754:	a8 6e 00 00 	l.ori r3,r14,0x0
    5758:	04 00 2f af 	l.jal 11614 <__floatsidf>
    575c:	18 40 00 01 	l.movhi r2,0x1
    5760:	84 a1 00 20 	l.lwz r5,32(r1)
    5764:	84 c1 00 24 	l.lwz r6,36(r1)
    5768:	e0 6b 00 04 	l.or r3,r11,r0
    576c:	e0 8c 00 04 	l.or r4,r12,r0
    5770:	04 00 2a a8 	l.jal 10210 <__muldf3>
    5774:	a8 42 1b 90 	l.ori r2,r2,0x1b90
    5778:	84 a2 00 00 	l.lwz r5,0(r2)
    577c:	84 c2 00 04 	l.lwz r6,4(r2)
    5780:	e0 6b 00 04 	l.or r3,r11,r0
    5784:	e0 8c 00 04 	l.or r4,r12,r0
    5788:	04 00 23 b1 	l.jal e64c <__adddf3>
    578c:	15 00 00 00 	l.nop 0x0
    5790:	84 81 00 28 	l.lwz r4,40(r1)
    5794:	18 a0 fc c0 	l.movhi r5,0xfcc0
    5798:	bc 24 00 00 	l.sfnei r4,0
    579c:	a8 4c 00 00 	l.ori r2,r12,0x0
    57a0:	0c 00 02 b6 	l.bnf 6278 <_dtoa_r+0x10e8>
    57a4:	e1 cb 28 00 	l.add r14,r11,r5
    57a8:	d4 01 f0 68 	l.sw 104(r1),r30
    57ac:	85 01 00 28 	l.lwz r8,40(r1)
    57b0:	84 61 00 48 	l.lwz r3,72(r1)
    57b4:	bc 03 00 00 	l.sfeqi r3,0
    57b8:	10 00 03 99 	l.bf 661c <_dtoa_r+0x148c>
    57bc:	18 a0 00 01 	l.movhi r5,0x1
    57c0:	84 c1 00 34 	l.lwz r6,52(r1)
    57c4:	9c a8 ff ff 	l.addi r5,r8,-1
    57c8:	9f 86 00 01 	l.addi r28,r6,1
    57cc:	18 c0 00 01 	l.movhi r6,0x1
    57d0:	b8 a5 00 03 	l.slli r5,r5,0x3
    57d4:	a8 c6 1c 1c 	l.ori r6,r6,0x1c1c
    57d8:	18 60 00 01 	l.movhi r3,0x1
    57dc:	e0 a5 30 00 	l.add r5,r5,r6
    57e0:	a8 63 1b a0 	l.ori r3,r3,0x1ba0
    57e4:	84 c5 00 04 	l.lwz r6,4(r5)
    57e8:	84 a5 00 00 	l.lwz r5,0(r5)
    57ec:	84 83 00 04 	l.lwz r4,4(r3)
    57f0:	84 63 00 00 	l.lwz r3,0(r3)
    57f4:	04 00 26 61 	l.jal f178 <__divdf3>
    57f8:	d4 01 40 04 	l.sw 4(r1),r8
    57fc:	a8 e2 00 00 	l.ori r7,r2,0x0
    5800:	a8 ce 00 00 	l.ori r6,r14,0x0
    5804:	e0 6b 00 04 	l.or r3,r11,r0
    5808:	e0 8c 00 04 	l.or r4,r12,r0
    580c:	e0 a6 00 04 	l.or r5,r6,r0
    5810:	e0 c7 00 04 	l.or r6,r7,r0
    5814:	04 00 2c 72 	l.jal 109dc <__subdf3>
    5818:	15 00 00 00 	l.nop 0x0
    581c:	84 61 00 20 	l.lwz r3,32(r1)
    5820:	84 81 00 24 	l.lwz r4,36(r1)
    5824:	d4 01 58 2c 	l.sw 44(r1),r11
    5828:	d4 01 60 30 	l.sw 48(r1),r12
    582c:	04 00 2f 4f 	l.jal 11568 <__fixdfsi>
    5830:	15 00 00 00 	l.nop 0x0
    5834:	a8 6b 00 00 	l.ori r3,r11,0x0
    5838:	04 00 2f 77 	l.jal 11614 <__floatsidf>
    583c:	a8 4b 00 00 	l.ori r2,r11,0x0
    5840:	84 61 00 20 	l.lwz r3,32(r1)
    5844:	84 81 00 24 	l.lwz r4,36(r1)
    5848:	e0 ab 00 04 	l.or r5,r11,r0
    584c:	e0 cc 00 04 	l.or r6,r12,r0
    5850:	04 00 2c 63 	l.jal 109dc <__subdf3>
    5854:	15 00 00 00 	l.nop 0x0
    5858:	9c e2 00 30 	l.addi r7,r2,48
    585c:	84 41 00 34 	l.lwz r2,52(r1)
    5860:	b8 e7 00 18 	l.slli r7,r7,0x18
    5864:	d4 01 58 20 	l.sw 32(r1),r11
    5868:	d4 01 60 24 	l.sw 36(r1),r12
    586c:	e0 ab 00 04 	l.or r5,r11,r0
    5870:	e0 cc 00 04 	l.or r6,r12,r0
    5874:	b9 c7 00 98 	l.srai r14,r7,0x18
    5878:	84 61 00 2c 	l.lwz r3,44(r1)
    587c:	84 81 00 30 	l.lwz r4,48(r1)
    5880:	04 00 29 7a 	l.jal fe68 <__gedf2>
    5884:	d8 02 70 00 	l.sb 0(r2),r14
    5888:	bd 4b 00 00 	l.sfgtsi r11,0
    588c:	10 00 00 66 	l.bf 5a24 <_dtoa_r+0x894>
    5890:	1a c0 00 01 	l.movhi r22,0x1
    5894:	84 a1 00 20 	l.lwz r5,32(r1)
    5898:	84 c1 00 24 	l.lwz r6,36(r1)
    589c:	aa d6 1b 80 	l.ori r22,r22,0x1b80
    58a0:	84 76 00 00 	l.lwz r3,0(r22)
    58a4:	84 96 00 04 	l.lwz r4,4(r22)
    58a8:	04 00 2c 4d 	l.jal 109dc <__subdf3>
    58ac:	15 00 00 00 	l.nop 0x0
    58b0:	84 61 00 2c 	l.lwz r3,44(r1)
    58b4:	84 81 00 30 	l.lwz r4,48(r1)
    58b8:	e0 ab 00 04 	l.or r5,r11,r0
    58bc:	e0 cc 00 04 	l.or r6,r12,r0
    58c0:	04 00 29 6a 	l.jal fe68 <__gedf2>
    58c4:	15 00 00 00 	l.nop 0x0
    58c8:	bd 4b 00 00 	l.sfgtsi r11,0
    58cc:	10 00 04 c1 	l.bf 6bd0 <_dtoa_r+0x1a40>
    58d0:	85 01 00 04 	l.lwz r8,4(r1)
    58d4:	bd a8 00 01 	l.sflesi r8,1
    58d8:	10 00 03 21 	l.bf 655c <_dtoa_r+0x13cc>
    58dc:	18 40 00 01 	l.movhi r2,0x1
    58e0:	84 81 00 34 	l.lwz r4,52(r1)
    58e4:	a8 42 1b 88 	l.ori r2,r2,0x1b88
    58e8:	e1 04 40 00 	l.add r8,r4,r8
    58ec:	86 82 00 00 	l.lwz r20,0(r2)
    58f0:	84 42 00 04 	l.lwz r2,4(r2)
    58f4:	d4 01 f0 70 	l.sw 112(r1),r30
    58f8:	d4 01 d0 6c 	l.sw 108(r1),r26
    58fc:	aa 5c 00 00 	l.ori r18,r28,0x0
    5900:	d4 01 40 58 	l.sw 88(r1),r8
    5904:	d4 01 a0 54 	l.sw 84(r1),r20
    5908:	ab 54 00 00 	l.ori r26,r20,0x0
    590c:	00 00 00 13 	l.j 5958 <_dtoa_r+0x7c8>
    5910:	ab c2 00 00 	l.ori r30,r2,0x0
    5914:	84 76 00 00 	l.lwz r3,0(r22)
    5918:	84 96 00 04 	l.lwz r4,4(r22)
    591c:	04 00 2c 30 	l.jal 109dc <__subdf3>
    5920:	15 00 00 00 	l.nop 0x0
    5924:	84 a1 00 2c 	l.lwz r5,44(r1)
    5928:	84 c1 00 30 	l.lwz r6,48(r1)
    592c:	e0 6b 00 04 	l.or r3,r11,r0
    5930:	e0 8c 00 04 	l.or r4,r12,r0
    5934:	04 00 29 c0 	l.jal 10034 <__ledf2>
    5938:	15 00 00 00 	l.nop 0x0
    593c:	bd 8b 00 00 	l.sfltsi r11,0
    5940:	10 00 04 a3 	l.bf 6bcc <_dtoa_r+0x1a3c>
    5944:	15 00 00 00 	l.nop 0x0
    5948:	84 61 00 58 	l.lwz r3,88(r1)
    594c:	e4 1c 18 00 	l.sfeq r28,r3
    5950:	10 00 03 01 	l.bf 6554 <_dtoa_r+0x13c4>
    5954:	15 00 00 00 	l.nop 0x0
    5958:	a8 e2 00 00 	l.ori r7,r2,0x0
    595c:	a8 da 00 00 	l.ori r6,r26,0x0
    5960:	84 61 00 2c 	l.lwz r3,44(r1)
    5964:	84 81 00 30 	l.lwz r4,48(r1)
    5968:	e0 a6 00 04 	l.or r5,r6,r0
    596c:	e0 c7 00 04 	l.or r6,r7,r0
    5970:	04 00 2a 28 	l.jal 10210 <__muldf3>
    5974:	9f 9c 00 01 	l.addi r28,r28,1
    5978:	a8 fe 00 00 	l.ori r7,r30,0x0
    597c:	84 c1 00 54 	l.lwz r6,84(r1)
    5980:	84 61 00 20 	l.lwz r3,32(r1)
    5984:	84 81 00 24 	l.lwz r4,36(r1)
    5988:	e0 a6 00 04 	l.or r5,r6,r0
    598c:	e0 c7 00 04 	l.or r6,r7,r0
    5990:	d4 01 58 2c 	l.sw 44(r1),r11
    5994:	d4 01 60 30 	l.sw 48(r1),r12
    5998:	04 00 2a 1e 	l.jal 10210 <__muldf3>
    599c:	15 00 00 00 	l.nop 0x0
    59a0:	e2 8b 00 04 	l.or r20,r11,r0
    59a4:	e2 ac 00 04 	l.or r21,r12,r0
    59a8:	e0 6b 00 04 	l.or r3,r11,r0
    59ac:	e0 8c 00 04 	l.or r4,r12,r0
    59b0:	04 00 2e ee 	l.jal 11568 <__fixdfsi>
    59b4:	d4 01 a8 04 	l.sw 4(r1),r21
    59b8:	a9 cb 00 00 	l.ori r14,r11,0x0
    59bc:	a8 6b 00 00 	l.ori r3,r11,0x0
    59c0:	04 00 2f 15 	l.jal 11614 <__floatsidf>
    59c4:	9d ce 00 30 	l.addi r14,r14,48
    59c8:	b9 ce 00 18 	l.slli r14,r14,0x18
    59cc:	86 a1 00 04 	l.lwz r21,4(r1)
    59d0:	e0 ab 00 04 	l.or r5,r11,r0
    59d4:	e0 cc 00 04 	l.or r6,r12,r0
    59d8:	e0 74 00 04 	l.or r3,r20,r0
    59dc:	e0 95 00 04 	l.or r4,r21,r0
    59e0:	04 00 2b ff 	l.jal 109dc <__subdf3>
    59e4:	b9 ce 00 98 	l.srai r14,r14,0x18
    59e8:	d8 12 70 00 	l.sb 0(r18),r14
    59ec:	84 a1 00 2c 	l.lwz r5,44(r1)
    59f0:	84 c1 00 30 	l.lwz r6,48(r1)
    59f4:	d4 01 58 20 	l.sw 32(r1),r11
    59f8:	d4 01 60 24 	l.sw 36(r1),r12
    59fc:	e0 6b 00 04 	l.or r3,r11,r0
    5a00:	e0 8c 00 04 	l.or r4,r12,r0
    5a04:	04 00 29 8c 	l.jal 10034 <__ledf2>
    5a08:	aa 5c 00 00 	l.ori r18,r28,0x0
    5a0c:	bd 8b 00 00 	l.sfltsi r11,0
    5a10:	84 a1 00 20 	l.lwz r5,32(r1)
    5a14:	84 c1 00 24 	l.lwz r6,36(r1)
    5a18:	0f ff ff bf 	l.bnf 5914 <_dtoa_r+0x784>
    5a1c:	15 00 00 00 	l.nop 0x0
    5a20:	87 41 00 6c 	l.lwz r26,108(r1)
    5a24:	00 00 00 f9 	l.j 5e08 <_dtoa_r+0xc78>
    5a28:	87 c1 00 68 	l.lwz r30,104(r1)
    5a2c:	18 a0 00 0f 	l.movhi r5,0xf
    5a30:	18 c0 3f f0 	l.movhi r6,0x3ff0
    5a34:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    5a38:	9c 60 00 00 	l.addi r3,r0,0
    5a3c:	e1 74 28 03 	l.and r11,r20,r5
    5a40:	9e 52 fc 01 	l.addi r18,r18,-1023
    5a44:	e1 6b 30 04 	l.or r11,r11,r6
    5a48:	86 c1 00 74 	l.lwz r22,116(r1)
    5a4c:	03 ff fe 60 	l.j 53cc <_dtoa_r+0x23c>
    5a50:	d4 01 18 5c 	l.sw 92(r1),r3
    5a54:	9c 40 00 00 	l.addi r2,r0,0
    5a58:	a8 7a 00 00 	l.ori r3,r26,0x0
    5a5c:	d4 1a 10 44 	l.sw 68(r26),r2
    5a60:	a8 82 00 00 	l.ori r4,r2,0x0
    5a64:	04 00 0d 13 	l.jal 8eb0 <_Balloc>
    5a68:	d4 01 28 28 	l.sw 40(r1),r5
    5a6c:	d4 01 10 08 	l.sw 8(r1),r2
    5a70:	9c 40 00 01 	l.addi r2,r0,1
    5a74:	84 61 00 28 	l.lwz r3,40(r1)
    5a78:	d4 01 10 48 	l.sw 72(r1),r2
    5a7c:	84 41 00 08 	l.lwz r2,8(r1)
    5a80:	d4 01 58 34 	l.sw 52(r1),r11
    5a84:	d4 1a 58 40 	l.sw 64(r26),r11
    5a88:	d4 01 18 50 	l.sw 80(r1),r3
    5a8c:	d4 01 10 1c 	l.sw 28(r1),r2
    5a90:	84 61 00 78 	l.lwz r3,120(r1)
    5a94:	bd 83 00 00 	l.sfltsi r3,0
    5a98:	10 00 00 33 	l.bf 5b64 <_dtoa_r+0x9d4>
    5a9c:	bd be 00 0e 	l.sflesi r30,14
    5aa0:	10 00 00 03 	l.bf 5aac <_dtoa_r+0x91c>
    5aa4:	9c 40 00 01 	l.addi r2,r0,1
    5aa8:	9c 40 00 00 	l.addi r2,r0,0
    5aac:	a4 42 00 ff 	l.andi r2,r2,0xff
    5ab0:	bc 02 00 00 	l.sfeqi r2,0
    5ab4:	10 00 00 2d 	l.bf 5b68 <_dtoa_r+0x9d8>
    5ab8:	84 41 00 48 	l.lwz r2,72(r1)
    5abc:	18 80 00 01 	l.movhi r4,0x1
    5ac0:	b8 5e 00 03 	l.slli r2,r30,0x3
    5ac4:	a8 84 1c 1c 	l.ori r4,r4,0x1c1c
    5ac8:	84 61 00 1c 	l.lwz r3,28(r1)
    5acc:	e0 42 20 00 	l.add r2,r2,r4
    5ad0:	bd 63 00 00 	l.sfgesi r3,0
    5ad4:	84 a2 00 00 	l.lwz r5,0(r2)
    5ad8:	84 c2 00 04 	l.lwz r6,4(r2)
    5adc:	d4 01 28 08 	l.sw 8(r1),r5
    5ae0:	d4 01 30 0c 	l.sw 12(r1),r6
    5ae4:	10 00 01 2c 	l.bf 5f94 <_dtoa_r+0xe04>
    5ae8:	84 c1 00 28 	l.lwz r6,40(r1)
    5aec:	bd a6 00 00 	l.sflesi r6,0
    5af0:	0c 00 01 29 	l.bnf 5f94 <_dtoa_r+0xe04>
    5af4:	84 41 00 28 	l.lwz r2,40(r1)
    5af8:	bc 22 00 00 	l.sfnei r2,0
    5afc:	10 00 02 02 	l.bf 6304 <_dtoa_r+0x1174>
    5b00:	9e 40 00 00 	l.addi r18,r0,0
    5b04:	18 40 00 01 	l.movhi r2,0x1
    5b08:	84 61 00 08 	l.lwz r3,8(r1)
    5b0c:	84 81 00 0c 	l.lwz r4,12(r1)
    5b10:	a8 42 1b 98 	l.ori r2,r2,0x1b98
    5b14:	84 a2 00 00 	l.lwz r5,0(r2)
    5b18:	84 c2 00 04 	l.lwz r6,4(r2)
    5b1c:	04 00 29 bd 	l.jal 10210 <__muldf3>
    5b20:	15 00 00 00 	l.nop 0x0
    5b24:	a8 ee 00 00 	l.ori r7,r14,0x0
    5b28:	a8 d4 00 00 	l.ori r6,r20,0x0
    5b2c:	e0 6b 00 04 	l.or r3,r11,r0
    5b30:	e0 8c 00 04 	l.or r4,r12,r0
    5b34:	e0 a6 00 04 	l.or r5,r6,r0
    5b38:	e0 c7 00 04 	l.or r6,r7,r0
    5b3c:	04 00 28 cb 	l.jal fe68 <__gedf2>
    5b40:	15 00 00 00 	l.nop 0x0
    5b44:	86 41 00 28 	l.lwz r18,40(r1)
    5b48:	bd 6b 00 00 	l.sfgesi r11,0
    5b4c:	0c 00 00 a1 	l.bnf 5dd0 <_dtoa_r+0xc40>
    5b50:	a8 52 00 00 	l.ori r2,r18,0x0
    5b54:	84 81 00 1c 	l.lwz r4,28(r1)
    5b58:	87 81 00 34 	l.lwz r28,52(r1)
    5b5c:	00 00 00 a2 	l.j 5de4 <_dtoa_r+0xc54>
    5b60:	af c4 ff ff 	l.xori r30,r4,-1
    5b64:	84 41 00 48 	l.lwz r2,72(r1)
    5b68:	bc 02 00 00 	l.sfeqi r2,0
    5b6c:	0c 00 00 dc 	l.bnf 5edc <_dtoa_r+0xd4c>
    5b70:	84 41 00 08 	l.lwz r2,8(r1)
    5b74:	86 41 00 40 	l.lwz r18,64(r1)
    5b78:	86 c1 00 38 	l.lwz r22,56(r1)
    5b7c:	84 41 00 48 	l.lwz r2,72(r1)
    5b80:	bd b6 00 00 	l.sflesi r22,0
    5b84:	10 00 00 0f 	l.bf 5bc0 <_dtoa_r+0xa30>
    5b88:	84 61 00 10 	l.lwz r3,16(r1)
    5b8c:	bd a3 00 00 	l.sflesi r3,0
    5b90:	10 00 00 0c 	l.bf 5bc0 <_dtoa_r+0xa30>
    5b94:	e5 b6 18 00 	l.sfles r22,r3
    5b98:	10 00 00 03 	l.bf 5ba4 <_dtoa_r+0xa14>
    5b9c:	a8 76 00 00 	l.ori r3,r22,0x0
    5ba0:	84 61 00 10 	l.lwz r3,16(r1)
    5ba4:	84 81 00 38 	l.lwz r4,56(r1)
    5ba8:	84 a1 00 10 	l.lwz r5,16(r1)
    5bac:	e0 84 18 02 	l.sub r4,r4,r3
    5bb0:	e0 a5 18 02 	l.sub r5,r5,r3
    5bb4:	d4 01 20 38 	l.sw 56(r1),r4
    5bb8:	e2 d6 18 02 	l.sub r22,r22,r3
    5bbc:	d4 01 28 10 	l.sw 16(r1),r5
    5bc0:	84 c1 00 40 	l.lwz r6,64(r1)
    5bc4:	bd a6 00 00 	l.sflesi r6,0
    5bc8:	10 00 00 19 	l.bf 5c2c <_dtoa_r+0xa9c>
    5bcc:	84 61 00 48 	l.lwz r3,72(r1)
    5bd0:	bc 03 00 00 	l.sfeqi r3,0
    5bd4:	10 00 02 5a 	l.bf 653c <_dtoa_r+0x13ac>
    5bd8:	bc 12 00 00 	l.sfeqi r18,0
    5bdc:	10 00 02 58 	l.bf 653c <_dtoa_r+0x13ac>
    5be0:	e0 c6 90 02 	l.sub r6,r6,r18
    5be4:	a8 82 00 00 	l.ori r4,r2,0x0
    5be8:	a8 b2 00 00 	l.ori r5,r18,0x0
    5bec:	a8 7a 00 00 	l.ori r3,r26,0x0
    5bf0:	04 00 0e 91 	l.jal 9634 <__pow5mult>
    5bf4:	d4 01 30 40 	l.sw 64(r1),r6
    5bf8:	84 a1 00 3c 	l.lwz r5,60(r1)
    5bfc:	a8 8b 00 00 	l.ori r4,r11,0x0
    5c00:	a8 7a 00 00 	l.ori r3,r26,0x0
    5c04:	04 00 0d fd 	l.jal 93f8 <__multiply>
    5c08:	a8 4b 00 00 	l.ori r2,r11,0x0
    5c0c:	84 81 00 3c 	l.lwz r4,60(r1)
    5c10:	a8 7a 00 00 	l.ori r3,r26,0x0
    5c14:	04 00 0c d6 	l.jal 8f6c <_Bfree>
    5c18:	d4 01 58 3c 	l.sw 60(r1),r11
    5c1c:	84 81 00 40 	l.lwz r4,64(r1)
    5c20:	bc 04 00 00 	l.sfeqi r4,0
    5c24:	0c 00 02 47 	l.bnf 6540 <_dtoa_r+0x13b0>
    5c28:	84 a1 00 40 	l.lwz r5,64(r1)
    5c2c:	9c 80 00 01 	l.addi r4,r0,1
    5c30:	04 00 0d e3 	l.jal 93bc <__i2b>
    5c34:	a8 7a 00 00 	l.ori r3,r26,0x0
    5c38:	84 a1 00 4c 	l.lwz r5,76(r1)
    5c3c:	bc 05 00 00 	l.sfeqi r5,0
    5c40:	10 00 02 1b 	l.bf 64ac <_dtoa_r+0x131c>
    5c44:	aa 4b 00 00 	l.ori r18,r11,0x0
    5c48:	a8 8b 00 00 	l.ori r4,r11,0x0
    5c4c:	04 00 0e 7a 	l.jal 9634 <__pow5mult>
    5c50:	a8 7a 00 00 	l.ori r3,r26,0x0
    5c54:	84 c1 00 08 	l.lwz r6,8(r1)
    5c58:	bd a6 00 01 	l.sflesi r6,1
    5c5c:	0c 00 02 ec 	l.bnf 680c <_dtoa_r+0x167c>
    5c60:	aa 4b 00 00 	l.ori r18,r11,0x0
    5c64:	bc 0e 00 00 	l.sfeqi r14,0
    5c68:	0c 00 02 ea 	l.bnf 6810 <_dtoa_r+0x1680>
    5c6c:	9f 00 00 00 	l.addi r24,r0,0
    5c70:	18 80 00 0f 	l.movhi r4,0xf
    5c74:	9f 00 00 00 	l.addi r24,r0,0
    5c78:	a8 84 ff ff 	l.ori r4,r4,0xffff
    5c7c:	e0 74 20 03 	l.and r3,r20,r4
    5c80:	e4 23 c0 00 	l.sfne r3,r24
    5c84:	10 00 00 0f 	l.bf 5cc0 <_dtoa_r+0xb30>
    5c88:	84 81 00 4c 	l.lwz r4,76(r1)
    5c8c:	18 a0 7f f0 	l.movhi r5,0x7ff0
    5c90:	e2 94 28 03 	l.and r20,r20,r5
    5c94:	e4 14 c0 00 	l.sfeq r20,r24
    5c98:	10 00 00 0b 	l.bf 5cc4 <_dtoa_r+0xb34>
    5c9c:	bc 04 00 00 	l.sfeqi r4,0
    5ca0:	84 c1 00 38 	l.lwz r6,56(r1)
    5ca4:	84 61 00 10 	l.lwz r3,16(r1)
    5ca8:	9c c6 00 01 	l.addi r6,r6,1
    5cac:	9c 63 00 01 	l.addi r3,r3,1
    5cb0:	d4 01 30 38 	l.sw 56(r1),r6
    5cb4:	d4 01 18 10 	l.sw 16(r1),r3
    5cb8:	9f 00 00 01 	l.addi r24,r0,1
    5cbc:	84 81 00 4c 	l.lwz r4,76(r1)
    5cc0:	bc 04 00 00 	l.sfeqi r4,0
    5cc4:	0c 00 02 d3 	l.bnf 6810 <_dtoa_r+0x1680>
    5cc8:	9d 60 00 01 	l.addi r11,r0,1
    5ccc:	84 a1 00 10 	l.lwz r5,16(r1)
    5cd0:	e0 6b 28 00 	l.add r3,r11,r5
    5cd4:	a4 63 00 1f 	l.andi r3,r3,0x1f
    5cd8:	bc 03 00 00 	l.sfeqi r3,0
    5cdc:	10 00 01 8c 	l.bf 630c <_dtoa_r+0x117c>
    5ce0:	9c 80 00 20 	l.addi r4,r0,32
    5ce4:	e0 84 18 02 	l.sub r4,r4,r3
    5ce8:	bd a4 00 04 	l.sflesi r4,4
    5cec:	10 00 04 14 	l.bf 6d3c <_dtoa_r+0x1bac>
    5cf0:	84 c1 00 38 	l.lwz r6,56(r1)
    5cf4:	9c 80 00 1c 	l.addi r4,r0,28
    5cf8:	e0 64 18 02 	l.sub r3,r4,r3
    5cfc:	e0 c6 18 00 	l.add r6,r6,r3
    5d00:	e0 a5 18 00 	l.add r5,r5,r3
    5d04:	d4 01 30 38 	l.sw 56(r1),r6
    5d08:	e2 d6 18 00 	l.add r22,r22,r3
    5d0c:	d4 01 28 10 	l.sw 16(r1),r5
    5d10:	84 c1 00 38 	l.lwz r6,56(r1)
    5d14:	bd a6 00 00 	l.sflesi r6,0
    5d18:	10 00 00 06 	l.bf 5d30 <_dtoa_r+0xba0>
    5d1c:	a8 a6 00 00 	l.ori r5,r6,0x0
    5d20:	84 81 00 3c 	l.lwz r4,60(r1)
    5d24:	04 00 0e a5 	l.jal 97b8 <__lshift>
    5d28:	a8 7a 00 00 	l.ori r3,r26,0x0
    5d2c:	d4 01 58 3c 	l.sw 60(r1),r11
    5d30:	84 61 00 10 	l.lwz r3,16(r1)
    5d34:	bd a3 00 00 	l.sflesi r3,0
    5d38:	10 00 00 06 	l.bf 5d50 <_dtoa_r+0xbc0>
    5d3c:	a8 a3 00 00 	l.ori r5,r3,0x0
    5d40:	a8 92 00 00 	l.ori r4,r18,0x0
    5d44:	04 00 0e 9d 	l.jal 97b8 <__lshift>
    5d48:	a8 7a 00 00 	l.ori r3,r26,0x0
    5d4c:	aa 4b 00 00 	l.ori r18,r11,0x0
    5d50:	84 81 00 44 	l.lwz r4,68(r1)
    5d54:	bc 04 00 00 	l.sfeqi r4,0
    5d58:	0c 00 02 8e 	l.bnf 6790 <_dtoa_r+0x1600>
    5d5c:	a8 92 00 00 	l.ori r4,r18,0x0
    5d60:	84 a1 00 28 	l.lwz r5,40(r1)
    5d64:	bd 45 00 00 	l.sfgtsi r5,0
    5d68:	10 00 01 72 	l.bf 6330 <_dtoa_r+0x11a0>
    5d6c:	9f 85 ff ff 	l.addi r28,r5,-1
    5d70:	84 c1 00 08 	l.lwz r6,8(r1)
    5d74:	bd 46 00 02 	l.sfgtsi r6,2
    5d78:	10 00 00 03 	l.bf 5d84 <_dtoa_r+0xbf4>
    5d7c:	9c 60 00 01 	l.addi r3,r0,1
    5d80:	9c 60 00 00 	l.addi r3,r0,0
    5d84:	a4 63 00 ff 	l.andi r3,r3,0xff
    5d88:	bc 03 00 00 	l.sfeqi r3,0
    5d8c:	10 00 01 6a 	l.bf 6334 <_dtoa_r+0x11a4>
    5d90:	84 61 00 48 	l.lwz r3,72(r1)
    5d94:	84 61 00 28 	l.lwz r3,40(r1)
    5d98:	bc 23 00 00 	l.sfnei r3,0
    5d9c:	13 ff ff 6e 	l.bf 5b54 <_dtoa_r+0x9c4>
    5da0:	a8 c3 00 00 	l.ori r6,r3,0x0
    5da4:	a8 92 00 00 	l.ori r4,r18,0x0
    5da8:	9c a0 00 05 	l.addi r5,r0,5
    5dac:	04 00 0c 7e 	l.jal 8fa4 <__multadd>
    5db0:	a8 7a 00 00 	l.ori r3,r26,0x0
    5db4:	84 61 00 3c 	l.lwz r3,60(r1)
    5db8:	a8 8b 00 00 	l.ori r4,r11,0x0
    5dbc:	04 00 0e df 	l.jal 9938 <__mcmp>
    5dc0:	aa 4b 00 00 	l.ori r18,r11,0x0
    5dc4:	bd 4b 00 00 	l.sfgtsi r11,0
    5dc8:	0f ff ff 64 	l.bnf 5b58 <_dtoa_r+0x9c8>
    5dcc:	84 81 00 1c 	l.lwz r4,28(r1)
    5dd0:	84 a1 00 34 	l.lwz r5,52(r1)
    5dd4:	9c c0 00 31 	l.addi r6,r0,49
    5dd8:	9f 85 00 01 	l.addi r28,r5,1
    5ddc:	d8 05 30 00 	l.sb 0(r5),r6
    5de0:	9f de 00 01 	l.addi r30,r30,1
    5de4:	a8 92 00 00 	l.ori r4,r18,0x0
    5de8:	04 00 0c 61 	l.jal 8f6c <_Bfree>
    5dec:	a8 7a 00 00 	l.ori r3,r26,0x0
    5df0:	bc 22 00 00 	l.sfnei r2,0
    5df4:	0c 00 00 06 	l.bnf 5e0c <_dtoa_r+0xc7c>
    5df8:	84 81 00 3c 	l.lwz r4,60(r1)
    5dfc:	a8 82 00 00 	l.ori r4,r2,0x0
    5e00:	04 00 0c 5b 	l.jal 8f6c <_Bfree>
    5e04:	a8 7a 00 00 	l.ori r3,r26,0x0
    5e08:	84 81 00 3c 	l.lwz r4,60(r1)
    5e0c:	a8 7a 00 00 	l.ori r3,r26,0x0
    5e10:	04 00 0c 57 	l.jal 8f6c <_Bfree>
    5e14:	9c 5e 00 01 	l.addi r2,r30,1
    5e18:	9c a0 00 00 	l.addi r5,r0,0
    5e1c:	84 c1 00 18 	l.lwz r6,24(r1)
    5e20:	d8 1c 28 00 	l.sb 0(r28),r5
    5e24:	d4 06 10 00 	l.sw 0(r6),r2
    5e28:	84 41 00 ac 	l.lwz r2,172(r1)
    5e2c:	bc 02 00 00 	l.sfeqi r2,0
    5e30:	10 00 02 fa 	l.bf 6a18 <_dtoa_r+0x1888>
    5e34:	15 00 00 00 	l.nop 0x0
    5e38:	d4 02 e0 00 	l.sw 0(r2),r28
    5e3c:	03 ff fd 16 	l.j 5294 <_dtoa_r+0x104>
    5e40:	85 61 00 34 	l.lwz r11,52(r1)
    5e44:	84 a1 00 38 	l.lwz r5,56(r1)
    5e48:	e0 c0 f0 02 	l.sub r6,r0,r30
    5e4c:	e0 a5 f0 02 	l.sub r5,r5,r30
    5e50:	9c 60 00 00 	l.addi r3,r0,0
    5e54:	d4 01 28 38 	l.sw 56(r1),r5
    5e58:	d4 01 30 40 	l.sw 64(r1),r6
    5e5c:	03 ff fd bd 	l.j 5550 <_dtoa_r+0x3c0>
    5e60:	d4 01 18 4c 	l.sw 76(r1),r3
    5e64:	e0 a0 90 02 	l.sub r5,r0,r18
    5e68:	d4 01 20 10 	l.sw 16(r1),r4
    5e6c:	03 ff fd b1 	l.j 5530 <_dtoa_r+0x3a0>
    5e70:	d4 01 28 38 	l.sw 56(r1),r5
    5e74:	04 00 2d e8 	l.jal 11614 <__floatsidf>
    5e78:	a8 7e 00 00 	l.ori r3,r30,0x0
    5e7c:	84 61 00 10 	l.lwz r3,16(r1)
    5e80:	84 81 00 14 	l.lwz r4,20(r1)
    5e84:	e0 ab 00 04 	l.or r5,r11,r0
    5e88:	e0 cc 00 04 	l.or r6,r12,r0
    5e8c:	04 00 27 b4 	l.jal fd5c <__eqdf2>
    5e90:	15 00 00 00 	l.nop 0x0
    5e94:	bc 2b 00 00 	l.sfnei r11,0
    5e98:	0f ff fd 8a 	l.bnf 54c0 <_dtoa_r+0x330>
    5e9c:	9c c0 00 01 	l.addi r6,r0,1
    5ea0:	03 ff fd 88 	l.j 54c0 <_dtoa_r+0x330>
    5ea4:	9f de ff ff 	l.addi r30,r30,-1
    5ea8:	03 ff fd 9b 	l.j 5514 <_dtoa_r+0x384>
    5eac:	d4 01 18 44 	l.sw 68(r1),r3
    5eb0:	e0 63 20 02 	l.sub r3,r3,r4
    5eb4:	03 ff fd 40 	l.j 53b4 <_dtoa_r+0x224>
    5eb8:	e0 62 18 08 	l.sll r3,r2,r3
    5ebc:	9c 40 00 01 	l.addi r2,r0,1
    5ec0:	9c a0 ff ff 	l.addi r5,r0,-1
    5ec4:	d4 01 10 48 	l.sw 72(r1),r2
    5ec8:	9c 40 00 00 	l.addi r2,r0,0
    5ecc:	d4 01 28 28 	l.sw 40(r1),r5
    5ed0:	d4 01 28 50 	l.sw 80(r1),r5
    5ed4:	d4 01 10 1c 	l.sw 28(r1),r2
    5ed8:	84 41 00 08 	l.lwz r2,8(r1)
    5edc:	bd 42 00 01 	l.sfgtsi r2,1
    5ee0:	0c 00 03 2f 	l.bnf 6b9c <_dtoa_r+0x1a0c>
    5ee4:	84 81 00 40 	l.lwz r4,64(r1)
    5ee8:	84 61 00 28 	l.lwz r3,40(r1)
    5eec:	9c 43 ff ff 	l.addi r2,r3,-1
    5ef0:	e5 84 10 00 	l.sflts r4,r2
    5ef4:	0c 00 00 09 	l.bnf 5f18 <_dtoa_r+0xd88>
    5ef8:	e2 44 10 02 	l.sub r18,r4,r2
    5efc:	84 a1 00 40 	l.lwz r5,64(r1)
    5f00:	84 c1 00 4c 	l.lwz r6,76(r1)
    5f04:	e0 62 28 02 	l.sub r3,r2,r5
    5f08:	9e 40 00 00 	l.addi r18,r0,0
    5f0c:	e0 c6 18 00 	l.add r6,r6,r3
    5f10:	d4 01 10 40 	l.sw 64(r1),r2
    5f14:	d4 01 30 4c 	l.sw 76(r1),r6
    5f18:	84 41 00 28 	l.lwz r2,40(r1)
    5f1c:	bd 62 00 00 	l.sfgesi r2,0
    5f20:	0c 00 03 27 	l.bnf 6bbc <_dtoa_r+0x1a2c>
    5f24:	15 00 00 00 	l.nop 0x0
    5f28:	86 c1 00 38 	l.lwz r22,56(r1)
    5f2c:	84 a1 00 38 	l.lwz r5,56(r1)
    5f30:	84 c1 00 10 	l.lwz r6,16(r1)
    5f34:	e0 a5 10 00 	l.add r5,r5,r2
    5f38:	e0 c6 10 00 	l.add r6,r6,r2
    5f3c:	9c 80 00 01 	l.addi r4,r0,1
    5f40:	a8 7a 00 00 	l.ori r3,r26,0x0
    5f44:	d4 01 28 38 	l.sw 56(r1),r5
    5f48:	04 00 0d 1d 	l.jal 93bc <__i2b>
    5f4c:	d4 01 30 10 	l.sw 16(r1),r6
    5f50:	03 ff ff 0c 	l.j 5b80 <_dtoa_r+0x9f0>
    5f54:	a8 4b 00 00 	l.ori r2,r11,0x0
    5f58:	9c a0 00 01 	l.addi r5,r0,1
    5f5c:	d4 01 28 48 	l.sw 72(r1),r5
    5f60:	84 c1 00 1c 	l.lwz r6,28(r1)
    5f64:	bd a6 00 00 	l.sflesi r6,0
    5f68:	10 00 02 b8 	l.bf 6a48 <_dtoa_r+0x18b8>
    5f6c:	bc a6 00 0e 	l.sfleui r6,14
    5f70:	a8 e6 00 00 	l.ori r7,r6,0x0
    5f74:	10 00 00 03 	l.bf 5f80 <_dtoa_r+0xdf0>
    5f78:	9e 40 00 01 	l.addi r18,r0,1
    5f7c:	9e 40 00 00 	l.addi r18,r0,0
    5f80:	e2 43 90 03 	l.and r18,r3,r18
    5f84:	84 61 00 1c 	l.lwz r3,28(r1)
    5f88:	d4 01 18 50 	l.sw 80(r1),r3
    5f8c:	03 ff fd 95 	l.j 55e0 <_dtoa_r+0x450>
    5f90:	d4 01 18 28 	l.sw 40(r1),r3
    5f94:	a8 54 00 00 	l.ori r2,r20,0x0
    5f98:	84 81 00 34 	l.lwz r4,52(r1)
    5f9c:	a8 6e 00 00 	l.ori r3,r14,0x0
    5fa0:	9f 84 00 01 	l.addi r28,r4,1
    5fa4:	e0 83 00 04 	l.or r4,r3,r0
    5fa8:	e0 62 00 04 	l.or r3,r2,r0
    5fac:	84 a1 00 08 	l.lwz r5,8(r1)
    5fb0:	84 c1 00 0c 	l.lwz r6,12(r1)
    5fb4:	04 00 24 71 	l.jal f178 <__divdf3>
    5fb8:	15 00 00 00 	l.nop 0x0
    5fbc:	e0 6b 00 04 	l.or r3,r11,r0
    5fc0:	e0 8c 00 04 	l.or r4,r12,r0
    5fc4:	04 00 2d 69 	l.jal 11568 <__fixdfsi>
    5fc8:	15 00 00 00 	l.nop 0x0
    5fcc:	a8 6b 00 00 	l.ori r3,r11,0x0
    5fd0:	04 00 2d 91 	l.jal 11614 <__floatsidf>
    5fd4:	aa cb 00 00 	l.ori r22,r11,0x0
    5fd8:	84 a1 00 08 	l.lwz r5,8(r1)
    5fdc:	84 c1 00 0c 	l.lwz r6,12(r1)
    5fe0:	e0 6b 00 04 	l.or r3,r11,r0
    5fe4:	e0 8c 00 04 	l.or r4,r12,r0
    5fe8:	04 00 28 8a 	l.jal 10210 <__muldf3>
    5fec:	15 00 00 00 	l.nop 0x0
    5ff0:	a8 6e 00 00 	l.ori r3,r14,0x0
    5ff4:	e0 ab 00 04 	l.or r5,r11,r0
    5ff8:	e0 cc 00 04 	l.or r6,r12,r0
    5ffc:	e0 83 00 04 	l.or r4,r3,r0
    6000:	e0 62 00 04 	l.or r3,r2,r0
    6004:	04 00 2a 76 	l.jal 109dc <__subdf3>
    6008:	15 00 00 00 	l.nop 0x0
    600c:	9c 96 00 30 	l.addi r4,r22,48
    6010:	84 a1 00 28 	l.lwz r5,40(r1)
    6014:	84 c1 00 34 	l.lwz r6,52(r1)
    6018:	a8 4b 00 00 	l.ori r2,r11,0x0
    601c:	bc 05 00 01 	l.sfeqi r5,1
    6020:	d8 06 20 00 	l.sb 0(r6),r4
    6024:	10 00 00 4f 	l.bf 6160 <_dtoa_r+0xfd0>
    6028:	a9 62 00 00 	l.ori r11,r2,0x0
    602c:	a9 c2 00 00 	l.ori r14,r2,0x0
    6030:	18 40 00 01 	l.movhi r2,0x1
    6034:	a9 ec 00 00 	l.ori r15,r12,0x0
    6038:	a8 42 1b 88 	l.ori r2,r2,0x1b88
    603c:	e0 6e 00 04 	l.or r3,r14,r0
    6040:	e0 8f 00 04 	l.or r4,r15,r0
    6044:	84 a2 00 00 	l.lwz r5,0(r2)
    6048:	84 c2 00 04 	l.lwz r6,4(r2)
    604c:	04 00 28 71 	l.jal 10210 <__muldf3>
    6050:	15 00 00 00 	l.nop 0x0
    6054:	e1 cb 00 04 	l.or r14,r11,r0
    6058:	e1 ec 00 04 	l.or r15,r12,r0
    605c:	84 b8 00 00 	l.lwz r5,0(r24)
    6060:	84 d8 00 04 	l.lwz r6,4(r24)
    6064:	e0 6b 00 04 	l.or r3,r11,r0
    6068:	e0 8c 00 04 	l.or r4,r12,r0
    606c:	04 00 27 3c 	l.jal fd5c <__eqdf2>
    6070:	d4 01 78 04 	l.sw 4(r1),r15
    6074:	bc 0b 00 00 	l.sfeqi r11,0
    6078:	13 ff ff 64 	l.bf 5e08 <_dtoa_r+0xc78>
    607c:	85 e1 00 04 	l.lwz r15,4(r1)
    6080:	84 c1 00 28 	l.lwz r6,40(r1)
    6084:	84 61 00 34 	l.lwz r3,52(r1)
    6088:	9e 46 ff ff 	l.addi r18,r6,-1
    608c:	aa 9c 00 00 	l.ori r20,r28,0x0
    6090:	00 00 00 11 	l.j 60d4 <_dtoa_r+0xf44>
    6094:	e2 43 90 00 	l.add r18,r3,r18
    6098:	84 a2 00 00 	l.lwz r5,0(r2)
    609c:	84 c2 00 04 	l.lwz r6,4(r2)
    60a0:	04 00 28 5c 	l.jal 10210 <__muldf3>
    60a4:	aa 9c 00 00 	l.ori r20,r28,0x0
    60a8:	e1 cb 00 04 	l.or r14,r11,r0
    60ac:	e1 ec 00 04 	l.or r15,r12,r0
    60b0:	84 b8 00 00 	l.lwz r5,0(r24)
    60b4:	84 d8 00 04 	l.lwz r6,4(r24)
    60b8:	e0 6b 00 04 	l.or r3,r11,r0
    60bc:	e0 8c 00 04 	l.or r4,r12,r0
    60c0:	04 00 27 27 	l.jal fd5c <__eqdf2>
    60c4:	d4 01 78 04 	l.sw 4(r1),r15
    60c8:	bc 0b 00 00 	l.sfeqi r11,0
    60cc:	13 ff ff 4f 	l.bf 5e08 <_dtoa_r+0xc78>
    60d0:	85 e1 00 04 	l.lwz r15,4(r1)
    60d4:	e0 6e 00 04 	l.or r3,r14,r0
    60d8:	e0 8f 00 04 	l.or r4,r15,r0
    60dc:	d4 01 78 04 	l.sw 4(r1),r15
    60e0:	84 a1 00 08 	l.lwz r5,8(r1)
    60e4:	84 c1 00 0c 	l.lwz r6,12(r1)
    60e8:	04 00 24 24 	l.jal f178 <__divdf3>
    60ec:	9f 94 00 01 	l.addi r28,r20,1
    60f0:	e0 6b 00 04 	l.or r3,r11,r0
    60f4:	e0 8c 00 04 	l.or r4,r12,r0
    60f8:	04 00 2d 1c 	l.jal 11568 <__fixdfsi>
    60fc:	15 00 00 00 	l.nop 0x0
    6100:	a8 6b 00 00 	l.ori r3,r11,0x0
    6104:	04 00 2d 44 	l.jal 11614 <__floatsidf>
    6108:	aa cb 00 00 	l.ori r22,r11,0x0
    610c:	84 a1 00 08 	l.lwz r5,8(r1)
    6110:	84 c1 00 0c 	l.lwz r6,12(r1)
    6114:	e0 6b 00 04 	l.or r3,r11,r0
    6118:	e0 8c 00 04 	l.or r4,r12,r0
    611c:	04 00 28 3d 	l.jal 10210 <__muldf3>
    6120:	15 00 00 00 	l.nop 0x0
    6124:	85 e1 00 04 	l.lwz r15,4(r1)
    6128:	e0 ab 00 04 	l.or r5,r11,r0
    612c:	e0 cc 00 04 	l.or r6,r12,r0
    6130:	e0 6e 00 04 	l.or r3,r14,r0
    6134:	e0 8f 00 04 	l.or r4,r15,r0
    6138:	04 00 2a 29 	l.jal 109dc <__subdf3>
    613c:	15 00 00 00 	l.nop 0x0
    6140:	9c d6 00 30 	l.addi r6,r22,48
    6144:	a8 8b 00 00 	l.ori r4,r11,0x0
    6148:	a8 ac 00 00 	l.ori r5,r12,0x0
    614c:	e4 14 90 00 	l.sfeq r20,r18
    6150:	e0 64 00 04 	l.or r3,r4,r0
    6154:	e0 85 00 04 	l.or r4,r5,r0
    6158:	0f ff ff d0 	l.bnf 6098 <_dtoa_r+0xf08>
    615c:	d8 14 30 00 	l.sb 0(r20),r6
    6160:	a8 8b 00 00 	l.ori r4,r11,0x0
    6164:	a8 4b 00 00 	l.ori r2,r11,0x0
    6168:	a8 ac 00 00 	l.ori r5,r12,0x0
    616c:	a8 6c 00 00 	l.ori r3,r12,0x0
    6170:	e0 c5 00 04 	l.or r6,r5,r0
    6174:	e0 a4 00 04 	l.or r5,r4,r0
    6178:	e0 83 00 04 	l.or r4,r3,r0
    617c:	e0 62 00 04 	l.or r3,r2,r0
    6180:	04 00 21 33 	l.jal e64c <__adddf3>
    6184:	15 00 00 00 	l.nop 0x0
    6188:	e1 ac 00 04 	l.or r13,r12,r0
    618c:	e1 8b 00 04 	l.or r12,r11,r0
    6190:	84 61 00 08 	l.lwz r3,8(r1)
    6194:	84 81 00 0c 	l.lwz r4,12(r1)
    6198:	e0 ac 00 04 	l.or r5,r12,r0
    619c:	e0 cd 00 04 	l.or r6,r13,r0
    61a0:	d4 01 60 00 	l.sw 0(r1),r12
    61a4:	04 00 27 a4 	l.jal 10034 <__ledf2>
    61a8:	d4 01 68 04 	l.sw 4(r1),r13
    61ac:	bd 8b 00 00 	l.sfltsi r11,0
    61b0:	85 81 00 00 	l.lwz r12,0(r1)
    61b4:	10 00 00 0f 	l.bf 61f0 <_dtoa_r+0x1060>
    61b8:	85 a1 00 04 	l.lwz r13,4(r1)
    61bc:	e0 ac 00 04 	l.or r5,r12,r0
    61c0:	e0 cd 00 04 	l.or r6,r13,r0
    61c4:	84 61 00 08 	l.lwz r3,8(r1)
    61c8:	84 81 00 0c 	l.lwz r4,12(r1)
    61cc:	04 00 26 e4 	l.jal fd5c <__eqdf2>
    61d0:	15 00 00 00 	l.nop 0x0
    61d4:	bc 0b 00 00 	l.sfeqi r11,0
    61d8:	0f ff ff 0d 	l.bnf 5e0c <_dtoa_r+0xc7c>
    61dc:	84 81 00 3c 	l.lwz r4,60(r1)
    61e0:	a6 d6 00 01 	l.andi r22,r22,0x1
    61e4:	bc 16 00 00 	l.sfeqi r22,0
    61e8:	13 ff ff 09 	l.bf 5e0c <_dtoa_r+0xc7c>
    61ec:	15 00 00 00 	l.nop 0x0
    61f0:	91 dc ff ff 	l.lbs r14,-1(r28)
    61f4:	9c 7c ff ff 	l.addi r3,r28,-1
    61f8:	84 81 00 34 	l.lwz r4,52(r1)
    61fc:	00 00 00 08 	l.j 621c <_dtoa_r+0x108c>
    6200:	a8 43 00 00 	l.ori r2,r3,0x0
    6204:	e4 04 18 00 	l.sfeq r4,r3
    6208:	10 00 02 41 	l.bf 6b0c <_dtoa_r+0x197c>
    620c:	9c a0 00 30 	l.addi r5,r0,48
    6210:	91 c2 00 00 	l.lbs r14,0(r2)
    6214:	ab 83 00 00 	l.ori r28,r3,0x0
    6218:	9c 63 ff ff 	l.addi r3,r3,-1
    621c:	bc 0e 00 39 	l.sfeqi r14,57
    6220:	13 ff ff f9 	l.bf 6204 <_dtoa_r+0x1074>
    6224:	9c 42 ff ff 	l.addi r2,r2,-1
    6228:	9c ee 00 01 	l.addi r7,r14,1
    622c:	03 ff fe f7 	l.j 5e08 <_dtoa_r+0xc78>
    6230:	d8 03 38 00 	l.sb 0(r3),r7
    6234:	04 00 2c f8 	l.jal 11614 <__floatsidf>
    6238:	18 40 00 01 	l.movhi r2,0x1
    623c:	84 a1 00 20 	l.lwz r5,32(r1)
    6240:	84 c1 00 24 	l.lwz r6,36(r1)
    6244:	e0 6b 00 04 	l.or r3,r11,r0
    6248:	e0 8c 00 04 	l.or r4,r12,r0
    624c:	04 00 27 f1 	l.jal 10210 <__muldf3>
    6250:	a8 42 1b 90 	l.ori r2,r2,0x1b90
    6254:	84 a2 00 00 	l.lwz r5,0(r2)
    6258:	84 c2 00 04 	l.lwz r6,4(r2)
    625c:	e0 6b 00 04 	l.or r3,r11,r0
    6260:	e0 8c 00 04 	l.or r4,r12,r0
    6264:	04 00 20 fa 	l.jal e64c <__adddf3>
    6268:	15 00 00 00 	l.nop 0x0
    626c:	18 60 fc c0 	l.movhi r3,0xfcc0
    6270:	a8 4c 00 00 	l.ori r2,r12,0x0
    6274:	e1 cb 18 00 	l.add r14,r11,r3
    6278:	18 a0 00 01 	l.movhi r5,0x1
    627c:	84 61 00 20 	l.lwz r3,32(r1)
    6280:	84 81 00 24 	l.lwz r4,36(r1)
    6284:	a8 a5 1b 98 	l.ori r5,r5,0x1b98
    6288:	84 c5 00 04 	l.lwz r6,4(r5)
    628c:	84 a5 00 00 	l.lwz r5,0(r5)
    6290:	04 00 29 d3 	l.jal 109dc <__subdf3>
    6294:	15 00 00 00 	l.nop 0x0
    6298:	a8 e2 00 00 	l.ori r7,r2,0x0
    629c:	a8 ce 00 00 	l.ori r6,r14,0x0
    62a0:	e2 4b 00 04 	l.or r18,r11,r0
    62a4:	e2 6c 00 04 	l.or r19,r12,r0
    62a8:	e0 6b 00 04 	l.or r3,r11,r0
    62ac:	e0 8c 00 04 	l.or r4,r12,r0
    62b0:	e0 a6 00 04 	l.or r5,r6,r0
    62b4:	e0 c7 00 04 	l.or r6,r7,r0
    62b8:	04 00 26 ec 	l.jal fe68 <__gedf2>
    62bc:	d4 01 98 04 	l.sw 4(r1),r19
    62c0:	bd 4b 00 00 	l.sfgtsi r11,0
    62c4:	10 00 01 30 	l.bf 6784 <_dtoa_r+0x15f4>
    62c8:	86 61 00 04 	l.lwz r19,4(r1)
    62cc:	18 c0 80 00 	l.movhi r6,0x8000
    62d0:	a8 e2 00 00 	l.ori r7,r2,0x0
    62d4:	e1 ce 30 00 	l.add r14,r14,r6
    62d8:	e0 72 00 04 	l.or r3,r18,r0
    62dc:	e0 93 00 04 	l.or r4,r19,r0
    62e0:	a8 ce 00 00 	l.ori r6,r14,0x0
    62e4:	e0 a6 00 04 	l.or r5,r6,r0
    62e8:	e0 c7 00 04 	l.or r6,r7,r0
    62ec:	04 00 27 52 	l.jal 10034 <__ledf2>
    62f0:	15 00 00 00 	l.nop 0x0
    62f4:	bd 8b 00 00 	l.sfltsi r11,0
    62f8:	0c 00 00 9a 	l.bnf 6560 <_dtoa_r+0x13d0>
    62fc:	86 81 00 60 	l.lwz r20,96(r1)
    6300:	9e 40 00 00 	l.addi r18,r0,0
    6304:	03 ff fe 14 	l.j 5b54 <_dtoa_r+0x9c4>
    6308:	a8 52 00 00 	l.ori r2,r18,0x0
    630c:	9c 60 00 1c 	l.addi r3,r0,28
    6310:	84 81 00 38 	l.lwz r4,56(r1)
    6314:	84 a1 00 10 	l.lwz r5,16(r1)
    6318:	e0 84 18 00 	l.add r4,r4,r3
    631c:	e0 a5 18 00 	l.add r5,r5,r3
    6320:	d4 01 20 38 	l.sw 56(r1),r4
    6324:	e2 d6 18 00 	l.add r22,r22,r3
    6328:	03 ff fe 7a 	l.j 5d10 <_dtoa_r+0xb80>
    632c:	d4 01 28 10 	l.sw 16(r1),r5
    6330:	84 61 00 48 	l.lwz r3,72(r1)
    6334:	bc 23 00 00 	l.sfnei r3,0
    6338:	10 00 01 55 	l.bf 688c <_dtoa_r+0x16fc>
    633c:	bd b6 00 00 	l.sflesi r22,0
    6340:	85 c1 00 34 	l.lwz r14,52(r1)
    6344:	86 81 00 3c 	l.lwz r20,60(r1)
    6348:	aa ce 00 00 	l.ori r22,r14,0x0
    634c:	00 00 00 05 	l.j 6360 <_dtoa_r+0x11d0>
    6350:	87 01 00 28 	l.lwz r24,40(r1)
    6354:	04 00 0b 14 	l.jal 8fa4 <__multadd>
    6358:	15 00 00 00 	l.nop 0x0
    635c:	aa 8b 00 00 	l.ori r20,r11,0x0
    6360:	a8 92 00 00 	l.ori r4,r18,0x0
    6364:	a8 74 00 00 	l.ori r3,r20,0x0
    6368:	07 ff fa f2 	l.jal 4f30 <quorem>
    636c:	9d ce 00 01 	l.addi r14,r14,1
    6370:	e0 6e b0 02 	l.sub r3,r14,r22
    6374:	9d 6b 00 30 	l.addi r11,r11,48
    6378:	e5 83 c0 00 	l.sflts r3,r24
    637c:	db ee 5f ff 	l.sb -1(r14),r11
    6380:	9c c0 00 00 	l.addi r6,r0,0
    6384:	9c a0 00 0a 	l.addi r5,r0,10
    6388:	a8 94 00 00 	l.ori r4,r20,0x0
    638c:	13 ff ff f2 	l.bf 6354 <_dtoa_r+0x11c4>
    6390:	a8 7a 00 00 	l.ori r3,r26,0x0
    6394:	87 81 00 28 	l.lwz r28,40(r1)
    6398:	d4 01 a0 3c 	l.sw 60(r1),r20
    639c:	e5 5c 30 00 	l.sfgts r28,r6
    63a0:	0c 00 02 52 	l.bnf 6ce8 <_dtoa_r+0x1b58>
    63a4:	ab 0b 00 00 	l.ori r24,r11,0x0
    63a8:	84 c1 00 34 	l.lwz r6,52(r1)
    63ac:	9d c0 00 00 	l.addi r14,r0,0
    63b0:	e3 86 e0 00 	l.add r28,r6,r28
    63b4:	9c a0 00 01 	l.addi r5,r0,1
    63b8:	84 81 00 3c 	l.lwz r4,60(r1)
    63bc:	04 00 0c ff 	l.jal 97b8 <__lshift>
    63c0:	a8 7a 00 00 	l.ori r3,r26,0x0
    63c4:	a8 92 00 00 	l.ori r4,r18,0x0
    63c8:	a8 6b 00 00 	l.ori r3,r11,0x0
    63cc:	04 00 0d 5b 	l.jal 9938 <__mcmp>
    63d0:	d4 01 58 3c 	l.sw 60(r1),r11
    63d4:	bd 4b 00 00 	l.sfgtsi r11,0
    63d8:	0c 00 00 25 	l.bnf 646c <_dtoa_r+0x12dc>
    63dc:	bc 2b 00 00 	l.sfnei r11,0
    63e0:	90 bc ff ff 	l.lbs r5,-1(r28)
    63e4:	9c 7c ff ff 	l.addi r3,r28,-1
    63e8:	84 c1 00 34 	l.lwz r6,52(r1)
    63ec:	00 00 00 08 	l.j 640c <_dtoa_r+0x127c>
    63f0:	a8 83 00 00 	l.ori r4,r3,0x0
    63f4:	e4 03 30 00 	l.sfeq r3,r6
    63f8:	10 00 01 e4 	l.bf 6b88 <_dtoa_r+0x19f8>
    63fc:	15 00 00 00 	l.nop 0x0
    6400:	90 a4 00 00 	l.lbs r5,0(r4)
    6404:	ab 83 00 00 	l.ori r28,r3,0x0
    6408:	9c 63 ff ff 	l.addi r3,r3,-1
    640c:	bc 05 00 39 	l.sfeqi r5,57
    6410:	13 ff ff f9 	l.bf 63f4 <_dtoa_r+0x1264>
    6414:	9c 84 ff ff 	l.addi r4,r4,-1
    6418:	9c a5 00 01 	l.addi r5,r5,1
    641c:	d8 03 28 00 	l.sb 0(r3),r5
    6420:	a8 92 00 00 	l.ori r4,r18,0x0
    6424:	04 00 0a d2 	l.jal 8f6c <_Bfree>
    6428:	a8 7a 00 00 	l.ori r3,r26,0x0
    642c:	bc 02 00 00 	l.sfeqi r2,0
    6430:	13 ff fe 76 	l.bf 5e08 <_dtoa_r+0xc78>
    6434:	e0 60 70 02 	l.sub r3,r0,r14
    6438:	e0 6e 18 04 	l.or r3,r14,r3
    643c:	bd 63 00 00 	l.sfgesi r3,0
    6440:	13 ff fe 6f 	l.bf 5dfc <_dtoa_r+0xc6c>
    6444:	e0 6e 10 05 	l.xor r3,r14,r2
    6448:	e0 80 18 02 	l.sub r4,r0,r3
    644c:	e0 64 18 04 	l.or r3,r4,r3
    6450:	bd 63 00 00 	l.sfgesi r3,0
    6454:	13 ff fe 6a 	l.bf 5dfc <_dtoa_r+0xc6c>
    6458:	a8 8e 00 00 	l.ori r4,r14,0x0
    645c:	04 00 0a c4 	l.jal 8f6c <_Bfree>
    6460:	a8 7a 00 00 	l.ori r3,r26,0x0
    6464:	03 ff fe 67 	l.j 5e00 <_dtoa_r+0xc70>
    6468:	a8 82 00 00 	l.ori r4,r2,0x0
    646c:	10 00 00 0a 	l.bf 6494 <_dtoa_r+0x1304>
    6470:	9c 7c ff ff 	l.addi r3,r28,-1
    6474:	a7 18 00 01 	l.andi r24,r24,0x1
    6478:	bc 18 00 00 	l.sfeqi r24,0
    647c:	10 00 00 06 	l.bf 6494 <_dtoa_r+0x1304>
    6480:	15 00 00 00 	l.nop 0x0
    6484:	03 ff ff d9 	l.j 63e8 <_dtoa_r+0x1258>
    6488:	90 bc ff ff 	l.lbs r5,-1(r28)
    648c:	ab 83 00 00 	l.ori r28,r3,0x0
    6490:	9c 7c ff ff 	l.addi r3,r28,-1
    6494:	90 83 00 00 	l.lbs r4,0(r3)
    6498:	bc 04 00 30 	l.sfeqi r4,48
    649c:	13 ff ff fc 	l.bf 648c <_dtoa_r+0x12fc>
    64a0:	a8 92 00 00 	l.ori r4,r18,0x0
    64a4:	03 ff ff e0 	l.j 6424 <_dtoa_r+0x1294>
    64a8:	15 00 00 00 	l.nop 0x0
    64ac:	84 c1 00 08 	l.lwz r6,8(r1)
    64b0:	bd a6 00 01 	l.sflesi r6,1
    64b4:	10 00 02 28 	l.bf 6d54 <_dtoa_r+0x1bc4>
    64b8:	87 01 00 4c 	l.lwz r24,76(r1)
    64bc:	03 ff fe 04 	l.j 5ccc <_dtoa_r+0xb3c>
    64c0:	9d 60 00 01 	l.addi r11,r0,1
    64c4:	a8 a2 00 00 	l.ori r5,r2,0x0
    64c8:	d4 01 20 20 	l.sw 32(r1),r4
    64cc:	d4 01 28 24 	l.sw 36(r1),r5
    64d0:	03 ff fc 77 	l.j 56ac <_dtoa_r+0x51c>
    64d4:	9d c0 00 02 	l.addi r14,r0,2
    64d8:	9c a0 00 00 	l.addi r5,r0,0
    64dc:	bc 04 00 02 	l.sfeqi r4,2
    64e0:	13 ff fe a0 	l.bf 5f60 <_dtoa_r+0xdd0>
    64e4:	d4 01 28 48 	l.sw 72(r1),r5
    64e8:	9c 80 00 00 	l.addi r4,r0,0
    64ec:	a8 7a 00 00 	l.ori r3,r26,0x0
    64f0:	d4 1a 20 44 	l.sw 68(r26),r4
    64f4:	04 00 0a 6f 	l.jal 8eb0 <_Balloc>
    64f8:	9c 40 00 01 	l.addi r2,r0,1
    64fc:	bd be 00 0e 	l.sflesi r30,14
    6500:	d4 01 58 34 	l.sw 52(r1),r11
    6504:	d4 1a 58 40 	l.sw 64(r26),r11
    6508:	10 00 00 03 	l.bf 6514 <_dtoa_r+0x1384>
    650c:	84 61 00 78 	l.lwz r3,120(r1)
    6510:	9c 40 00 00 	l.addi r2,r0,0
    6514:	a4 42 00 ff 	l.andi r2,r2,0xff
    6518:	bc 02 00 00 	l.sfeqi r2,0
    651c:	13 ff fe 68 	l.bf 5ebc <_dtoa_r+0xd2c>
    6520:	bd 63 00 00 	l.sfgesi r3,0
    6524:	0f ff fe 66 	l.bnf 5ebc <_dtoa_r+0xd2c>
    6528:	9c 40 00 00 	l.addi r2,r0,0
    652c:	9c 60 ff ff 	l.addi r3,r0,-1
    6530:	d4 01 18 28 	l.sw 40(r1),r3
    6534:	03 ff fd 62 	l.j 5abc <_dtoa_r+0x92c>
    6538:	d4 01 10 1c 	l.sw 28(r1),r2
    653c:	84 a1 00 40 	l.lwz r5,64(r1)
    6540:	84 81 00 3c 	l.lwz r4,60(r1)
    6544:	04 00 0c 3c 	l.jal 9634 <__pow5mult>
    6548:	a8 7a 00 00 	l.ori r3,r26,0x0
    654c:	03 ff fd b8 	l.j 5c2c <_dtoa_r+0xa9c>
    6550:	d4 01 58 3c 	l.sw 60(r1),r11
    6554:	87 c1 00 70 	l.lwz r30,112(r1)
    6558:	87 41 00 6c 	l.lwz r26,108(r1)
    655c:	86 81 00 60 	l.lwz r20,96(r1)
    6560:	03 ff fd 4c 	l.j 5a90 <_dtoa_r+0x900>
    6564:	85 c1 00 64 	l.lwz r14,100(r1)
    6568:	e0 80 f0 02 	l.sub r4,r0,r30
    656c:	bc 04 00 00 	l.sfeqi r4,0
    6570:	10 00 01 62 	l.bf 6af8 <_dtoa_r+0x1968>
    6574:	a8 a2 00 00 	l.ori r5,r2,0x0
    6578:	a4 a4 00 0f 	l.andi r5,r4,0xf
    657c:	18 60 00 01 	l.movhi r3,0x1
    6580:	b8 a5 00 03 	l.slli r5,r5,0x3
    6584:	a8 63 1c 1c 	l.ori r3,r3,0x1c1c
    6588:	a8 e2 00 00 	l.ori r7,r2,0x0
    658c:	a8 d4 00 00 	l.ori r6,r20,0x0
    6590:	b8 44 00 84 	l.srai r2,r4,0x4
    6594:	e0 a5 18 00 	l.add r5,r5,r3
    6598:	e0 66 00 04 	l.or r3,r6,r0
    659c:	e0 87 00 04 	l.or r4,r7,r0
    65a0:	84 c5 00 04 	l.lwz r6,4(r5)
    65a4:	84 a5 00 00 	l.lwz r5,0(r5)
    65a8:	04 00 27 1a 	l.jal 10210 <__muldf3>
    65ac:	15 00 00 00 	l.nop 0x0
    65b0:	bc 02 00 00 	l.sfeqi r2,0
    65b4:	d4 01 58 20 	l.sw 32(r1),r11
    65b8:	d4 01 60 24 	l.sw 36(r1),r12
    65bc:	13 ff fc 58 	l.bf 571c <_dtoa_r+0x58c>
    65c0:	9d c0 00 02 	l.addi r14,r0,2
    65c4:	1a 40 00 01 	l.movhi r18,0x1
    65c8:	aa 52 1b f4 	l.ori r18,r18,0x1bf4
    65cc:	a4 62 00 01 	l.andi r3,r2,0x1
    65d0:	bc 03 00 00 	l.sfeqi r3,0
    65d4:	e0 6b 00 04 	l.or r3,r11,r0
    65d8:	e0 8c 00 04 	l.or r4,r12,r0
    65dc:	10 00 00 06 	l.bf 65f4 <_dtoa_r+0x1464>
    65e0:	b8 42 00 81 	l.srai r2,r2,0x1
    65e4:	84 b2 00 00 	l.lwz r5,0(r18)
    65e8:	84 d2 00 04 	l.lwz r6,4(r18)
    65ec:	04 00 27 09 	l.jal 10210 <__muldf3>
    65f0:	9d ce 00 01 	l.addi r14,r14,1
    65f4:	bc 22 00 00 	l.sfnei r2,0
    65f8:	13 ff ff f5 	l.bf 65cc <_dtoa_r+0x143c>
    65fc:	9e 52 00 08 	l.addi r18,r18,8
    6600:	d4 01 58 20 	l.sw 32(r1),r11
    6604:	d4 01 60 24 	l.sw 36(r1),r12
    6608:	03 ff fc 46 	l.j 5720 <_dtoa_r+0x590>
    660c:	84 41 00 44 	l.lwz r2,68(r1)
    6610:	9c 80 00 00 	l.addi r4,r0,0
    6614:	03 ff fb e5 	l.j 55a8 <_dtoa_r+0x418>
    6618:	d4 01 20 48 	l.sw 72(r1),r4
    661c:	9e 88 ff ff 	l.addi r20,r8,-1
    6620:	b8 74 00 03 	l.slli r3,r20,0x3
    6624:	a8 a5 1c 1c 	l.ori r5,r5,0x1c1c
    6628:	a8 e2 00 00 	l.ori r7,r2,0x0
    662c:	e0 63 28 00 	l.add r3,r3,r5
    6630:	a8 ce 00 00 	l.ori r6,r14,0x0
    6634:	e0 a6 00 04 	l.or r5,r6,r0
    6638:	e0 c7 00 04 	l.or r6,r7,r0
    663c:	84 83 00 04 	l.lwz r4,4(r3)
    6640:	84 63 00 00 	l.lwz r3,0(r3)
    6644:	04 00 26 f3 	l.jal 10210 <__muldf3>
    6648:	d4 01 40 04 	l.sw 4(r1),r8
    664c:	84 61 00 20 	l.lwz r3,32(r1)
    6650:	84 81 00 24 	l.lwz r4,36(r1)
    6654:	d4 01 58 2c 	l.sw 44(r1),r11
    6658:	d4 01 60 30 	l.sw 48(r1),r12
    665c:	04 00 2b c3 	l.jal 11568 <__fixdfsi>
    6660:	15 00 00 00 	l.nop 0x0
    6664:	84 c1 00 34 	l.lwz r6,52(r1)
    6668:	a8 6b 00 00 	l.ori r3,r11,0x0
    666c:	a8 4b 00 00 	l.ori r2,r11,0x0
    6670:	04 00 2b e9 	l.jal 11614 <__floatsidf>
    6674:	9f 86 00 01 	l.addi r28,r6,1
    6678:	84 61 00 20 	l.lwz r3,32(r1)
    667c:	84 81 00 24 	l.lwz r4,36(r1)
    6680:	e0 ab 00 04 	l.or r5,r11,r0
    6684:	e0 cc 00 04 	l.or r6,r12,r0
    6688:	04 00 28 d5 	l.jal 109dc <__subdf3>
    668c:	9c 42 00 30 	l.addi r2,r2,48
    6690:	85 01 00 04 	l.lwz r8,4(r1)
    6694:	84 61 00 34 	l.lwz r3,52(r1)
    6698:	bc 28 00 01 	l.sfnei r8,1
    669c:	e2 4b 00 04 	l.or r18,r11,r0
    66a0:	e2 6c 00 04 	l.or r19,r12,r0
    66a4:	0c 00 00 23 	l.bnf 6730 <_dtoa_r+0x15a0>
    66a8:	d8 03 10 00 	l.sb 0(r3),r2
    66ac:	84 81 00 34 	l.lwz r4,52(r1)
    66b0:	aa dc 00 00 	l.ori r22,r28,0x0
    66b4:	e1 c4 40 00 	l.add r14,r4,r8
    66b8:	18 40 00 01 	l.movhi r2,0x1
    66bc:	e0 72 00 04 	l.or r3,r18,r0
    66c0:	e0 93 00 04 	l.or r4,r19,r0
    66c4:	a8 42 1b 88 	l.ori r2,r2,0x1b88
    66c8:	84 a2 00 00 	l.lwz r5,0(r2)
    66cc:	84 c2 00 04 	l.lwz r6,4(r2)
    66d0:	04 00 26 d0 	l.jal 10210 <__muldf3>
    66d4:	9e d6 00 01 	l.addi r22,r22,1
    66d8:	e2 4b 00 04 	l.or r18,r11,r0
    66dc:	e2 6c 00 04 	l.or r19,r12,r0
    66e0:	e0 6b 00 04 	l.or r3,r11,r0
    66e4:	e0 8c 00 04 	l.or r4,r12,r0
    66e8:	04 00 2b a0 	l.jal 11568 <__fixdfsi>
    66ec:	d4 01 98 04 	l.sw 4(r1),r19
    66f0:	a8 6b 00 00 	l.ori r3,r11,0x0
    66f4:	04 00 2b c8 	l.jal 11614 <__floatsidf>
    66f8:	a8 4b 00 00 	l.ori r2,r11,0x0
    66fc:	86 61 00 04 	l.lwz r19,4(r1)
    6700:	e0 72 00 04 	l.or r3,r18,r0
    6704:	e0 93 00 04 	l.or r4,r19,r0
    6708:	e0 ab 00 04 	l.or r5,r11,r0
    670c:	e0 cc 00 04 	l.or r6,r12,r0
    6710:	04 00 28 b3 	l.jal 109dc <__subdf3>
    6714:	9c 42 00 30 	l.addi r2,r2,48
    6718:	e4 36 70 00 	l.sfne r22,r14
    671c:	e2 4b 00 04 	l.or r18,r11,r0
    6720:	e2 6c 00 04 	l.or r19,r12,r0
    6724:	13 ff ff e5 	l.bf 66b8 <_dtoa_r+0x1528>
    6728:	db f6 17 ff 	l.sb -1(r22),r2
    672c:	e3 9c a0 00 	l.add r28,r28,r20
    6730:	18 40 00 01 	l.movhi r2,0x1
    6734:	84 61 00 2c 	l.lwz r3,44(r1)
    6738:	84 81 00 30 	l.lwz r4,48(r1)
    673c:	a8 42 1b a0 	l.ori r2,r2,0x1ba0
    6740:	84 a2 00 00 	l.lwz r5,0(r2)
    6744:	84 c2 00 04 	l.lwz r6,4(r2)
    6748:	04 00 1f c1 	l.jal e64c <__adddf3>
    674c:	d4 01 98 04 	l.sw 4(r1),r19
    6750:	86 61 00 04 	l.lwz r19,4(r1)
    6754:	e0 6b 00 04 	l.or r3,r11,r0
    6758:	e0 8c 00 04 	l.or r4,r12,r0
    675c:	e0 b2 00 04 	l.or r5,r18,r0
    6760:	e0 d3 00 04 	l.or r6,r19,r0
    6764:	04 00 26 34 	l.jal 10034 <__ledf2>
    6768:	15 00 00 00 	l.nop 0x0
    676c:	bd 8b 00 00 	l.sfltsi r11,0
    6770:	0c 00 00 ec 	l.bnf 6b20 <_dtoa_r+0x1990>
    6774:	86 61 00 04 	l.lwz r19,4(r1)
    6778:	91 dc ff ff 	l.lbs r14,-1(r28)
    677c:	03 ff fe 9e 	l.j 61f4 <_dtoa_r+0x1064>
    6780:	87 c1 00 68 	l.lwz r30,104(r1)
    6784:	9e 40 00 00 	l.addi r18,r0,0
    6788:	03 ff fd 92 	l.j 5dd0 <_dtoa_r+0xc40>
    678c:	a8 52 00 00 	l.ori r2,r18,0x0
    6790:	04 00 0c 6a 	l.jal 9938 <__mcmp>
    6794:	84 61 00 3c 	l.lwz r3,60(r1)
    6798:	bd 6b 00 00 	l.sfgesi r11,0
    679c:	13 ff fd 72 	l.bf 5d64 <_dtoa_r+0xbd4>
    67a0:	84 a1 00 28 	l.lwz r5,40(r1)
    67a4:	9c a0 00 0a 	l.addi r5,r0,10
    67a8:	9c c0 00 00 	l.addi r6,r0,0
    67ac:	84 81 00 3c 	l.lwz r4,60(r1)
    67b0:	a8 7a 00 00 	l.ori r3,r26,0x0
    67b4:	04 00 09 fc 	l.jal 8fa4 <__multadd>
    67b8:	9f de ff ff 	l.addi r30,r30,-1
    67bc:	84 a1 00 48 	l.lwz r5,72(r1)
    67c0:	bc 05 00 00 	l.sfeqi r5,0
    67c4:	0c 00 00 1c 	l.bnf 6834 <_dtoa_r+0x16a4>
    67c8:	d4 01 58 3c 	l.sw 60(r1),r11
    67cc:	84 61 00 08 	l.lwz r3,8(r1)
    67d0:	bd 43 00 02 	l.sfgtsi r3,2
    67d4:	10 00 00 04 	l.bf 67e4 <_dtoa_r+0x1654>
    67d8:	9c 60 00 01 	l.addi r3,r0,1
    67dc:	84 81 00 48 	l.lwz r4,72(r1)
    67e0:	a8 64 00 00 	l.ori r3,r4,0x0
    67e4:	a4 63 00 ff 	l.andi r3,r3,0xff
    67e8:	bc 03 00 00 	l.sfeqi r3,0
    67ec:	10 00 00 05 	l.bf 6800 <_dtoa_r+0x1670>
    67f0:	84 a1 00 50 	l.lwz r5,80(r1)
    67f4:	bd a5 00 00 	l.sflesi r5,0
    67f8:	13 ff fd 67 	l.bf 5d94 <_dtoa_r+0xc04>
    67fc:	d4 01 28 28 	l.sw 40(r1),r5
    6800:	84 c1 00 50 	l.lwz r6,80(r1)
    6804:	03 ff fe cf 	l.j 6340 <_dtoa_r+0x11b0>
    6808:	d4 01 30 28 	l.sw 40(r1),r6
    680c:	9f 00 00 00 	l.addi r24,r0,0
    6810:	84 72 00 10 	l.lwz r3,16(r18)
    6814:	9c 63 00 04 	l.addi r3,r3,4
    6818:	b8 63 00 02 	l.slli r3,r3,0x2
    681c:	e0 72 18 00 	l.add r3,r18,r3
    6820:	04 00 0a 75 	l.jal 91f4 <__hi0bits>
    6824:	84 63 00 00 	l.lwz r3,0(r3)
    6828:	9c 60 00 20 	l.addi r3,r0,32
    682c:	03 ff fd 28 	l.j 5ccc <_dtoa_r+0xb3c>
    6830:	e1 63 58 02 	l.sub r11,r3,r11
    6834:	9c c0 00 00 	l.addi r6,r0,0
    6838:	a8 82 00 00 	l.ori r4,r2,0x0
    683c:	a8 7a 00 00 	l.ori r3,r26,0x0
    6840:	04 00 09 d9 	l.jal 8fa4 <__multadd>
    6844:	9c a0 00 0a 	l.addi r5,r0,10
    6848:	84 c1 00 08 	l.lwz r6,8(r1)
    684c:	a8 4b 00 00 	l.ori r2,r11,0x0
    6850:	bd 46 00 02 	l.sfgtsi r6,2
    6854:	10 00 00 03 	l.bf 6860 <_dtoa_r+0x16d0>
    6858:	9c 60 00 01 	l.addi r3,r0,1
    685c:	9c 60 00 00 	l.addi r3,r0,0
    6860:	a4 63 00 ff 	l.andi r3,r3,0xff
    6864:	bc 03 00 00 	l.sfeqi r3,0
    6868:	10 00 00 07 	l.bf 6884 <_dtoa_r+0x16f4>
    686c:	84 81 00 50 	l.lwz r4,80(r1)
    6870:	84 61 00 50 	l.lwz r3,80(r1)
    6874:	bd a3 00 00 	l.sflesi r3,0
    6878:	13 ff fd 47 	l.bf 5d94 <_dtoa_r+0xc04>
    687c:	d4 01 18 28 	l.sw 40(r1),r3
    6880:	84 81 00 50 	l.lwz r4,80(r1)
    6884:	9f 84 ff ff 	l.addi r28,r4,-1
    6888:	bd b6 00 00 	l.sflesi r22,0
    688c:	10 00 00 06 	l.bf 68a4 <_dtoa_r+0x1714>
    6890:	a8 82 00 00 	l.ori r4,r2,0x0
    6894:	a8 b6 00 00 	l.ori r5,r22,0x0
    6898:	04 00 0b c8 	l.jal 97b8 <__lshift>
    689c:	a8 7a 00 00 	l.ori r3,r26,0x0
    68a0:	a8 4b 00 00 	l.ori r2,r11,0x0
    68a4:	bc 18 00 00 	l.sfeqi r24,0
    68a8:	0c 00 00 ed 	l.bnf 6c5c <_dtoa_r+0x1acc>
    68ac:	a8 e2 00 00 	l.ori r7,r2,0x0
    68b0:	86 c1 00 34 	l.lwz r22,52(r1)
    68b4:	a5 ce 00 01 	l.andi r14,r14,0x1
    68b8:	e3 96 e0 00 	l.add r28,r22,r28
    68bc:	d4 01 70 1c 	l.sw 28(r1),r14
    68c0:	d4 01 f0 28 	l.sw 40(r1),r30
    68c4:	d4 01 e0 10 	l.sw 16(r1),r28
    68c8:	ab c7 00 00 	l.ori r30,r7,0x0
    68cc:	85 c1 00 3c 	l.lwz r14,60(r1)
    68d0:	a8 92 00 00 	l.ori r4,r18,0x0
    68d4:	07 ff f9 97 	l.jal 4f30 <quorem>
    68d8:	a8 6e 00 00 	l.ori r3,r14,0x0
    68dc:	a8 82 00 00 	l.ori r4,r2,0x0
    68e0:	a8 6e 00 00 	l.ori r3,r14,0x0
    68e4:	ab 8b 00 00 	l.ori r28,r11,0x0
    68e8:	04 00 0c 14 	l.jal 9938 <__mcmp>
    68ec:	9f 0b 00 30 	l.addi r24,r11,48
    68f0:	a8 be 00 00 	l.ori r5,r30,0x0
    68f4:	a8 7a 00 00 	l.ori r3,r26,0x0
    68f8:	a8 92 00 00 	l.ori r4,r18,0x0
    68fc:	04 00 0c 2f 	l.jal 99b8 <__mdiff>
    6900:	aa 8b 00 00 	l.ori r20,r11,0x0
    6904:	84 6b 00 0c 	l.lwz r3,12(r11)
    6908:	bc 23 00 00 	l.sfnei r3,0
    690c:	10 00 00 41 	l.bf 6a10 <_dtoa_r+0x1880>
    6910:	a8 ab 00 00 	l.ori r5,r11,0x0
    6914:	a8 8b 00 00 	l.ori r4,r11,0x0
    6918:	a8 6e 00 00 	l.ori r3,r14,0x0
    691c:	04 00 0c 07 	l.jal 9938 <__mcmp>
    6920:	d4 01 58 04 	l.sw 4(r1),r11
    6924:	84 a1 00 04 	l.lwz r5,4(r1)
    6928:	a8 85 00 00 	l.ori r4,r5,0x0
    692c:	a8 7a 00 00 	l.ori r3,r26,0x0
    6930:	04 00 09 8f 	l.jal 8f6c <_Bfree>
    6934:	d4 01 58 04 	l.sw 4(r1),r11
    6938:	85 61 00 04 	l.lwz r11,4(r1)
    693c:	84 81 00 08 	l.lwz r4,8(r1)
    6940:	e0 6b 20 04 	l.or r3,r11,r4
    6944:	bc 23 00 00 	l.sfnei r3,0
    6948:	10 00 00 06 	l.bf 6960 <_dtoa_r+0x17d0>
    694c:	bd 94 00 00 	l.sfltsi r20,0
    6950:	84 a1 00 1c 	l.lwz r5,28(r1)
    6954:	bc 25 00 00 	l.sfnei r5,0
    6958:	0c 00 00 e6 	l.bnf 6cf0 <_dtoa_r+0x1b60>
    695c:	bd 94 00 00 	l.sfltsi r20,0
    6960:	10 00 00 9e 	l.bf 6bd8 <_dtoa_r+0x1a48>
    6964:	84 c1 00 08 	l.lwz r6,8(r1)
    6968:	e2 94 30 04 	l.or r20,r20,r6
    696c:	bc 34 00 00 	l.sfnei r20,0
    6970:	10 00 00 06 	l.bf 6988 <_dtoa_r+0x17f8>
    6974:	bd ab 00 00 	l.sflesi r11,0
    6978:	84 61 00 1c 	l.lwz r3,28(r1)
    697c:	bc 23 00 00 	l.sfnei r3,0
    6980:	0c 00 00 96 	l.bnf 6bd8 <_dtoa_r+0x1a48>
    6984:	bd ab 00 00 	l.sflesi r11,0
    6988:	0c 00 00 cb 	l.bnf 6cb4 <_dtoa_r+0x1b24>
    698c:	84 a1 00 10 	l.lwz r5,16(r1)
    6990:	9e 96 00 01 	l.addi r20,r22,1
    6994:	d8 16 c0 00 	l.sb 0(r22),r24
    6998:	e4 05 b0 00 	l.sfeq r5,r22
    699c:	10 00 00 cd 	l.bf 6cd0 <_dtoa_r+0x1b40>
    69a0:	ab 94 00 00 	l.ori r28,r20,0x0
    69a4:	a8 8e 00 00 	l.ori r4,r14,0x0
    69a8:	9c c0 00 00 	l.addi r6,r0,0
    69ac:	9c a0 00 0a 	l.addi r5,r0,10
    69b0:	04 00 09 7d 	l.jal 8fa4 <__multadd>
    69b4:	a8 7a 00 00 	l.ori r3,r26,0x0
    69b8:	e4 22 f0 00 	l.sfne r2,r30
    69bc:	a9 cb 00 00 	l.ori r14,r11,0x0
    69c0:	9c c0 00 00 	l.addi r6,r0,0
    69c4:	9c a0 00 0a 	l.addi r5,r0,10
    69c8:	a8 82 00 00 	l.ori r4,r2,0x0
    69cc:	0c 00 00 0c 	l.bnf 69fc <_dtoa_r+0x186c>
    69d0:	a8 7a 00 00 	l.ori r3,r26,0x0
    69d4:	04 00 09 74 	l.jal 8fa4 <__multadd>
    69d8:	aa d4 00 00 	l.ori r22,r20,0x0
    69dc:	a8 9e 00 00 	l.ori r4,r30,0x0
    69e0:	9c c0 00 00 	l.addi r6,r0,0
    69e4:	9c a0 00 0a 	l.addi r5,r0,10
    69e8:	a8 7a 00 00 	l.ori r3,r26,0x0
    69ec:	04 00 09 6e 	l.jal 8fa4 <__multadd>
    69f0:	a8 4b 00 00 	l.ori r2,r11,0x0
    69f4:	03 ff ff b7 	l.j 68d0 <_dtoa_r+0x1740>
    69f8:	ab cb 00 00 	l.ori r30,r11,0x0
    69fc:	04 00 09 6a 	l.jal 8fa4 <__multadd>
    6a00:	aa d4 00 00 	l.ori r22,r20,0x0
    6a04:	a8 4b 00 00 	l.ori r2,r11,0x0
    6a08:	03 ff ff b2 	l.j 68d0 <_dtoa_r+0x1740>
    6a0c:	ab cb 00 00 	l.ori r30,r11,0x0
    6a10:	03 ff ff c6 	l.j 6928 <_dtoa_r+0x1798>
    6a14:	9d 60 00 01 	l.addi r11,r0,1
    6a18:	03 ff fa 1f 	l.j 5294 <_dtoa_r+0x104>
    6a1c:	85 61 00 34 	l.lwz r11,52(r1)
    6a20:	bc a6 00 0e 	l.sfleui r6,14
    6a24:	10 00 00 03 	l.bf 6a30 <_dtoa_r+0x18a0>
    6a28:	9e 40 00 01 	l.addi r18,r0,1
    6a2c:	9e 40 00 00 	l.addi r18,r0,0
    6a30:	a6 52 00 ff 	l.andi r18,r18,0xff
    6a34:	9c a0 00 00 	l.addi r5,r0,0
    6a38:	e2 43 90 03 	l.and r18,r3,r18
    6a3c:	d4 1a 28 44 	l.sw 68(r26),r5
    6a40:	03 ff fa f6 	l.j 5618 <_dtoa_r+0x488>
    6a44:	a8 85 00 00 	l.ori r4,r5,0x0
    6a48:	9e 40 00 01 	l.addi r18,r0,1
    6a4c:	d4 01 90 50 	l.sw 80(r1),r18
    6a50:	d4 01 90 28 	l.sw 40(r1),r18
    6a54:	03 ff ff f8 	l.j 6a34 <_dtoa_r+0x18a4>
    6a58:	d4 01 90 1c 	l.sw 28(r1),r18
    6a5c:	84 61 00 28 	l.lwz r3,40(r1)
    6a60:	bc 03 00 00 	l.sfeqi r3,0
    6a64:	13 ff fd f4 	l.bf 6234 <_dtoa_r+0x10a4>
    6a68:	a8 6e 00 00 	l.ori r3,r14,0x0
    6a6c:	84 41 00 50 	l.lwz r2,80(r1)
    6a70:	bd a2 00 00 	l.sflesi r2,0
    6a74:	13 ff fe ba 	l.bf 655c <_dtoa_r+0x13cc>
    6a78:	18 40 00 01 	l.movhi r2,0x1
    6a7c:	84 61 00 20 	l.lwz r3,32(r1)
    6a80:	84 81 00 24 	l.lwz r4,36(r1)
    6a84:	a8 42 1b 88 	l.ori r2,r2,0x1b88
    6a88:	84 a2 00 00 	l.lwz r5,0(r2)
    6a8c:	84 c2 00 04 	l.lwz r6,4(r2)
    6a90:	04 00 25 e0 	l.jal 10210 <__muldf3>
    6a94:	9c 5e ff ff 	l.addi r2,r30,-1
    6a98:	9c 6e 00 01 	l.addi r3,r14,1
    6a9c:	d4 01 10 68 	l.sw 104(r1),r2
    6aa0:	18 40 00 01 	l.movhi r2,0x1
    6aa4:	d4 01 58 20 	l.sw 32(r1),r11
    6aa8:	d4 01 60 24 	l.sw 36(r1),r12
    6aac:	04 00 2a da 	l.jal 11614 <__floatsidf>
    6ab0:	a8 42 1b 90 	l.ori r2,r2,0x1b90
    6ab4:	84 a1 00 20 	l.lwz r5,32(r1)
    6ab8:	84 c1 00 24 	l.lwz r6,36(r1)
    6abc:	e0 6b 00 04 	l.or r3,r11,r0
    6ac0:	e0 8c 00 04 	l.or r4,r12,r0
    6ac4:	04 00 25 d3 	l.jal 10210 <__muldf3>
    6ac8:	15 00 00 00 	l.nop 0x0
    6acc:	84 a2 00 00 	l.lwz r5,0(r2)
    6ad0:	84 c2 00 04 	l.lwz r6,4(r2)
    6ad4:	e0 6b 00 04 	l.or r3,r11,r0
    6ad8:	e0 8c 00 04 	l.or r4,r12,r0
    6adc:	04 00 1e dc 	l.jal e64c <__adddf3>
    6ae0:	15 00 00 00 	l.nop 0x0
    6ae4:	18 60 fc c0 	l.movhi r3,0xfcc0
    6ae8:	a8 4c 00 00 	l.ori r2,r12,0x0
    6aec:	e1 cb 18 00 	l.add r14,r11,r3
    6af0:	03 ff fb 30 	l.j 57b0 <_dtoa_r+0x620>
    6af4:	85 01 00 50 	l.lwz r8,80(r1)
    6af8:	a8 94 00 00 	l.ori r4,r20,0x0
    6afc:	d4 01 20 20 	l.sw 32(r1),r4
    6b00:	d4 01 28 24 	l.sw 36(r1),r5
    6b04:	03 ff fb 06 	l.j 571c <_dtoa_r+0x58c>
    6b08:	9d c0 00 02 	l.addi r14,r0,2
    6b0c:	84 81 00 34 	l.lwz r4,52(r1)
    6b10:	9f de 00 01 	l.addi r30,r30,1
    6b14:	d8 04 28 00 	l.sb 0(r4),r5
    6b18:	03 ff fd c4 	l.j 6228 <_dtoa_r+0x1098>
    6b1c:	91 dc ff ff 	l.lbs r14,-1(r28)
    6b20:	84 a1 00 2c 	l.lwz r5,44(r1)
    6b24:	84 c1 00 30 	l.lwz r6,48(r1)
    6b28:	84 62 00 00 	l.lwz r3,0(r2)
    6b2c:	84 82 00 04 	l.lwz r4,4(r2)
    6b30:	04 00 27 ab 	l.jal 109dc <__subdf3>
    6b34:	d4 01 98 04 	l.sw 4(r1),r19
    6b38:	86 61 00 04 	l.lwz r19,4(r1)
    6b3c:	e0 6b 00 04 	l.or r3,r11,r0
    6b40:	e0 8c 00 04 	l.or r4,r12,r0
    6b44:	e0 b2 00 04 	l.or r5,r18,r0
    6b48:	e0 d3 00 04 	l.or r6,r19,r0
    6b4c:	04 00 24 c7 	l.jal fe68 <__gedf2>
    6b50:	15 00 00 00 	l.nop 0x0
    6b54:	bd 4b 00 00 	l.sfgtsi r11,0
    6b58:	10 00 00 06 	l.bf 6b70 <_dtoa_r+0x19e0>
    6b5c:	9c 5c ff ff 	l.addi r2,r28,-1
    6b60:	03 ff fe 80 	l.j 6560 <_dtoa_r+0x13d0>
    6b64:	86 81 00 60 	l.lwz r20,96(r1)
    6b68:	ab 82 00 00 	l.ori r28,r2,0x0
    6b6c:	9c 5c ff ff 	l.addi r2,r28,-1
    6b70:	90 62 00 00 	l.lbs r3,0(r2)
    6b74:	bc 03 00 30 	l.sfeqi r3,48
    6b78:	13 ff ff fc 	l.bf 6b68 <_dtoa_r+0x19d8>
    6b7c:	87 c1 00 68 	l.lwz r30,104(r1)
    6b80:	03 ff fc a3 	l.j 5e0c <_dtoa_r+0xc7c>
    6b84:	84 81 00 3c 	l.lwz r4,60(r1)
    6b88:	9c 80 00 31 	l.addi r4,r0,49
    6b8c:	84 61 00 34 	l.lwz r3,52(r1)
    6b90:	9f de 00 01 	l.addi r30,r30,1
    6b94:	03 ff fe 23 	l.j 6420 <_dtoa_r+0x1290>
    6b98:	d8 03 20 00 	l.sb 0(r3),r4
    6b9c:	84 41 00 5c 	l.lwz r2,92(r1)
    6ba0:	bc 02 00 00 	l.sfeqi r2,0
    6ba4:	10 00 00 3e 	l.bf 6c9c <_dtoa_r+0x1b0c>
    6ba8:	15 00 00 00 	l.nop 0x0
    6bac:	9c 43 04 33 	l.addi r2,r3,1075
    6bb0:	86 41 00 40 	l.lwz r18,64(r1)
    6bb4:	03 ff fc de 	l.j 5f2c <_dtoa_r+0xd9c>
    6bb8:	86 c1 00 38 	l.lwz r22,56(r1)
    6bbc:	84 61 00 38 	l.lwz r3,56(r1)
    6bc0:	e2 c3 10 02 	l.sub r22,r3,r2
    6bc4:	03 ff fc da 	l.j 5f2c <_dtoa_r+0xd9c>
    6bc8:	9c 40 00 00 	l.addi r2,r0,0
    6bcc:	87 41 00 6c 	l.lwz r26,108(r1)
    6bd0:	03 ff fd 89 	l.j 61f4 <_dtoa_r+0x1064>
    6bd4:	87 c1 00 68 	l.lwz r30,104(r1)
    6bd8:	d4 01 70 3c 	l.sw 60(r1),r14
    6bdc:	bd ab 00 00 	l.sflesi r11,0
    6be0:	a8 fe 00 00 	l.ori r7,r30,0x0
    6be4:	10 00 00 12 	l.bf 6c2c <_dtoa_r+0x1a9c>
    6be8:	87 c1 00 28 	l.lwz r30,40(r1)
    6bec:	9c a0 00 01 	l.addi r5,r0,1
    6bf0:	a8 8e 00 00 	l.ori r4,r14,0x0
    6bf4:	a8 7a 00 00 	l.ori r3,r26,0x0
    6bf8:	04 00 0a f0 	l.jal 97b8 <__lshift>
    6bfc:	d4 01 38 04 	l.sw 4(r1),r7
    6c00:	a8 92 00 00 	l.ori r4,r18,0x0
    6c04:	a8 6b 00 00 	l.ori r3,r11,0x0
    6c08:	04 00 0b 4c 	l.jal 9938 <__mcmp>
    6c0c:	d4 01 58 3c 	l.sw 60(r1),r11
    6c10:	bd 4b 00 00 	l.sfgtsi r11,0
    6c14:	0c 00 00 41 	l.bnf 6d18 <_dtoa_r+0x1b88>
    6c18:	84 e1 00 04 	l.lwz r7,4(r1)
    6c1c:	bc 18 00 39 	l.sfeqi r24,57
    6c20:	10 00 00 09 	l.bf 6c44 <_dtoa_r+0x1ab4>
    6c24:	9c 80 00 39 	l.addi r4,r0,57
    6c28:	9f 1c 00 31 	l.addi r24,r28,49
    6c2c:	a9 c2 00 00 	l.ori r14,r2,0x0
    6c30:	9f 96 00 01 	l.addi r28,r22,1
    6c34:	d8 16 c0 00 	l.sb 0(r22),r24
    6c38:	03 ff fd fa 	l.j 6420 <_dtoa_r+0x1290>
    6c3c:	a8 47 00 00 	l.ori r2,r7,0x0
    6c40:	9c 80 00 39 	l.addi r4,r0,57
    6c44:	a9 c2 00 00 	l.ori r14,r2,0x0
    6c48:	9f 96 00 01 	l.addi r28,r22,1
    6c4c:	d8 16 20 00 	l.sb 0(r22),r4
    6c50:	a8 47 00 00 	l.ori r2,r7,0x0
    6c54:	03 ff fd e4 	l.j 63e4 <_dtoa_r+0x1254>
    6c58:	9c a0 00 39 	l.addi r5,r0,57
    6c5c:	84 82 00 04 	l.lwz r4,4(r2)
    6c60:	04 00 08 94 	l.jal 8eb0 <_Balloc>
    6c64:	a8 7a 00 00 	l.ori r3,r26,0x0
    6c68:	84 a2 00 10 	l.lwz r5,16(r2)
    6c6c:	9c 82 00 0c 	l.addi r4,r2,12
    6c70:	9c a5 00 02 	l.addi r5,r5,2
    6c74:	9c 6b 00 0c 	l.addi r3,r11,12
    6c78:	b8 a5 00 02 	l.slli r5,r5,0x2
    6c7c:	04 00 07 9b 	l.jal 8ae8 <memcpy>
    6c80:	aa 8b 00 00 	l.ori r20,r11,0x0
    6c84:	9c a0 00 01 	l.addi r5,r0,1
    6c88:	a8 94 00 00 	l.ori r4,r20,0x0
    6c8c:	04 00 0a cb 	l.jal 97b8 <__lshift>
    6c90:	a8 7a 00 00 	l.ori r3,r26,0x0
    6c94:	03 ff ff 07 	l.j 68b0 <_dtoa_r+0x1720>
    6c98:	a8 eb 00 00 	l.ori r7,r11,0x0
    6c9c:	84 61 00 74 	l.lwz r3,116(r1)
    6ca0:	9c 40 00 36 	l.addi r2,r0,54
    6ca4:	86 41 00 40 	l.lwz r18,64(r1)
    6ca8:	e0 42 18 02 	l.sub r2,r2,r3
    6cac:	03 ff fc a0 	l.j 5f2c <_dtoa_r+0xd9c>
    6cb0:	86 c1 00 38 	l.lwz r22,56(r1)
    6cb4:	d4 01 70 3c 	l.sw 60(r1),r14
    6cb8:	bc 38 00 39 	l.sfnei r24,57
    6cbc:	a8 fe 00 00 	l.ori r7,r30,0x0
    6cc0:	0f ff ff e0 	l.bnf 6c40 <_dtoa_r+0x1ab0>
    6cc4:	87 c1 00 28 	l.lwz r30,40(r1)
    6cc8:	03 ff ff d9 	l.j 6c2c <_dtoa_r+0x1a9c>
    6ccc:	9f 18 00 01 	l.addi r24,r24,1
    6cd0:	a8 fe 00 00 	l.ori r7,r30,0x0
    6cd4:	d4 01 70 3c 	l.sw 60(r1),r14
    6cd8:	87 c1 00 28 	l.lwz r30,40(r1)
    6cdc:	a9 c2 00 00 	l.ori r14,r2,0x0
    6ce0:	03 ff fd b5 	l.j 63b4 <_dtoa_r+0x1224>
    6ce4:	a8 47 00 00 	l.ori r2,r7,0x0
    6ce8:	03 ff fd b0 	l.j 63a8 <_dtoa_r+0x1218>
    6cec:	9f 80 00 01 	l.addi r28,r0,1
    6cf0:	d4 01 70 3c 	l.sw 60(r1),r14
    6cf4:	bc 18 00 39 	l.sfeqi r24,57
    6cf8:	a8 fe 00 00 	l.ori r7,r30,0x0
    6cfc:	13 ff ff d1 	l.bf 6c40 <_dtoa_r+0x1ab0>
    6d00:	87 c1 00 28 	l.lwz r30,40(r1)
    6d04:	bd b4 00 00 	l.sflesi r20,0
    6d08:	0f ff ff c8 	l.bnf 6c28 <_dtoa_r+0x1a98>
    6d0c:	15 00 00 00 	l.nop 0x0
    6d10:	03 ff ff c8 	l.j 6c30 <_dtoa_r+0x1aa0>
    6d14:	a9 c2 00 00 	l.ori r14,r2,0x0
    6d18:	bc 2b 00 00 	l.sfnei r11,0
    6d1c:	13 ff ff c5 	l.bf 6c30 <_dtoa_r+0x1aa0>
    6d20:	a9 c2 00 00 	l.ori r14,r2,0x0
    6d24:	a4 78 00 01 	l.andi r3,r24,0x1
    6d28:	bc 03 00 00 	l.sfeqi r3,0
    6d2c:	13 ff ff c1 	l.bf 6c30 <_dtoa_r+0x1aa0>
    6d30:	bc 18 00 39 	l.sfeqi r24,57
    6d34:	03 ff ff bb 	l.j 6c20 <_dtoa_r+0x1a90>
    6d38:	15 00 00 00 	l.nop 0x0
    6d3c:	bc 04 00 04 	l.sfeqi r4,4
    6d40:	13 ff fb f6 	l.bf 5d18 <_dtoa_r+0xb88>
    6d44:	bd a6 00 00 	l.sflesi r6,0
    6d48:	9c 80 00 3c 	l.addi r4,r0,60
    6d4c:	03 ff fd 71 	l.j 6310 <_dtoa_r+0x1180>
    6d50:	e0 64 18 02 	l.sub r3,r4,r3
    6d54:	bc 0e 00 00 	l.sfeqi r14,0
    6d58:	13 ff fb c7 	l.bf 5c74 <_dtoa_r+0xae4>
    6d5c:	18 80 00 0f 	l.movhi r4,0xf
    6d60:	03 ff fd d7 	l.j 64bc <_dtoa_r+0x132c>
    6d64:	87 01 00 4c 	l.lwz r24,76(r1)

00006d68 <__sflush_r>:
    6d68:	d7 e1 17 ec 	l.sw -20(r1),r2
    6d6c:	98 44 00 0c 	l.lhs r2,12(r4)
    6d70:	d7 e1 a7 f8 	l.sw -8(r1),r20
    6d74:	aa 83 00 00 	l.ori r20,r3,0x0
    6d78:	a4 62 ff ff 	l.andi r3,r2,0xffff
    6d7c:	d7 e1 77 f0 	l.sw -16(r1),r14
    6d80:	a9 c4 00 00 	l.ori r14,r4,0x0
    6d84:	a4 83 00 08 	l.andi r4,r3,0x8
    6d88:	d7 e1 4f fc 	l.sw -4(r1),r9
    6d8c:	d7 e1 0f e8 	l.sw -24(r1),r1
    6d90:	d7 e1 97 f4 	l.sw -12(r1),r18
    6d94:	bc 24 00 00 	l.sfnei r4,0
    6d98:	10 00 00 44 	l.bf 6ea8 <__sflush_r+0x140>
    6d9c:	9c 21 ff e8 	l.addi r1,r1,-24
    6da0:	a8 42 08 00 	l.ori r2,r2,0x800
    6da4:	84 6e 00 04 	l.lwz r3,4(r14)
    6da8:	bd 43 00 00 	l.sfgtsi r3,0
    6dac:	0c 00 00 99 	l.bnf 7010 <__sflush_r+0x2a8>
    6db0:	dc 0e 10 0c 	l.sh 12(r14),r2
    6db4:	85 6e 00 28 	l.lwz r11,40(r14)
    6db8:	bc 0b 00 00 	l.sfeqi r11,0
    6dbc:	10 00 00 73 	l.bf 6f88 <__sflush_r+0x220>
    6dc0:	a4 42 ff ff 	l.andi r2,r2,0xffff
    6dc4:	9c 60 00 00 	l.addi r3,r0,0
    6dc8:	a4 a2 10 00 	l.andi r5,r2,0x1000
    6dcc:	86 54 00 00 	l.lwz r18,0(r20)
    6dd0:	a4 a5 ff ff 	l.andi r5,r5,0xffff
    6dd4:	e4 05 18 00 	l.sfeq r5,r3
    6dd8:	10 00 00 94 	l.bf 7028 <__sflush_r+0x2c0>
    6ddc:	d4 14 18 00 	l.sw 0(r20),r3
    6de0:	84 ae 00 50 	l.lwz r5,80(r14)
    6de4:	a4 42 00 04 	l.andi r2,r2,0x4
    6de8:	bc 02 00 00 	l.sfeqi r2,0
    6dec:	10 00 00 0a 	l.bf 6e14 <__sflush_r+0xac>
    6df0:	9c c0 00 00 	l.addi r6,r0,0
    6df4:	84 6e 00 30 	l.lwz r3,48(r14)
    6df8:	84 4e 00 04 	l.lwz r2,4(r14)
    6dfc:	bc 03 00 00 	l.sfeqi r3,0
    6e00:	10 00 00 05 	l.bf 6e14 <__sflush_r+0xac>
    6e04:	e0 a5 10 02 	l.sub r5,r5,r2
    6e08:	84 4e 00 3c 	l.lwz r2,60(r14)
    6e0c:	e0 a5 10 02 	l.sub r5,r5,r2
    6e10:	9c c0 00 00 	l.addi r6,r0,0
    6e14:	84 8e 00 1c 	l.lwz r4,28(r14)
    6e18:	48 00 58 00 	l.jalr r11
    6e1c:	a8 74 00 00 	l.ori r3,r20,0x0
    6e20:	bc 2b ff ff 	l.sfnei r11,-1
    6e24:	0c 00 00 62 	l.bnf 6fac <__sflush_r+0x244>
    6e28:	9c 60 f7 ff 	l.addi r3,r0,-2049
    6e2c:	98 4e 00 0c 	l.lhs r2,12(r14)
    6e30:	9c a0 00 00 	l.addi r5,r0,0
    6e34:	e0 42 18 03 	l.and r2,r2,r3
    6e38:	84 8e 00 10 	l.lwz r4,16(r14)
    6e3c:	a4 62 10 00 	l.andi r3,r2,0x1000
    6e40:	dc 0e 10 0c 	l.sh 12(r14),r2
    6e44:	d4 0e 28 04 	l.sw 4(r14),r5
    6e48:	e4 23 28 00 	l.sfne r3,r5
    6e4c:	10 00 00 6f 	l.bf 7008 <__sflush_r+0x2a0>
    6e50:	d4 0e 20 00 	l.sw 0(r14),r4
    6e54:	84 8e 00 30 	l.lwz r4,48(r14)
    6e58:	bc 04 00 00 	l.sfeqi r4,0
    6e5c:	10 00 00 4b 	l.bf 6f88 <__sflush_r+0x220>
    6e60:	d4 14 90 00 	l.sw 0(r20),r18
    6e64:	9c 4e 00 40 	l.addi r2,r14,64
    6e68:	e4 04 10 00 	l.sfeq r4,r2
    6e6c:	10 00 00 05 	l.bf 6e80 <__sflush_r+0x118>
    6e70:	9c a0 00 00 	l.addi r5,r0,0
    6e74:	04 00 02 35 	l.jal 7748 <_free_r>
    6e78:	a8 74 00 00 	l.ori r3,r20,0x0
    6e7c:	9c a0 00 00 	l.addi r5,r0,0
    6e80:	d4 0e 28 30 	l.sw 48(r14),r5
    6e84:	9c 21 00 18 	l.addi r1,r1,24
    6e88:	a9 65 00 00 	l.ori r11,r5,0x0
    6e8c:	85 21 ff fc 	l.lwz r9,-4(r1)
    6e90:	84 21 ff e8 	l.lwz r1,-24(r1)
    6e94:	84 41 ff ec 	l.lwz r2,-20(r1)
    6e98:	85 c1 ff f0 	l.lwz r14,-16(r1)
    6e9c:	86 41 ff f4 	l.lwz r18,-12(r1)
    6ea0:	44 00 48 00 	l.jr r9
    6ea4:	86 81 ff f8 	l.lwz r20,-8(r1)
    6ea8:	86 4e 00 10 	l.lwz r18,16(r14)
    6eac:	bc 12 00 00 	l.sfeqi r18,0
    6eb0:	10 00 00 36 	l.bf 6f88 <__sflush_r+0x220>
    6eb4:	a4 63 00 03 	l.andi r3,r3,0x3
    6eb8:	84 4e 00 00 	l.lwz r2,0(r14)
    6ebc:	bc 23 00 00 	l.sfnei r3,0
    6ec0:	d4 0e 90 00 	l.sw 0(r14),r18
    6ec4:	e0 42 90 02 	l.sub r2,r2,r18
    6ec8:	10 00 00 03 	l.bf 6ed4 <__sflush_r+0x16c>
    6ecc:	9c 60 00 00 	l.addi r3,r0,0
    6ed0:	84 6e 00 14 	l.lwz r3,20(r14)
    6ed4:	bd a2 00 00 	l.sflesi r2,0
    6ed8:	0c 00 00 07 	l.bnf 6ef4 <__sflush_r+0x18c>
    6edc:	d4 0e 18 08 	l.sw 8(r14),r3
    6ee0:	00 00 00 2b 	l.j 6f8c <__sflush_r+0x224>
    6ee4:	9d 60 00 00 	l.addi r11,r0,0
    6ee8:	bd 42 00 00 	l.sfgtsi r2,0
    6eec:	0c 00 00 28 	l.bnf 6f8c <__sflush_r+0x224>
    6ef0:	9d 60 00 00 	l.addi r11,r0,0
    6ef4:	a8 c2 00 00 	l.ori r6,r2,0x0
    6ef8:	a8 b2 00 00 	l.ori r5,r18,0x0
    6efc:	85 6e 00 24 	l.lwz r11,36(r14)
    6f00:	84 8e 00 1c 	l.lwz r4,28(r14)
    6f04:	48 00 58 00 	l.jalr r11
    6f08:	a8 74 00 00 	l.ori r3,r20,0x0
    6f0c:	bd 4b 00 00 	l.sfgtsi r11,0
    6f10:	e0 42 58 02 	l.sub r2,r2,r11
    6f14:	13 ff ff f5 	l.bf 6ee8 <__sflush_r+0x180>
    6f18:	e2 52 58 00 	l.add r18,r18,r11
    6f1c:	94 4e 00 0c 	l.lhz r2,12(r14)
    6f20:	a8 42 00 40 	l.ori r2,r2,0x40
    6f24:	9d 60 ff ff 	l.addi r11,r0,-1
    6f28:	dc 0e 10 0c 	l.sh 12(r14),r2
    6f2c:	9c 21 00 18 	l.addi r1,r1,24
    6f30:	85 21 ff fc 	l.lwz r9,-4(r1)
    6f34:	84 21 ff e8 	l.lwz r1,-24(r1)
    6f38:	84 41 ff ec 	l.lwz r2,-20(r1)
    6f3c:	85 c1 ff f0 	l.lwz r14,-16(r1)
    6f40:	86 41 ff f4 	l.lwz r18,-12(r1)
    6f44:	44 00 48 00 	l.jr r9
    6f48:	86 81 ff f8 	l.lwz r20,-8(r1)
    6f4c:	84 54 00 00 	l.lwz r2,0(r20)
    6f50:	bc 22 00 00 	l.sfnei r2,0
    6f54:	0c 00 00 3c 	l.bnf 7044 <__sflush_r+0x2dc>
    6f58:	ac 62 00 1d 	l.xori r3,r2,29
    6f5c:	e0 80 18 02 	l.sub r4,r0,r3
    6f60:	e0 64 18 04 	l.or r3,r4,r3
    6f64:	bd 63 00 00 	l.sfgesi r3,0
    6f68:	10 00 00 07 	l.bf 6f84 <__sflush_r+0x21c>
    6f6c:	ac 42 00 16 	l.xori r2,r2,22
    6f70:	e0 60 10 02 	l.sub r3,r0,r2
    6f74:	e0 43 10 04 	l.or r2,r3,r2
    6f78:	bd 82 00 00 	l.sfltsi r2,0
    6f7c:	10 00 00 35 	l.bf 7050 <__sflush_r+0x2e8>
    6f80:	15 00 00 00 	l.nop 0x0
    6f84:	d4 14 90 00 	l.sw 0(r20),r18
    6f88:	9d 60 00 00 	l.addi r11,r0,0
    6f8c:	9c 21 00 18 	l.addi r1,r1,24
    6f90:	85 21 ff fc 	l.lwz r9,-4(r1)
    6f94:	84 21 ff e8 	l.lwz r1,-24(r1)
    6f98:	84 41 ff ec 	l.lwz r2,-20(r1)
    6f9c:	85 c1 ff f0 	l.lwz r14,-16(r1)
    6fa0:	86 41 ff f4 	l.lwz r18,-12(r1)
    6fa4:	44 00 48 00 	l.jr r9
    6fa8:	86 81 ff f8 	l.lwz r20,-8(r1)
    6fac:	84 94 00 00 	l.lwz r4,0(r20)
    6fb0:	bc 44 00 1d 	l.sfgtui r4,29
    6fb4:	13 ff ff da 	l.bf 6f1c <__sflush_r+0x1b4>
    6fb8:	18 40 20 40 	l.movhi r2,0x2040
    6fbc:	a8 42 00 01 	l.ori r2,r2,0x1
    6fc0:	e0 42 20 48 	l.srl r2,r2,r4
    6fc4:	a4 42 00 01 	l.andi r2,r2,0x1
    6fc8:	ac 42 00 01 	l.xori r2,r2,1
    6fcc:	bc 22 00 00 	l.sfnei r2,0
    6fd0:	13 ff ff d3 	l.bf 6f1c <__sflush_r+0x1b4>
    6fd4:	9c a0 f7 ff 	l.addi r5,r0,-2049
    6fd8:	98 6e 00 0c 	l.lhs r3,12(r14)
    6fdc:	84 ce 00 10 	l.lwz r6,16(r14)
    6fe0:	e0 63 28 03 	l.and r3,r3,r5
    6fe4:	d4 0e 10 04 	l.sw 4(r14),r2
    6fe8:	a4 a3 10 00 	l.andi r5,r3,0x1000
    6fec:	dc 0e 18 0c 	l.sh 12(r14),r3
    6ff0:	bc 25 00 00 	l.sfnei r5,0
    6ff4:	0f ff ff 98 	l.bnf 6e54 <__sflush_r+0xec>
    6ff8:	d4 0e 30 00 	l.sw 0(r14),r6
    6ffc:	bc 04 00 00 	l.sfeqi r4,0
    7000:	0f ff ff 95 	l.bnf 6e54 <__sflush_r+0xec>
    7004:	15 00 00 00 	l.nop 0x0
    7008:	03 ff ff 93 	l.j 6e54 <__sflush_r+0xec>
    700c:	d4 0e 58 50 	l.sw 80(r14),r11
    7010:	84 6e 00 3c 	l.lwz r3,60(r14)
    7014:	bd 43 00 00 	l.sfgtsi r3,0
    7018:	13 ff ff 67 	l.bf 6db4 <__sflush_r+0x4c>
    701c:	9d 60 00 00 	l.addi r11,r0,0
    7020:	03 ff ff dc 	l.j 6f90 <__sflush_r+0x228>
    7024:	9c 21 00 18 	l.addi r1,r1,24
    7028:	9c c0 00 01 	l.addi r6,r0,1
    702c:	84 8e 00 1c 	l.lwz r4,28(r14)
    7030:	48 00 58 00 	l.jalr r11
    7034:	a8 74 00 00 	l.ori r3,r20,0x0
    7038:	bc 2b ff ff 	l.sfnei r11,-1
    703c:	0f ff ff c4 	l.bnf 6f4c <__sflush_r+0x1e4>
    7040:	a8 ab 00 00 	l.ori r5,r11,0x0
    7044:	94 4e 00 0c 	l.lhz r2,12(r14)
    7048:	03 ff ff 67 	l.j 6de4 <__sflush_r+0x7c>
    704c:	85 6e 00 28 	l.lwz r11,40(r14)
    7050:	94 4e 00 0c 	l.lhz r2,12(r14)
    7054:	a8 42 00 40 	l.ori r2,r2,0x40
    7058:	03 ff ff b5 	l.j 6f2c <__sflush_r+0x1c4>
    705c:	dc 0e 10 0c 	l.sh 12(r14),r2

00007060 <_fflush_r>:
    7060:	d7 e1 17 f8 	l.sw -8(r1),r2
    7064:	d7 e1 4f fc 	l.sw -4(r1),r9
    7068:	d7 e1 0f f4 	l.sw -12(r1),r1
    706c:	bc 03 00 00 	l.sfeqi r3,0
    7070:	9c 21 ff f0 	l.addi r1,r1,-16
    7074:	10 00 00 06 	l.bf 708c <_fflush_r+0x2c>
    7078:	a8 43 00 00 	l.ori r2,r3,0x0
    707c:	84 a3 00 38 	l.lwz r5,56(r3)
    7080:	bc 25 00 00 	l.sfnei r5,0
    7084:	0c 00 00 0d 	l.bnf 70b8 <_fflush_r+0x58>
    7088:	15 00 00 00 	l.nop 0x0
    708c:	98 64 00 0c 	l.lhs r3,12(r4)
    7090:	bc 03 00 00 	l.sfeqi r3,0
    7094:	10 00 00 04 	l.bf 70a4 <_fflush_r+0x44>
    7098:	9d 60 00 00 	l.addi r11,r0,0
    709c:	07 ff ff 33 	l.jal 6d68 <__sflush_r>
    70a0:	a8 62 00 00 	l.ori r3,r2,0x0
    70a4:	9c 21 00 10 	l.addi r1,r1,16
    70a8:	85 21 ff fc 	l.lwz r9,-4(r1)
    70ac:	84 21 ff f4 	l.lwz r1,-12(r1)
    70b0:	44 00 48 00 	l.jr r9
    70b4:	84 41 ff f8 	l.lwz r2,-8(r1)
    70b8:	04 00 01 19 	l.jal 751c <__sinit>
    70bc:	d4 01 20 00 	l.sw 0(r1),r4
    70c0:	03 ff ff f3 	l.j 708c <_fflush_r+0x2c>
    70c4:	84 81 00 00 	l.lwz r4,0(r1)

000070c8 <fflush>:
    70c8:	d7 e1 4f fc 	l.sw -4(r1),r9
    70cc:	d7 e1 0f f8 	l.sw -8(r1),r1
    70d0:	bc 23 00 00 	l.sfnei r3,0
    70d4:	0c 00 00 0c 	l.bnf 7104 <fflush+0x3c>
    70d8:	9c 21 ff f4 	l.addi r1,r1,-12
    70dc:	04 00 02 db 	l.jal 7c48 <__getreent>
    70e0:	d4 01 18 00 	l.sw 0(r1),r3
    70e4:	84 61 00 00 	l.lwz r3,0(r1)
    70e8:	a8 83 00 00 	l.ori r4,r3,0x0
    70ec:	07 ff ff dd 	l.jal 7060 <_fflush_r>
    70f0:	a8 6b 00 00 	l.ori r3,r11,0x0
    70f4:	9c 21 00 0c 	l.addi r1,r1,12
    70f8:	85 21 ff fc 	l.lwz r9,-4(r1)
    70fc:	44 00 48 00 	l.jr r9
    7100:	84 21 ff f8 	l.lwz r1,-8(r1)
    7104:	18 60 00 01 	l.movhi r3,0x1
    7108:	18 80 00 00 	l.movhi r4,0x0
    710c:	a8 63 19 78 	l.ori r3,r3,0x1978
    7110:	a8 84 70 60 	l.ori r4,r4,0x7060
    7114:	04 00 02 98 	l.jal 7b74 <_fwalk_reent>
    7118:	84 63 00 00 	l.lwz r3,0(r3)
    711c:	9c 21 00 0c 	l.addi r1,r1,12
    7120:	85 21 ff fc 	l.lwz r9,-4(r1)
    7124:	44 00 48 00 	l.jr r9
    7128:	84 21 ff f8 	l.lwz r1,-8(r1)

0000712c <__fp_unlock>:
    712c:	d7 e1 0f fc 	l.sw -4(r1),r1
    7130:	9c 21 ff fc 	l.addi r1,r1,-4
    7134:	9d 60 00 00 	l.addi r11,r0,0
    7138:	9c 21 00 04 	l.addi r1,r1,4
    713c:	44 00 48 00 	l.jr r9
    7140:	84 21 ff fc 	l.lwz r1,-4(r1)

00007144 <_cleanup_r>:
    7144:	18 80 00 00 	l.movhi r4,0x0
    7148:	d7 e1 4f fc 	l.sw -4(r1),r9
    714c:	d7 e1 0f f8 	l.sw -8(r1),r1
    7150:	a8 84 be 4c 	l.ori r4,r4,0xbe4c
    7154:	04 00 02 88 	l.jal 7b74 <_fwalk_reent>
    7158:	9c 21 ff f8 	l.addi r1,r1,-8
    715c:	9c 21 00 08 	l.addi r1,r1,8
    7160:	85 21 ff fc 	l.lwz r9,-4(r1)
    7164:	44 00 48 00 	l.jr r9
    7168:	84 21 ff f8 	l.lwz r1,-8(r1)

0000716c <__sinit.part.1>:
    716c:	18 80 00 00 	l.movhi r4,0x0
    7170:	d7 e1 a7 e4 	l.sw -28(r1),r20
    7174:	a8 84 71 44 	l.ori r4,r4,0x7144
    7178:	aa 83 00 00 	l.ori r20,r3,0x0
    717c:	d7 e1 4f fc 	l.sw -4(r1),r9
    7180:	d7 e1 17 d8 	l.sw -40(r1),r2
    7184:	d7 e1 77 dc 	l.sw -36(r1),r14
    7188:	d7 e1 97 e0 	l.sw -32(r1),r18
    718c:	d7 e1 b7 e8 	l.sw -24(r1),r22
    7190:	d7 e1 c7 ec 	l.sw -20(r1),r24
    7194:	d7 e1 d7 f0 	l.sw -16(r1),r26
    7198:	d7 e1 e7 f4 	l.sw -12(r1),r28
    719c:	d7 e1 f7 f8 	l.sw -8(r1),r30
    71a0:	d7 e1 0f d4 	l.sw -44(r1),r1
    71a4:	9c 40 00 00 	l.addi r2,r0,0
    71a8:	d4 14 20 3c 	l.sw 60(r20),r4
    71ac:	9c 63 02 ec 	l.addi r3,r3,748
    71b0:	9c 80 00 03 	l.addi r4,r0,3
    71b4:	85 d4 00 04 	l.lwz r14,4(r20)
    71b8:	9c c0 00 04 	l.addi r6,r0,4
    71bc:	d4 14 12 e0 	l.sw 736(r20),r2
    71c0:	d4 14 22 e4 	l.sw 740(r20),r4
    71c4:	d4 14 1a e8 	l.sw 744(r20),r3
    71c8:	9c 21 ff d4 	l.addi r1,r1,-44
    71cc:	a8 82 00 00 	l.ori r4,r2,0x0
    71d0:	9c 6e 00 5c 	l.addi r3,r14,92
    71d4:	d4 0e 10 00 	l.sw 0(r14),r2
    71d8:	d4 0e 10 04 	l.sw 4(r14),r2
    71dc:	d4 0e 10 08 	l.sw 8(r14),r2
    71e0:	dc 0e 30 0c 	l.sh 12(r14),r6
    71e4:	d4 0e 10 64 	l.sw 100(r14),r2
    71e8:	dc 0e 10 0e 	l.sh 14(r14),r2
    71ec:	d4 0e 10 10 	l.sw 16(r14),r2
    71f0:	d4 0e 10 14 	l.sw 20(r14),r2
    71f4:	d4 0e 10 18 	l.sw 24(r14),r2
    71f8:	9c a0 00 08 	l.addi r5,r0,8
    71fc:	1b 80 00 00 	l.movhi r28,0x0
    7200:	1b 40 00 00 	l.movhi r26,0x0
    7204:	1b 00 00 00 	l.movhi r24,0x0
    7208:	04 00 06 8f 	l.jal 8c44 <memset>
    720c:	1a c0 00 00 	l.movhi r22,0x0
    7210:	ab 9c a3 10 	l.ori r28,r28,0xa310
    7214:	ab 5a a3 90 	l.ori r26,r26,0xa390
    7218:	ab 18 a4 20 	l.ori r24,r24,0xa420
    721c:	aa d6 a4 88 	l.ori r22,r22,0xa488
    7220:	86 54 00 08 	l.lwz r18,8(r20)
    7224:	9f c0 00 01 	l.addi r30,r0,1
    7228:	9c c0 00 09 	l.addi r6,r0,9
    722c:	d4 0e e0 20 	l.sw 32(r14),r28
    7230:	d4 0e d0 24 	l.sw 36(r14),r26
    7234:	d4 0e c0 28 	l.sw 40(r14),r24
    7238:	d4 0e b0 2c 	l.sw 44(r14),r22
    723c:	d4 0e 70 1c 	l.sw 28(r14),r14
    7240:	a8 82 00 00 	l.ori r4,r2,0x0
    7244:	9c 72 00 5c 	l.addi r3,r18,92
    7248:	d4 12 10 00 	l.sw 0(r18),r2
    724c:	d4 12 10 04 	l.sw 4(r18),r2
    7250:	d4 12 10 08 	l.sw 8(r18),r2
    7254:	dc 12 30 0c 	l.sh 12(r18),r6
    7258:	d4 12 10 64 	l.sw 100(r18),r2
    725c:	dc 12 f0 0e 	l.sh 14(r18),r30
    7260:	d4 12 10 10 	l.sw 16(r18),r2
    7264:	d4 12 10 14 	l.sw 20(r18),r2
    7268:	d4 12 10 18 	l.sw 24(r18),r2
    726c:	04 00 06 76 	l.jal 8c44 <memset>
    7270:	9c a0 00 08 	l.addi r5,r0,8
    7274:	9c 60 00 12 	l.addi r3,r0,18
    7278:	85 d4 00 0c 	l.lwz r14,12(r20)
    727c:	9c c0 00 02 	l.addi r6,r0,2
    7280:	d4 12 e0 20 	l.sw 32(r18),r28
    7284:	d4 12 d0 24 	l.sw 36(r18),r26
    7288:	d4 12 c0 28 	l.sw 40(r18),r24
    728c:	d4 12 b0 2c 	l.sw 44(r18),r22
    7290:	d4 12 90 1c 	l.sw 28(r18),r18
    7294:	d4 0e 10 00 	l.sw 0(r14),r2
    7298:	d4 0e 10 04 	l.sw 4(r14),r2
    729c:	d4 0e 10 08 	l.sw 8(r14),r2
    72a0:	dc 0e 18 0c 	l.sh 12(r14),r3
    72a4:	d4 0e 10 64 	l.sw 100(r14),r2
    72a8:	d4 0e 10 10 	l.sw 16(r14),r2
    72ac:	d4 0e 10 14 	l.sw 20(r14),r2
    72b0:	d4 0e 10 18 	l.sw 24(r14),r2
    72b4:	dc 0e 30 0e 	l.sh 14(r14),r6
    72b8:	a8 82 00 00 	l.ori r4,r2,0x0
    72bc:	9c 6e 00 5c 	l.addi r3,r14,92
    72c0:	04 00 06 61 	l.jal 8c44 <memset>
    72c4:	9c a0 00 08 	l.addi r5,r0,8
    72c8:	d4 0e e0 20 	l.sw 32(r14),r28
    72cc:	d4 0e d0 24 	l.sw 36(r14),r26
    72d0:	d4 0e c0 28 	l.sw 40(r14),r24
    72d4:	d4 0e b0 2c 	l.sw 44(r14),r22
    72d8:	d4 0e 70 1c 	l.sw 28(r14),r14
    72dc:	d4 14 f0 38 	l.sw 56(r20),r30
    72e0:	9c 21 00 2c 	l.addi r1,r1,44
    72e4:	85 21 ff fc 	l.lwz r9,-4(r1)
    72e8:	84 21 ff d4 	l.lwz r1,-44(r1)
    72ec:	84 41 ff d8 	l.lwz r2,-40(r1)
    72f0:	85 c1 ff dc 	l.lwz r14,-36(r1)
    72f4:	86 41 ff e0 	l.lwz r18,-32(r1)
    72f8:	86 81 ff e4 	l.lwz r20,-28(r1)
    72fc:	86 c1 ff e8 	l.lwz r22,-24(r1)
    7300:	87 01 ff ec 	l.lwz r24,-20(r1)
    7304:	87 41 ff f0 	l.lwz r26,-16(r1)
    7308:	87 81 ff f4 	l.lwz r28,-12(r1)
    730c:	44 00 48 00 	l.jr r9
    7310:	87 c1 ff f8 	l.lwz r30,-8(r1)

00007314 <__fp_lock>:
    7314:	d7 e1 0f fc 	l.sw -4(r1),r1
    7318:	9c 21 ff fc 	l.addi r1,r1,-4
    731c:	9d 60 00 00 	l.addi r11,r0,0
    7320:	9c 21 00 04 	l.addi r1,r1,4
    7324:	44 00 48 00 	l.jr r9
    7328:	84 21 ff fc 	l.lwz r1,-4(r1)

0000732c <__sfmoreglue>:
    732c:	d7 e1 17 f0 	l.sw -16(r1),r2
    7330:	d7 e1 77 f4 	l.sw -12(r1),r14
    7334:	9c 44 ff ff 	l.addi r2,r4,-1
    7338:	9d c0 00 68 	l.addi r14,r0,104
    733c:	d7 e1 97 f8 	l.sw -8(r1),r18
    7340:	e1 c2 73 06 	l.mul r14,r2,r14
    7344:	d7 e1 4f fc 	l.sw -4(r1),r9
    7348:	d7 e1 0f ec 	l.sw -20(r1),r1
    734c:	aa 44 00 00 	l.ori r18,r4,0x0
    7350:	9c 21 ff ec 	l.addi r1,r1,-20
    7354:	04 00 03 17 	l.jal 7fb0 <_malloc_r>
    7358:	9c 8e 00 74 	l.addi r4,r14,116
    735c:	bc 0b 00 00 	l.sfeqi r11,0
    7360:	10 00 00 09 	l.bf 7384 <__sfmoreglue+0x58>
    7364:	a8 4b 00 00 	l.ori r2,r11,0x0
    7368:	9c 6b 00 0c 	l.addi r3,r11,12
    736c:	9c 80 00 00 	l.addi r4,r0,0
    7370:	d4 0b 90 04 	l.sw 4(r11),r18
    7374:	d4 0b 20 00 	l.sw 0(r11),r4
    7378:	d4 0b 18 08 	l.sw 8(r11),r3
    737c:	04 00 06 32 	l.jal 8c44 <memset>
    7380:	9c ae 00 68 	l.addi r5,r14,104
    7384:	9c 21 00 14 	l.addi r1,r1,20
    7388:	a9 62 00 00 	l.ori r11,r2,0x0
    738c:	85 21 ff fc 	l.lwz r9,-4(r1)
    7390:	84 21 ff ec 	l.lwz r1,-20(r1)
    7394:	84 41 ff f0 	l.lwz r2,-16(r1)
    7398:	85 c1 ff f4 	l.lwz r14,-12(r1)
    739c:	44 00 48 00 	l.jr r9
    73a0:	86 41 ff f8 	l.lwz r18,-8(r1)

000073a4 <__sfp>:
    73a4:	d7 e1 17 f0 	l.sw -16(r1),r2
    73a8:	18 40 00 01 	l.movhi r2,0x1
    73ac:	d7 e1 77 f4 	l.sw -12(r1),r14
    73b0:	a8 42 19 78 	l.ori r2,r2,0x1978
    73b4:	d7 e1 97 f8 	l.sw -8(r1),r18
    73b8:	85 c2 00 00 	l.lwz r14,0(r2)
    73bc:	d7 e1 4f fc 	l.sw -4(r1),r9
    73c0:	84 4e 00 38 	l.lwz r2,56(r14)
    73c4:	d7 e1 0f ec 	l.sw -20(r1),r1
    73c8:	bc 22 00 00 	l.sfnei r2,0
    73cc:	9c 21 ff ec 	l.addi r1,r1,-20
    73d0:	10 00 00 04 	l.bf 73e0 <__sfp+0x3c>
    73d4:	aa 43 00 00 	l.ori r18,r3,0x0
    73d8:	07 ff ff 65 	l.jal 716c <__sinit.part.1>
    73dc:	a8 6e 00 00 	l.ori r3,r14,0x0
    73e0:	9d ce 02 e0 	l.addi r14,r14,736
    73e4:	84 8e 00 04 	l.lwz r4,4(r14)
    73e8:	9c 84 ff ff 	l.addi r4,r4,-1
    73ec:	bd 84 00 00 	l.sfltsi r4,0
    73f0:	10 00 00 11 	l.bf 7434 <__sfp+0x90>
    73f4:	84 4e 00 08 	l.lwz r2,8(r14)
    73f8:	98 62 00 0c 	l.lhs r3,12(r2)
    73fc:	bc 03 00 00 	l.sfeqi r3,0
    7400:	10 00 00 13 	l.bf 744c <__sfp+0xa8>
    7404:	15 00 00 00 	l.nop 0x0
    7408:	00 00 00 06 	l.j 7420 <__sfp+0x7c>
    740c:	9c 62 00 74 	l.addi r3,r2,116
    7410:	98 a3 ff 98 	l.lhs r5,-104(r3)
    7414:	bc 05 00 00 	l.sfeqi r5,0
    7418:	10 00 00 0d 	l.bf 744c <__sfp+0xa8>
    741c:	15 00 00 00 	l.nop 0x0
    7420:	9c 84 ff ff 	l.addi r4,r4,-1
    7424:	9c 43 ff f4 	l.addi r2,r3,-12
    7428:	bc 24 ff ff 	l.sfnei r4,-1
    742c:	13 ff ff f9 	l.bf 7410 <__sfp+0x6c>
    7430:	9c 63 00 68 	l.addi r3,r3,104
    7434:	84 4e 00 00 	l.lwz r2,0(r14)
    7438:	bc 22 00 00 	l.sfnei r2,0
    743c:	0c 00 00 21 	l.bnf 74c0 <__sfp+0x11c>
    7440:	9c 80 00 04 	l.addi r4,r0,4
    7444:	03 ff ff e8 	l.j 73e4 <__sfp+0x40>
    7448:	a9 c2 00 00 	l.ori r14,r2,0x0
    744c:	9c 60 ff ff 	l.addi r3,r0,-1
    7450:	9c a0 00 08 	l.addi r5,r0,8
    7454:	dc 02 18 0e 	l.sh 14(r2),r3
    7458:	9c 60 00 01 	l.addi r3,r0,1
    745c:	dc 02 18 0c 	l.sh 12(r2),r3
    7460:	9c 60 00 00 	l.addi r3,r0,0
    7464:	d4 02 18 64 	l.sw 100(r2),r3
    7468:	d4 02 18 00 	l.sw 0(r2),r3
    746c:	d4 02 18 08 	l.sw 8(r2),r3
    7470:	d4 02 18 04 	l.sw 4(r2),r3
    7474:	d4 02 18 10 	l.sw 16(r2),r3
    7478:	d4 02 18 14 	l.sw 20(r2),r3
    747c:	d4 02 18 18 	l.sw 24(r2),r3
    7480:	a8 83 00 00 	l.ori r4,r3,0x0
    7484:	04 00 05 f0 	l.jal 8c44 <memset>
    7488:	9c 62 00 5c 	l.addi r3,r2,92
    748c:	9c 60 00 00 	l.addi r3,r0,0
    7490:	a9 62 00 00 	l.ori r11,r2,0x0
    7494:	d4 02 18 30 	l.sw 48(r2),r3
    7498:	d4 02 18 34 	l.sw 52(r2),r3
    749c:	d4 02 18 44 	l.sw 68(r2),r3
    74a0:	d4 02 18 48 	l.sw 72(r2),r3
    74a4:	9c 21 00 14 	l.addi r1,r1,20
    74a8:	85 21 ff fc 	l.lwz r9,-4(r1)
    74ac:	84 21 ff ec 	l.lwz r1,-20(r1)
    74b0:	84 41 ff f0 	l.lwz r2,-16(r1)
    74b4:	85 c1 ff f4 	l.lwz r14,-12(r1)
    74b8:	44 00 48 00 	l.jr r9
    74bc:	86 41 ff f8 	l.lwz r18,-8(r1)
    74c0:	07 ff ff 9b 	l.jal 732c <__sfmoreglue>
    74c4:	a8 72 00 00 	l.ori r3,r18,0x0
    74c8:	bc 0b 00 00 	l.sfeqi r11,0
    74cc:	10 00 00 04 	l.bf 74dc <__sfp+0x138>
    74d0:	d4 0e 58 00 	l.sw 0(r14),r11
    74d4:	03 ff ff c4 	l.j 73e4 <__sfp+0x40>
    74d8:	a9 cb 00 00 	l.ori r14,r11,0x0
    74dc:	9c 40 00 0c 	l.addi r2,r0,12
    74e0:	03 ff ff f1 	l.j 74a4 <__sfp+0x100>
    74e4:	d4 12 10 00 	l.sw 0(r18),r2

000074e8 <_cleanup>:
    74e8:	18 60 00 01 	l.movhi r3,0x1
    74ec:	18 80 00 00 	l.movhi r4,0x0
    74f0:	a8 63 19 78 	l.ori r3,r3,0x1978
    74f4:	d7 e1 4f fc 	l.sw -4(r1),r9
    74f8:	d7 e1 0f f8 	l.sw -8(r1),r1
    74fc:	a8 84 be 4c 	l.ori r4,r4,0xbe4c
    7500:	9c 21 ff f8 	l.addi r1,r1,-8
    7504:	04 00 01 9c 	l.jal 7b74 <_fwalk_reent>
    7508:	84 63 00 00 	l.lwz r3,0(r3)
    750c:	9c 21 00 08 	l.addi r1,r1,8
    7510:	85 21 ff fc 	l.lwz r9,-4(r1)
    7514:	44 00 48 00 	l.jr r9
    7518:	84 21 ff f8 	l.lwz r1,-8(r1)

0000751c <__sinit>:
    751c:	84 83 00 38 	l.lwz r4,56(r3)
    7520:	d7 e1 4f fc 	l.sw -4(r1),r9
    7524:	d7 e1 0f f8 	l.sw -8(r1),r1
    7528:	bc 24 00 00 	l.sfnei r4,0
    752c:	10 00 00 04 	l.bf 753c <__sinit+0x20>
    7530:	9c 21 ff f8 	l.addi r1,r1,-8
    7534:	07 ff ff 0e 	l.jal 716c <__sinit.part.1>
    7538:	15 00 00 00 	l.nop 0x0
    753c:	9c 21 00 08 	l.addi r1,r1,8
    7540:	85 21 ff fc 	l.lwz r9,-4(r1)
    7544:	44 00 48 00 	l.jr r9
    7548:	84 21 ff f8 	l.lwz r1,-8(r1)

0000754c <__sfp_lock_acquire>:
    754c:	d7 e1 0f fc 	l.sw -4(r1),r1
    7550:	9c 21 ff fc 	l.addi r1,r1,-4
    7554:	9c 21 00 04 	l.addi r1,r1,4
    7558:	44 00 48 00 	l.jr r9
    755c:	84 21 ff fc 	l.lwz r1,-4(r1)

00007560 <__sfp_lock_release>:
    7560:	d7 e1 0f fc 	l.sw -4(r1),r1
    7564:	9c 21 ff fc 	l.addi r1,r1,-4
    7568:	9c 21 00 04 	l.addi r1,r1,4
    756c:	44 00 48 00 	l.jr r9
    7570:	84 21 ff fc 	l.lwz r1,-4(r1)

00007574 <__sinit_lock_acquire>:
    7574:	d7 e1 0f fc 	l.sw -4(r1),r1
    7578:	9c 21 ff fc 	l.addi r1,r1,-4
    757c:	9c 21 00 04 	l.addi r1,r1,4
    7580:	44 00 48 00 	l.jr r9
    7584:	84 21 ff fc 	l.lwz r1,-4(r1)

00007588 <__sinit_lock_release>:
    7588:	d7 e1 0f fc 	l.sw -4(r1),r1
    758c:	9c 21 ff fc 	l.addi r1,r1,-4
    7590:	9c 21 00 04 	l.addi r1,r1,4
    7594:	44 00 48 00 	l.jr r9
    7598:	84 21 ff fc 	l.lwz r1,-4(r1)

0000759c <__fp_lock_all>:
    759c:	d7 e1 4f fc 	l.sw -4(r1),r9
    75a0:	d7 e1 0f f8 	l.sw -8(r1),r1
    75a4:	04 00 01 a9 	l.jal 7c48 <__getreent>
    75a8:	9c 21 ff f8 	l.addi r1,r1,-8
    75ac:	18 80 00 00 	l.movhi r4,0x0
    75b0:	a8 6b 00 00 	l.ori r3,r11,0x0
    75b4:	04 00 01 3a 	l.jal 7a9c <_fwalk>
    75b8:	a8 84 73 14 	l.ori r4,r4,0x7314
    75bc:	9c 21 00 08 	l.addi r1,r1,8
    75c0:	85 21 ff fc 	l.lwz r9,-4(r1)
    75c4:	44 00 48 00 	l.jr r9
    75c8:	84 21 ff f8 	l.lwz r1,-8(r1)

000075cc <__fp_unlock_all>:
    75cc:	d7 e1 4f fc 	l.sw -4(r1),r9
    75d0:	d7 e1 0f f8 	l.sw -8(r1),r1
    75d4:	04 00 01 9d 	l.jal 7c48 <__getreent>
    75d8:	9c 21 ff f8 	l.addi r1,r1,-8
    75dc:	18 80 00 00 	l.movhi r4,0x0
    75e0:	a8 6b 00 00 	l.ori r3,r11,0x0
    75e4:	04 00 01 2e 	l.jal 7a9c <_fwalk>
    75e8:	a8 84 71 2c 	l.ori r4,r4,0x712c
    75ec:	9c 21 00 08 	l.addi r1,r1,8
    75f0:	85 21 ff fc 	l.lwz r9,-4(r1)
    75f4:	44 00 48 00 	l.jr r9
    75f8:	84 21 ff f8 	l.lwz r1,-8(r1)

000075fc <_malloc_trim_r>:
    75fc:	d7 e1 a7 f8 	l.sw -8(r1),r20
    7600:	1a 80 00 01 	l.movhi r20,0x1
    7604:	d7 e1 17 ec 	l.sw -20(r1),r2
    7608:	d7 e1 77 f0 	l.sw -16(r1),r14
    760c:	d7 e1 97 f4 	l.sw -12(r1),r18
    7610:	d7 e1 4f fc 	l.sw -4(r1),r9
    7614:	d7 e1 0f e8 	l.sw -24(r1),r1
    7618:	9c 21 ff e8 	l.addi r1,r1,-24
    761c:	aa 94 25 18 	l.ori r20,r20,0x2518
    7620:	a8 44 00 00 	l.ori r2,r4,0x0
    7624:	04 00 05 e2 	l.jal 8dac <__malloc_lock>
    7628:	aa 43 00 00 	l.ori r18,r3,0x0
    762c:	84 74 00 08 	l.lwz r3,8(r20)
    7630:	85 c3 00 04 	l.lwz r14,4(r3)
    7634:	9c 60 ff fc 	l.addi r3,r0,-4
    7638:	e1 ce 18 03 	l.and r14,r14,r3
    763c:	9c 60 f0 00 	l.addi r3,r0,-4096
    7640:	e0 4e 10 02 	l.sub r2,r14,r2
    7644:	9c 42 0f ef 	l.addi r2,r2,4079
    7648:	e0 42 18 03 	l.and r2,r2,r3
    764c:	e0 42 18 00 	l.add r2,r2,r3
    7650:	bd 42 0f ff 	l.sfgtsi r2,4095
    7654:	0c 00 00 09 	l.bnf 7678 <_malloc_trim_r+0x7c>
    7658:	a8 72 00 00 	l.ori r3,r18,0x0
    765c:	04 00 19 a4 	l.jal dcec <_sbrk_r>
    7660:	9c 80 00 00 	l.addi r4,r0,0
    7664:	84 74 00 08 	l.lwz r3,8(r20)
    7668:	e0 63 70 00 	l.add r3,r3,r14
    766c:	e4 2b 18 00 	l.sfne r11,r3
    7670:	0c 00 00 0d 	l.bnf 76a4 <_malloc_trim_r+0xa8>
    7674:	e0 80 10 02 	l.sub r4,r0,r2
    7678:	04 00 05 f7 	l.jal 8e54 <__malloc_unlock>
    767c:	a8 72 00 00 	l.ori r3,r18,0x0
    7680:	9c 21 00 18 	l.addi r1,r1,24
    7684:	9d 60 00 00 	l.addi r11,r0,0
    7688:	85 21 ff fc 	l.lwz r9,-4(r1)
    768c:	84 21 ff e8 	l.lwz r1,-24(r1)
    7690:	84 41 ff ec 	l.lwz r2,-20(r1)
    7694:	85 c1 ff f0 	l.lwz r14,-16(r1)
    7698:	86 41 ff f4 	l.lwz r18,-12(r1)
    769c:	44 00 48 00 	l.jr r9
    76a0:	86 81 ff f8 	l.lwz r20,-8(r1)
    76a4:	04 00 19 92 	l.jal dcec <_sbrk_r>
    76a8:	a8 72 00 00 	l.ori r3,r18,0x0
    76ac:	bc 2b ff ff 	l.sfnei r11,-1
    76b0:	0c 00 00 15 	l.bnf 7704 <_malloc_trim_r+0x108>
    76b4:	18 80 00 01 	l.movhi r4,0x1
    76b8:	e1 ce 10 02 	l.sub r14,r14,r2
    76bc:	a8 84 2d 80 	l.ori r4,r4,0x2d80
    76c0:	84 b4 00 08 	l.lwz r5,8(r20)
    76c4:	84 64 00 00 	l.lwz r3,0(r4)
    76c8:	a9 ce 00 01 	l.ori r14,r14,0x1
    76cc:	e0 43 10 02 	l.sub r2,r3,r2
    76d0:	d4 05 70 04 	l.sw 4(r5),r14
    76d4:	a8 72 00 00 	l.ori r3,r18,0x0
    76d8:	04 00 05 df 	l.jal 8e54 <__malloc_unlock>
    76dc:	d4 04 10 00 	l.sw 0(r4),r2
    76e0:	9c 21 00 18 	l.addi r1,r1,24
    76e4:	9d 60 00 01 	l.addi r11,r0,1
    76e8:	85 21 ff fc 	l.lwz r9,-4(r1)
    76ec:	84 21 ff e8 	l.lwz r1,-24(r1)
    76f0:	84 41 ff ec 	l.lwz r2,-20(r1)
    76f4:	85 c1 ff f0 	l.lwz r14,-16(r1)
    76f8:	86 41 ff f4 	l.lwz r18,-12(r1)
    76fc:	44 00 48 00 	l.jr r9
    7700:	86 81 ff f8 	l.lwz r20,-8(r1)
    7704:	a8 72 00 00 	l.ori r3,r18,0x0
    7708:	04 00 19 79 	l.jal dcec <_sbrk_r>
    770c:	9c 80 00 00 	l.addi r4,r0,0
    7710:	84 74 00 08 	l.lwz r3,8(r20)
    7714:	e0 4b 18 02 	l.sub r2,r11,r3
    7718:	bd a2 00 0f 	l.sflesi r2,15
    771c:	13 ff ff d7 	l.bf 7678 <_malloc_trim_r+0x7c>
    7720:	18 80 00 01 	l.movhi r4,0x1
    7724:	a8 42 00 01 	l.ori r2,r2,0x1
    7728:	a8 84 25 10 	l.ori r4,r4,0x2510
    772c:	d4 03 10 04 	l.sw 4(r3),r2
    7730:	84 84 00 00 	l.lwz r4,0(r4)
    7734:	18 40 00 01 	l.movhi r2,0x1
    7738:	e1 6b 20 02 	l.sub r11,r11,r4
    773c:	a8 42 2d 80 	l.ori r2,r2,0x2d80
    7740:	03 ff ff ce 	l.j 7678 <_malloc_trim_r+0x7c>
    7744:	d4 02 58 00 	l.sw 0(r2),r11

00007748 <_free_r>:
    7748:	d7 e1 17 f8 	l.sw -8(r1),r2
    774c:	d7 e1 4f fc 	l.sw -4(r1),r9
    7750:	d7 e1 0f f4 	l.sw -12(r1),r1
    7754:	bc 04 00 00 	l.sfeqi r4,0
    7758:	9c 21 ff f0 	l.addi r1,r1,-16
    775c:	10 00 00 42 	l.bf 7864 <_free_r+0x11c>
    7760:	a8 43 00 00 	l.ori r2,r3,0x0
    7764:	04 00 05 92 	l.jal 8dac <__malloc_lock>
    7768:	d4 01 20 00 	l.sw 0(r1),r4
    776c:	84 81 00 00 	l.lwz r4,0(r1)
    7770:	9c a0 ff fe 	l.addi r5,r0,-2
    7774:	85 04 ff fc 	l.lwz r8,-4(r4)
    7778:	19 60 00 01 	l.movhi r11,0x1
    777c:	e0 68 28 03 	l.and r3,r8,r5
    7780:	9c c4 ff f8 	l.addi r6,r4,-8
    7784:	a9 6b 25 18 	l.ori r11,r11,0x2518
    7788:	e0 e6 18 00 	l.add r7,r6,r3
    778c:	85 8b 00 08 	l.lwz r12,8(r11)
    7790:	84 a7 00 04 	l.lwz r5,4(r7)
    7794:	e4 27 60 00 	l.sfne r7,r12
    7798:	9d 80 ff fc 	l.addi r12,r0,-4
    779c:	a5 08 00 01 	l.andi r8,r8,0x1
    77a0:	0c 00 00 64 	l.bnf 7930 <_free_r+0x1e8>
    77a4:	e0 a5 60 03 	l.and r5,r5,r12
    77a8:	bc 28 00 00 	l.sfnei r8,0
    77ac:	10 00 00 0e 	l.bf 77e4 <_free_r+0x9c>
    77b0:	d4 07 28 04 	l.sw 4(r7),r5
    77b4:	84 84 ff f8 	l.lwz r4,-8(r4)
    77b8:	19 00 00 01 	l.movhi r8,0x1
    77bc:	e0 c6 20 02 	l.sub r6,r6,r4
    77c0:	e0 63 20 00 	l.add r3,r3,r4
    77c4:	a9 08 25 20 	l.ori r8,r8,0x2520
    77c8:	84 86 00 08 	l.lwz r4,8(r6)
    77cc:	e4 04 40 00 	l.sfeq r4,r8
    77d0:	10 00 00 71 	l.bf 7994 <_free_r+0x24c>
    77d4:	15 00 00 00 	l.nop 0x0
    77d8:	85 06 00 0c 	l.lwz r8,12(r6)
    77dc:	d4 04 40 0c 	l.sw 12(r4),r8
    77e0:	d4 08 20 08 	l.sw 8(r8),r4
    77e4:	e0 87 28 00 	l.add r4,r7,r5
    77e8:	84 84 00 04 	l.lwz r4,4(r4)
    77ec:	a4 84 00 01 	l.andi r4,r4,0x1
    77f0:	bc 04 00 00 	l.sfeqi r4,0
    77f4:	10 00 00 41 	l.bf 78f8 <_free_r+0x1b0>
    77f8:	e0 86 18 00 	l.add r4,r6,r3
    77fc:	a8 a3 00 01 	l.ori r5,r3,0x1
    7800:	d4 06 28 04 	l.sw 4(r6),r5
    7804:	d4 04 18 00 	l.sw 0(r4),r3
    7808:	bc 43 01 ff 	l.sfgtui r3,511
    780c:	10 00 00 1b 	l.bf 7878 <_free_r+0x130>
    7810:	b8 a3 00 49 	l.srli r5,r3,0x9
    7814:	b8 63 00 43 	l.srli r3,r3,0x3
    7818:	19 80 00 01 	l.movhi r12,0x1
    781c:	9c e0 00 01 	l.addi r7,r0,1
    7820:	b8 83 00 03 	l.slli r4,r3,0x3
    7824:	b8 63 00 82 	l.srai r3,r3,0x2
    7828:	a9 8c 25 18 	l.ori r12,r12,0x2518
    782c:	9c 84 00 08 	l.addi r4,r4,8
    7830:	e0 67 18 08 	l.sll r3,r7,r3
    7834:	84 ab 00 04 	l.lwz r5,4(r11)
    7838:	e0 84 60 00 	l.add r4,r4,r12
    783c:	e0 63 28 04 	l.or r3,r3,r5
    7840:	9c e4 ff f8 	l.addi r7,r4,-8
    7844:	84 a4 00 00 	l.lwz r5,0(r4)
    7848:	d4 06 38 0c 	l.sw 12(r6),r7
    784c:	d4 06 28 08 	l.sw 8(r6),r5
    7850:	d4 0b 18 04 	l.sw 4(r11),r3
    7854:	d4 04 30 00 	l.sw 0(r4),r6
    7858:	d4 05 30 0c 	l.sw 12(r5),r6
    785c:	04 00 05 7e 	l.jal 8e54 <__malloc_unlock>
    7860:	a8 62 00 00 	l.ori r3,r2,0x0
    7864:	9c 21 00 10 	l.addi r1,r1,16
    7868:	85 21 ff fc 	l.lwz r9,-4(r1)
    786c:	84 21 ff f4 	l.lwz r1,-12(r1)
    7870:	44 00 48 00 	l.jr r9
    7874:	84 41 ff f8 	l.lwz r2,-8(r1)
    7878:	bc 45 00 04 	l.sfgtui r5,4
    787c:	10 00 00 56 	l.bf 79d4 <_free_r+0x28c>
    7880:	bc 45 00 14 	l.sfgtui r5,20
    7884:	b8 a3 00 46 	l.srli r5,r3,0x6
    7888:	9c 85 00 39 	l.addi r4,r5,57
    788c:	9c a5 00 38 	l.addi r5,r5,56
    7890:	e0 84 20 00 	l.add r4,r4,r4
    7894:	18 e0 00 01 	l.movhi r7,0x1
    7898:	b8 84 00 02 	l.slli r4,r4,0x2
    789c:	a8 e7 25 18 	l.ori r7,r7,0x2518
    78a0:	e0 84 38 00 	l.add r4,r4,r7
    78a4:	9c e4 ff f8 	l.addi r7,r4,-8
    78a8:	84 84 00 00 	l.lwz r4,0(r4)
    78ac:	e4 27 20 00 	l.sfne r7,r4
    78b0:	0c 00 00 4f 	l.bnf 79ec <_free_r+0x2a4>
    78b4:	b8 a5 00 82 	l.srai r5,r5,0x2
    78b8:	84 a4 00 04 	l.lwz r5,4(r4)
    78bc:	9d 00 ff fc 	l.addi r8,r0,-4
    78c0:	e0 a5 40 03 	l.and r5,r5,r8
    78c4:	e4 83 28 00 	l.sfltu r3,r5
    78c8:	0c 00 00 06 	l.bnf 78e0 <_free_r+0x198>
    78cc:	15 00 00 00 	l.nop 0x0
    78d0:	84 84 00 08 	l.lwz r4,8(r4)
    78d4:	e4 27 20 00 	l.sfne r7,r4
    78d8:	13 ff ff f8 	l.bf 78b8 <_free_r+0x170>
    78dc:	15 00 00 00 	l.nop 0x0
    78e0:	84 e4 00 0c 	l.lwz r7,12(r4)
    78e4:	d4 06 38 0c 	l.sw 12(r6),r7
    78e8:	d4 06 20 08 	l.sw 8(r6),r4
    78ec:	d4 07 30 08 	l.sw 8(r7),r6
    78f0:	03 ff ff db 	l.j 785c <_free_r+0x114>
    78f4:	d4 04 30 0c 	l.sw 12(r4),r6
    78f8:	19 80 00 01 	l.movhi r12,0x1
    78fc:	84 87 00 08 	l.lwz r4,8(r7)
    7900:	a9 8c 25 20 	l.ori r12,r12,0x2520
    7904:	e4 04 60 00 	l.sfeq r4,r12
    7908:	10 00 00 40 	l.bf 7a08 <_free_r+0x2c0>
    790c:	e0 63 28 00 	l.add r3,r3,r5
    7910:	84 e7 00 0c 	l.lwz r7,12(r7)
    7914:	a8 a3 00 01 	l.ori r5,r3,0x1
    7918:	d4 04 38 0c 	l.sw 12(r4),r7
    791c:	d4 07 20 08 	l.sw 8(r7),r4
    7920:	e0 86 18 00 	l.add r4,r6,r3
    7924:	d4 06 28 04 	l.sw 4(r6),r5
    7928:	03 ff ff b8 	l.j 7808 <_free_r+0xc0>
    792c:	d4 04 18 00 	l.sw 0(r4),r3
    7930:	bc 28 00 00 	l.sfnei r8,0
    7934:	10 00 00 09 	l.bf 7958 <_free_r+0x210>
    7938:	e0 63 28 00 	l.add r3,r3,r5
    793c:	84 84 ff f8 	l.lwz r4,-8(r4)
    7940:	e0 c6 20 02 	l.sub r6,r6,r4
    7944:	e0 63 20 00 	l.add r3,r3,r4
    7948:	84 a6 00 08 	l.lwz r5,8(r6)
    794c:	84 86 00 0c 	l.lwz r4,12(r6)
    7950:	d4 05 20 0c 	l.sw 12(r5),r4
    7954:	d4 04 28 08 	l.sw 8(r4),r5
    7958:	18 80 00 01 	l.movhi r4,0x1
    795c:	a8 a3 00 01 	l.ori r5,r3,0x1
    7960:	a8 84 25 14 	l.ori r4,r4,0x2514
    7964:	d4 06 28 04 	l.sw 4(r6),r5
    7968:	84 84 00 00 	l.lwz r4,0(r4)
    796c:	e4 63 20 00 	l.sfgeu r3,r4
    7970:	0f ff ff bb 	l.bnf 785c <_free_r+0x114>
    7974:	d4 0b 30 08 	l.sw 8(r11),r6
    7978:	18 80 00 01 	l.movhi r4,0x1
    797c:	a8 62 00 00 	l.ori r3,r2,0x0
    7980:	a8 84 2d b0 	l.ori r4,r4,0x2db0
    7984:	07 ff ff 1e 	l.jal 75fc <_malloc_trim_r>
    7988:	84 84 00 00 	l.lwz r4,0(r4)
    798c:	03 ff ff b4 	l.j 785c <_free_r+0x114>
    7990:	15 00 00 00 	l.nop 0x0
    7994:	e0 87 28 00 	l.add r4,r7,r5
    7998:	84 84 00 04 	l.lwz r4,4(r4)
    799c:	a4 84 00 01 	l.andi r4,r4,0x1
    79a0:	bc 04 00 00 	l.sfeqi r4,0
    79a4:	0c 00 00 3a 	l.bnf 7a8c <_free_r+0x344>
    79a8:	e0 86 18 00 	l.add r4,r6,r3
    79ac:	84 87 00 0c 	l.lwz r4,12(r7)
    79b0:	85 07 00 08 	l.lwz r8,8(r7)
    79b4:	e0 65 18 00 	l.add r3,r5,r3
    79b8:	d4 08 20 0c 	l.sw 12(r8),r4
    79bc:	a8 a3 00 01 	l.ori r5,r3,0x1
    79c0:	d4 04 40 08 	l.sw 8(r4),r8
    79c4:	e0 86 18 00 	l.add r4,r6,r3
    79c8:	d4 06 28 04 	l.sw 4(r6),r5
    79cc:	03 ff ff a4 	l.j 785c <_free_r+0x114>
    79d0:	d4 04 18 00 	l.sw 0(r4),r3
    79d4:	10 00 00 16 	l.bf 7a2c <_free_r+0x2e4>
    79d8:	bc 45 00 54 	l.sfgtui r5,84
    79dc:	9c 85 00 5c 	l.addi r4,r5,92
    79e0:	9c a5 00 5b 	l.addi r5,r5,91
    79e4:	03 ff ff ac 	l.j 7894 <_free_r+0x14c>
    79e8:	e0 84 20 00 	l.add r4,r4,r4
    79ec:	9c 80 00 01 	l.addi r4,r0,1
    79f0:	84 6b 00 04 	l.lwz r3,4(r11)
    79f4:	e0 a4 28 08 	l.sll r5,r4,r5
    79f8:	a8 87 00 00 	l.ori r4,r7,0x0
    79fc:	e0 65 18 04 	l.or r3,r5,r3
    7a00:	03 ff ff b9 	l.j 78e4 <_free_r+0x19c>
    7a04:	d4 0b 18 04 	l.sw 4(r11),r3
    7a08:	a8 e3 00 01 	l.ori r7,r3,0x1
    7a0c:	d4 0b 30 14 	l.sw 20(r11),r6
    7a10:	d4 0b 30 10 	l.sw 16(r11),r6
    7a14:	e0 a6 18 00 	l.add r5,r6,r3
    7a18:	d4 06 20 0c 	l.sw 12(r6),r4
    7a1c:	d4 06 20 08 	l.sw 8(r6),r4
    7a20:	d4 06 38 04 	l.sw 4(r6),r7
    7a24:	03 ff ff 8e 	l.j 785c <_free_r+0x114>
    7a28:	d4 05 18 00 	l.sw 0(r5),r3
    7a2c:	10 00 00 07 	l.bf 7a48 <_free_r+0x300>
    7a30:	bc 45 01 54 	l.sfgtui r5,340
    7a34:	b8 a3 00 4c 	l.srli r5,r3,0xc
    7a38:	9c 85 00 6f 	l.addi r4,r5,111
    7a3c:	9c a5 00 6e 	l.addi r5,r5,110
    7a40:	03 ff ff 95 	l.j 7894 <_free_r+0x14c>
    7a44:	e0 84 20 00 	l.add r4,r4,r4
    7a48:	10 00 00 07 	l.bf 7a64 <_free_r+0x31c>
    7a4c:	bc 45 05 54 	l.sfgtui r5,1364
    7a50:	b8 a3 00 4f 	l.srli r5,r3,0xf
    7a54:	9c 85 00 78 	l.addi r4,r5,120
    7a58:	9c a5 00 77 	l.addi r5,r5,119
    7a5c:	03 ff ff 8e 	l.j 7894 <_free_r+0x14c>
    7a60:	e0 84 20 00 	l.add r4,r4,r4
    7a64:	10 00 00 07 	l.bf 7a80 <_free_r+0x338>
    7a68:	15 00 00 00 	l.nop 0x0
    7a6c:	b8 a3 00 52 	l.srli r5,r3,0x12
    7a70:	9c 85 00 7d 	l.addi r4,r5,125
    7a74:	9c a5 00 7c 	l.addi r5,r5,124
    7a78:	03 ff ff 87 	l.j 7894 <_free_r+0x14c>
    7a7c:	e0 84 20 00 	l.add r4,r4,r4
    7a80:	9c 80 00 fe 	l.addi r4,r0,254
    7a84:	03 ff ff 84 	l.j 7894 <_free_r+0x14c>
    7a88:	9c a0 00 7e 	l.addi r5,r0,126
    7a8c:	a8 a3 00 01 	l.ori r5,r3,0x1
    7a90:	d4 06 28 04 	l.sw 4(r6),r5
    7a94:	03 ff ff 72 	l.j 785c <_free_r+0x114>
    7a98:	d4 04 18 00 	l.sw 0(r4),r3

00007a9c <_fwalk>:
    7a9c:	d7 e1 a7 f0 	l.sw -16(r1),r20
    7aa0:	9e 83 02 e0 	l.addi r20,r3,736
    7aa4:	d7 e1 b7 f4 	l.sw -12(r1),r22
    7aa8:	d7 e1 4f fc 	l.sw -4(r1),r9
    7aac:	d7 e1 0f e0 	l.sw -32(r1),r1
    7ab0:	d7 e1 17 e4 	l.sw -28(r1),r2
    7ab4:	d7 e1 77 e8 	l.sw -24(r1),r14
    7ab8:	d7 e1 97 ec 	l.sw -20(r1),r18
    7abc:	d7 e1 c7 f8 	l.sw -8(r1),r24
    7ac0:	bc 14 00 00 	l.sfeqi r20,0
    7ac4:	9c 21 ff e0 	l.addi r1,r1,-32
    7ac8:	10 00 00 29 	l.bf 7b6c <_fwalk+0xd0>
    7acc:	aa c4 00 00 	l.ori r22,r4,0x0
    7ad0:	9f 00 00 00 	l.addi r24,r0,0
    7ad4:	85 d4 00 04 	l.lwz r14,4(r20)
    7ad8:	9d ce ff ff 	l.addi r14,r14,-1
    7adc:	bd 8e 00 00 	l.sfltsi r14,0
    7ae0:	10 00 00 14 	l.bf 7b30 <_fwalk+0x94>
    7ae4:	86 54 00 08 	l.lwz r18,8(r20)
    7ae8:	9c 52 00 0c 	l.addi r2,r18,12
    7aec:	9e 52 00 0e 	l.addi r18,r18,14
    7af0:	94 62 00 00 	l.lhz r3,0(r2)
    7af4:	bc a3 00 01 	l.sfleui r3,1
    7af8:	9d ce ff ff 	l.addi r14,r14,-1
    7afc:	10 00 00 09 	l.bf 7b20 <_fwalk+0x84>
    7b00:	9c 62 ff f4 	l.addi r3,r2,-12
    7b04:	98 92 00 00 	l.lhs r4,0(r18)
    7b08:	bc 04 ff ff 	l.sfeqi r4,-1
    7b0c:	10 00 00 06 	l.bf 7b24 <_fwalk+0x88>
    7b10:	bc 2e ff ff 	l.sfnei r14,-1
    7b14:	48 00 b0 00 	l.jalr r22
    7b18:	15 00 00 00 	l.nop 0x0
    7b1c:	e3 18 58 04 	l.or r24,r24,r11
    7b20:	bc 2e ff ff 	l.sfnei r14,-1
    7b24:	9c 42 00 68 	l.addi r2,r2,104
    7b28:	13 ff ff f2 	l.bf 7af0 <_fwalk+0x54>
    7b2c:	9e 52 00 68 	l.addi r18,r18,104
    7b30:	86 94 00 00 	l.lwz r20,0(r20)
    7b34:	bc 34 00 00 	l.sfnei r20,0
    7b38:	13 ff ff e7 	l.bf 7ad4 <_fwalk+0x38>
    7b3c:	15 00 00 00 	l.nop 0x0
    7b40:	9c 21 00 20 	l.addi r1,r1,32
    7b44:	a9 78 00 00 	l.ori r11,r24,0x0
    7b48:	85 21 ff fc 	l.lwz r9,-4(r1)
    7b4c:	84 21 ff e0 	l.lwz r1,-32(r1)
    7b50:	84 41 ff e4 	l.lwz r2,-28(r1)
    7b54:	85 c1 ff e8 	l.lwz r14,-24(r1)
    7b58:	86 41 ff ec 	l.lwz r18,-20(r1)
    7b5c:	86 81 ff f0 	l.lwz r20,-16(r1)
    7b60:	86 c1 ff f4 	l.lwz r22,-12(r1)
    7b64:	44 00 48 00 	l.jr r9
    7b68:	87 01 ff f8 	l.lwz r24,-8(r1)
    7b6c:	03 ff ff f5 	l.j 7b40 <_fwalk+0xa4>
    7b70:	ab 14 00 00 	l.ori r24,r20,0x0

00007b74 <_fwalk_reent>:
    7b74:	d7 e1 97 ec 	l.sw -20(r1),r18
    7b78:	9e 43 02 e0 	l.addi r18,r3,736
    7b7c:	d7 e1 a7 f0 	l.sw -16(r1),r20
    7b80:	d7 e1 c7 f8 	l.sw -8(r1),r24
    7b84:	d7 e1 4f fc 	l.sw -4(r1),r9
    7b88:	d7 e1 0f e0 	l.sw -32(r1),r1
    7b8c:	d7 e1 17 e4 	l.sw -28(r1),r2
    7b90:	d7 e1 77 e8 	l.sw -24(r1),r14
    7b94:	d7 e1 b7 f4 	l.sw -12(r1),r22
    7b98:	bc 12 00 00 	l.sfeqi r18,0
    7b9c:	9c 21 ff e0 	l.addi r1,r1,-32
    7ba0:	ab 03 00 00 	l.ori r24,r3,0x0
    7ba4:	10 00 00 27 	l.bf 7c40 <_fwalk_reent+0xcc>
    7ba8:	aa 84 00 00 	l.ori r20,r4,0x0
    7bac:	9e c0 00 00 	l.addi r22,r0,0
    7bb0:	85 d2 00 04 	l.lwz r14,4(r18)
    7bb4:	9d ce ff ff 	l.addi r14,r14,-1
    7bb8:	bd 8e 00 00 	l.sfltsi r14,0
    7bbc:	10 00 00 12 	l.bf 7c04 <_fwalk_reent+0x90>
    7bc0:	84 52 00 08 	l.lwz r2,8(r18)
    7bc4:	9c 42 00 0c 	l.addi r2,r2,12
    7bc8:	94 62 00 00 	l.lhz r3,0(r2)
    7bcc:	bc a3 00 01 	l.sfleui r3,1
    7bd0:	9d ce ff ff 	l.addi r14,r14,-1
    7bd4:	10 00 00 09 	l.bf 7bf8 <_fwalk_reent+0x84>
    7bd8:	9c 82 ff f4 	l.addi r4,r2,-12
    7bdc:	98 a2 00 02 	l.lhs r5,2(r2)
    7be0:	bc 05 ff ff 	l.sfeqi r5,-1
    7be4:	10 00 00 05 	l.bf 7bf8 <_fwalk_reent+0x84>
    7be8:	a8 78 00 00 	l.ori r3,r24,0x0
    7bec:	48 00 a0 00 	l.jalr r20
    7bf0:	15 00 00 00 	l.nop 0x0
    7bf4:	e2 d6 58 04 	l.or r22,r22,r11
    7bf8:	bc 2e ff ff 	l.sfnei r14,-1
    7bfc:	13 ff ff f3 	l.bf 7bc8 <_fwalk_reent+0x54>
    7c00:	9c 42 00 68 	l.addi r2,r2,104
    7c04:	86 52 00 00 	l.lwz r18,0(r18)
    7c08:	bc 32 00 00 	l.sfnei r18,0
    7c0c:	13 ff ff e9 	l.bf 7bb0 <_fwalk_reent+0x3c>
    7c10:	15 00 00 00 	l.nop 0x0
    7c14:	9c 21 00 20 	l.addi r1,r1,32
    7c18:	a9 76 00 00 	l.ori r11,r22,0x0
    7c1c:	85 21 ff fc 	l.lwz r9,-4(r1)
    7c20:	84 21 ff e0 	l.lwz r1,-32(r1)
    7c24:	84 41 ff e4 	l.lwz r2,-28(r1)
    7c28:	85 c1 ff e8 	l.lwz r14,-24(r1)
    7c2c:	86 41 ff ec 	l.lwz r18,-20(r1)
    7c30:	86 81 ff f0 	l.lwz r20,-16(r1)
    7c34:	86 c1 ff f4 	l.lwz r22,-12(r1)
    7c38:	44 00 48 00 	l.jr r9
    7c3c:	87 01 ff f8 	l.lwz r24,-8(r1)
    7c40:	03 ff ff f5 	l.j 7c14 <_fwalk_reent+0xa0>
    7c44:	aa d2 00 00 	l.ori r22,r18,0x0

00007c48 <__getreent>:
    7c48:	00 00 18 b5 	l.j df1c <_or1k_libc_getreent>
    7c4c:	15 00 00 00 	l.nop 0x0

00007c50 <_setlocale_r>:
    7c50:	d7 e1 17 f8 	l.sw -8(r1),r2
    7c54:	d7 e1 4f fc 	l.sw -4(r1),r9
    7c58:	d7 e1 0f f4 	l.sw -12(r1),r1
    7c5c:	bc 05 00 00 	l.sfeqi r5,0
    7c60:	9c 21 ff f4 	l.addi r1,r1,-12
    7c64:	10 00 00 09 	l.bf 7c88 <_setlocale_r+0x38>
    7c68:	a8 45 00 00 	l.ori r2,r5,0x0
    7c6c:	18 80 00 01 	l.movhi r4,0x1
    7c70:	a8 65 00 00 	l.ori r3,r5,0x0
    7c74:	04 00 0a 0e 	l.jal a4ac <strcmp>
    7c78:	a8 84 1b a8 	l.ori r4,r4,0x1ba8
    7c7c:	bc 0b 00 00 	l.sfeqi r11,0
    7c80:	0c 00 00 09 	l.bnf 7ca4 <_setlocale_r+0x54>
    7c84:	a8 62 00 00 	l.ori r3,r2,0x0
    7c88:	19 60 00 01 	l.movhi r11,0x1
    7c8c:	a9 6b 19 7c 	l.ori r11,r11,0x197c
    7c90:	9c 21 00 0c 	l.addi r1,r1,12
    7c94:	85 21 ff fc 	l.lwz r9,-4(r1)
    7c98:	84 21 ff f4 	l.lwz r1,-12(r1)
    7c9c:	44 00 48 00 	l.jr r9
    7ca0:	84 41 ff f8 	l.lwz r2,-8(r1)
    7ca4:	18 80 00 01 	l.movhi r4,0x1
    7ca8:	04 00 0a 01 	l.jal a4ac <strcmp>
    7cac:	a8 84 19 7c 	l.ori r4,r4,0x197c
    7cb0:	bc 0b 00 00 	l.sfeqi r11,0
    7cb4:	13 ff ff f6 	l.bf 7c8c <_setlocale_r+0x3c>
    7cb8:	19 60 00 01 	l.movhi r11,0x1
    7cbc:	18 80 00 01 	l.movhi r4,0x1
    7cc0:	a8 62 00 00 	l.ori r3,r2,0x0
    7cc4:	04 00 09 fa 	l.jal a4ac <strcmp>
    7cc8:	a8 84 19 b6 	l.ori r4,r4,0x19b6
    7ccc:	bc 2b 00 00 	l.sfnei r11,0
    7cd0:	0f ff ff ee 	l.bnf 7c88 <_setlocale_r+0x38>
    7cd4:	9d 60 00 00 	l.addi r11,r0,0
    7cd8:	03 ff ff ef 	l.j 7c94 <_setlocale_r+0x44>
    7cdc:	9c 21 00 0c 	l.addi r1,r1,12

00007ce0 <__locale_charset>:
    7ce0:	d7 e1 0f fc 	l.sw -4(r1),r1
    7ce4:	9c 21 ff fc 	l.addi r1,r1,-4
    7ce8:	19 60 00 01 	l.movhi r11,0x1
    7cec:	9c 21 00 04 	l.addi r1,r1,4
    7cf0:	a9 6b 24 b4 	l.ori r11,r11,0x24b4
    7cf4:	44 00 48 00 	l.jr r9
    7cf8:	84 21 ff fc 	l.lwz r1,-4(r1)

00007cfc <__locale_mb_cur_max>:
    7cfc:	18 60 00 01 	l.movhi r3,0x1
    7d00:	d7 e1 0f fc 	l.sw -4(r1),r1
    7d04:	a8 63 25 0c 	l.ori r3,r3,0x250c
    7d08:	9c 21 ff fc 	l.addi r1,r1,-4
    7d0c:	85 63 00 00 	l.lwz r11,0(r3)
    7d10:	9c 21 00 04 	l.addi r1,r1,4
    7d14:	44 00 48 00 	l.jr r9
    7d18:	84 21 ff fc 	l.lwz r1,-4(r1)

00007d1c <__locale_msgcharset>:
    7d1c:	d7 e1 0f fc 	l.sw -4(r1),r1
    7d20:	9c 21 ff fc 	l.addi r1,r1,-4
    7d24:	19 60 00 01 	l.movhi r11,0x1
    7d28:	9c 21 00 04 	l.addi r1,r1,4
    7d2c:	a9 6b 24 94 	l.ori r11,r11,0x2494
    7d30:	44 00 48 00 	l.jr r9
    7d34:	84 21 ff fc 	l.lwz r1,-4(r1)

00007d38 <__locale_cjk_lang>:
    7d38:	d7 e1 0f fc 	l.sw -4(r1),r1
    7d3c:	9c 21 ff fc 	l.addi r1,r1,-4
    7d40:	9d 60 00 00 	l.addi r11,r0,0
    7d44:	9c 21 00 04 	l.addi r1,r1,4
    7d48:	44 00 48 00 	l.jr r9
    7d4c:	84 21 ff fc 	l.lwz r1,-4(r1)

00007d50 <_localeconv_r>:
    7d50:	d7 e1 0f fc 	l.sw -4(r1),r1
    7d54:	9c 21 ff fc 	l.addi r1,r1,-4
    7d58:	19 60 00 01 	l.movhi r11,0x1
    7d5c:	9c 21 00 04 	l.addi r1,r1,4
    7d60:	a9 6b 24 d4 	l.ori r11,r11,0x24d4
    7d64:	44 00 48 00 	l.jr r9
    7d68:	84 21 ff fc 	l.lwz r1,-4(r1)

00007d6c <setlocale>:
    7d6c:	d7 e1 4f fc 	l.sw -4(r1),r9
    7d70:	d7 e1 0f f8 	l.sw -8(r1),r1
    7d74:	9c 21 ff f0 	l.addi r1,r1,-16
    7d78:	d4 01 18 04 	l.sw 4(r1),r3
    7d7c:	07 ff ff b3 	l.jal 7c48 <__getreent>
    7d80:	d4 01 20 00 	l.sw 0(r1),r4
    7d84:	84 81 00 00 	l.lwz r4,0(r1)
    7d88:	84 61 00 04 	l.lwz r3,4(r1)
    7d8c:	a8 a4 00 00 	l.ori r5,r4,0x0
    7d90:	a8 83 00 00 	l.ori r4,r3,0x0
    7d94:	07 ff ff af 	l.jal 7c50 <_setlocale_r>
    7d98:	a8 6b 00 00 	l.ori r3,r11,0x0
    7d9c:	9c 21 00 10 	l.addi r1,r1,16
    7da0:	85 21 ff fc 	l.lwz r9,-4(r1)
    7da4:	44 00 48 00 	l.jr r9
    7da8:	84 21 ff f8 	l.lwz r1,-8(r1)

00007dac <localeconv>:
    7dac:	d7 e1 4f fc 	l.sw -4(r1),r9
    7db0:	d7 e1 0f f8 	l.sw -8(r1),r1
    7db4:	07 ff ff a5 	l.jal 7c48 <__getreent>
    7db8:	9c 21 ff f8 	l.addi r1,r1,-8
    7dbc:	9c 21 00 08 	l.addi r1,r1,8
    7dc0:	19 60 00 01 	l.movhi r11,0x1
    7dc4:	85 21 ff fc 	l.lwz r9,-4(r1)
    7dc8:	a9 6b 24 d4 	l.ori r11,r11,0x24d4
    7dcc:	44 00 48 00 	l.jr r9
    7dd0:	84 21 ff f8 	l.lwz r1,-8(r1)

00007dd4 <__smakebuf_r>:
    7dd4:	98 a4 00 0c 	l.lhs r5,12(r4)
    7dd8:	a4 c5 ff ff 	l.andi r6,r5,0xffff
    7ddc:	d7 e1 17 ec 	l.sw -20(r1),r2
    7de0:	a8 44 00 00 	l.ori r2,r4,0x0
    7de4:	a4 86 00 02 	l.andi r4,r6,0x2
    7de8:	d7 e1 97 f4 	l.sw -12(r1),r18
    7dec:	d7 e1 4f fc 	l.sw -4(r1),r9
    7df0:	d7 e1 0f e8 	l.sw -24(r1),r1
    7df4:	d7 e1 77 f0 	l.sw -16(r1),r14
    7df8:	d7 e1 a7 f8 	l.sw -8(r1),r20
    7dfc:	bc 04 00 00 	l.sfeqi r4,0
    7e00:	9c 21 ff ac 	l.addi r1,r1,-84
    7e04:	0c 00 00 3a 	l.bnf 7eec <__smakebuf_r+0x118>
    7e08:	aa 43 00 00 	l.ori r18,r3,0x0
    7e0c:	98 82 00 0e 	l.lhs r4,14(r2)
    7e10:	bd 84 00 00 	l.sfltsi r4,0
    7e14:	10 00 00 18 	l.bf 7e74 <__smakebuf_r+0xa0>
    7e18:	a4 c6 00 80 	l.andi r6,r6,0x80
    7e1c:	04 00 15 a3 	l.jal d4a8 <_fstat_r>
    7e20:	a8 a1 00 00 	l.ori r5,r1,0x0
    7e24:	bd 6b 00 00 	l.sfgesi r11,0
    7e28:	0c 00 00 10 	l.bnf 7e68 <__smakebuf_r+0x94>
    7e2c:	84 81 00 04 	l.lwz r4,4(r1)
    7e30:	a8 a0 80 00 	l.ori r5,r0,0x8000
    7e34:	a4 84 f0 00 	l.andi r4,r4,0xf000
    7e38:	ac 64 20 00 	l.xori r3,r4,8192
    7e3c:	e4 24 28 00 	l.sfne r4,r5
    7e40:	e1 c0 18 02 	l.sub r14,r0,r3
    7e44:	e1 ce 18 04 	l.or r14,r14,r3
    7e48:	ad ce ff ff 	l.xori r14,r14,-1
    7e4c:	0c 00 00 37 	l.bnf 7f28 <__smakebuf_r+0x154>
    7e50:	b9 ce 00 5f 	l.srli r14,r14,0x1f
    7e54:	94 62 00 0c 	l.lhz r3,12(r2)
    7e58:	a8 63 08 00 	l.ori r3,r3,0x800
    7e5c:	9e 80 04 00 	l.addi r20,r0,1024
    7e60:	00 00 00 0b 	l.j 7e8c <__smakebuf_r+0xb8>
    7e64:	dc 02 18 0c 	l.sh 12(r2),r3
    7e68:	98 a2 00 0c 	l.lhs r5,12(r2)
    7e6c:	a4 c5 ff ff 	l.andi r6,r5,0xffff
    7e70:	a4 c6 00 80 	l.andi r6,r6,0x80
    7e74:	bc 26 00 00 	l.sfnei r6,0
    7e78:	0c 00 00 2a 	l.bnf 7f20 <__smakebuf_r+0x14c>
    7e7c:	9e 80 00 40 	l.addi r20,r0,64
    7e80:	a8 a5 08 00 	l.ori r5,r5,0x800
    7e84:	9d c0 00 00 	l.addi r14,r0,0
    7e88:	dc 02 28 0c 	l.sh 12(r2),r5
    7e8c:	a8 94 00 00 	l.ori r4,r20,0x0
    7e90:	04 00 00 48 	l.jal 7fb0 <_malloc_r>
    7e94:	a8 72 00 00 	l.ori r3,r18,0x0
    7e98:	bc 2b 00 00 	l.sfnei r11,0
    7e9c:	0c 00 00 39 	l.bnf 7f80 <__smakebuf_r+0x1ac>
    7ea0:	18 80 00 00 	l.movhi r4,0x0
    7ea4:	94 62 00 0c 	l.lhz r3,12(r2)
    7ea8:	a8 63 00 80 	l.ori r3,r3,0x80
    7eac:	a8 84 71 44 	l.ori r4,r4,0x7144
    7eb0:	bc 0e 00 00 	l.sfeqi r14,0
    7eb4:	d4 12 20 3c 	l.sw 60(r18),r4
    7eb8:	dc 02 18 0c 	l.sh 12(r2),r3
    7ebc:	d4 02 58 00 	l.sw 0(r2),r11
    7ec0:	d4 02 58 10 	l.sw 16(r2),r11
    7ec4:	0c 00 00 25 	l.bnf 7f58 <__smakebuf_r+0x184>
    7ec8:	d4 02 a0 14 	l.sw 20(r2),r20
    7ecc:	9c 21 00 54 	l.addi r1,r1,84
    7ed0:	85 21 ff fc 	l.lwz r9,-4(r1)
    7ed4:	84 21 ff e8 	l.lwz r1,-24(r1)
    7ed8:	84 41 ff ec 	l.lwz r2,-20(r1)
    7edc:	85 c1 ff f0 	l.lwz r14,-16(r1)
    7ee0:	86 41 ff f4 	l.lwz r18,-12(r1)
    7ee4:	44 00 48 00 	l.jr r9
    7ee8:	86 81 ff f8 	l.lwz r20,-8(r1)
    7eec:	9c 62 00 43 	l.addi r3,r2,67
    7ef0:	d4 02 18 00 	l.sw 0(r2),r3
    7ef4:	d4 02 18 10 	l.sw 16(r2),r3
    7ef8:	9c 60 00 01 	l.addi r3,r0,1
    7efc:	d4 02 18 14 	l.sw 20(r2),r3
    7f00:	9c 21 00 54 	l.addi r1,r1,84
    7f04:	85 21 ff fc 	l.lwz r9,-4(r1)
    7f08:	84 21 ff e8 	l.lwz r1,-24(r1)
    7f0c:	84 41 ff ec 	l.lwz r2,-20(r1)
    7f10:	85 c1 ff f0 	l.lwz r14,-16(r1)
    7f14:	86 41 ff f4 	l.lwz r18,-12(r1)
    7f18:	44 00 48 00 	l.jr r9
    7f1c:	86 81 ff f8 	l.lwz r20,-8(r1)
    7f20:	03 ff ff d8 	l.j 7e80 <__smakebuf_r+0xac>
    7f24:	9e 80 04 00 	l.addi r20,r0,1024
    7f28:	18 80 00 00 	l.movhi r4,0x0
    7f2c:	84 62 00 28 	l.lwz r3,40(r2)
    7f30:	a8 84 a4 20 	l.ori r4,r4,0xa420
    7f34:	e4 23 20 00 	l.sfne r3,r4
    7f38:	13 ff ff c7 	l.bf 7e54 <__smakebuf_r+0x80>
    7f3c:	15 00 00 00 	l.nop 0x0
    7f40:	94 62 00 0c 	l.lhz r3,12(r2)
    7f44:	9e 80 04 00 	l.addi r20,r0,1024
    7f48:	e0 63 a0 04 	l.or r3,r3,r20
    7f4c:	d4 02 a0 4c 	l.sw 76(r2),r20
    7f50:	03 ff ff cf 	l.j 7e8c <__smakebuf_r+0xb8>
    7f54:	dc 02 18 0c 	l.sh 12(r2),r3
    7f58:	98 82 00 0e 	l.lhs r4,14(r2)
    7f5c:	04 00 15 6b 	l.jal d508 <_isatty_r>
    7f60:	a8 72 00 00 	l.ori r3,r18,0x0
    7f64:	bc 0b 00 00 	l.sfeqi r11,0
    7f68:	13 ff ff d9 	l.bf 7ecc <__smakebuf_r+0xf8>
    7f6c:	15 00 00 00 	l.nop 0x0
    7f70:	94 62 00 0c 	l.lhz r3,12(r2)
    7f74:	a8 63 00 01 	l.ori r3,r3,0x1
    7f78:	03 ff ff d5 	l.j 7ecc <__smakebuf_r+0xf8>
    7f7c:	dc 02 18 0c 	l.sh 12(r2),r3
    7f80:	98 62 00 0c 	l.lhs r3,12(r2)
    7f84:	a4 83 02 00 	l.andi r4,r3,0x200
    7f88:	bc 04 00 00 	l.sfeqi r4,0
    7f8c:	0f ff ff d0 	l.bnf 7ecc <__smakebuf_r+0xf8>
    7f90:	a8 63 00 02 	l.ori r3,r3,0x2
    7f94:	9c 82 00 43 	l.addi r4,r2,67
    7f98:	dc 02 18 0c 	l.sh 12(r2),r3
    7f9c:	9c 60 00 01 	l.addi r3,r0,1
    7fa0:	d4 02 20 00 	l.sw 0(r2),r4
    7fa4:	d4 02 20 10 	l.sw 16(r2),r4
    7fa8:	03 ff ff c9 	l.j 7ecc <__smakebuf_r+0xf8>
    7fac:	d4 02 18 14 	l.sw 20(r2),r3

00007fb0 <_malloc_r>:
    7fb0:	d7 e1 77 dc 	l.sw -36(r1),r14
    7fb4:	9d c4 00 0b 	l.addi r14,r4,11
    7fb8:	d7 e1 97 e0 	l.sw -32(r1),r18
    7fbc:	d7 e1 4f fc 	l.sw -4(r1),r9
    7fc0:	d7 e1 0f d4 	l.sw -44(r1),r1
    7fc4:	d7 e1 17 d8 	l.sw -40(r1),r2
    7fc8:	d7 e1 a7 e4 	l.sw -28(r1),r20
    7fcc:	d7 e1 b7 e8 	l.sw -24(r1),r22
    7fd0:	d7 e1 c7 ec 	l.sw -20(r1),r24
    7fd4:	d7 e1 d7 f0 	l.sw -16(r1),r26
    7fd8:	d7 e1 e7 f4 	l.sw -12(r1),r28
    7fdc:	d7 e1 f7 f8 	l.sw -8(r1),r30
    7fe0:	bc ae 00 16 	l.sfleui r14,22
    7fe4:	9c 21 ff d4 	l.addi r1,r1,-44
    7fe8:	10 00 00 a3 	l.bf 8274 <_malloc_r+0x2c4>
    7fec:	aa 43 00 00 	l.ori r18,r3,0x0
    7ff0:	9c 40 ff f8 	l.addi r2,r0,-8
    7ff4:	e1 ce 10 03 	l.and r14,r14,r2
    7ff8:	b8 6e 00 5f 	l.srli r3,r14,0x1f
    7ffc:	bc 23 00 00 	l.sfnei r3,0
    8000:	10 00 00 c8 	l.bf 8320 <_malloc_r+0x370>
    8004:	e4 44 70 00 	l.sfgtu r4,r14
    8008:	10 00 00 03 	l.bf 8014 <_malloc_r+0x64>
    800c:	9c 40 00 01 	l.addi r2,r0,1
    8010:	a8 43 00 00 	l.ori r2,r3,0x0
    8014:	a4 42 00 ff 	l.andi r2,r2,0xff
    8018:	bc 02 00 00 	l.sfeqi r2,0
    801c:	0c 00 00 c2 	l.bnf 8324 <_malloc_r+0x374>
    8020:	9c 40 00 0c 	l.addi r2,r0,12
    8024:	04 00 03 62 	l.jal 8dac <__malloc_lock>
    8028:	a8 72 00 00 	l.ori r3,r18,0x0
    802c:	bc 4e 01 f7 	l.sfgtui r14,503
    8030:	0c 00 02 57 	l.bnf 898c <_malloc_r+0x9dc>
    8034:	b8 4e 00 49 	l.srli r2,r14,0x9
    8038:	bc 02 00 00 	l.sfeqi r2,0
    803c:	10 00 00 bd 	l.bf 8330 <_malloc_r+0x380>
    8040:	9c e0 00 40 	l.addi r7,r0,64
    8044:	bc 42 00 04 	l.sfgtui r2,4
    8048:	10 00 00 f0 	l.bf 8408 <_malloc_r+0x458>
    804c:	bc 42 00 14 	l.sfgtui r2,20
    8050:	b8 4e 00 46 	l.srli r2,r14,0x6
    8054:	9c e2 00 39 	l.addi r7,r2,57
    8058:	9c c2 00 38 	l.addi r6,r2,56
    805c:	e0 47 38 00 	l.add r2,r7,r7
    8060:	19 00 00 01 	l.movhi r8,0x1
    8064:	b8 42 00 02 	l.slli r2,r2,0x2
    8068:	a9 08 25 18 	l.ori r8,r8,0x2518
    806c:	e0 42 40 00 	l.add r2,r2,r8
    8070:	9c a2 ff f8 	l.addi r5,r2,-8
    8074:	84 42 00 04 	l.lwz r2,4(r2)
    8078:	e4 05 10 00 	l.sfeq r5,r2
    807c:	10 00 00 18 	l.bf 80dc <_malloc_r+0x12c>
    8080:	9c 80 ff fc 	l.addi r4,r0,-4
    8084:	84 62 00 04 	l.lwz r3,4(r2)
    8088:	e0 63 20 03 	l.and r3,r3,r4
    808c:	e0 83 70 02 	l.sub r4,r3,r14
    8090:	bd 44 00 0f 	l.sfgtsi r4,15
    8094:	10 00 00 aa 	l.bf 833c <_malloc_r+0x38c>
    8098:	bd 64 00 00 	l.sfgesi r4,0
    809c:	0c 00 00 0c 	l.bnf 80cc <_malloc_r+0x11c>
    80a0:	15 00 00 00 	l.nop 0x0
    80a4:	00 00 00 a9 	l.j 8348 <_malloc_r+0x398>
    80a8:	e0 62 18 00 	l.add r3,r2,r3
    80ac:	84 62 00 04 	l.lwz r3,4(r2)
    80b0:	e0 63 40 03 	l.and r3,r3,r8
    80b4:	e0 83 70 02 	l.sub r4,r3,r14
    80b8:	bd a4 00 0f 	l.sflesi r4,15
    80bc:	0c 00 00 a0 	l.bnf 833c <_malloc_r+0x38c>
    80c0:	bd 84 00 00 	l.sfltsi r4,0
    80c4:	0c 00 00 a0 	l.bnf 8344 <_malloc_r+0x394>
    80c8:	15 00 00 00 	l.nop 0x0
    80cc:	84 42 00 0c 	l.lwz r2,12(r2)
    80d0:	e4 25 10 00 	l.sfne r5,r2
    80d4:	13 ff ff f6 	l.bf 80ac <_malloc_r+0xfc>
    80d8:	9d 00 ff fc 	l.addi r8,r0,-4
    80dc:	a8 a7 00 00 	l.ori r5,r7,0x0
    80e0:	1a 80 00 01 	l.movhi r20,0x1
    80e4:	aa 94 25 18 	l.ori r20,r20,0x2518
    80e8:	84 54 00 10 	l.lwz r2,16(r20)
    80ec:	9d 74 00 08 	l.addi r11,r20,8
    80f0:	e4 22 58 00 	l.sfne r2,r11
    80f4:	0c 00 01 3a 	l.bnf 85dc <_malloc_r+0x62c>
    80f8:	9c 80 ff fc 	l.addi r4,r0,-4
    80fc:	84 62 00 04 	l.lwz r3,4(r2)
    8100:	e0 63 20 03 	l.and r3,r3,r4
    8104:	e0 83 70 02 	l.sub r4,r3,r14
    8108:	bd a4 00 0f 	l.sflesi r4,15
    810c:	0c 00 00 eb 	l.bnf 84b8 <_malloc_r+0x508>
    8110:	bd 84 00 00 	l.sfltsi r4,0
    8114:	d4 14 58 14 	l.sw 20(r20),r11
    8118:	0c 00 00 97 	l.bnf 8374 <_malloc_r+0x3c4>
    811c:	d4 14 58 10 	l.sw 16(r20),r11
    8120:	bc 43 01 ff 	l.sfgtui r3,511
    8124:	10 00 00 c3 	l.bf 8430 <_malloc_r+0x480>
    8128:	b8 c3 00 49 	l.srli r6,r3,0x9
    812c:	b8 63 00 43 	l.srli r3,r3,0x3
    8130:	9c e0 00 01 	l.addi r7,r0,1
    8134:	84 94 00 04 	l.lwz r4,4(r20)
    8138:	b8 c3 00 03 	l.slli r6,r3,0x3
    813c:	b8 63 00 82 	l.srai r3,r3,0x2
    8140:	9c c6 00 08 	l.addi r6,r6,8
    8144:	e0 67 18 08 	l.sll r3,r7,r3
    8148:	18 e0 00 01 	l.movhi r7,0x1
    814c:	a8 e7 25 18 	l.ori r7,r7,0x2518
    8150:	e0 63 20 04 	l.or r3,r3,r4
    8154:	e0 c6 38 00 	l.add r6,r6,r7
    8158:	84 86 00 00 	l.lwz r4,0(r6)
    815c:	9c e6 ff f8 	l.addi r7,r6,-8
    8160:	d4 02 20 08 	l.sw 8(r2),r4
    8164:	d4 02 38 0c 	l.sw 12(r2),r7
    8168:	d4 14 18 04 	l.sw 4(r20),r3
    816c:	d4 06 10 00 	l.sw 0(r6),r2
    8170:	d4 04 10 0c 	l.sw 12(r4),r2
    8174:	b8 45 00 82 	l.srai r2,r5,0x2
    8178:	9c c0 00 01 	l.addi r6,r0,1
    817c:	e0 c6 10 08 	l.sll r6,r6,r2
    8180:	e4 46 18 00 	l.sfgtu r6,r3
    8184:	10 00 00 84 	l.bf 8394 <_malloc_r+0x3e4>
    8188:	e0 46 18 03 	l.and r2,r6,r3
    818c:	bc 22 00 00 	l.sfnei r2,0
    8190:	10 00 00 0f 	l.bf 81cc <_malloc_r+0x21c>
    8194:	b9 05 00 03 	l.slli r8,r5,0x3
    8198:	9c 40 ff fc 	l.addi r2,r0,-4
    819c:	e0 c6 30 00 	l.add r6,r6,r6
    81a0:	e0 a5 10 03 	l.and r5,r5,r2
    81a4:	e0 46 18 03 	l.and r2,r6,r3
    81a8:	bc 22 00 00 	l.sfnei r2,0
    81ac:	10 00 00 07 	l.bf 81c8 <_malloc_r+0x218>
    81b0:	9c a5 00 04 	l.addi r5,r5,4
    81b4:	e0 c6 30 00 	l.add r6,r6,r6
    81b8:	e0 46 18 03 	l.and r2,r6,r3
    81bc:	bc 02 00 00 	l.sfeqi r2,0
    81c0:	13 ff ff fd 	l.bf 81b4 <_malloc_r+0x204>
    81c4:	9c a5 00 04 	l.addi r5,r5,4
    81c8:	b9 05 00 03 	l.slli r8,r5,0x3
    81cc:	18 60 00 01 	l.movhi r3,0x1
    81d0:	a9 a5 00 00 	l.ori r13,r5,0x0
    81d4:	9d 08 00 08 	l.addi r8,r8,8
    81d8:	a8 63 25 18 	l.ori r3,r3,0x2518
    81dc:	e1 08 18 00 	l.add r8,r8,r3
    81e0:	9d 88 ff f8 	l.addi r12,r8,-8
    81e4:	9d 08 00 04 	l.addi r8,r8,4
    81e8:	9c e8 ff f4 	l.addi r7,r8,-12
    81ec:	84 48 00 00 	l.lwz r2,0(r8)
    81f0:	e4 02 38 00 	l.sfeq r2,r7
    81f4:	10 00 00 19 	l.bf 8258 <_malloc_r+0x2a8>
    81f8:	9c 80 ff fc 	l.addi r4,r0,-4
    81fc:	84 62 00 04 	l.lwz r3,4(r2)
    8200:	e0 63 20 03 	l.and r3,r3,r4
    8204:	e0 83 70 02 	l.sub r4,r3,r14
    8208:	bd 44 00 0f 	l.sfgtsi r4,15
    820c:	10 00 00 fc 	l.bf 85fc <_malloc_r+0x64c>
    8210:	bd 64 00 00 	l.sfgesi r4,0
    8214:	0c 00 00 0d 	l.bnf 8248 <_malloc_r+0x298>
    8218:	e0 82 18 00 	l.add r4,r2,r3
    821c:	00 00 01 02 	l.j 8624 <_malloc_r+0x674>
    8220:	84 c2 00 0c 	l.lwz r6,12(r2)
    8224:	9c 80 ff fc 	l.addi r4,r0,-4
    8228:	84 62 00 04 	l.lwz r3,4(r2)
    822c:	e0 63 20 03 	l.and r3,r3,r4
    8230:	e0 83 70 02 	l.sub r4,r3,r14
    8234:	bd a4 00 0f 	l.sflesi r4,15
    8238:	0c 00 00 f1 	l.bnf 85fc <_malloc_r+0x64c>
    823c:	bd 84 00 00 	l.sfltsi r4,0
    8240:	0c 00 00 f7 	l.bnf 861c <_malloc_r+0x66c>
    8244:	15 00 00 00 	l.nop 0x0
    8248:	84 42 00 0c 	l.lwz r2,12(r2)
    824c:	e4 22 38 00 	l.sfne r2,r7
    8250:	13 ff ff f5 	l.bf 8224 <_malloc_r+0x274>
    8254:	15 00 00 00 	l.nop 0x0
    8258:	9d ad 00 01 	l.addi r13,r13,1
    825c:	a4 4d 00 03 	l.andi r2,r13,0x3
    8260:	bc 22 00 00 	l.sfnei r2,0
    8264:	13 ff ff e1 	l.bf 81e8 <_malloc_r+0x238>
    8268:	9d 08 00 08 	l.addi r8,r8,8
    826c:	00 00 01 07 	l.j 8688 <_malloc_r+0x6d8>
    8270:	a4 45 00 03 	l.andi r2,r5,0x3
    8274:	bc 44 00 10 	l.sfgtui r4,16
    8278:	10 00 00 2b 	l.bf 8324 <_malloc_r+0x374>
    827c:	9c 40 00 0c 	l.addi r2,r0,12
    8280:	04 00 02 cb 	l.jal 8dac <__malloc_lock>
    8284:	9d c0 00 10 	l.addi r14,r0,16
    8288:	9c 60 00 06 	l.addi r3,r0,6
    828c:	9c a0 00 02 	l.addi r5,r0,2
    8290:	18 80 00 01 	l.movhi r4,0x1
    8294:	b8 63 00 02 	l.slli r3,r3,0x2
    8298:	a8 84 25 18 	l.ori r4,r4,0x2518
    829c:	e0 63 20 00 	l.add r3,r3,r4
    82a0:	84 43 00 04 	l.lwz r2,4(r3)
    82a4:	9c 83 ff f8 	l.addi r4,r3,-8
    82a8:	e4 22 20 00 	l.sfne r2,r4
    82ac:	0c 00 00 ce 	l.bnf 85e4 <_malloc_r+0x634>
    82b0:	15 00 00 00 	l.nop 0x0
    82b4:	84 82 00 04 	l.lwz r4,4(r2)
    82b8:	9c a0 ff fc 	l.addi r5,r0,-4
    82bc:	84 62 00 0c 	l.lwz r3,12(r2)
    82c0:	e0 84 28 03 	l.and r4,r4,r5
    82c4:	84 c2 00 08 	l.lwz r6,8(r2)
    82c8:	e0 82 20 00 	l.add r4,r2,r4
    82cc:	d4 06 18 0c 	l.sw 12(r6),r3
    82d0:	84 a4 00 04 	l.lwz r5,4(r4)
    82d4:	d4 03 30 08 	l.sw 8(r3),r6
    82d8:	a8 a5 00 01 	l.ori r5,r5,0x1
    82dc:	a8 72 00 00 	l.ori r3,r18,0x0
    82e0:	04 00 02 dd 	l.jal 8e54 <__malloc_unlock>
    82e4:	d4 04 28 04 	l.sw 4(r4),r5
    82e8:	9d 62 00 08 	l.addi r11,r2,8
    82ec:	9c 21 00 2c 	l.addi r1,r1,44
    82f0:	85 21 ff fc 	l.lwz r9,-4(r1)
    82f4:	84 21 ff d4 	l.lwz r1,-44(r1)
    82f8:	84 41 ff d8 	l.lwz r2,-40(r1)
    82fc:	85 c1 ff dc 	l.lwz r14,-36(r1)
    8300:	86 41 ff e0 	l.lwz r18,-32(r1)
    8304:	86 81 ff e4 	l.lwz r20,-28(r1)
    8308:	86 c1 ff e8 	l.lwz r22,-24(r1)
    830c:	87 01 ff ec 	l.lwz r24,-20(r1)
    8310:	87 41 ff f0 	l.lwz r26,-16(r1)
    8314:	87 81 ff f4 	l.lwz r28,-12(r1)
    8318:	44 00 48 00 	l.jr r9
    831c:	87 c1 ff f8 	l.lwz r30,-8(r1)
    8320:	9c 40 00 0c 	l.addi r2,r0,12
    8324:	9d 60 00 00 	l.addi r11,r0,0
    8328:	03 ff ff f1 	l.j 82ec <_malloc_r+0x33c>
    832c:	d4 12 10 00 	l.sw 0(r18),r2
    8330:	9c 40 00 80 	l.addi r2,r0,128
    8334:	03 ff ff 4b 	l.j 8060 <_malloc_r+0xb0>
    8338:	9c c0 00 3f 	l.addi r6,r0,63
    833c:	03 ff ff 69 	l.j 80e0 <_malloc_r+0x130>
    8340:	a8 a6 00 00 	l.ori r5,r6,0x0
    8344:	e0 62 18 00 	l.add r3,r2,r3
    8348:	84 a2 00 0c 	l.lwz r5,12(r2)
    834c:	84 83 00 04 	l.lwz r4,4(r3)
    8350:	84 c2 00 08 	l.lwz r6,8(r2)
    8354:	a8 84 00 01 	l.ori r4,r4,0x1
    8358:	d4 06 28 0c 	l.sw 12(r6),r5
    835c:	d4 05 30 08 	l.sw 8(r5),r6
    8360:	d4 03 20 04 	l.sw 4(r3),r4
    8364:	04 00 02 bc 	l.jal 8e54 <__malloc_unlock>
    8368:	a8 72 00 00 	l.ori r3,r18,0x0
    836c:	03 ff ff e0 	l.j 82ec <_malloc_r+0x33c>
    8370:	9d 62 00 08 	l.addi r11,r2,8
    8374:	e0 82 18 00 	l.add r4,r2,r3
    8378:	a8 72 00 00 	l.ori r3,r18,0x0
    837c:	84 a4 00 04 	l.lwz r5,4(r4)
    8380:	a8 a5 00 01 	l.ori r5,r5,0x1
    8384:	04 00 02 b4 	l.jal 8e54 <__malloc_unlock>
    8388:	d4 04 28 04 	l.sw 4(r4),r5
    838c:	03 ff ff d8 	l.j 82ec <_malloc_r+0x33c>
    8390:	9d 62 00 08 	l.addi r11,r2,8
    8394:	84 54 00 08 	l.lwz r2,8(r20)
    8398:	9c a0 ff fc 	l.addi r5,r0,-4
    839c:	84 62 00 04 	l.lwz r3,4(r2)
    83a0:	9c 80 00 01 	l.addi r4,r0,1
    83a4:	e3 03 28 03 	l.and r24,r3,r5
    83a8:	e4 98 70 00 	l.sfltu r24,r14
    83ac:	10 00 00 03 	l.bf 83b8 <_malloc_r+0x408>
    83b0:	e0 78 70 02 	l.sub r3,r24,r14
    83b4:	9c 80 00 00 	l.addi r4,r0,0
    83b8:	a4 84 00 ff 	l.andi r4,r4,0xff
    83bc:	bc 24 00 00 	l.sfnei r4,0
    83c0:	10 00 00 4d 	l.bf 84f4 <_malloc_r+0x544>
    83c4:	bd a3 00 0f 	l.sflesi r3,15
    83c8:	0c 00 00 a4 	l.bnf 8658 <_malloc_r+0x6a8>
    83cc:	9c a0 00 01 	l.addi r5,r0,1
    83d0:	a4 a5 00 ff 	l.andi r5,r5,0xff
    83d4:	bc 05 00 00 	l.sfeqi r5,0
    83d8:	0c 00 00 48 	l.bnf 84f8 <_malloc_r+0x548>
    83dc:	1b 80 00 01 	l.movhi r28,0x1
    83e0:	a8 8e 00 01 	l.ori r4,r14,0x1
    83e4:	e1 c2 70 00 	l.add r14,r2,r14
    83e8:	d4 02 20 04 	l.sw 4(r2),r4
    83ec:	a8 63 00 01 	l.ori r3,r3,0x1
    83f0:	d4 14 70 08 	l.sw 8(r20),r14
    83f4:	d4 0e 18 04 	l.sw 4(r14),r3
    83f8:	04 00 02 97 	l.jal 8e54 <__malloc_unlock>
    83fc:	a8 72 00 00 	l.ori r3,r18,0x0
    8400:	03 ff ff bb 	l.j 82ec <_malloc_r+0x33c>
    8404:	9d 62 00 08 	l.addi r11,r2,8
    8408:	0c 00 00 91 	l.bnf 864c <_malloc_r+0x69c>
    840c:	9c e2 00 5c 	l.addi r7,r2,92
    8410:	bc 42 00 54 	l.sfgtui r2,84
    8414:	10 00 01 07 	l.bf 8830 <_malloc_r+0x880>
    8418:	bc 42 01 54 	l.sfgtui r2,340
    841c:	b8 4e 00 4c 	l.srli r2,r14,0xc
    8420:	9c e2 00 6f 	l.addi r7,r2,111
    8424:	9c c2 00 6e 	l.addi r6,r2,110
    8428:	03 ff ff 0e 	l.j 8060 <_malloc_r+0xb0>
    842c:	e0 47 38 00 	l.add r2,r7,r7
    8430:	bc 46 00 04 	l.sfgtui r6,4
    8434:	0c 00 00 8b 	l.bnf 8660 <_malloc_r+0x6b0>
    8438:	bc 46 00 14 	l.sfgtui r6,20
    843c:	10 00 01 1b 	l.bf 88a8 <_malloc_r+0x8f8>
    8440:	bc 46 00 54 	l.sfgtui r6,84
    8444:	9c 86 00 5c 	l.addi r4,r6,92
    8448:	9c c6 00 5b 	l.addi r6,r6,91
    844c:	e0 84 20 00 	l.add r4,r4,r4
    8450:	19 00 00 01 	l.movhi r8,0x1
    8454:	b8 84 00 02 	l.slli r4,r4,0x2
    8458:	a9 08 25 18 	l.ori r8,r8,0x2518
    845c:	e0 84 40 00 	l.add r4,r4,r8
    8460:	9c e4 ff f8 	l.addi r7,r4,-8
    8464:	84 84 00 00 	l.lwz r4,0(r4)
    8468:	e4 27 20 00 	l.sfne r7,r4
    846c:	0c 00 00 fb 	l.bnf 8858 <_malloc_r+0x8a8>
    8470:	b8 c6 00 82 	l.srai r6,r6,0x2
    8474:	84 c4 00 04 	l.lwz r6,4(r4)
    8478:	9d 00 ff fc 	l.addi r8,r0,-4
    847c:	e0 c6 40 03 	l.and r6,r6,r8
    8480:	e4 83 30 00 	l.sfltu r3,r6
    8484:	0c 00 00 06 	l.bnf 849c <_malloc_r+0x4ec>
    8488:	15 00 00 00 	l.nop 0x0
    848c:	84 84 00 08 	l.lwz r4,8(r4)
    8490:	e4 27 20 00 	l.sfne r7,r4
    8494:	13 ff ff f8 	l.bf 8474 <_malloc_r+0x4c4>
    8498:	15 00 00 00 	l.nop 0x0
    849c:	84 e4 00 0c 	l.lwz r7,12(r4)
    84a0:	84 74 00 04 	l.lwz r3,4(r20)
    84a4:	d4 02 38 0c 	l.sw 12(r2),r7
    84a8:	d4 02 20 08 	l.sw 8(r2),r4
    84ac:	d4 07 10 08 	l.sw 8(r7),r2
    84b0:	03 ff ff 31 	l.j 8174 <_malloc_r+0x1c4>
    84b4:	d4 04 10 0c 	l.sw 12(r4),r2
    84b8:	a8 6e 00 01 	l.ori r3,r14,0x1
    84bc:	e1 c2 70 00 	l.add r14,r2,r14
    84c0:	d4 02 18 04 	l.sw 4(r2),r3
    84c4:	a8 a4 00 01 	l.ori r5,r4,0x1
    84c8:	d4 14 70 14 	l.sw 20(r20),r14
    84cc:	d4 14 70 10 	l.sw 16(r20),r14
    84d0:	e0 6e 20 00 	l.add r3,r14,r4
    84d4:	d4 0e 58 0c 	l.sw 12(r14),r11
    84d8:	d4 0e 58 08 	l.sw 8(r14),r11
    84dc:	d4 0e 28 04 	l.sw 4(r14),r5
    84e0:	d4 03 20 00 	l.sw 0(r3),r4
    84e4:	04 00 02 5c 	l.jal 8e54 <__malloc_unlock>
    84e8:	a8 72 00 00 	l.ori r3,r18,0x0
    84ec:	03 ff ff 80 	l.j 82ec <_malloc_r+0x33c>
    84f0:	9d 62 00 08 	l.addi r11,r2,8
    84f4:	1b 80 00 01 	l.movhi r28,0x1
    84f8:	18 80 00 01 	l.movhi r4,0x1
    84fc:	ab 9c 25 10 	l.ori r28,r28,0x2510
    8500:	a8 84 2d b0 	l.ori r4,r4,0x2db0
    8504:	84 7c 00 00 	l.lwz r3,0(r28)
    8508:	86 c4 00 00 	l.lwz r22,0(r4)
    850c:	bc 23 ff ff 	l.sfnei r3,-1
    8510:	0c 00 00 e0 	l.bnf 8890 <_malloc_r+0x8e0>
    8514:	e2 ce b0 00 	l.add r22,r14,r22
    8518:	9e d6 10 0f 	l.addi r22,r22,4111
    851c:	9c c0 f0 00 	l.addi r6,r0,-4096
    8520:	e2 d6 30 03 	l.and r22,r22,r6
    8524:	a8 96 00 00 	l.ori r4,r22,0x0
    8528:	04 00 15 f1 	l.jal dcec <_sbrk_r>
    852c:	a8 72 00 00 	l.ori r3,r18,0x0
    8530:	bc 2b ff ff 	l.sfnei r11,-1
    8534:	0c 00 00 e4 	l.bnf 88c4 <_malloc_r+0x914>
    8538:	ab 4b 00 00 	l.ori r26,r11,0x0
    853c:	19 00 00 01 	l.movhi r8,0x1
    8540:	a9 08 25 18 	l.ori r8,r8,0x2518
    8544:	e0 82 40 05 	l.xor r4,r2,r8
    8548:	e0 a0 20 02 	l.sub r5,r0,r4
    854c:	e0 85 20 04 	l.or r4,r5,r4
    8550:	bd 64 00 00 	l.sfgesi r4,0
    8554:	10 00 00 6d 	l.bf 8708 <_malloc_r+0x758>
    8558:	e0 62 c0 00 	l.add r3,r2,r24
    855c:	e4 43 58 00 	l.sfgtu r3,r11
    8560:	10 00 00 03 	l.bf 856c <_malloc_r+0x5bc>
    8564:	9c 80 00 01 	l.addi r4,r0,1
    8568:	9c 80 00 00 	l.addi r4,r0,0
    856c:	a4 84 00 ff 	l.andi r4,r4,0xff
    8570:	bc 04 00 00 	l.sfeqi r4,0
    8574:	10 00 00 66 	l.bf 870c <_malloc_r+0x75c>
    8578:	1b c0 00 01 	l.movhi r30,0x1
    857c:	84 54 00 08 	l.lwz r2,8(r20)
    8580:	9c 60 ff fc 	l.addi r3,r0,-4
    8584:	84 a2 00 04 	l.lwz r5,4(r2)
    8588:	e0 a5 18 03 	l.and r5,r5,r3
    858c:	e0 65 70 02 	l.sub r3,r5,r14
    8590:	bd a3 00 0f 	l.sflesi r3,15
    8594:	10 00 00 03 	l.bf 85a0 <_malloc_r+0x5f0>
    8598:	9c 80 00 01 	l.addi r4,r0,1
    859c:	9c 80 00 00 	l.addi r4,r0,0
    85a0:	a4 84 00 ff 	l.andi r4,r4,0xff
    85a4:	bc 24 00 00 	l.sfnei r4,0
    85a8:	10 00 00 09 	l.bf 85cc <_malloc_r+0x61c>
    85ac:	e4 4e 28 00 	l.sfgtu r14,r5
    85b0:	10 00 00 03 	l.bf 85bc <_malloc_r+0x60c>
    85b4:	9c a0 00 01 	l.addi r5,r0,1
    85b8:	a8 a4 00 00 	l.ori r5,r4,0x0
    85bc:	a4 a5 00 ff 	l.andi r5,r5,0xff
    85c0:	bc 05 00 00 	l.sfeqi r5,0
    85c4:	13 ff ff 88 	l.bf 83e4 <_malloc_r+0x434>
    85c8:	a8 8e 00 01 	l.ori r4,r14,0x1
    85cc:	04 00 02 22 	l.jal 8e54 <__malloc_unlock>
    85d0:	a8 72 00 00 	l.ori r3,r18,0x0
    85d4:	03 ff ff 46 	l.j 82ec <_malloc_r+0x33c>
    85d8:	9d 60 00 00 	l.addi r11,r0,0
    85dc:	03 ff fe e6 	l.j 8174 <_malloc_r+0x1c4>
    85e0:	84 74 00 04 	l.lwz r3,4(r20)
    85e4:	84 43 00 0c 	l.lwz r2,12(r3)
    85e8:	e4 03 10 00 	l.sfeq r3,r2
    85ec:	13 ff fe bd 	l.bf 80e0 <_malloc_r+0x130>
    85f0:	9c a5 00 02 	l.addi r5,r5,2
    85f4:	03 ff ff 31 	l.j 82b8 <_malloc_r+0x308>
    85f8:	84 82 00 04 	l.lwz r4,4(r2)
    85fc:	a8 ce 00 01 	l.ori r6,r14,0x1
    8600:	84 62 00 0c 	l.lwz r3,12(r2)
    8604:	84 a2 00 08 	l.lwz r5,8(r2)
    8608:	d4 02 30 04 	l.sw 4(r2),r6
    860c:	d4 05 18 0c 	l.sw 12(r5),r3
    8610:	e1 c2 70 00 	l.add r14,r2,r14
    8614:	03 ff ff ac 	l.j 84c4 <_malloc_r+0x514>
    8618:	d4 03 28 08 	l.sw 8(r3),r5
    861c:	e0 82 18 00 	l.add r4,r2,r3
    8620:	84 c2 00 0c 	l.lwz r6,12(r2)
    8624:	84 a4 00 04 	l.lwz r5,4(r4)
    8628:	84 e2 00 08 	l.lwz r7,8(r2)
    862c:	a8 a5 00 01 	l.ori r5,r5,0x1
    8630:	a8 72 00 00 	l.ori r3,r18,0x0
    8634:	d4 04 28 04 	l.sw 4(r4),r5
    8638:	d4 07 30 0c 	l.sw 12(r7),r6
    863c:	04 00 02 06 	l.jal 8e54 <__malloc_unlock>
    8640:	d4 06 38 08 	l.sw 8(r6),r7
    8644:	03 ff ff 2a 	l.j 82ec <_malloc_r+0x33c>
    8648:	9d 62 00 08 	l.addi r11,r2,8
    864c:	9c c2 00 5b 	l.addi r6,r2,91
    8650:	03 ff fe 84 	l.j 8060 <_malloc_r+0xb0>
    8654:	e0 47 38 00 	l.add r2,r7,r7
    8658:	03 ff ff 5e 	l.j 83d0 <_malloc_r+0x420>
    865c:	a8 a4 00 00 	l.ori r5,r4,0x0
    8660:	b8 c3 00 46 	l.srli r6,r3,0x6
    8664:	9c 86 00 39 	l.addi r4,r6,57
    8668:	9c c6 00 38 	l.addi r6,r6,56
    866c:	03 ff ff 79 	l.j 8450 <_malloc_r+0x4a0>
    8670:	e0 84 20 00 	l.add r4,r4,r4
    8674:	84 4c 00 08 	l.lwz r2,8(r12)
    8678:	e4 02 60 00 	l.sfeq r2,r12
    867c:	0c 00 00 c2 	l.bnf 8984 <_malloc_r+0x9d4>
    8680:	15 00 00 00 	l.nop 0x0
    8684:	a4 45 00 03 	l.andi r2,r5,0x3
    8688:	9d 8c ff f8 	l.addi r12,r12,-8
    868c:	bc 22 00 00 	l.sfnei r2,0
    8690:	13 ff ff f9 	l.bf 8674 <_malloc_r+0x6c4>
    8694:	9c a5 ff ff 	l.addi r5,r5,-1
    8698:	84 54 00 04 	l.lwz r2,4(r20)
    869c:	ac 66 ff ff 	l.xori r3,r6,-1
    86a0:	e0 43 10 03 	l.and r2,r3,r2
    86a4:	d4 14 10 04 	l.sw 4(r20),r2
    86a8:	e0 c6 30 00 	l.add r6,r6,r6
    86ac:	e0 60 30 02 	l.sub r3,r0,r6
    86b0:	e0 63 30 04 	l.or r3,r3,r6
    86b4:	bd 63 00 00 	l.sfgesi r3,0
    86b8:	13 ff ff 37 	l.bf 8394 <_malloc_r+0x3e4>
    86bc:	e4 a6 10 00 	l.sfleu r6,r2
    86c0:	10 00 00 03 	l.bf 86cc <_malloc_r+0x71c>
    86c4:	9c 60 00 01 	l.addi r3,r0,1
    86c8:	9c 60 00 00 	l.addi r3,r0,0
    86cc:	a4 63 00 ff 	l.andi r3,r3,0xff
    86d0:	bc 03 00 00 	l.sfeqi r3,0
    86d4:	13 ff ff 30 	l.bf 8394 <_malloc_r+0x3e4>
    86d8:	15 00 00 00 	l.nop 0x0
    86dc:	e0 66 10 03 	l.and r3,r6,r2
    86e0:	bc 23 00 00 	l.sfnei r3,0
    86e4:	13 ff fe b9 	l.bf 81c8 <_malloc_r+0x218>
    86e8:	a8 ad 00 00 	l.ori r5,r13,0x0
    86ec:	e0 c6 30 00 	l.add r6,r6,r6
    86f0:	e0 66 10 03 	l.and r3,r6,r2
    86f4:	bc 03 00 00 	l.sfeqi r3,0
    86f8:	13 ff ff fd 	l.bf 86ec <_malloc_r+0x73c>
    86fc:	9c a5 00 04 	l.addi r5,r5,4
    8700:	03 ff fe b3 	l.j 81cc <_malloc_r+0x21c>
    8704:	b9 05 00 03 	l.slli r8,r5,0x3
    8708:	1b c0 00 01 	l.movhi r30,0x1
    870c:	e4 23 d0 00 	l.sfne r3,r26
    8710:	ab de 2d 80 	l.ori r30,r30,0x2d80
    8714:	84 9e 00 00 	l.lwz r4,0(r30)
    8718:	e0 96 20 00 	l.add r4,r22,r4
    871c:	0c 00 00 6f 	l.bnf 88d8 <_malloc_r+0x928>
    8720:	d4 1e 20 00 	l.sw 0(r30),r4
    8724:	84 bc 00 00 	l.lwz r5,0(r28)
    8728:	bc 25 ff ff 	l.sfnei r5,-1
    872c:	0c 00 00 7f 	l.bnf 8928 <_malloc_r+0x978>
    8730:	e0 7a 18 02 	l.sub r3,r26,r3
    8734:	e0 83 20 00 	l.add r4,r3,r4
    8738:	d4 1e 20 00 	l.sw 0(r30),r4
    873c:	a4 7a 00 07 	l.andi r3,r26,0x7
    8740:	bc 03 00 00 	l.sfeqi r3,0
    8744:	10 00 00 06 	l.bf 875c <_malloc_r+0x7ac>
    8748:	9c a0 10 00 	l.addi r5,r0,4096
    874c:	e3 5a 18 02 	l.sub r26,r26,r3
    8750:	9c a0 10 08 	l.addi r5,r0,4104
    8754:	9f 5a 00 08 	l.addi r26,r26,8
    8758:	e0 a5 18 02 	l.sub r5,r5,r3
    875c:	e0 9a b0 00 	l.add r4,r26,r22
    8760:	a8 72 00 00 	l.ori r3,r18,0x0
    8764:	a4 84 0f ff 	l.andi r4,r4,0xfff
    8768:	e2 c5 20 02 	l.sub r22,r5,r4
    876c:	04 00 15 60 	l.jal dcec <_sbrk_r>
    8770:	a8 96 00 00 	l.ori r4,r22,0x0
    8774:	bc 0b ff ff 	l.sfeqi r11,-1
    8778:	10 00 00 70 	l.bf 8938 <_malloc_r+0x988>
    877c:	9c 60 00 01 	l.addi r3,r0,1
    8780:	e0 6b d0 02 	l.sub r3,r11,r26
    8784:	e0 63 b0 00 	l.add r3,r3,r22
    8788:	a8 63 00 01 	l.ori r3,r3,0x1
    878c:	84 9e 00 00 	l.lwz r4,0(r30)
    8790:	18 a0 00 01 	l.movhi r5,0x1
    8794:	e0 96 20 00 	l.add r4,r22,r4
    8798:	a8 a5 25 18 	l.ori r5,r5,0x2518
    879c:	d4 14 d0 08 	l.sw 8(r20),r26
    87a0:	d4 1a 18 04 	l.sw 4(r26),r3
    87a4:	e4 02 28 00 	l.sfeq r2,r5
    87a8:	10 00 00 11 	l.bf 87ec <_malloc_r+0x83c>
    87ac:	d4 1e 20 00 	l.sw 0(r30),r4
    87b0:	bc 58 00 0f 	l.sfgtui r24,15
    87b4:	0c 00 00 26 	l.bnf 884c <_malloc_r+0x89c>
    87b8:	9c c0 ff f8 	l.addi r6,r0,-8
    87bc:	84 a2 00 04 	l.lwz r5,4(r2)
    87c0:	9c 78 ff f4 	l.addi r3,r24,-12
    87c4:	a4 a5 00 01 	l.andi r5,r5,0x1
    87c8:	e0 63 30 03 	l.and r3,r3,r6
    87cc:	9c e0 00 05 	l.addi r7,r0,5
    87d0:	e0 a5 18 04 	l.or r5,r5,r3
    87d4:	e0 c2 18 00 	l.add r6,r2,r3
    87d8:	d4 02 28 04 	l.sw 4(r2),r5
    87dc:	d4 06 38 04 	l.sw 4(r6),r7
    87e0:	bc a3 00 0f 	l.sfleui r3,15
    87e4:	0c 00 00 4a 	l.bnf 890c <_malloc_r+0x95c>
    87e8:	d4 06 38 08 	l.sw 8(r6),r7
    87ec:	18 40 00 01 	l.movhi r2,0x1
    87f0:	a8 42 2d ac 	l.ori r2,r2,0x2dac
    87f4:	84 62 00 00 	l.lwz r3,0(r2)
    87f8:	e4 a4 18 00 	l.sfleu r4,r3
    87fc:	10 00 00 03 	l.bf 8808 <_malloc_r+0x858>
    8800:	18 60 00 01 	l.movhi r3,0x1
    8804:	d4 02 20 00 	l.sw 0(r2),r4
    8808:	a8 63 2d a8 	l.ori r3,r3,0x2da8
    880c:	84 43 00 00 	l.lwz r2,0(r3)
    8810:	e4 44 10 00 	l.sfgtu r4,r2
    8814:	0c 00 00 21 	l.bnf 8898 <_malloc_r+0x8e8>
    8818:	84 54 00 08 	l.lwz r2,8(r20)
    881c:	84 a2 00 04 	l.lwz r5,4(r2)
    8820:	9d 00 ff fc 	l.addi r8,r0,-4
    8824:	d4 03 20 00 	l.sw 0(r3),r4
    8828:	03 ff ff 59 	l.j 858c <_malloc_r+0x5dc>
    882c:	e0 a5 40 03 	l.and r5,r5,r8
    8830:	10 00 00 11 	l.bf 8874 <_malloc_r+0x8c4>
    8834:	bc 42 05 54 	l.sfgtui r2,1364
    8838:	b8 4e 00 4f 	l.srli r2,r14,0xf
    883c:	9c e2 00 78 	l.addi r7,r2,120
    8840:	9c c2 00 77 	l.addi r6,r2,119
    8844:	03 ff fe 07 	l.j 8060 <_malloc_r+0xb0>
    8848:	e0 47 38 00 	l.add r2,r7,r7
    884c:	9c 40 00 01 	l.addi r2,r0,1
    8850:	03 ff ff 5f 	l.j 85cc <_malloc_r+0x61c>
    8854:	d4 1a 10 04 	l.sw 4(r26),r2
    8858:	9c 80 00 01 	l.addi r4,r0,1
    885c:	84 74 00 04 	l.lwz r3,4(r20)
    8860:	e0 c4 30 08 	l.sll r6,r4,r6
    8864:	a8 87 00 00 	l.ori r4,r7,0x0
    8868:	e0 66 18 04 	l.or r3,r6,r3
    886c:	03 ff ff 0e 	l.j 84a4 <_malloc_r+0x4f4>
    8870:	d4 14 18 04 	l.sw 4(r20),r3
    8874:	10 00 00 22 	l.bf 88fc <_malloc_r+0x94c>
    8878:	15 00 00 00 	l.nop 0x0
    887c:	b8 4e 00 52 	l.srli r2,r14,0x12
    8880:	9c e2 00 7d 	l.addi r7,r2,125
    8884:	9c c2 00 7c 	l.addi r6,r2,124
    8888:	03 ff fd f6 	l.j 8060 <_malloc_r+0xb0>
    888c:	e0 47 38 00 	l.add r2,r7,r7
    8890:	03 ff ff 25 	l.j 8524 <_malloc_r+0x574>
    8894:	9e d6 00 10 	l.addi r22,r22,16
    8898:	84 a2 00 04 	l.lwz r5,4(r2)
    889c:	9c e0 ff fc 	l.addi r7,r0,-4
    88a0:	03 ff ff 3b 	l.j 858c <_malloc_r+0x5dc>
    88a4:	e0 a5 38 03 	l.and r5,r5,r7
    88a8:	10 00 00 26 	l.bf 8940 <_malloc_r+0x990>
    88ac:	bc 46 01 54 	l.sfgtui r6,340
    88b0:	b8 c3 00 4c 	l.srli r6,r3,0xc
    88b4:	9c 86 00 6f 	l.addi r4,r6,111
    88b8:	9c c6 00 6e 	l.addi r6,r6,110
    88bc:	03 ff fe e5 	l.j 8450 <_malloc_r+0x4a0>
    88c0:	e0 84 20 00 	l.add r4,r4,r4
    88c4:	84 54 00 08 	l.lwz r2,8(r20)
    88c8:	9c e0 ff fc 	l.addi r7,r0,-4
    88cc:	84 a2 00 04 	l.lwz r5,4(r2)
    88d0:	03 ff ff 2f 	l.j 858c <_malloc_r+0x5dc>
    88d4:	e0 a5 38 03 	l.and r5,r5,r7
    88d8:	a4 a3 0f ff 	l.andi r5,r3,0xfff
    88dc:	bc 25 00 00 	l.sfnei r5,0
    88e0:	13 ff ff 91 	l.bf 8724 <_malloc_r+0x774>
    88e4:	15 00 00 00 	l.nop 0x0
    88e8:	e0 58 b0 00 	l.add r2,r24,r22
    88ec:	84 74 00 08 	l.lwz r3,8(r20)
    88f0:	a8 42 00 01 	l.ori r2,r2,0x1
    88f4:	03 ff ff be 	l.j 87ec <_malloc_r+0x83c>
    88f8:	d4 03 10 04 	l.sw 4(r3),r2
    88fc:	9c 40 00 fe 	l.addi r2,r0,254
    8900:	9c e0 00 7f 	l.addi r7,r0,127
    8904:	03 ff fd d7 	l.j 8060 <_malloc_r+0xb0>
    8908:	9c c0 00 7e 	l.addi r6,r0,126
    890c:	9c 82 00 08 	l.addi r4,r2,8
    8910:	18 40 00 01 	l.movhi r2,0x1
    8914:	a8 72 00 00 	l.ori r3,r18,0x0
    8918:	07 ff fb 8c 	l.jal 7748 <_free_r>
    891c:	a8 42 2d 80 	l.ori r2,r2,0x2d80
    8920:	03 ff ff b3 	l.j 87ec <_malloc_r+0x83c>
    8924:	84 82 00 00 	l.lwz r4,0(r2)
    8928:	18 60 00 01 	l.movhi r3,0x1
    892c:	a8 63 25 10 	l.ori r3,r3,0x2510
    8930:	03 ff ff 83 	l.j 873c <_malloc_r+0x78c>
    8934:	d4 03 d0 00 	l.sw 0(r3),r26
    8938:	03 ff ff 95 	l.j 878c <_malloc_r+0x7dc>
    893c:	9e c0 00 00 	l.addi r22,r0,0
    8940:	10 00 00 07 	l.bf 895c <_malloc_r+0x9ac>
    8944:	bc 46 05 54 	l.sfgtui r6,1364
    8948:	b8 c3 00 4f 	l.srli r6,r3,0xf
    894c:	9c 86 00 78 	l.addi r4,r6,120
    8950:	9c c6 00 77 	l.addi r6,r6,119
    8954:	03 ff fe bf 	l.j 8450 <_malloc_r+0x4a0>
    8958:	e0 84 20 00 	l.add r4,r4,r4
    895c:	10 00 00 07 	l.bf 8978 <_malloc_r+0x9c8>
    8960:	15 00 00 00 	l.nop 0x0
    8964:	b8 c3 00 52 	l.srli r6,r3,0x12
    8968:	9c 86 00 7d 	l.addi r4,r6,125
    896c:	9c c6 00 7c 	l.addi r6,r6,124
    8970:	03 ff fe b8 	l.j 8450 <_malloc_r+0x4a0>
    8974:	e0 84 20 00 	l.add r4,r4,r4
    8978:	9c 80 00 fe 	l.addi r4,r0,254
    897c:	03 ff fe b5 	l.j 8450 <_malloc_r+0x4a0>
    8980:	9c c0 00 7e 	l.addi r6,r0,126
    8984:	03 ff ff 49 	l.j 86a8 <_malloc_r+0x6f8>
    8988:	84 54 00 04 	l.lwz r2,4(r20)
    898c:	b8 ae 00 43 	l.srli r5,r14,0x3
    8990:	9c 65 00 01 	l.addi r3,r5,1
    8994:	03 ff fe 3f 	l.j 8290 <_malloc_r+0x2e0>
    8998:	e0 63 18 00 	l.add r3,r3,r3

0000899c <memchr>:
    899c:	a4 c3 00 03 	l.andi r6,r3,0x3
    89a0:	d7 e1 0f f8 	l.sw -8(r1),r1
    89a4:	d7 e1 17 fc 	l.sw -4(r1),r2
    89a8:	bc 06 00 00 	l.sfeqi r6,0
    89ac:	9c 21 ff f8 	l.addi r1,r1,-8
    89b0:	10 00 00 4c 	l.bf 8ae0 <memchr+0x144>
    89b4:	a4 c4 00 ff 	l.andi r6,r4,0xff
    89b8:	bc 05 00 00 	l.sfeqi r5,0
    89bc:	10 00 00 27 	l.bf 8a58 <memchr+0xbc>
    89c0:	9d 65 ff ff 	l.addi r11,r5,-1
    89c4:	8c a3 00 00 	l.lbz r5,0(r3)
    89c8:	e4 05 30 00 	l.sfeq r5,r6
    89cc:	0c 00 00 0c 	l.bnf 89fc <memchr+0x60>
    89d0:	9c 63 00 01 	l.addi r3,r3,1
    89d4:	9c 63 ff ff 	l.addi r3,r3,-1
    89d8:	00 00 00 26 	l.j 8a70 <memchr+0xd4>
    89dc:	9c 21 00 08 	l.addi r1,r1,8
    89e0:	10 00 00 1f 	l.bf 8a5c <memchr+0xc0>
    89e4:	15 00 00 00 	l.nop 0x0
    89e8:	8c a3 00 00 	l.lbz r5,0(r3)
    89ec:	e4 05 30 00 	l.sfeq r5,r6
    89f0:	10 00 00 1f 	l.bf 8a6c <memchr+0xd0>
    89f4:	9d 6b ff ff 	l.addi r11,r11,-1
    89f8:	9c 63 00 01 	l.addi r3,r3,1
    89fc:	a4 a3 00 03 	l.andi r5,r3,0x3
    8a00:	bc 25 00 00 	l.sfnei r5,0
    8a04:	13 ff ff f7 	l.bf 89e0 <memchr+0x44>
    8a08:	bc 0b 00 00 	l.sfeqi r11,0
    8a0c:	bc ab 00 03 	l.sfleui r11,3
    8a10:	0c 00 00 1c 	l.bnf 8a80 <memchr+0xe4>
    8a14:	bc 0b 00 00 	l.sfeqi r11,0
    8a18:	10 00 00 11 	l.bf 8a5c <memchr+0xc0>
    8a1c:	15 00 00 00 	l.nop 0x0
    8a20:	8c 83 00 00 	l.lbz r4,0(r3)
    8a24:	e4 04 30 00 	l.sfeq r4,r6
    8a28:	10 00 00 11 	l.bf 8a6c <memchr+0xd0>
    8a2c:	9c a3 00 01 	l.addi r5,r3,1
    8a30:	00 00 00 06 	l.j 8a48 <memchr+0xac>
    8a34:	e0 83 58 00 	l.add r4,r3,r11
    8a38:	8c 65 ff ff 	l.lbz r3,-1(r5)
    8a3c:	e4 03 30 00 	l.sfeq r3,r6
    8a40:	10 00 00 07 	l.bf 8a5c <memchr+0xc0>
    8a44:	15 00 00 00 	l.nop 0x0
    8a48:	e4 24 28 00 	l.sfne r4,r5
    8a4c:	a9 65 00 00 	l.ori r11,r5,0x0
    8a50:	13 ff ff fa 	l.bf 8a38 <memchr+0x9c>
    8a54:	9c a5 00 01 	l.addi r5,r5,1
    8a58:	9d 60 00 00 	l.addi r11,r0,0
    8a5c:	9c 21 00 08 	l.addi r1,r1,8
    8a60:	84 21 ff f8 	l.lwz r1,-8(r1)
    8a64:	44 00 48 00 	l.jr r9
    8a68:	84 41 ff fc 	l.lwz r2,-4(r1)
    8a6c:	9c 21 00 08 	l.addi r1,r1,8
    8a70:	a9 63 00 00 	l.ori r11,r3,0x0
    8a74:	84 21 ff f8 	l.lwz r1,-8(r1)
    8a78:	44 00 48 00 	l.jr r9
    8a7c:	84 41 ff fc 	l.lwz r2,-4(r1)
    8a80:	a4 84 00 ff 	l.andi r4,r4,0xff
    8a84:	b8 a4 00 08 	l.slli r5,r4,0x8
    8a88:	e0 85 20 04 	l.or r4,r5,r4
    8a8c:	b8 e4 00 10 	l.slli r7,r4,0x10
    8a90:	e0 e4 38 04 	l.or r7,r4,r7
    8a94:	84 83 00 00 	l.lwz r4,0(r3)
    8a98:	18 40 fe fe 	l.movhi r2,0xfefe
    8a9c:	e0 87 20 05 	l.xor r4,r7,r4
    8aa0:	a8 42 fe ff 	l.ori r2,r2,0xfeff
    8aa4:	e0 a4 10 00 	l.add r5,r4,r2
    8aa8:	ac 84 ff ff 	l.xori r4,r4,-1
    8aac:	18 40 80 80 	l.movhi r2,0x8080
    8ab0:	e0 85 20 03 	l.and r4,r5,r4
    8ab4:	a8 42 80 80 	l.ori r2,r2,0x8080
    8ab8:	e0 84 10 03 	l.and r4,r4,r2
    8abc:	bc 24 00 00 	l.sfnei r4,0
    8ac0:	13 ff ff d8 	l.bf 8a20 <memchr+0x84>
    8ac4:	15 00 00 00 	l.nop 0x0
    8ac8:	9d 6b ff fc 	l.addi r11,r11,-4
    8acc:	bc 4b 00 03 	l.sfgtui r11,3
    8ad0:	13 ff ff f1 	l.bf 8a94 <memchr+0xf8>
    8ad4:	9c 63 00 04 	l.addi r3,r3,4
    8ad8:	03 ff ff d0 	l.j 8a18 <memchr+0x7c>
    8adc:	bc 0b 00 00 	l.sfeqi r11,0
    8ae0:	03 ff ff cb 	l.j 8a0c <memchr+0x70>
    8ae4:	a9 65 00 00 	l.ori r11,r5,0x0

00008ae8 <memcpy>:
    8ae8:	d7 e1 0f f8 	l.sw -8(r1),r1
    8aec:	d7 e1 17 fc 	l.sw -4(r1),r2
    8af0:	bc a5 00 0f 	l.sfleui r5,15
    8af4:	10 00 00 4c 	l.bf 8c24 <memcpy+0x13c>
    8af8:	9c 21 ff f8 	l.addi r1,r1,-8
    8afc:	e0 c4 18 04 	l.or r6,r4,r3
    8b00:	a4 c6 00 03 	l.andi r6,r6,0x3
    8b04:	bc 26 00 00 	l.sfnei r6,0
    8b08:	10 00 00 3b 	l.bf 8bf4 <memcpy+0x10c>
    8b0c:	a8 c3 00 00 	l.ori r6,r3,0x0
    8b10:	9f 25 ff f0 	l.addi r25,r5,-16
    8b14:	9c c4 00 04 	l.addi r6,r4,4
    8b18:	bb 39 00 44 	l.srli r25,r25,0x4
    8b1c:	9e 63 00 04 	l.addi r19,r3,4
    8b20:	9e 24 00 08 	l.addi r17,r4,8
    8b24:	b9 79 00 04 	l.slli r11,r25,0x4
    8b28:	9d e3 00 08 	l.addi r15,r3,8
    8b2c:	9d a4 00 0c 	l.addi r13,r4,12
    8b30:	9d 6b 00 14 	l.addi r11,r11,20
    8b34:	9d 83 00 0c 	l.addi r12,r3,12
    8b38:	e1 64 58 00 	l.add r11,r4,r11
    8b3c:	a9 04 00 00 	l.ori r8,r4,0x0
    8b40:	a8 e3 00 00 	l.ori r7,r3,0x0
    8b44:	86 e8 00 00 	l.lwz r23,0(r8)
    8b48:	86 a6 00 00 	l.lwz r21,0(r6)
    8b4c:	d4 07 b8 00 	l.sw 0(r7),r23
    8b50:	86 f1 00 00 	l.lwz r23,0(r17)
    8b54:	d4 13 a8 00 	l.sw 0(r19),r21
    8b58:	9c c6 00 10 	l.addi r6,r6,16
    8b5c:	86 ad 00 00 	l.lwz r21,0(r13)
    8b60:	d4 0f b8 00 	l.sw 0(r15),r23
    8b64:	d4 0c a8 00 	l.sw 0(r12),r21
    8b68:	e4 26 58 00 	l.sfne r6,r11
    8b6c:	9c e7 00 10 	l.addi r7,r7,16
    8b70:	9d 08 00 10 	l.addi r8,r8,16
    8b74:	9e 73 00 10 	l.addi r19,r19,16
    8b78:	9e 31 00 10 	l.addi r17,r17,16
    8b7c:	9d ef 00 10 	l.addi r15,r15,16
    8b80:	9d ad 00 10 	l.addi r13,r13,16
    8b84:	13 ff ff f0 	l.bf 8b44 <memcpy+0x5c>
    8b88:	9d 8c 00 10 	l.addi r12,r12,16
    8b8c:	9c f9 00 01 	l.addi r7,r25,1
    8b90:	a5 65 00 0f 	l.andi r11,r5,0xf
    8b94:	b8 e7 00 04 	l.slli r7,r7,0x4
    8b98:	bc ab 00 03 	l.sfleui r11,3
    8b9c:	e0 c3 38 00 	l.add r6,r3,r7
    8ba0:	10 00 00 27 	l.bf 8c3c <memcpy+0x154>
    8ba4:	e0 84 38 00 	l.add r4,r4,r7
    8ba8:	a9 86 00 00 	l.ori r12,r6,0x0
    8bac:	a9 04 00 00 	l.ori r8,r4,0x0
    8bb0:	a8 eb 00 00 	l.ori r7,r11,0x0
    8bb4:	85 a8 00 00 	l.lwz r13,0(r8)
    8bb8:	9c e7 ff fc 	l.addi r7,r7,-4
    8bbc:	d4 0c 68 00 	l.sw 0(r12),r13
    8bc0:	bc 47 00 03 	l.sfgtui r7,3
    8bc4:	9d 8c 00 04 	l.addi r12,r12,4
    8bc8:	13 ff ff fb 	l.bf 8bb4 <memcpy+0xcc>
    8bcc:	9d 08 00 04 	l.addi r8,r8,4
    8bd0:	9c eb ff fc 	l.addi r7,r11,-4
    8bd4:	9c 40 ff fc 	l.addi r2,r0,-4
    8bd8:	a4 a5 00 03 	l.andi r5,r5,0x3
    8bdc:	e0 e7 10 03 	l.and r7,r7,r2
    8be0:	bc 25 00 00 	l.sfnei r5,0
    8be4:	9c e7 00 04 	l.addi r7,r7,4
    8be8:	e0 c6 38 00 	l.add r6,r6,r7
    8bec:	0c 00 00 09 	l.bnf 8c10 <memcpy+0x128>
    8bf0:	e0 84 38 00 	l.add r4,r4,r7
    8bf4:	e0 a6 28 00 	l.add r5,r6,r5
    8bf8:	8c 44 00 00 	l.lbz r2,0(r4)
    8bfc:	9c c6 00 01 	l.addi r6,r6,1
    8c00:	db e6 17 ff 	l.sb -1(r6),r2
    8c04:	e4 26 28 00 	l.sfne r6,r5
    8c08:	13 ff ff fc 	l.bf 8bf8 <memcpy+0x110>
    8c0c:	9c 84 00 01 	l.addi r4,r4,1
    8c10:	9c 21 00 08 	l.addi r1,r1,8
    8c14:	a9 63 00 00 	l.ori r11,r3,0x0
    8c18:	84 21 ff f8 	l.lwz r1,-8(r1)
    8c1c:	44 00 48 00 	l.jr r9
    8c20:	84 41 ff fc 	l.lwz r2,-4(r1)
    8c24:	a8 c3 00 00 	l.ori r6,r3,0x0
    8c28:	bc 25 00 00 	l.sfnei r5,0
    8c2c:	13 ff ff f2 	l.bf 8bf4 <memcpy+0x10c>
    8c30:	15 00 00 00 	l.nop 0x0
    8c34:	03 ff ff f8 	l.j 8c14 <memcpy+0x12c>
    8c38:	9c 21 00 08 	l.addi r1,r1,8
    8c3c:	03 ff ff fb 	l.j 8c28 <memcpy+0x140>
    8c40:	a8 ab 00 00 	l.ori r5,r11,0x0

00008c44 <memset>:
    8c44:	a4 c3 00 03 	l.andi r6,r3,0x3
    8c48:	d7 e1 0f f8 	l.sw -8(r1),r1
    8c4c:	d7 e1 17 fc 	l.sw -4(r1),r2
    8c50:	bc 06 00 00 	l.sfeqi r6,0
    8c54:	10 00 00 54 	l.bf 8da4 <memset+0x160>
    8c58:	9c 21 ff f8 	l.addi r1,r1,-8
    8c5c:	bc 25 00 00 	l.sfnei r5,0
    8c60:	0c 00 00 4c 	l.bnf 8d90 <memset+0x14c>
    8c64:	9c a5 ff ff 	l.addi r5,r5,-1
    8c68:	b9 a4 00 18 	l.slli r13,r4,0x18
    8c6c:	a8 e3 00 00 	l.ori r7,r3,0x0
    8c70:	a8 c3 00 00 	l.ori r6,r3,0x0
    8c74:	00 00 00 05 	l.j 8c88 <memset+0x44>
    8c78:	b9 ad 00 98 	l.srai r13,r13,0x18
    8c7c:	bc 05 00 00 	l.sfeqi r5,0
    8c80:	10 00 00 44 	l.bf 8d90 <memset+0x14c>
    8c84:	a8 ac 00 00 	l.ori r5,r12,0x0
    8c88:	9c c6 00 01 	l.addi r6,r6,1
    8c8c:	d8 07 68 00 	l.sb 0(r7),r13
    8c90:	a5 06 00 03 	l.andi r8,r6,0x3
    8c94:	9d 85 ff ff 	l.addi r12,r5,-1
    8c98:	bc 28 00 00 	l.sfnei r8,0
    8c9c:	13 ff ff f8 	l.bf 8c7c <memset+0x38>
    8ca0:	9c e7 00 01 	l.addi r7,r7,1
    8ca4:	bc 45 00 03 	l.sfgtui r5,3
    8ca8:	0c 00 00 30 	l.bnf 8d68 <memset+0x124>
    8cac:	bc 25 00 00 	l.sfnei r5,0
    8cb0:	a4 e4 00 ff 	l.andi r7,r4,0xff
    8cb4:	bc a5 00 0f 	l.sfleui r5,15
    8cb8:	b9 07 00 08 	l.slli r8,r7,0x8
    8cbc:	e1 08 38 04 	l.or r8,r8,r7
    8cc0:	b8 e8 00 10 	l.slli r7,r8,0x10
    8cc4:	10 00 00 1b 	l.bf 8d30 <memset+0xec>
    8cc8:	e0 e8 38 04 	l.or r7,r8,r7
    8ccc:	9e 25 ff f0 	l.addi r17,r5,-16
    8cd0:	9d 06 00 04 	l.addi r8,r6,4
    8cd4:	ba 31 00 44 	l.srli r17,r17,0x4
    8cd8:	9d e6 00 08 	l.addi r15,r6,8
    8cdc:	9d a6 00 0c 	l.addi r13,r6,12
    8ce0:	b9 71 00 04 	l.slli r11,r17,0x4
    8ce4:	a9 86 00 00 	l.ori r12,r6,0x0
    8ce8:	9d 6b 00 14 	l.addi r11,r11,20
    8cec:	e1 66 58 00 	l.add r11,r6,r11
    8cf0:	d4 0c 38 00 	l.sw 0(r12),r7
    8cf4:	d4 08 38 00 	l.sw 0(r8),r7
    8cf8:	9d 08 00 10 	l.addi r8,r8,16
    8cfc:	d4 0f 38 00 	l.sw 0(r15),r7
    8d00:	d4 0d 38 00 	l.sw 0(r13),r7
    8d04:	e4 28 58 00 	l.sfne r8,r11
    8d08:	9d 8c 00 10 	l.addi r12,r12,16
    8d0c:	9d ef 00 10 	l.addi r15,r15,16
    8d10:	13 ff ff f8 	l.bf 8cf0 <memset+0xac>
    8d14:	9d ad 00 10 	l.addi r13,r13,16
    8d18:	9e 31 00 01 	l.addi r17,r17,1
    8d1c:	a4 a5 00 0f 	l.andi r5,r5,0xf
    8d20:	ba 31 00 04 	l.slli r17,r17,0x4
    8d24:	bc a5 00 03 	l.sfleui r5,3
    8d28:	10 00 00 0f 	l.bf 8d64 <memset+0x120>
    8d2c:	e0 c6 88 00 	l.add r6,r6,r17
    8d30:	a9 86 00 00 	l.ori r12,r6,0x0
    8d34:	a9 05 00 00 	l.ori r8,r5,0x0
    8d38:	9d 08 ff fc 	l.addi r8,r8,-4
    8d3c:	d4 0c 38 00 	l.sw 0(r12),r7
    8d40:	bc 48 00 03 	l.sfgtui r8,3
    8d44:	13 ff ff fd 	l.bf 8d38 <memset+0xf4>
    8d48:	9d 8c 00 04 	l.addi r12,r12,4
    8d4c:	9c e5 ff fc 	l.addi r7,r5,-4
    8d50:	9c 40 ff fc 	l.addi r2,r0,-4
    8d54:	a4 a5 00 03 	l.andi r5,r5,0x3
    8d58:	e0 e7 10 03 	l.and r7,r7,r2
    8d5c:	9c e7 00 04 	l.addi r7,r7,4
    8d60:	e0 c6 38 00 	l.add r6,r6,r7
    8d64:	bc 25 00 00 	l.sfnei r5,0
    8d68:	0c 00 00 0a 	l.bnf 8d90 <memset+0x14c>
    8d6c:	15 00 00 00 	l.nop 0x0
    8d70:	b8 84 00 18 	l.slli r4,r4,0x18
    8d74:	e0 a6 28 00 	l.add r5,r6,r5
    8d78:	b8 84 00 98 	l.srai r4,r4,0x18
    8d7c:	d8 06 20 00 	l.sb 0(r6),r4
    8d80:	9c c6 00 01 	l.addi r6,r6,1
    8d84:	e4 25 30 00 	l.sfne r5,r6
    8d88:	13 ff ff fd 	l.bf 8d7c <memset+0x138>
    8d8c:	15 00 00 00 	l.nop 0x0
    8d90:	9c 21 00 08 	l.addi r1,r1,8
    8d94:	a9 63 00 00 	l.ori r11,r3,0x0
    8d98:	84 21 ff f8 	l.lwz r1,-8(r1)
    8d9c:	44 00 48 00 	l.jr r9
    8da0:	84 41 ff fc 	l.lwz r2,-4(r1)
    8da4:	03 ff ff c0 	l.j 8ca4 <memset+0x60>
    8da8:	a8 c3 00 00 	l.ori r6,r3,0x0

00008dac <__malloc_lock>:
    8dac:	d7 e1 17 f0 	l.sw -16(r1),r2
    8db0:	18 40 00 01 	l.movhi r2,0x1
    8db4:	d7 e1 77 f4 	l.sw -12(r1),r14
    8db8:	d7 e1 97 f8 	l.sw -8(r1),r18
    8dbc:	d7 e1 4f fc 	l.sw -4(r1),r9
    8dc0:	d7 e1 0f ec 	l.sw -20(r1),r1
    8dc4:	9c 21 ff ec 	l.addi r1,r1,-20
    8dc8:	a8 42 2d bc 	l.ori r2,r2,0x2dbc
    8dcc:	04 00 14 74 	l.jal df9c <or1k_critical_begin>
    8dd0:	a9 c3 00 00 	l.ori r14,r3,0x0
    8dd4:	84 62 00 00 	l.lwz r3,0(r2)
    8dd8:	e4 2e 18 00 	l.sfne r14,r3
    8ddc:	0c 00 00 0c 	l.bnf 8e0c <__malloc_lock+0x60>
    8de0:	aa 4b 00 00 	l.ori r18,r11,0x0
    8de4:	84 82 00 00 	l.lwz r4,0(r2)
    8de8:	bc 24 00 00 	l.sfnei r4,0
    8dec:	13 ff ff fe 	l.bf 8de4 <__malloc_lock+0x38>
    8df0:	18 60 00 01 	l.movhi r3,0x1
    8df4:	a8 ae 00 00 	l.ori r5,r14,0x0
    8df8:	04 00 14 90 	l.jal e038 <or1k_sync_cas>
    8dfc:	a8 63 2d bc 	l.ori r3,r3,0x2dbc
    8e00:	bc 2b 00 00 	l.sfnei r11,0
    8e04:	13 ff ff f8 	l.bf 8de4 <__malloc_lock+0x38>
    8e08:	15 00 00 00 	l.nop 0x0
    8e0c:	18 40 00 01 	l.movhi r2,0x1
    8e10:	a8 42 2d b8 	l.ori r2,r2,0x2db8
    8e14:	84 62 00 00 	l.lwz r3,0(r2)
    8e18:	bc 03 00 00 	l.sfeqi r3,0
    8e1c:	0c 00 00 04 	l.bnf 8e2c <__malloc_lock+0x80>
    8e20:	18 60 00 01 	l.movhi r3,0x1
    8e24:	a8 63 2d c0 	l.ori r3,r3,0x2dc0
    8e28:	d4 03 90 00 	l.sw 0(r3),r18
    8e2c:	84 62 00 00 	l.lwz r3,0(r2)
    8e30:	9c 63 00 01 	l.addi r3,r3,1
    8e34:	d4 02 18 00 	l.sw 0(r2),r3
    8e38:	9c 21 00 14 	l.addi r1,r1,20
    8e3c:	85 21 ff fc 	l.lwz r9,-4(r1)
    8e40:	84 21 ff ec 	l.lwz r1,-20(r1)
    8e44:	84 41 ff f0 	l.lwz r2,-16(r1)
    8e48:	85 c1 ff f4 	l.lwz r14,-12(r1)
    8e4c:	44 00 48 00 	l.jr r9
    8e50:	86 41 ff f8 	l.lwz r18,-8(r1)

00008e54 <__malloc_unlock>:
    8e54:	18 60 00 01 	l.movhi r3,0x1
    8e58:	d7 e1 4f fc 	l.sw -4(r1),r9
    8e5c:	a8 63 2d b8 	l.ori r3,r3,0x2db8
    8e60:	d7 e1 0f f8 	l.sw -8(r1),r1
    8e64:	84 83 00 00 	l.lwz r4,0(r3)
    8e68:	9c 21 ff f8 	l.addi r1,r1,-8
    8e6c:	9c 84 ff ff 	l.addi r4,r4,-1
    8e70:	d4 03 20 00 	l.sw 0(r3),r4
    8e74:	84 83 00 00 	l.lwz r4,0(r3)
    8e78:	bc 24 00 00 	l.sfnei r4,0
    8e7c:	10 00 00 09 	l.bf 8ea0 <__malloc_unlock+0x4c>
    8e80:	18 60 00 01 	l.movhi r3,0x1
    8e84:	18 a0 00 01 	l.movhi r5,0x1
    8e88:	a8 63 2d c0 	l.ori r3,r3,0x2dc0
    8e8c:	a8 a5 2d bc 	l.ori r5,r5,0x2dbc
    8e90:	84 63 00 00 	l.lwz r3,0(r3)
    8e94:	d4 05 20 00 	l.sw 0(r5),r4
    8e98:	04 00 14 4f 	l.jal dfd4 <or1k_critical_end>
    8e9c:	15 00 00 00 	l.nop 0x0
    8ea0:	9c 21 00 08 	l.addi r1,r1,8
    8ea4:	85 21 ff fc 	l.lwz r9,-4(r1)
    8ea8:	44 00 48 00 	l.jr r9
    8eac:	84 21 ff f8 	l.lwz r1,-8(r1)

00008eb0 <_Balloc>:
    8eb0:	d7 e1 77 f8 	l.sw -8(r1),r14
    8eb4:	a9 c4 00 00 	l.ori r14,r4,0x0
    8eb8:	84 83 00 4c 	l.lwz r4,76(r3)
    8ebc:	d7 e1 17 f4 	l.sw -12(r1),r2
    8ec0:	d7 e1 4f fc 	l.sw -4(r1),r9
    8ec4:	d7 e1 0f f0 	l.sw -16(r1),r1
    8ec8:	bc 24 00 00 	l.sfnei r4,0
    8ecc:	9c 21 ff f0 	l.addi r1,r1,-16
    8ed0:	0c 00 00 13 	l.bnf 8f1c <_Balloc+0x6c>
    8ed4:	a8 43 00 00 	l.ori r2,r3,0x0
    8ed8:	b8 6e 00 02 	l.slli r3,r14,0x2
    8edc:	e0 64 18 00 	l.add r3,r4,r3
    8ee0:	85 63 00 00 	l.lwz r11,0(r3)
    8ee4:	bc 0b 00 00 	l.sfeqi r11,0
    8ee8:	10 00 00 16 	l.bf 8f40 <_Balloc+0x90>
    8eec:	9c 80 00 01 	l.addi r4,r0,1
    8ef0:	84 4b 00 00 	l.lwz r2,0(r11)
    8ef4:	d4 03 10 00 	l.sw 0(r3),r2
    8ef8:	9c 40 00 00 	l.addi r2,r0,0
    8efc:	d4 0b 10 10 	l.sw 16(r11),r2
    8f00:	d4 0b 10 0c 	l.sw 12(r11),r2
    8f04:	9c 21 00 10 	l.addi r1,r1,16
    8f08:	85 21 ff fc 	l.lwz r9,-4(r1)
    8f0c:	84 21 ff f0 	l.lwz r1,-16(r1)
    8f10:	84 41 ff f4 	l.lwz r2,-12(r1)
    8f14:	44 00 48 00 	l.jr r9
    8f18:	85 c1 ff f8 	l.lwz r14,-8(r1)
    8f1c:	9c 80 00 04 	l.addi r4,r0,4
    8f20:	04 00 0b 94 	l.jal bd70 <_calloc_r>
    8f24:	9c a0 00 21 	l.addi r5,r0,33
    8f28:	d4 02 58 4c 	l.sw 76(r2),r11
    8f2c:	bc 2b 00 00 	l.sfnei r11,0
    8f30:	13 ff ff ea 	l.bf 8ed8 <_Balloc+0x28>
    8f34:	a8 8b 00 00 	l.ori r4,r11,0x0
    8f38:	03 ff ff f3 	l.j 8f04 <_Balloc+0x54>
    8f3c:	9d 60 00 00 	l.addi r11,r0,0
    8f40:	a8 62 00 00 	l.ori r3,r2,0x0
    8f44:	e0 44 70 08 	l.sll r2,r4,r14
    8f48:	9c a2 00 05 	l.addi r5,r2,5
    8f4c:	04 00 0b 89 	l.jal bd70 <_calloc_r>
    8f50:	b8 a5 00 02 	l.slli r5,r5,0x2
    8f54:	bc 0b 00 00 	l.sfeqi r11,0
    8f58:	13 ff ff f8 	l.bf 8f38 <_Balloc+0x88>
    8f5c:	15 00 00 00 	l.nop 0x0
    8f60:	d4 0b 70 04 	l.sw 4(r11),r14
    8f64:	03 ff ff e5 	l.j 8ef8 <_Balloc+0x48>
    8f68:	d4 0b 10 08 	l.sw 8(r11),r2

00008f6c <_Bfree>:
    8f6c:	d7 e1 0f fc 	l.sw -4(r1),r1
    8f70:	bc 04 00 00 	l.sfeqi r4,0
    8f74:	10 00 00 09 	l.bf 8f98 <_Bfree+0x2c>
    8f78:	9c 21 ff fc 	l.addi r1,r1,-4
    8f7c:	84 a4 00 04 	l.lwz r5,4(r4)
    8f80:	84 c3 00 4c 	l.lwz r6,76(r3)
    8f84:	b8 65 00 02 	l.slli r3,r5,0x2
    8f88:	e0 66 18 00 	l.add r3,r6,r3
    8f8c:	84 a3 00 00 	l.lwz r5,0(r3)
    8f90:	d4 04 28 00 	l.sw 0(r4),r5
    8f94:	d4 03 20 00 	l.sw 0(r3),r4
    8f98:	9c 21 00 04 	l.addi r1,r1,4
    8f9c:	44 00 48 00 	l.jr r9
    8fa0:	84 21 ff fc 	l.lwz r1,-4(r1)

00008fa4 <__multadd>:
    8fa4:	d7 e1 17 ec 	l.sw -20(r1),r2
    8fa8:	d7 e1 77 f0 	l.sw -16(r1),r14
    8fac:	d7 e1 97 f4 	l.sw -12(r1),r18
    8fb0:	d7 e1 4f fc 	l.sw -4(r1),r9
    8fb4:	d7 e1 0f e8 	l.sw -24(r1),r1
    8fb8:	d7 e1 a7 f8 	l.sw -8(r1),r20
    8fbc:	a9 c4 00 00 	l.ori r14,r4,0x0
    8fc0:	9c 21 ff e4 	l.addi r1,r1,-28
    8fc4:	aa 43 00 00 	l.ori r18,r3,0x0
    8fc8:	84 44 00 10 	l.lwz r2,16(r4)
    8fcc:	9d 04 00 14 	l.addi r8,r4,20
    8fd0:	9d 60 00 00 	l.addi r11,r0,0
    8fd4:	84 88 00 00 	l.lwz r4,0(r8)
    8fd8:	9d 6b 00 01 	l.addi r11,r11,1
    8fdc:	a4 64 ff ff 	l.andi r3,r4,0xffff
    8fe0:	b8 84 00 50 	l.srli r4,r4,0x10
    8fe4:	e0 63 2b 06 	l.mul r3,r3,r5
    8fe8:	e0 84 2b 06 	l.mul r4,r4,r5
    8fec:	e0 c3 30 00 	l.add r6,r3,r6
    8ff0:	9d 08 00 04 	l.addi r8,r8,4
    8ff4:	b8 e6 00 50 	l.srli r7,r6,0x10
    8ff8:	a4 66 ff ff 	l.andi r3,r6,0xffff
    8ffc:	e5 42 58 00 	l.sfgts r2,r11
    9000:	e0 84 38 00 	l.add r4,r4,r7
    9004:	b8 e4 00 10 	l.slli r7,r4,0x10
    9008:	b8 c4 00 50 	l.srli r6,r4,0x10
    900c:	e0 67 18 00 	l.add r3,r7,r3
    9010:	13 ff ff f1 	l.bf 8fd4 <__multadd+0x30>
    9014:	d7 e8 1f fc 	l.sw -4(r8),r3
    9018:	bc 06 00 00 	l.sfeqi r6,0
    901c:	10 00 00 0c 	l.bf 904c <__multadd+0xa8>
    9020:	15 00 00 00 	l.nop 0x0
    9024:	84 6e 00 08 	l.lwz r3,8(r14)
    9028:	e5 82 18 00 	l.sflts r2,r3
    902c:	0c 00 00 11 	l.bnf 9070 <__multadd+0xcc>
    9030:	a8 72 00 00 	l.ori r3,r18,0x0
    9034:	9c 62 00 05 	l.addi r3,r2,5
    9038:	9c 42 00 01 	l.addi r2,r2,1
    903c:	b8 63 00 02 	l.slli r3,r3,0x2
    9040:	e0 6e 18 00 	l.add r3,r14,r3
    9044:	d4 03 30 00 	l.sw 0(r3),r6
    9048:	d4 0e 10 10 	l.sw 16(r14),r2
    904c:	9c 21 00 1c 	l.addi r1,r1,28
    9050:	a9 6e 00 00 	l.ori r11,r14,0x0
    9054:	85 21 ff fc 	l.lwz r9,-4(r1)
    9058:	84 21 ff e8 	l.lwz r1,-24(r1)
    905c:	84 41 ff ec 	l.lwz r2,-20(r1)
    9060:	85 c1 ff f0 	l.lwz r14,-16(r1)
    9064:	86 41 ff f4 	l.lwz r18,-12(r1)
    9068:	44 00 48 00 	l.jr r9
    906c:	86 81 ff f8 	l.lwz r20,-8(r1)
    9070:	84 8e 00 04 	l.lwz r4,4(r14)
    9074:	9c 84 00 01 	l.addi r4,r4,1
    9078:	07 ff ff 8e 	l.jal 8eb0 <_Balloc>
    907c:	d4 01 30 00 	l.sw 0(r1),r6
    9080:	84 ae 00 10 	l.lwz r5,16(r14)
    9084:	9c 8e 00 0c 	l.addi r4,r14,12
    9088:	9c a5 00 02 	l.addi r5,r5,2
    908c:	9c 6b 00 0c 	l.addi r3,r11,12
    9090:	b8 a5 00 02 	l.slli r5,r5,0x2
    9094:	07 ff fe 95 	l.jal 8ae8 <memcpy>
    9098:	aa 8b 00 00 	l.ori r20,r11,0x0
    909c:	84 6e 00 04 	l.lwz r3,4(r14)
    90a0:	84 92 00 4c 	l.lwz r4,76(r18)
    90a4:	b8 63 00 02 	l.slli r3,r3,0x2
    90a8:	84 c1 00 00 	l.lwz r6,0(r1)
    90ac:	e0 64 18 00 	l.add r3,r4,r3
    90b0:	84 83 00 00 	l.lwz r4,0(r3)
    90b4:	d4 0e 20 00 	l.sw 0(r14),r4
    90b8:	d4 03 70 00 	l.sw 0(r3),r14
    90bc:	03 ff ff de 	l.j 9034 <__multadd+0x90>
    90c0:	a9 d4 00 00 	l.ori r14,r20,0x0

000090c4 <__s2b>:
    90c4:	d7 e1 17 e4 	l.sw -28(r1),r2
    90c8:	d7 e1 77 e8 	l.sw -24(r1),r14
    90cc:	d7 e1 97 ec 	l.sw -20(r1),r18
    90d0:	d7 e1 a7 f0 	l.sw -16(r1),r20
    90d4:	d7 e1 b7 f4 	l.sw -12(r1),r22
    90d8:	d7 e1 4f fc 	l.sw -4(r1),r9
    90dc:	d7 e1 0f e0 	l.sw -32(r1),r1
    90e0:	d7 e1 c7 f8 	l.sw -8(r1),r24
    90e4:	aa 43 00 00 	l.ori r18,r3,0x0
    90e8:	9c 21 ff e0 	l.addi r1,r1,-32
    90ec:	a8 44 00 00 	l.ori r2,r4,0x0
    90f0:	9c 66 00 08 	l.addi r3,r6,8
    90f4:	9c 80 00 09 	l.addi r4,r0,9
    90f8:	aa 86 00 00 	l.ori r20,r6,0x0
    90fc:	aa c5 00 00 	l.ori r22,r5,0x0
    9100:	04 00 15 1b 	l.jal e56c <__divsi3>
    9104:	a9 c7 00 00 	l.ori r14,r7,0x0
    9108:	bd ab 00 01 	l.sflesi r11,1
    910c:	10 00 00 38 	l.bf 91ec <__s2b+0x128>
    9110:	9c 60 00 01 	l.addi r3,r0,1
    9114:	9c 80 00 00 	l.addi r4,r0,0
    9118:	e0 63 18 00 	l.add r3,r3,r3
    911c:	e5 4b 18 00 	l.sfgts r11,r3
    9120:	13 ff ff fe 	l.bf 9118 <__s2b+0x54>
    9124:	9c 84 00 01 	l.addi r4,r4,1
    9128:	07 ff ff 62 	l.jal 8eb0 <_Balloc>
    912c:	a8 72 00 00 	l.ori r3,r18,0x0
    9130:	9c 60 00 01 	l.addi r3,r0,1
    9134:	d4 0b 70 14 	l.sw 20(r11),r14
    9138:	bd b6 00 09 	l.sflesi r22,9
    913c:	10 00 00 29 	l.bf 91e0 <__s2b+0x11c>
    9140:	d4 0b 18 10 	l.sw 16(r11),r3
    9144:	9f 02 00 09 	l.addi r24,r2,9
    9148:	e0 42 b0 00 	l.add r2,r2,r22
    914c:	a9 d8 00 00 	l.ori r14,r24,0x0
    9150:	90 ce 00 00 	l.lbs r6,0(r14)
    9154:	9c a0 00 0a 	l.addi r5,r0,10
    9158:	9c c6 ff d0 	l.addi r6,r6,-48
    915c:	a8 8b 00 00 	l.ori r4,r11,0x0
    9160:	a8 72 00 00 	l.ori r3,r18,0x0
    9164:	07 ff ff 90 	l.jal 8fa4 <__multadd>
    9168:	9d ce 00 01 	l.addi r14,r14,1
    916c:	e4 2e 10 00 	l.sfne r14,r2
    9170:	13 ff ff f8 	l.bf 9150 <__s2b+0x8c>
    9174:	15 00 00 00 	l.nop 0x0
    9178:	e0 58 b0 00 	l.add r2,r24,r22
    917c:	9c 42 ff f8 	l.addi r2,r2,-8
    9180:	e5 b4 b0 00 	l.sfles r20,r22
    9184:	10 00 00 0d 	l.bf 91b8 <__s2b+0xf4>
    9188:	e1 d4 b0 02 	l.sub r14,r20,r22
    918c:	e1 c2 70 00 	l.add r14,r2,r14
    9190:	90 c2 00 00 	l.lbs r6,0(r2)
    9194:	9c a0 00 0a 	l.addi r5,r0,10
    9198:	9c c6 ff d0 	l.addi r6,r6,-48
    919c:	a8 8b 00 00 	l.ori r4,r11,0x0
    91a0:	a8 72 00 00 	l.ori r3,r18,0x0
    91a4:	07 ff ff 80 	l.jal 8fa4 <__multadd>
    91a8:	9c 42 00 01 	l.addi r2,r2,1
    91ac:	e4 22 70 00 	l.sfne r2,r14
    91b0:	13 ff ff f8 	l.bf 9190 <__s2b+0xcc>
    91b4:	15 00 00 00 	l.nop 0x0
    91b8:	9c 21 00 20 	l.addi r1,r1,32
    91bc:	85 21 ff fc 	l.lwz r9,-4(r1)
    91c0:	84 21 ff e0 	l.lwz r1,-32(r1)
    91c4:	84 41 ff e4 	l.lwz r2,-28(r1)
    91c8:	85 c1 ff e8 	l.lwz r14,-24(r1)
    91cc:	86 41 ff ec 	l.lwz r18,-20(r1)
    91d0:	86 81 ff f0 	l.lwz r20,-16(r1)
    91d4:	86 c1 ff f4 	l.lwz r22,-12(r1)
    91d8:	44 00 48 00 	l.jr r9
    91dc:	87 01 ff f8 	l.lwz r24,-8(r1)
    91e0:	9c 42 00 0a 	l.addi r2,r2,10
    91e4:	03 ff ff e7 	l.j 9180 <__s2b+0xbc>
    91e8:	9e c0 00 09 	l.addi r22,r0,9
    91ec:	03 ff ff cf 	l.j 9128 <__s2b+0x64>
    91f0:	9c 80 00 00 	l.addi r4,r0,0

000091f4 <__hi0bits>:
    91f4:	d7 e1 17 fc 	l.sw -4(r1),r2
    91f8:	18 40 ff ff 	l.movhi r2,0xffff
    91fc:	9c 80 00 00 	l.addi r4,r0,0
    9200:	e0 a3 10 03 	l.and r5,r3,r2
    9204:	d7 e1 0f f8 	l.sw -8(r1),r1
    9208:	e4 25 20 00 	l.sfne r5,r4
    920c:	10 00 00 04 	l.bf 921c <__hi0bits+0x28>
    9210:	9c 21 ff f8 	l.addi r1,r1,-8
    9214:	b8 63 00 10 	l.slli r3,r3,0x10
    9218:	9c 80 00 10 	l.addi r4,r0,16
    921c:	18 40 ff 00 	l.movhi r2,0xff00
    9220:	e0 a3 10 03 	l.and r5,r3,r2
    9224:	bc 25 00 00 	l.sfnei r5,0
    9228:	10 00 00 04 	l.bf 9238 <__hi0bits+0x44>
    922c:	18 40 f0 00 	l.movhi r2,0xf000
    9230:	b8 63 00 08 	l.slli r3,r3,0x8
    9234:	9c 84 00 08 	l.addi r4,r4,8
    9238:	e0 a3 10 03 	l.and r5,r3,r2
    923c:	bc 25 00 00 	l.sfnei r5,0
    9240:	10 00 00 04 	l.bf 9250 <__hi0bits+0x5c>
    9244:	18 40 c0 00 	l.movhi r2,0xc000
    9248:	b8 63 00 04 	l.slli r3,r3,0x4
    924c:	9c 84 00 04 	l.addi r4,r4,4
    9250:	e0 a3 10 03 	l.and r5,r3,r2
    9254:	bc 25 00 00 	l.sfnei r5,0
    9258:	10 00 00 05 	l.bf 926c <__hi0bits+0x78>
    925c:	bd 83 00 00 	l.sfltsi r3,0
    9260:	b8 63 00 02 	l.slli r3,r3,0x2
    9264:	9c 84 00 02 	l.addi r4,r4,2
    9268:	bd 83 00 00 	l.sfltsi r3,0
    926c:	10 00 00 10 	l.bf 92ac <__hi0bits+0xb8>
    9270:	15 00 00 00 	l.nop 0x0
    9274:	18 40 40 00 	l.movhi r2,0x4000
    9278:	e0 63 10 03 	l.and r3,r3,r2
    927c:	bc 03 00 00 	l.sfeqi r3,0
    9280:	0c 00 00 06 	l.bnf 9298 <__hi0bits+0xa4>
    9284:	9d 60 00 20 	l.addi r11,r0,32
    9288:	9c 21 00 08 	l.addi r1,r1,8
    928c:	84 21 ff f8 	l.lwz r1,-8(r1)
    9290:	44 00 48 00 	l.jr r9
    9294:	84 41 ff fc 	l.lwz r2,-4(r1)
    9298:	9c 21 00 08 	l.addi r1,r1,8
    929c:	9d 64 00 01 	l.addi r11,r4,1
    92a0:	84 21 ff f8 	l.lwz r1,-8(r1)
    92a4:	44 00 48 00 	l.jr r9
    92a8:	84 41 ff fc 	l.lwz r2,-4(r1)
    92ac:	9c 21 00 08 	l.addi r1,r1,8
    92b0:	a9 64 00 00 	l.ori r11,r4,0x0
    92b4:	84 21 ff f8 	l.lwz r1,-8(r1)
    92b8:	44 00 48 00 	l.jr r9
    92bc:	84 41 ff fc 	l.lwz r2,-4(r1)

000092c0 <__lo0bits>:
    92c0:	84 83 00 00 	l.lwz r4,0(r3)
    92c4:	d7 e1 0f fc 	l.sw -4(r1),r1
    92c8:	a4 a4 00 07 	l.andi r5,r4,0x7
    92cc:	bc 05 00 00 	l.sfeqi r5,0
    92d0:	10 00 00 0f 	l.bf 930c <__lo0bits+0x4c>
    92d4:	9c 21 ff fc 	l.addi r1,r1,-4
    92d8:	a4 a4 00 01 	l.andi r5,r4,0x1
    92dc:	9d 60 00 00 	l.addi r11,r0,0
    92e0:	e4 25 58 00 	l.sfne r5,r11
    92e4:	10 00 00 07 	l.bf 9300 <__lo0bits+0x40>
    92e8:	a4 a4 00 02 	l.andi r5,r4,0x2
    92ec:	e4 05 58 00 	l.sfeq r5,r11
    92f0:	0c 00 00 2d 	l.bnf 93a4 <__lo0bits+0xe4>
    92f4:	9d 60 00 02 	l.addi r11,r0,2
    92f8:	b8 84 00 42 	l.srli r4,r4,0x2
    92fc:	d4 03 20 00 	l.sw 0(r3),r4
    9300:	9c 21 00 04 	l.addi r1,r1,4
    9304:	44 00 48 00 	l.jr r9
    9308:	84 21 ff fc 	l.lwz r1,-4(r1)
    930c:	a4 c4 ff ff 	l.andi r6,r4,0xffff
    9310:	bc 26 00 00 	l.sfnei r6,0
    9314:	10 00 00 05 	l.bf 9328 <__lo0bits+0x68>
    9318:	a4 c4 00 ff 	l.andi r6,r4,0xff
    931c:	b8 84 00 50 	l.srli r4,r4,0x10
    9320:	9c a0 00 10 	l.addi r5,r0,16
    9324:	a4 c4 00 ff 	l.andi r6,r4,0xff
    9328:	bc 26 00 00 	l.sfnei r6,0
    932c:	10 00 00 05 	l.bf 9340 <__lo0bits+0x80>
    9330:	a4 c4 00 0f 	l.andi r6,r4,0xf
    9334:	b8 84 00 48 	l.srli r4,r4,0x8
    9338:	9c a5 00 08 	l.addi r5,r5,8
    933c:	a4 c4 00 0f 	l.andi r6,r4,0xf
    9340:	bc 26 00 00 	l.sfnei r6,0
    9344:	10 00 00 05 	l.bf 9358 <__lo0bits+0x98>
    9348:	a4 c4 00 03 	l.andi r6,r4,0x3
    934c:	b8 84 00 44 	l.srli r4,r4,0x4
    9350:	9c a5 00 04 	l.addi r5,r5,4
    9354:	a4 c4 00 03 	l.andi r6,r4,0x3
    9358:	bc 26 00 00 	l.sfnei r6,0
    935c:	10 00 00 05 	l.bf 9370 <__lo0bits+0xb0>
    9360:	a4 c4 00 01 	l.andi r6,r4,0x1
    9364:	b8 84 00 42 	l.srli r4,r4,0x2
    9368:	9c a5 00 02 	l.addi r5,r5,2
    936c:	a4 c4 00 01 	l.andi r6,r4,0x1
    9370:	bc 26 00 00 	l.sfnei r6,0
    9374:	10 00 00 07 	l.bf 9390 <__lo0bits+0xd0>
    9378:	15 00 00 00 	l.nop 0x0
    937c:	b8 84 00 41 	l.srli r4,r4,0x1
    9380:	bc 04 00 00 	l.sfeqi r4,0
    9384:	13 ff ff df 	l.bf 9300 <__lo0bits+0x40>
    9388:	9d 60 00 20 	l.addi r11,r0,32
    938c:	9c a5 00 01 	l.addi r5,r5,1
    9390:	9c 21 00 04 	l.addi r1,r1,4
    9394:	a9 65 00 00 	l.ori r11,r5,0x0
    9398:	d4 03 20 00 	l.sw 0(r3),r4
    939c:	44 00 48 00 	l.jr r9
    93a0:	84 21 ff fc 	l.lwz r1,-4(r1)
    93a4:	b8 84 00 41 	l.srli r4,r4,0x1
    93a8:	9c 21 00 04 	l.addi r1,r1,4
    93ac:	9d 60 00 01 	l.addi r11,r0,1
    93b0:	d4 03 20 00 	l.sw 0(r3),r4
    93b4:	44 00 48 00 	l.jr r9
    93b8:	84 21 ff fc 	l.lwz r1,-4(r1)

000093bc <__i2b>:
    93bc:	d7 e1 4f fc 	l.sw -4(r1),r9
    93c0:	d7 e1 17 f8 	l.sw -8(r1),r2
    93c4:	d7 e1 0f f4 	l.sw -12(r1),r1
    93c8:	a8 44 00 00 	l.ori r2,r4,0x0
    93cc:	9c 21 ff f4 	l.addi r1,r1,-12
    93d0:	07 ff fe b8 	l.jal 8eb0 <_Balloc>
    93d4:	9c 80 00 01 	l.addi r4,r0,1
    93d8:	9c 80 00 01 	l.addi r4,r0,1
    93dc:	d4 0b 10 14 	l.sw 20(r11),r2
    93e0:	d4 0b 20 10 	l.sw 16(r11),r4
    93e4:	9c 21 00 0c 	l.addi r1,r1,12
    93e8:	85 21 ff fc 	l.lwz r9,-4(r1)
    93ec:	84 21 ff f4 	l.lwz r1,-12(r1)
    93f0:	44 00 48 00 	l.jr r9
    93f4:	84 41 ff f8 	l.lwz r2,-8(r1)

000093f8 <__multiply>:
    93f8:	d7 e1 97 f4 	l.sw -12(r1),r18
    93fc:	d7 e1 a7 f8 	l.sw -8(r1),r20
    9400:	86 44 00 10 	l.lwz r18,16(r4)
    9404:	86 85 00 10 	l.lwz r20,16(r5)
    9408:	d7 e1 77 f0 	l.sw -16(r1),r14
    940c:	d7 e1 4f fc 	l.sw -4(r1),r9
    9410:	d7 e1 0f e8 	l.sw -24(r1),r1
    9414:	d7 e1 17 ec 	l.sw -20(r1),r2
    9418:	e5 72 a0 00 	l.sfges r18,r20
    941c:	9c 21 ff e4 	l.addi r1,r1,-28
    9420:	10 00 00 08 	l.bf 9440 <__multiply+0x48>
    9424:	a9 c4 00 00 	l.ori r14,r4,0x0
    9428:	a8 92 00 00 	l.ori r4,r18,0x0
    942c:	a8 4e 00 00 	l.ori r2,r14,0x0
    9430:	aa 54 00 00 	l.ori r18,r20,0x0
    9434:	a9 c5 00 00 	l.ori r14,r5,0x0
    9438:	aa 84 00 00 	l.ori r20,r4,0x0
    943c:	a8 a2 00 00 	l.ori r5,r2,0x0
    9440:	e0 52 a0 00 	l.add r2,r18,r20
    9444:	84 ce 00 08 	l.lwz r6,8(r14)
    9448:	e5 a2 30 00 	l.sfles r2,r6
    944c:	10 00 00 03 	l.bf 9458 <__multiply+0x60>
    9450:	84 8e 00 04 	l.lwz r4,4(r14)
    9454:	9c 84 00 01 	l.addi r4,r4,1
    9458:	07 ff fe 96 	l.jal 8eb0 <_Balloc>
    945c:	d4 01 28 00 	l.sw 0(r1),r5
    9460:	b9 a2 00 02 	l.slli r13,r2,0x2
    9464:	9d eb 00 14 	l.addi r15,r11,20
    9468:	84 a1 00 00 	l.lwz r5,0(r1)
    946c:	e1 af 68 00 	l.add r13,r15,r13
    9470:	e4 8f 68 00 	l.sfltu r15,r13
    9474:	0c 00 00 07 	l.bnf 9490 <__multiply+0x98>
    9478:	a8 6f 00 00 	l.ori r3,r15,0x0
    947c:	9c 80 00 00 	l.addi r4,r0,0
    9480:	9c 63 00 04 	l.addi r3,r3,4
    9484:	e4 4d 18 00 	l.sfgtu r13,r3
    9488:	13 ff ff fe 	l.bf 9480 <__multiply+0x88>
    948c:	d7 e3 27 fc 	l.sw -4(r3),r4
    9490:	ba 34 00 02 	l.slli r17,r20,0x2
    9494:	9c a5 00 14 	l.addi r5,r5,20
    9498:	b9 92 00 02 	l.slli r12,r18,0x2
    949c:	e2 25 88 00 	l.add r17,r5,r17
    94a0:	9e 6e 00 14 	l.addi r19,r14,20
    94a4:	e4 85 88 00 	l.sfltu r5,r17
    94a8:	0c 00 00 49 	l.bnf 95cc <__multiply+0x1d4>
    94ac:	e1 93 60 00 	l.add r12,r19,r12
    94b0:	87 25 00 00 	l.lwz r25,0(r5)
    94b4:	a7 79 ff ff 	l.andi r27,r25,0xffff
    94b8:	bc 1b 00 00 	l.sfeqi r27,0
    94bc:	10 00 00 1d 	l.bf 9530 <__multiply+0x138>
    94c0:	9c e0 00 00 	l.addi r7,r0,0
    94c4:	a9 0f 00 00 	l.ori r8,r15,0x0
    94c8:	aa b3 00 00 	l.ori r21,r19,0x0
    94cc:	84 95 00 00 	l.lwz r4,0(r21)
    94d0:	84 68 00 00 	l.lwz r3,0(r8)
    94d4:	a4 c4 ff ff 	l.andi r6,r4,0xffff
    94d8:	b8 84 00 50 	l.srli r4,r4,0x10
    94dc:	e0 c6 db 06 	l.mul r6,r6,r27
    94e0:	e0 84 db 06 	l.mul r4,r4,r27
    94e4:	a6 e3 ff ff 	l.andi r23,r3,0xffff
    94e8:	b8 63 00 50 	l.srli r3,r3,0x10
    94ec:	e0 c6 b8 00 	l.add r6,r6,r23
    94f0:	9e b5 00 04 	l.addi r21,r21,4
    94f4:	e0 c6 38 00 	l.add r6,r6,r7
    94f8:	e0 64 18 00 	l.add r3,r4,r3
    94fc:	b8 e6 00 50 	l.srli r7,r6,0x10
    9500:	a4 c6 ff ff 	l.andi r6,r6,0xffff
    9504:	aa e8 00 00 	l.ori r23,r8,0x0
    9508:	e0 63 38 00 	l.add r3,r3,r7
    950c:	9d 08 00 04 	l.addi r8,r8,4
    9510:	b8 83 00 10 	l.slli r4,r3,0x10
    9514:	e4 4c a8 00 	l.sfgtu r12,r21
    9518:	b8 e3 00 50 	l.srli r7,r3,0x10
    951c:	e0 c4 30 04 	l.or r6,r4,r6
    9520:	13 ff ff eb 	l.bf 94cc <__multiply+0xd4>
    9524:	d7 e8 37 fc 	l.sw -4(r8),r6
    9528:	d4 17 38 04 	l.sw 4(r23),r7
    952c:	87 25 00 00 	l.lwz r25,0(r5)
    9530:	bb 39 00 50 	l.srli r25,r25,0x10
    9534:	bc 19 00 00 	l.sfeqi r25,0
    9538:	10 00 00 21 	l.bf 95bc <__multiply+0x1c4>
    953c:	ab 6f 00 00 	l.ori r27,r15,0x0
    9540:	84 6f 00 00 	l.lwz r3,0(r15)
    9544:	aa b3 00 00 	l.ori r21,r19,0x0
    9548:	aa ef 00 00 	l.ori r23,r15,0x0
    954c:	a9 03 00 00 	l.ori r8,r3,0x0
    9550:	00 00 00 03 	l.j 955c <__multiply+0x164>
    9554:	9c e0 00 00 	l.addi r7,r0,0
    9558:	ab 7d 00 00 	l.ori r27,r29,0x0
    955c:	84 d5 00 00 	l.lwz r6,0(r21)
    9560:	b9 08 00 50 	l.srli r8,r8,0x10
    9564:	a4 c6 ff ff 	l.andi r6,r6,0xffff
    9568:	a4 83 ff ff 	l.andi r4,r3,0xffff
    956c:	e0 c6 cb 06 	l.mul r6,r6,r25
    9570:	e0 c6 40 00 	l.add r6,r6,r8
    9574:	9e f7 00 04 	l.addi r23,r23,4
    9578:	e0 c6 38 00 	l.add r6,r6,r7
    957c:	9e b5 00 04 	l.addi r21,r21,4
    9580:	b8 66 00 10 	l.slli r3,r6,0x10
    9584:	9f bb 00 04 	l.addi r29,r27,4
    9588:	b8 c6 00 50 	l.srli r6,r6,0x10
    958c:	e0 83 20 04 	l.or r4,r3,r4
    9590:	e4 4c a8 00 	l.sfgtu r12,r21
    9594:	d7 f7 27 fc 	l.sw -4(r23),r4
    9598:	94 75 ff fc 	l.lhz r3,-4(r21)
    959c:	e0 63 cb 06 	l.mul r3,r3,r25
    95a0:	85 1d 00 00 	l.lwz r8,0(r29)
    95a4:	a4 88 ff ff 	l.andi r4,r8,0xffff
    95a8:	e0 63 20 00 	l.add r3,r3,r4
    95ac:	e0 63 30 00 	l.add r3,r3,r6
    95b0:	13 ff ff ea 	l.bf 9558 <__multiply+0x160>
    95b4:	b8 e3 00 50 	l.srli r7,r3,0x10
    95b8:	d4 1b 18 04 	l.sw 4(r27),r3
    95bc:	9c a5 00 04 	l.addi r5,r5,4
    95c0:	e4 51 28 00 	l.sfgtu r17,r5
    95c4:	13 ff ff bb 	l.bf 94b0 <__multiply+0xb8>
    95c8:	9d ef 00 04 	l.addi r15,r15,4
    95cc:	bd 42 00 00 	l.sfgtsi r2,0
    95d0:	0c 00 00 10 	l.bnf 9610 <__multiply+0x218>
    95d4:	15 00 00 00 	l.nop 0x0
    95d8:	84 6d ff fc 	l.lwz r3,-4(r13)
    95dc:	bc 23 00 00 	l.sfnei r3,0
    95e0:	0c 00 00 08 	l.bnf 9600 <__multiply+0x208>
    95e4:	9d ad ff fc 	l.addi r13,r13,-4
    95e8:	00 00 00 0b 	l.j 9614 <__multiply+0x21c>
    95ec:	d4 0b 10 10 	l.sw 16(r11),r2
    95f0:	84 6d 00 00 	l.lwz r3,0(r13)
    95f4:	bc 03 00 00 	l.sfeqi r3,0
    95f8:	0c 00 00 06 	l.bnf 9610 <__multiply+0x218>
    95fc:	15 00 00 00 	l.nop 0x0
    9600:	9c 42 ff ff 	l.addi r2,r2,-1
    9604:	bc 02 00 00 	l.sfeqi r2,0
    9608:	0f ff ff fa 	l.bnf 95f0 <__multiply+0x1f8>
    960c:	9d ad ff fc 	l.addi r13,r13,-4
    9610:	d4 0b 10 10 	l.sw 16(r11),r2
    9614:	9c 21 00 1c 	l.addi r1,r1,28
    9618:	85 21 ff fc 	l.lwz r9,-4(r1)
    961c:	84 21 ff e8 	l.lwz r1,-24(r1)
    9620:	84 41 ff ec 	l.lwz r2,-20(r1)
    9624:	85 c1 ff f0 	l.lwz r14,-16(r1)
    9628:	86 41 ff f4 	l.lwz r18,-12(r1)
    962c:	44 00 48 00 	l.jr r9
    9630:	86 81 ff f8 	l.lwz r20,-8(r1)

00009634 <__pow5mult>:
    9634:	d7 e1 17 ec 	l.sw -20(r1),r2
    9638:	a8 45 00 00 	l.ori r2,r5,0x0
    963c:	a4 a5 00 03 	l.andi r5,r5,0x3
    9640:	d7 e1 97 f4 	l.sw -12(r1),r18
    9644:	d7 e1 a7 f8 	l.sw -8(r1),r20
    9648:	d7 e1 4f fc 	l.sw -4(r1),r9
    964c:	d7 e1 0f e8 	l.sw -24(r1),r1
    9650:	d7 e1 77 f0 	l.sw -16(r1),r14
    9654:	bc 05 00 00 	l.sfeqi r5,0
    9658:	9c 21 ff e8 	l.addi r1,r1,-24
    965c:	aa 83 00 00 	l.ori r20,r3,0x0
    9660:	0c 00 00 41 	l.bnf 9764 <__pow5mult+0x130>
    9664:	aa 44 00 00 	l.ori r18,r4,0x0
    9668:	b8 42 00 82 	l.srai r2,r2,0x2
    966c:	bc 02 00 00 	l.sfeqi r2,0
    9670:	10 00 00 29 	l.bf 9714 <__pow5mult+0xe0>
    9674:	15 00 00 00 	l.nop 0x0
    9678:	85 d4 00 48 	l.lwz r14,72(r20)
    967c:	bc 2e 00 00 	l.sfnei r14,0
    9680:	0c 00 00 43 	l.bnf 978c <__pow5mult+0x158>
    9684:	a8 74 00 00 	l.ori r3,r20,0x0
    9688:	a4 62 00 01 	l.andi r3,r2,0x1
    968c:	bc 03 00 00 	l.sfeqi r3,0
    9690:	0c 00 00 0f 	l.bnf 96cc <__pow5mult+0x98>
    9694:	15 00 00 00 	l.nop 0x0
    9698:	b8 42 00 81 	l.srai r2,r2,0x1
    969c:	bc 02 00 00 	l.sfeqi r2,0
    96a0:	10 00 00 1d 	l.bf 9714 <__pow5mult+0xe0>
    96a4:	15 00 00 00 	l.nop 0x0
    96a8:	85 6e 00 00 	l.lwz r11,0(r14)
    96ac:	bc 2b 00 00 	l.sfnei r11,0
    96b0:	0c 00 00 22 	l.bnf 9738 <__pow5mult+0x104>
    96b4:	15 00 00 00 	l.nop 0x0
    96b8:	a9 cb 00 00 	l.ori r14,r11,0x0
    96bc:	a4 62 00 01 	l.andi r3,r2,0x1
    96c0:	bc 03 00 00 	l.sfeqi r3,0
    96c4:	13 ff ff f5 	l.bf 9698 <__pow5mult+0x64>
    96c8:	15 00 00 00 	l.nop 0x0
    96cc:	a8 ae 00 00 	l.ori r5,r14,0x0
    96d0:	a8 92 00 00 	l.ori r4,r18,0x0
    96d4:	07 ff ff 49 	l.jal 93f8 <__multiply>
    96d8:	a8 74 00 00 	l.ori r3,r20,0x0
    96dc:	bc 12 00 00 	l.sfeqi r18,0
    96e0:	10 00 00 1f 	l.bf 975c <__pow5mult+0x128>
    96e4:	15 00 00 00 	l.nop 0x0
    96e8:	84 72 00 04 	l.lwz r3,4(r18)
    96ec:	84 94 00 4c 	l.lwz r4,76(r20)
    96f0:	b8 63 00 02 	l.slli r3,r3,0x2
    96f4:	b8 42 00 81 	l.srai r2,r2,0x1
    96f8:	e0 64 18 00 	l.add r3,r4,r3
    96fc:	bc 02 00 00 	l.sfeqi r2,0
    9700:	84 83 00 00 	l.lwz r4,0(r3)
    9704:	d4 12 20 00 	l.sw 0(r18),r4
    9708:	d4 03 90 00 	l.sw 0(r3),r18
    970c:	0f ff ff e7 	l.bnf 96a8 <__pow5mult+0x74>
    9710:	aa 4b 00 00 	l.ori r18,r11,0x0
    9714:	9c 21 00 18 	l.addi r1,r1,24
    9718:	a9 72 00 00 	l.ori r11,r18,0x0
    971c:	85 21 ff fc 	l.lwz r9,-4(r1)
    9720:	84 21 ff e8 	l.lwz r1,-24(r1)
    9724:	84 41 ff ec 	l.lwz r2,-20(r1)
    9728:	85 c1 ff f0 	l.lwz r14,-16(r1)
    972c:	86 41 ff f4 	l.lwz r18,-12(r1)
    9730:	44 00 48 00 	l.jr r9
    9734:	86 81 ff f8 	l.lwz r20,-8(r1)
    9738:	a8 ae 00 00 	l.ori r5,r14,0x0
    973c:	a8 8e 00 00 	l.ori r4,r14,0x0
    9740:	07 ff ff 2e 	l.jal 93f8 <__multiply>
    9744:	a8 74 00 00 	l.ori r3,r20,0x0
    9748:	9c e0 00 00 	l.addi r7,r0,0
    974c:	d4 0e 58 00 	l.sw 0(r14),r11
    9750:	d4 0b 38 00 	l.sw 0(r11),r7
    9754:	03 ff ff da 	l.j 96bc <__pow5mult+0x88>
    9758:	a9 cb 00 00 	l.ori r14,r11,0x0
    975c:	03 ff ff cf 	l.j 9698 <__pow5mult+0x64>
    9760:	aa 4b 00 00 	l.ori r18,r11,0x0
    9764:	9c a5 ff ff 	l.addi r5,r5,-1
    9768:	18 e0 00 01 	l.movhi r7,0x1
    976c:	b8 a5 00 02 	l.slli r5,r5,0x2
    9770:	a8 e7 1b c0 	l.ori r7,r7,0x1bc0
    9774:	9c c0 00 00 	l.addi r6,r0,0
    9778:	e0 a5 38 00 	l.add r5,r5,r7
    977c:	07 ff fe 0a 	l.jal 8fa4 <__multadd>
    9780:	84 a5 00 00 	l.lwz r5,0(r5)
    9784:	03 ff ff b9 	l.j 9668 <__pow5mult+0x34>
    9788:	aa 4b 00 00 	l.ori r18,r11,0x0
    978c:	07 ff fd c9 	l.jal 8eb0 <_Balloc>
    9790:	9c 80 00 01 	l.addi r4,r0,1
    9794:	9c 60 02 71 	l.addi r3,r0,625
    9798:	a9 cb 00 00 	l.ori r14,r11,0x0
    979c:	d4 0b 18 14 	l.sw 20(r11),r3
    97a0:	9c 60 00 01 	l.addi r3,r0,1
    97a4:	d4 0b 18 10 	l.sw 16(r11),r3
    97a8:	9c 60 00 00 	l.addi r3,r0,0
    97ac:	d4 14 58 48 	l.sw 72(r20),r11
    97b0:	03 ff ff b6 	l.j 9688 <__pow5mult+0x54>
    97b4:	d4 0b 18 00 	l.sw 0(r11),r3

000097b8 <__lshift>:
    97b8:	d7 e1 b7 f8 	l.sw -8(r1),r22
    97bc:	ba c5 00 85 	l.srai r22,r5,0x5
    97c0:	d7 e1 a7 f4 	l.sw -12(r1),r20
    97c4:	86 84 00 10 	l.lwz r20,16(r4)
    97c8:	d7 e1 17 e8 	l.sw -24(r1),r2
    97cc:	e2 96 a0 00 	l.add r20,r22,r20
    97d0:	84 c4 00 08 	l.lwz r6,8(r4)
    97d4:	9c 54 00 01 	l.addi r2,r20,1
    97d8:	d7 e1 77 ec 	l.sw -20(r1),r14
    97dc:	d7 e1 97 f0 	l.sw -16(r1),r18
    97e0:	d7 e1 4f fc 	l.sw -4(r1),r9
    97e4:	d7 e1 0f e4 	l.sw -28(r1),r1
    97e8:	e5 a2 30 00 	l.sfles r2,r6
    97ec:	a9 c4 00 00 	l.ori r14,r4,0x0
    97f0:	9c 21 ff e0 	l.addi r1,r1,-32
    97f4:	aa 43 00 00 	l.ori r18,r3,0x0
    97f8:	10 00 00 06 	l.bf 9810 <__lshift+0x58>
    97fc:	84 84 00 04 	l.lwz r4,4(r4)
    9800:	e0 c6 30 00 	l.add r6,r6,r6
    9804:	e5 42 30 00 	l.sfgts r2,r6
    9808:	13 ff ff fe 	l.bf 9800 <__lshift+0x48>
    980c:	9c 84 00 01 	l.addi r4,r4,1
    9810:	a8 72 00 00 	l.ori r3,r18,0x0
    9814:	07 ff fd a7 	l.jal 8eb0 <_Balloc>
    9818:	d4 01 28 00 	l.sw 0(r1),r5
    981c:	bd b6 00 00 	l.sflesi r22,0
    9820:	a9 8b 00 00 	l.ori r12,r11,0x0
    9824:	9c 6b 00 14 	l.addi r3,r11,20
    9828:	10 00 00 0a 	l.bf 9850 <__lshift+0x98>
    982c:	84 a1 00 00 	l.lwz r5,0(r1)
    9830:	ba d6 00 02 	l.slli r22,r22,0x2
    9834:	a8 83 00 00 	l.ori r4,r3,0x0
    9838:	e0 63 b0 00 	l.add r3,r3,r22
    983c:	9c c0 00 00 	l.addi r6,r0,0
    9840:	9c 84 00 04 	l.addi r4,r4,4
    9844:	e4 24 18 00 	l.sfne r4,r3
    9848:	13 ff ff fe 	l.bf 9840 <__lshift+0x88>
    984c:	d7 e4 37 fc 	l.sw -4(r4),r6
    9850:	85 0e 00 10 	l.lwz r8,16(r14)
    9854:	a4 a5 00 1f 	l.andi r5,r5,0x1f
    9858:	b9 08 00 02 	l.slli r8,r8,0x2
    985c:	9c 8e 00 14 	l.addi r4,r14,20
    9860:	bc 05 00 00 	l.sfeqi r5,0
    9864:	10 00 00 27 	l.bf 9900 <__lshift+0x148>
    9868:	e1 04 40 00 	l.add r8,r4,r8
    986c:	9d 60 00 20 	l.addi r11,r0,32
    9870:	9c c0 00 00 	l.addi r6,r0,0
    9874:	e1 6b 28 02 	l.sub r11,r11,r5
    9878:	84 e4 00 00 	l.lwz r7,0(r4)
    987c:	a9 a3 00 00 	l.ori r13,r3,0x0
    9880:	e0 e7 28 08 	l.sll r7,r7,r5
    9884:	9c 63 00 04 	l.addi r3,r3,4
    9888:	9c 84 00 04 	l.addi r4,r4,4
    988c:	e0 c7 30 04 	l.or r6,r7,r6
    9890:	e4 48 20 00 	l.sfgtu r8,r4
    9894:	d7 e3 37 fc 	l.sw -4(r3),r6
    9898:	84 c4 ff fc 	l.lwz r6,-4(r4)
    989c:	13 ff ff f7 	l.bf 9878 <__lshift+0xc0>
    98a0:	e0 c6 58 48 	l.srl r6,r6,r11
    98a4:	bc 06 00 00 	l.sfeqi r6,0
    98a8:	10 00 00 03 	l.bf 98b4 <__lshift+0xfc>
    98ac:	d4 0d 30 04 	l.sw 4(r13),r6
    98b0:	9c 54 00 02 	l.addi r2,r20,2
    98b4:	84 6e 00 04 	l.lwz r3,4(r14)
    98b8:	84 92 00 4c 	l.lwz r4,76(r18)
    98bc:	b8 63 00 02 	l.slli r3,r3,0x2
    98c0:	9c 42 ff ff 	l.addi r2,r2,-1
    98c4:	a9 6c 00 00 	l.ori r11,r12,0x0
    98c8:	e0 64 18 00 	l.add r3,r4,r3
    98cc:	d4 0c 10 10 	l.sw 16(r12),r2
    98d0:	84 43 00 00 	l.lwz r2,0(r3)
    98d4:	d4 0e 10 00 	l.sw 0(r14),r2
    98d8:	d4 03 70 00 	l.sw 0(r3),r14
    98dc:	9c 21 00 20 	l.addi r1,r1,32
    98e0:	85 21 ff fc 	l.lwz r9,-4(r1)
    98e4:	84 21 ff e4 	l.lwz r1,-28(r1)
    98e8:	84 41 ff e8 	l.lwz r2,-24(r1)
    98ec:	85 c1 ff ec 	l.lwz r14,-20(r1)
    98f0:	86 41 ff f0 	l.lwz r18,-16(r1)
    98f4:	86 81 ff f4 	l.lwz r20,-12(r1)
    98f8:	44 00 48 00 	l.jr r9
    98fc:	86 c1 ff f8 	l.lwz r22,-8(r1)
    9900:	84 a4 00 00 	l.lwz r5,0(r4)
    9904:	9c 84 00 04 	l.addi r4,r4,4
    9908:	d4 03 28 00 	l.sw 0(r3),r5
    990c:	e4 48 20 00 	l.sfgtu r8,r4
    9910:	0f ff ff e9 	l.bnf 98b4 <__lshift+0xfc>
    9914:	9c 63 00 04 	l.addi r3,r3,4
    9918:	84 a4 00 00 	l.lwz r5,0(r4)
    991c:	9c 84 00 04 	l.addi r4,r4,4
    9920:	d4 03 28 00 	l.sw 0(r3),r5
    9924:	e4 48 20 00 	l.sfgtu r8,r4
    9928:	13 ff ff f6 	l.bf 9900 <__lshift+0x148>
    992c:	9c 63 00 04 	l.addi r3,r3,4
    9930:	03 ff ff e2 	l.j 98b8 <__lshift+0x100>
    9934:	84 6e 00 04 	l.lwz r3,4(r14)

00009938 <__mcmp>:
    9938:	85 63 00 10 	l.lwz r11,16(r3)
    993c:	84 a4 00 10 	l.lwz r5,16(r4)
    9940:	d7 e1 0f fc 	l.sw -4(r1),r1
    9944:	e1 6b 28 02 	l.sub r11,r11,r5
    9948:	bc 2b 00 00 	l.sfnei r11,0
    994c:	10 00 00 15 	l.bf 99a0 <__mcmp+0x68>
    9950:	9c 21 ff fc 	l.addi r1,r1,-4
    9954:	b8 c5 00 02 	l.slli r6,r5,0x2
    9958:	9c 63 00 14 	l.addi r3,r3,20
    995c:	9c 84 00 14 	l.addi r4,r4,20
    9960:	e0 a3 30 00 	l.add r5,r3,r6
    9964:	00 00 00 04 	l.j 9974 <__mcmp+0x3c>
    9968:	e0 84 30 00 	l.add r4,r4,r6
    996c:	0c 00 00 10 	l.bnf 99ac <__mcmp+0x74>
    9970:	9d 60 00 00 	l.addi r11,r0,0
    9974:	9c a5 ff fc 	l.addi r5,r5,-4
    9978:	9c 84 ff fc 	l.addi r4,r4,-4
    997c:	84 e5 00 00 	l.lwz r7,0(r5)
    9980:	84 c4 00 00 	l.lwz r6,0(r4)
    9984:	e4 07 30 00 	l.sfeq r7,r6
    9988:	13 ff ff f9 	l.bf 996c <__mcmp+0x34>
    998c:	e4 83 28 00 	l.sfltu r3,r5
    9990:	e4 87 30 00 	l.sfltu r7,r6
    9994:	10 00 00 03 	l.bf 99a0 <__mcmp+0x68>
    9998:	9d 60 ff ff 	l.addi r11,r0,-1
    999c:	9d 60 00 01 	l.addi r11,r0,1
    99a0:	9c 21 00 04 	l.addi r1,r1,4
    99a4:	44 00 48 00 	l.jr r9
    99a8:	84 21 ff fc 	l.lwz r1,-4(r1)
    99ac:	9c 21 00 04 	l.addi r1,r1,4
    99b0:	44 00 48 00 	l.jr r9
    99b4:	84 21 ff fc 	l.lwz r1,-4(r1)

000099b8 <__mdiff>:
    99b8:	d7 e1 17 ec 	l.sw -20(r1),r2
    99bc:	84 c5 00 10 	l.lwz r6,16(r5)
    99c0:	84 44 00 10 	l.lwz r2,16(r4)
    99c4:	d7 e1 97 f4 	l.sw -12(r1),r18
    99c8:	e0 42 30 02 	l.sub r2,r2,r6
    99cc:	d7 e1 4f fc 	l.sw -4(r1),r9
    99d0:	d7 e1 0f e8 	l.sw -24(r1),r1
    99d4:	d7 e1 77 f0 	l.sw -16(r1),r14
    99d8:	d7 e1 a7 f8 	l.sw -8(r1),r20
    99dc:	bc 22 00 00 	l.sfnei r2,0
    99e0:	9c 21 ff e4 	l.addi r1,r1,-28
    99e4:	10 00 00 1a 	l.bf 9a4c <__mdiff+0x94>
    99e8:	aa 44 00 00 	l.ori r18,r4,0x0
    99ec:	b8 c6 00 02 	l.slli r6,r6,0x2
    99f0:	9c 44 00 14 	l.addi r2,r4,20
    99f4:	9d 65 00 14 	l.addi r11,r5,20
    99f8:	e0 82 30 00 	l.add r4,r2,r6
    99fc:	00 00 00 04 	l.j 9a0c <__mdiff+0x54>
    9a00:	e0 cb 30 00 	l.add r6,r11,r6
    9a04:	10 00 00 66 	l.bf 9b9c <__mdiff+0x1e4>
    9a08:	15 00 00 00 	l.nop 0x0
    9a0c:	9c 84 ff fc 	l.addi r4,r4,-4
    9a10:	9c c6 ff fc 	l.addi r6,r6,-4
    9a14:	85 04 00 00 	l.lwz r8,0(r4)
    9a18:	84 e6 00 00 	l.lwz r7,0(r6)
    9a1c:	e4 08 38 00 	l.sfeq r8,r7
    9a20:	13 ff ff f9 	l.bf 9a04 <__mdiff+0x4c>
    9a24:	e4 62 20 00 	l.sfgeu r2,r4
    9a28:	e4 68 38 00 	l.sfgeu r8,r7
    9a2c:	10 00 00 6a 	l.bf 9bd4 <__mdiff+0x21c>
    9a30:	a8 92 00 00 	l.ori r4,r18,0x0
    9a34:	a9 c2 00 00 	l.ori r14,r2,0x0
    9a38:	aa 45 00 00 	l.ori r18,r5,0x0
    9a3c:	a8 4b 00 00 	l.ori r2,r11,0x0
    9a40:	a8 a4 00 00 	l.ori r5,r4,0x0
    9a44:	00 00 00 08 	l.j 9a64 <__mdiff+0xac>
    9a48:	9e 80 00 01 	l.addi r20,r0,1
    9a4c:	bd 82 00 00 	l.sfltsi r2,0
    9a50:	10 00 00 64 	l.bf 9be0 <__mdiff+0x228>
    9a54:	9d d2 00 14 	l.addi r14,r18,20
    9a58:	9d c5 00 14 	l.addi r14,r5,20
    9a5c:	9c 44 00 14 	l.addi r2,r4,20
    9a60:	9e 80 00 00 	l.addi r20,r0,0
    9a64:	84 92 00 04 	l.lwz r4,4(r18)
    9a68:	07 ff fd 12 	l.jal 8eb0 <_Balloc>
    9a6c:	d4 01 28 00 	l.sw 0(r1),r5
    9a70:	84 a1 00 00 	l.lwz r5,0(r1)
    9a74:	85 b2 00 10 	l.lwz r13,16(r18)
    9a78:	85 85 00 10 	l.lwz r12,16(r5)
    9a7c:	b9 ed 00 02 	l.slli r15,r13,0x2
    9a80:	b9 8c 00 02 	l.slli r12,r12,0x2
    9a84:	d4 0b a0 0c 	l.sw 12(r11),r20
    9a88:	e1 e2 78 00 	l.add r15,r2,r15
    9a8c:	e1 8e 60 00 	l.add r12,r14,r12
    9a90:	9c eb 00 14 	l.addi r7,r11,20
    9a94:	9c 60 00 00 	l.addi r3,r0,0
    9a98:	84 a2 00 00 	l.lwz r5,0(r2)
    9a9c:	84 ce 00 00 	l.lwz r6,0(r14)
    9aa0:	a4 85 ff ff 	l.andi r4,r5,0xffff
    9aa4:	a5 06 ff ff 	l.andi r8,r6,0xffff
    9aa8:	e0 64 18 00 	l.add r3,r4,r3
    9aac:	b8 c6 00 50 	l.srli r6,r6,0x10
    9ab0:	e0 83 40 02 	l.sub r4,r3,r8
    9ab4:	b8 a5 00 50 	l.srli r5,r5,0x10
    9ab8:	b8 64 00 90 	l.srai r3,r4,0x10
    9abc:	a4 84 ff ff 	l.andi r4,r4,0xffff
    9ac0:	e0 a5 30 02 	l.sub r5,r5,r6
    9ac4:	9d ce 00 04 	l.addi r14,r14,4
    9ac8:	e0 65 18 00 	l.add r3,r5,r3
    9acc:	9c c7 00 04 	l.addi r6,r7,4
    9ad0:	b8 a3 00 10 	l.slli r5,r3,0x10
    9ad4:	e4 4c 70 00 	l.sfgtu r12,r14
    9ad8:	9c 42 00 04 	l.addi r2,r2,4
    9adc:	e0 85 20 04 	l.or r4,r5,r4
    9ae0:	b8 63 00 90 	l.srai r3,r3,0x10
    9ae4:	d4 07 20 00 	l.sw 0(r7),r4
    9ae8:	a9 06 00 00 	l.ori r8,r6,0x0
    9aec:	13 ff ff eb 	l.bf 9a98 <__mdiff+0xe0>
    9af0:	a8 e6 00 00 	l.ori r7,r6,0x0
    9af4:	e4 af 10 00 	l.sfleu r15,r2
    9af8:	10 00 00 19 	l.bf 9b5c <__mdiff+0x1a4>
    9afc:	bc 24 00 00 	l.sfnei r4,0
    9b00:	a9 82 00 00 	l.ori r12,r2,0x0
    9b04:	84 ac 00 00 	l.lwz r5,0(r12)
    9b08:	9c c6 00 04 	l.addi r6,r6,4
    9b0c:	a4 85 ff ff 	l.andi r4,r5,0xffff
    9b10:	b8 e5 00 50 	l.srli r7,r5,0x10
    9b14:	e0 64 18 00 	l.add r3,r4,r3
    9b18:	9d 8c 00 04 	l.addi r12,r12,4
    9b1c:	b8 a3 00 90 	l.srai r5,r3,0x10
    9b20:	a4 83 ff ff 	l.andi r4,r3,0xffff
    9b24:	e4 4f 60 00 	l.sfgtu r15,r12
    9b28:	e0 67 28 00 	l.add r3,r7,r5
    9b2c:	b8 a3 00 10 	l.slli r5,r3,0x10
    9b30:	b8 63 00 90 	l.srai r3,r3,0x10
    9b34:	e0 85 20 04 	l.or r4,r5,r4
    9b38:	13 ff ff f3 	l.bf 9b04 <__mdiff+0x14c>
    9b3c:	d7 e6 27 fc 	l.sw -4(r6),r4
    9b40:	ac 42 ff ff 	l.xori r2,r2,-1
    9b44:	e1 e2 78 00 	l.add r15,r2,r15
    9b48:	9c 40 ff fc 	l.addi r2,r0,-4
    9b4c:	e1 ef 10 03 	l.and r15,r15,r2
    9b50:	9d ef 00 04 	l.addi r15,r15,4
    9b54:	e1 08 78 00 	l.add r8,r8,r15
    9b58:	bc 24 00 00 	l.sfnei r4,0
    9b5c:	10 00 00 07 	l.bf 9b78 <__mdiff+0x1c0>
    9b60:	9c 48 ff fc 	l.addi r2,r8,-4
    9b64:	9c 42 ff fc 	l.addi r2,r2,-4
    9b68:	84 62 00 00 	l.lwz r3,0(r2)
    9b6c:	bc 03 00 00 	l.sfeqi r3,0
    9b70:	13 ff ff fd 	l.bf 9b64 <__mdiff+0x1ac>
    9b74:	9d ad ff ff 	l.addi r13,r13,-1
    9b78:	d4 0b 68 10 	l.sw 16(r11),r13
    9b7c:	9c 21 00 1c 	l.addi r1,r1,28
    9b80:	85 21 ff fc 	l.lwz r9,-4(r1)
    9b84:	84 21 ff e8 	l.lwz r1,-24(r1)
    9b88:	84 41 ff ec 	l.lwz r2,-20(r1)
    9b8c:	85 c1 ff f0 	l.lwz r14,-16(r1)
    9b90:	86 41 ff f4 	l.lwz r18,-12(r1)
    9b94:	44 00 48 00 	l.jr r9
    9b98:	86 81 ff f8 	l.lwz r20,-8(r1)
    9b9c:	9c 40 00 00 	l.addi r2,r0,0
    9ba0:	07 ff fc c4 	l.jal 8eb0 <_Balloc>
    9ba4:	9c 80 00 00 	l.addi r4,r0,0
    9ba8:	d4 0b 10 14 	l.sw 20(r11),r2
    9bac:	9c 40 00 01 	l.addi r2,r0,1
    9bb0:	d4 0b 10 10 	l.sw 16(r11),r2
    9bb4:	9c 21 00 1c 	l.addi r1,r1,28
    9bb8:	85 21 ff fc 	l.lwz r9,-4(r1)
    9bbc:	84 21 ff e8 	l.lwz r1,-24(r1)
    9bc0:	84 41 ff ec 	l.lwz r2,-20(r1)
    9bc4:	85 c1 ff f0 	l.lwz r14,-16(r1)
    9bc8:	86 41 ff f4 	l.lwz r18,-12(r1)
    9bcc:	44 00 48 00 	l.jr r9
    9bd0:	86 81 ff f8 	l.lwz r20,-8(r1)
    9bd4:	a9 cb 00 00 	l.ori r14,r11,0x0
    9bd8:	03 ff ff a3 	l.j 9a64 <__mdiff+0xac>
    9bdc:	9e 80 00 00 	l.addi r20,r0,0
    9be0:	a8 92 00 00 	l.ori r4,r18,0x0
    9be4:	9c 45 00 14 	l.addi r2,r5,20
    9be8:	aa 45 00 00 	l.ori r18,r5,0x0
    9bec:	9e 80 00 01 	l.addi r20,r0,1
    9bf0:	03 ff ff 9d 	l.j 9a64 <__mdiff+0xac>
    9bf4:	a8 a4 00 00 	l.ori r5,r4,0x0

00009bf8 <__ulp>:
    9bf8:	d7 e1 17 fc 	l.sw -4(r1),r2
    9bfc:	18 40 7f f0 	l.movhi r2,0x7ff0
    9c00:	d7 e1 0f f8 	l.sw -8(r1),r1
    9c04:	e0 63 10 03 	l.and r3,r3,r2
    9c08:	18 40 fc c0 	l.movhi r2,0xfcc0
    9c0c:	e0 63 10 00 	l.add r3,r3,r2
    9c10:	bd a3 00 00 	l.sflesi r3,0
    9c14:	10 00 00 0b 	l.bf 9c40 <__ulp+0x48>
    9c18:	9c 21 ff f8 	l.addi r1,r1,-8
    9c1c:	9c 80 00 00 	l.addi r4,r0,0
    9c20:	9c 21 00 08 	l.addi r1,r1,8
    9c24:	a8 c3 00 00 	l.ori r6,r3,0x0
    9c28:	a8 e4 00 00 	l.ori r7,r4,0x0
    9c2c:	84 21 ff f8 	l.lwz r1,-8(r1)
    9c30:	e1 66 00 04 	l.or r11,r6,r0
    9c34:	e1 87 00 04 	l.or r12,r7,r0
    9c38:	44 00 48 00 	l.jr r9
    9c3c:	84 41 ff fc 	l.lwz r2,-4(r1)
    9c40:	e0 60 18 02 	l.sub r3,r0,r3
    9c44:	b8 63 00 94 	l.srai r3,r3,0x14
    9c48:	bd 43 00 13 	l.sfgtsi r3,19
    9c4c:	0c 00 00 11 	l.bnf 9c90 <__ulp+0x98>
    9c50:	9c a3 ff ec 	l.addi r5,r3,-20
    9c54:	9c 80 00 01 	l.addi r4,r0,1
    9c58:	bd 45 00 1e 	l.sfgtsi r5,30
    9c5c:	13 ff ff f1 	l.bf 9c20 <__ulp+0x28>
    9c60:	9c 60 00 00 	l.addi r3,r0,0
    9c64:	9c c0 00 1f 	l.addi r6,r0,31
    9c68:	9c 21 00 08 	l.addi r1,r1,8
    9c6c:	e0 a6 28 02 	l.sub r5,r6,r5
    9c70:	84 21 ff f8 	l.lwz r1,-8(r1)
    9c74:	e0 84 28 08 	l.sll r4,r4,r5
    9c78:	a8 c3 00 00 	l.ori r6,r3,0x0
    9c7c:	a8 e4 00 00 	l.ori r7,r4,0x0
    9c80:	e1 66 00 04 	l.or r11,r6,r0
    9c84:	e1 87 00 04 	l.or r12,r7,r0
    9c88:	44 00 48 00 	l.jr r9
    9c8c:	84 41 ff fc 	l.lwz r2,-4(r1)
    9c90:	18 a0 00 08 	l.movhi r5,0x8
    9c94:	9c 21 00 08 	l.addi r1,r1,8
    9c98:	e0 65 18 88 	l.sra r3,r5,r3
    9c9c:	9c 80 00 00 	l.addi r4,r0,0
    9ca0:	84 21 ff f8 	l.lwz r1,-8(r1)
    9ca4:	a8 c3 00 00 	l.ori r6,r3,0x0
    9ca8:	a8 e4 00 00 	l.ori r7,r4,0x0
    9cac:	e1 66 00 04 	l.or r11,r6,r0
    9cb0:	e1 87 00 04 	l.or r12,r7,r0
    9cb4:	44 00 48 00 	l.jr r9
    9cb8:	84 41 ff fc 	l.lwz r2,-4(r1)

00009cbc <__b2d>:
    9cbc:	d7 e1 17 ec 	l.sw -20(r1),r2
    9cc0:	84 43 00 10 	l.lwz r2,16(r3)
    9cc4:	d7 e1 77 f0 	l.sw -16(r1),r14
    9cc8:	b8 42 00 02 	l.slli r2,r2,0x2
    9ccc:	9d c3 00 14 	l.addi r14,r3,20
    9cd0:	d7 e1 97 f4 	l.sw -12(r1),r18
    9cd4:	e0 4e 10 00 	l.add r2,r14,r2
    9cd8:	d7 e1 a7 f8 	l.sw -8(r1),r20
    9cdc:	86 42 ff fc 	l.lwz r18,-4(r2)
    9ce0:	d7 e1 4f fc 	l.sw -4(r1),r9
    9ce4:	d7 e1 0f e8 	l.sw -24(r1),r1
    9ce8:	a8 72 00 00 	l.ori r3,r18,0x0
    9cec:	9c 21 ff e4 	l.addi r1,r1,-28
    9cf0:	9e 82 ff fc 	l.addi r20,r2,-4
    9cf4:	07 ff fd 40 	l.jal 91f4 <__hi0bits>
    9cf8:	d4 01 20 00 	l.sw 0(r1),r4
    9cfc:	9c a0 00 20 	l.addi r5,r0,32
    9d00:	84 81 00 00 	l.lwz r4,0(r1)
    9d04:	e0 65 58 02 	l.sub r3,r5,r11
    9d08:	bd 4b 00 0a 	l.sfgtsi r11,10
    9d0c:	10 00 00 1b 	l.bf 9d78 <__b2d+0xbc>
    9d10:	d4 04 18 00 	l.sw 0(r4),r3
    9d14:	9c 60 00 0b 	l.addi r3,r0,11
    9d18:	18 c0 3f f0 	l.movhi r6,0x3ff0
    9d1c:	e0 63 58 02 	l.sub r3,r3,r11
    9d20:	e4 6e a0 00 	l.sfgeu r14,r20
    9d24:	e0 b2 18 48 	l.srl r5,r18,r3
    9d28:	9c 80 00 00 	l.addi r4,r0,0
    9d2c:	10 00 00 04 	l.bf 9d3c <__b2d+0x80>
    9d30:	e0 a5 30 04 	l.or r5,r5,r6
    9d34:	84 82 ff f8 	l.lwz r4,-8(r2)
    9d38:	e0 84 18 48 	l.srl r4,r4,r3
    9d3c:	9c 6b 00 15 	l.addi r3,r11,21
    9d40:	e0 72 18 08 	l.sll r3,r18,r3
    9d44:	e0 63 20 04 	l.or r3,r3,r4
    9d48:	9c 21 00 1c 	l.addi r1,r1,28
    9d4c:	a8 85 00 00 	l.ori r4,r5,0x0
    9d50:	85 21 ff fc 	l.lwz r9,-4(r1)
    9d54:	a8 a3 00 00 	l.ori r5,r3,0x0
    9d58:	84 21 ff e8 	l.lwz r1,-24(r1)
    9d5c:	e1 64 00 04 	l.or r11,r4,r0
    9d60:	e1 85 00 04 	l.or r12,r5,r0
    9d64:	84 41 ff ec 	l.lwz r2,-20(r1)
    9d68:	85 c1 ff f0 	l.lwz r14,-16(r1)
    9d6c:	86 41 ff f4 	l.lwz r18,-12(r1)
    9d70:	44 00 48 00 	l.jr r9
    9d74:	86 81 ff f8 	l.lwz r20,-8(r1)
    9d78:	e4 6e a0 00 	l.sfgeu r14,r20
    9d7c:	10 00 00 14 	l.bf 9dcc <__b2d+0x110>
    9d80:	15 00 00 00 	l.nop 0x0
    9d84:	9d 6b ff f5 	l.addi r11,r11,-11
    9d88:	bc 0b 00 00 	l.sfeqi r11,0
    9d8c:	10 00 00 14 	l.bf 9ddc <__b2d+0x120>
    9d90:	84 62 ff f8 	l.lwz r3,-8(r2)
    9d94:	e0 c5 58 02 	l.sub r6,r5,r11
    9d98:	e0 b2 58 08 	l.sll r5,r18,r11
    9d9c:	9c e2 ff f8 	l.addi r7,r2,-8
    9da0:	19 00 3f f0 	l.movhi r8,0x3ff0
    9da4:	e0 83 30 48 	l.srl r4,r3,r6
    9da8:	e0 a5 40 04 	l.or r5,r5,r8
    9dac:	e4 8e 38 00 	l.sfltu r14,r7
    9db0:	0c 00 00 12 	l.bnf 9df8 <__b2d+0x13c>
    9db4:	e0 a5 20 04 	l.or r5,r5,r4
    9db8:	84 42 ff f4 	l.lwz r2,-12(r2)
    9dbc:	e0 63 58 08 	l.sll r3,r3,r11
    9dc0:	e0 c2 30 48 	l.srl r6,r2,r6
    9dc4:	03 ff ff e1 	l.j 9d48 <__b2d+0x8c>
    9dc8:	e0 66 18 04 	l.or r3,r6,r3
    9dcc:	9c 6b ff f5 	l.addi r3,r11,-11
    9dd0:	bc 23 00 00 	l.sfnei r3,0
    9dd4:	10 00 00 05 	l.bf 9de8 <__b2d+0x12c>
    9dd8:	e0 52 18 08 	l.sll r2,r18,r3
    9ddc:	18 40 3f f0 	l.movhi r2,0x3ff0
    9de0:	03 ff ff da 	l.j 9d48 <__b2d+0x8c>
    9de4:	e0 b2 10 04 	l.or r5,r18,r2
    9de8:	18 80 3f f0 	l.movhi r4,0x3ff0
    9dec:	9c 60 00 00 	l.addi r3,r0,0
    9df0:	03 ff ff d6 	l.j 9d48 <__b2d+0x8c>
    9df4:	e0 a2 20 04 	l.or r5,r2,r4
    9df8:	03 ff ff d4 	l.j 9d48 <__b2d+0x8c>
    9dfc:	e0 63 58 08 	l.sll r3,r3,r11

00009e00 <__d2b>:
    9e00:	d7 e1 17 e8 	l.sw -24(r1),r2
    9e04:	d7 e1 77 ec 	l.sw -20(r1),r14
    9e08:	d7 e1 97 f0 	l.sw -16(r1),r18
    9e0c:	d7 e1 a7 f4 	l.sw -12(r1),r20
    9e10:	d7 e1 b7 f8 	l.sw -8(r1),r22
    9e14:	a9 c4 00 00 	l.ori r14,r4,0x0
    9e18:	d7 e1 4f fc 	l.sw -4(r1),r9
    9e1c:	d7 e1 0f e4 	l.sw -28(r1),r1
    9e20:	9c 80 00 01 	l.addi r4,r0,1
    9e24:	9c 21 ff d8 	l.addi r1,r1,-40
    9e28:	aa 86 00 00 	l.ori r20,r6,0x0
    9e2c:	d4 01 28 00 	l.sw 0(r1),r5
    9e30:	07 ff fc 20 	l.jal 8eb0 <_Balloc>
    9e34:	aa 47 00 00 	l.ori r18,r7,0x0
    9e38:	18 60 7f ff 	l.movhi r3,0x7fff
    9e3c:	aa cb 00 00 	l.ori r22,r11,0x0
    9e40:	a8 63 ff ff 	l.ori r3,r3,0xffff
    9e44:	84 a1 00 00 	l.lwz r5,0(r1)
    9e48:	e0 4e 18 03 	l.and r2,r14,r3
    9e4c:	18 60 00 0f 	l.movhi r3,0xf
    9e50:	b8 42 00 54 	l.srli r2,r2,0x14
    9e54:	a8 63 ff ff 	l.ori r3,r3,0xffff
    9e58:	bc 22 00 00 	l.sfnei r2,0
    9e5c:	0c 00 00 04 	l.bnf 9e6c <__d2b+0x6c>
    9e60:	e1 ce 18 03 	l.and r14,r14,r3
    9e64:	18 60 00 10 	l.movhi r3,0x10
    9e68:	e1 ce 18 04 	l.or r14,r14,r3
    9e6c:	bc 05 00 00 	l.sfeqi r5,0
    9e70:	10 00 00 19 	l.bf 9ed4 <__d2b+0xd4>
    9e74:	d4 01 70 08 	l.sw 8(r1),r14
    9e78:	9c 61 00 04 	l.addi r3,r1,4
    9e7c:	07 ff fd 11 	l.jal 92c0 <__lo0bits>
    9e80:	d4 01 28 04 	l.sw 4(r1),r5
    9e84:	bc 0b 00 00 	l.sfeqi r11,0
    9e88:	0c 00 00 32 	l.bnf 9f50 <__d2b+0x150>
    9e8c:	84 61 00 08 	l.lwz r3,8(r1)
    9e90:	84 81 00 04 	l.lwz r4,4(r1)
    9e94:	d4 16 20 14 	l.sw 20(r22),r4
    9e98:	d4 16 18 18 	l.sw 24(r22),r3
    9e9c:	bc 03 00 00 	l.sfeqi r3,0
    9ea0:	10 00 00 03 	l.bf 9eac <__d2b+0xac>
    9ea4:	9d c0 00 01 	l.addi r14,r0,1
    9ea8:	9d c0 00 02 	l.addi r14,r0,2
    9eac:	bc 02 00 00 	l.sfeqi r2,0
    9eb0:	10 00 00 12 	l.bf 9ef8 <__d2b+0xf8>
    9eb4:	d4 16 70 10 	l.sw 16(r22),r14
    9eb8:	9c 42 fb cd 	l.addi r2,r2,-1075
    9ebc:	9c 60 00 35 	l.addi r3,r0,53
    9ec0:	e0 42 58 00 	l.add r2,r2,r11
    9ec4:	e1 63 58 02 	l.sub r11,r3,r11
    9ec8:	d4 14 10 00 	l.sw 0(r20),r2
    9ecc:	00 00 00 17 	l.j 9f28 <__d2b+0x128>
    9ed0:	d4 12 58 00 	l.sw 0(r18),r11
    9ed4:	9c 61 00 08 	l.addi r3,r1,8
    9ed8:	07 ff fc fa 	l.jal 92c0 <__lo0bits>
    9edc:	9d c0 00 01 	l.addi r14,r0,1
    9ee0:	84 61 00 08 	l.lwz r3,8(r1)
    9ee4:	d4 16 70 10 	l.sw 16(r22),r14
    9ee8:	d4 16 18 14 	l.sw 20(r22),r3
    9eec:	bc 02 00 00 	l.sfeqi r2,0
    9ef0:	0f ff ff f2 	l.bnf 9eb8 <__d2b+0xb8>
    9ef4:	9d 6b 00 20 	l.addi r11,r11,32
    9ef8:	18 60 3f ff 	l.movhi r3,0x3fff
    9efc:	9d 6b fb ce 	l.addi r11,r11,-1074
    9f00:	a8 63 ff ff 	l.ori r3,r3,0xffff
    9f04:	d4 14 58 00 	l.sw 0(r20),r11
    9f08:	e0 4e 18 00 	l.add r2,r14,r3
    9f0c:	b9 ce 00 05 	l.slli r14,r14,0x5
    9f10:	b8 42 00 02 	l.slli r2,r2,0x2
    9f14:	e0 56 10 00 	l.add r2,r22,r2
    9f18:	07 ff fc b7 	l.jal 91f4 <__hi0bits>
    9f1c:	84 62 00 14 	l.lwz r3,20(r2)
    9f20:	e1 6e 58 02 	l.sub r11,r14,r11
    9f24:	d4 12 58 00 	l.sw 0(r18),r11
    9f28:	9c 21 00 28 	l.addi r1,r1,40
    9f2c:	a9 76 00 00 	l.ori r11,r22,0x0
    9f30:	85 21 ff fc 	l.lwz r9,-4(r1)
    9f34:	84 21 ff e4 	l.lwz r1,-28(r1)
    9f38:	84 41 ff e8 	l.lwz r2,-24(r1)
    9f3c:	85 c1 ff ec 	l.lwz r14,-20(r1)
    9f40:	86 41 ff f0 	l.lwz r18,-16(r1)
    9f44:	86 81 ff f4 	l.lwz r20,-12(r1)
    9f48:	44 00 48 00 	l.jr r9
    9f4c:	86 c1 ff f8 	l.lwz r22,-8(r1)
    9f50:	9c 80 00 20 	l.addi r4,r0,32
    9f54:	84 a1 00 04 	l.lwz r5,4(r1)
    9f58:	e0 84 58 02 	l.sub r4,r4,r11
    9f5c:	e0 83 20 08 	l.sll r4,r3,r4
    9f60:	e0 63 58 48 	l.srl r3,r3,r11
    9f64:	e0 84 28 04 	l.or r4,r4,r5
    9f68:	d4 01 18 08 	l.sw 8(r1),r3
    9f6c:	03 ff ff cb 	l.j 9e98 <__d2b+0x98>
    9f70:	d4 16 20 14 	l.sw 20(r22),r4

00009f74 <__ratio>:
    9f74:	d7 e1 4f fc 	l.sw -4(r1),r9
    9f78:	d7 e1 17 ec 	l.sw -20(r1),r2
    9f7c:	d7 e1 77 f0 	l.sw -16(r1),r14
    9f80:	d7 e1 97 f4 	l.sw -12(r1),r18
    9f84:	d7 e1 a7 f8 	l.sw -8(r1),r20
    9f88:	d7 e1 0f e8 	l.sw -24(r1),r1
    9f8c:	9c 21 ff e0 	l.addi r1,r1,-32
    9f90:	aa 44 00 00 	l.ori r18,r4,0x0
    9f94:	a8 81 00 00 	l.ori r4,r1,0x0
    9f98:	07 ff ff 49 	l.jal 9cbc <__b2d>
    9f9c:	aa 83 00 00 	l.ori r20,r3,0x0
    9fa0:	9c 81 00 04 	l.addi r4,r1,4
    9fa4:	a8 72 00 00 	l.ori r3,r18,0x0
    9fa8:	a9 cb 00 00 	l.ori r14,r11,0x0
    9fac:	07 ff ff 44 	l.jal 9cbc <__b2d>
    9fb0:	a8 4c 00 00 	l.ori r2,r12,0x0
    9fb4:	84 72 00 10 	l.lwz r3,16(r18)
    9fb8:	84 b4 00 10 	l.lwz r5,16(r20)
    9fbc:	84 81 00 00 	l.lwz r4,0(r1)
    9fc0:	e0 a5 18 02 	l.sub r5,r5,r3
    9fc4:	84 61 00 04 	l.lwz r3,4(r1)
    9fc8:	b8 a5 00 05 	l.slli r5,r5,0x5
    9fcc:	e0 84 18 02 	l.sub r4,r4,r3
    9fd0:	e0 65 20 00 	l.add r3,r5,r4
    9fd4:	bd a3 00 00 	l.sflesi r3,0
    9fd8:	10 00 00 16 	l.bf a030 <__ratio+0xbc>
    9fdc:	b8 83 00 14 	l.slli r4,r3,0x14
    9fe0:	b8 63 00 14 	l.slli r3,r3,0x14
    9fe4:	e1 c3 70 00 	l.add r14,r3,r14
    9fe8:	aa 4e 00 00 	l.ori r18,r14,0x0
    9fec:	aa 62 00 00 	l.ori r19,r2,0x0
    9ff0:	a8 cb 00 00 	l.ori r6,r11,0x0
    9ff4:	a8 ec 00 00 	l.ori r7,r12,0x0
    9ff8:	e0 72 00 04 	l.or r3,r18,r0
    9ffc:	e0 93 00 04 	l.or r4,r19,r0
    a000:	e0 a6 00 04 	l.or r5,r6,r0
    a004:	e0 c7 00 04 	l.or r6,r7,r0
    a008:	04 00 14 5c 	l.jal f178 <__divdf3>
    a00c:	15 00 00 00 	l.nop 0x0
    a010:	9c 21 00 20 	l.addi r1,r1,32
    a014:	85 21 ff fc 	l.lwz r9,-4(r1)
    a018:	84 21 ff e8 	l.lwz r1,-24(r1)
    a01c:	84 41 ff ec 	l.lwz r2,-20(r1)
    a020:	85 c1 ff f0 	l.lwz r14,-16(r1)
    a024:	86 41 ff f4 	l.lwz r18,-12(r1)
    a028:	44 00 48 00 	l.jr r9
    a02c:	86 81 ff f8 	l.lwz r20,-8(r1)
    a030:	03 ff ff ee 	l.j 9fe8 <__ratio+0x74>
    a034:	e1 6b 20 02 	l.sub r11,r11,r4

0000a038 <_mprec_log10>:
    a038:	d7 e1 77 f8 	l.sw -8(r1),r14
    a03c:	d7 e1 4f fc 	l.sw -4(r1),r9
    a040:	d7 e1 0f f0 	l.sw -16(r1),r1
    a044:	d7 e1 17 f4 	l.sw -12(r1),r2
    a048:	bd 43 00 17 	l.sfgtsi r3,23
    a04c:	9c 21 ff f0 	l.addi r1,r1,-16
    a050:	0c 00 00 1e 	l.bnf a0c8 <_mprec_log10+0x90>
    a054:	a9 c3 00 00 	l.ori r14,r3,0x0
    a058:	18 40 00 01 	l.movhi r2,0x1
    a05c:	a8 42 1b b0 	l.ori r2,r2,0x1bb0
    a060:	85 62 00 00 	l.lwz r11,0(r2)
    a064:	85 82 00 04 	l.lwz r12,4(r2)
    a068:	18 80 00 01 	l.movhi r4,0x1
    a06c:	a8 4b 00 00 	l.ori r2,r11,0x0
    a070:	a8 6c 00 00 	l.ori r3,r12,0x0
    a074:	a8 84 1b b8 	l.ori r4,r4,0x1bb8
    a078:	84 a4 00 00 	l.lwz r5,0(r4)
    a07c:	84 c4 00 04 	l.lwz r6,4(r4)
    a080:	e0 83 00 04 	l.or r4,r3,r0
    a084:	e0 62 00 04 	l.or r3,r2,r0
    a088:	04 00 18 62 	l.jal 10210 <__muldf3>
    a08c:	9d ce ff ff 	l.addi r14,r14,-1
    a090:	bc 2e 00 00 	l.sfnei r14,0
    a094:	13 ff ff f6 	l.bf a06c <_mprec_log10+0x34>
    a098:	18 80 00 01 	l.movhi r4,0x1
    a09c:	a8 4b 00 00 	l.ori r2,r11,0x0
    a0a0:	9c 21 00 10 	l.addi r1,r1,16
    a0a4:	a8 82 00 00 	l.ori r4,r2,0x0
    a0a8:	a8 ac 00 00 	l.ori r5,r12,0x0
    a0ac:	85 21 ff fc 	l.lwz r9,-4(r1)
    a0b0:	84 21 ff f0 	l.lwz r1,-16(r1)
    a0b4:	e1 64 00 04 	l.or r11,r4,r0
    a0b8:	e1 85 00 04 	l.or r12,r5,r0
    a0bc:	84 41 ff f4 	l.lwz r2,-12(r1)
    a0c0:	44 00 48 00 	l.jr r9
    a0c4:	85 c1 ff f8 	l.lwz r14,-8(r1)
    a0c8:	18 40 00 01 	l.movhi r2,0x1
    a0cc:	b9 c3 00 03 	l.slli r14,r3,0x3
    a0d0:	a8 42 1c 1c 	l.ori r2,r2,0x1c1c
    a0d4:	e1 ce 10 00 	l.add r14,r14,r2
    a0d8:	84 4e 00 00 	l.lwz r2,0(r14)
    a0dc:	03 ff ff f1 	l.j a0a0 <_mprec_log10+0x68>
    a0e0:	85 8e 00 04 	l.lwz r12,4(r14)

0000a0e4 <__copybits>:
    a0e4:	9c 84 ff ff 	l.addi r4,r4,-1
    a0e8:	84 e5 00 10 	l.lwz r7,16(r5)
    a0ec:	b9 64 00 85 	l.srai r11,r4,0x5
    a0f0:	b8 e7 00 02 	l.slli r7,r7,0x2
    a0f4:	9c 85 00 14 	l.addi r4,r5,20
    a0f8:	9d 6b 00 01 	l.addi r11,r11,1
    a0fc:	e0 e4 38 00 	l.add r7,r4,r7
    a100:	b9 6b 00 02 	l.slli r11,r11,0x2
    a104:	d7 e1 0f f8 	l.sw -8(r1),r1
    a108:	d7 e1 17 fc 	l.sw -4(r1),r2
    a10c:	e4 64 38 00 	l.sfgeu r4,r7
    a110:	9c 21 ff f8 	l.addi r1,r1,-8
    a114:	10 00 00 15 	l.bf a168 <__copybits+0x84>
    a118:	e1 63 58 00 	l.add r11,r3,r11
    a11c:	a8 c3 00 00 	l.ori r6,r3,0x0
    a120:	85 04 00 00 	l.lwz r8,0(r4)
    a124:	9c 84 00 04 	l.addi r4,r4,4
    a128:	d4 06 40 00 	l.sw 0(r6),r8
    a12c:	e4 47 20 00 	l.sfgtu r7,r4
    a130:	13 ff ff fc 	l.bf a120 <__copybits+0x3c>
    a134:	9c c6 00 04 	l.addi r6,r6,4
    a138:	e0 87 28 02 	l.sub r4,r7,r5
    a13c:	9c 40 ff fc 	l.addi r2,r0,-4
    a140:	9c 84 ff eb 	l.addi r4,r4,-21
    a144:	e0 84 10 03 	l.and r4,r4,r2
    a148:	9c 84 00 04 	l.addi r4,r4,4
    a14c:	e0 63 20 00 	l.add r3,r3,r4
    a150:	e4 4b 18 00 	l.sfgtu r11,r3
    a154:	0c 00 00 08 	l.bnf a174 <__copybits+0x90>
    a158:	15 00 00 00 	l.nop 0x0
    a15c:	9c 40 00 00 	l.addi r2,r0,0
    a160:	9c 63 00 04 	l.addi r3,r3,4
    a164:	d7 e3 17 fc 	l.sw -4(r3),r2
    a168:	e4 4b 18 00 	l.sfgtu r11,r3
    a16c:	13 ff ff fc 	l.bf a15c <__copybits+0x78>
    a170:	15 00 00 00 	l.nop 0x0
    a174:	9c 21 00 08 	l.addi r1,r1,8
    a178:	84 21 ff f8 	l.lwz r1,-8(r1)
    a17c:	44 00 48 00 	l.jr r9
    a180:	84 41 ff fc 	l.lwz r2,-4(r1)

0000a184 <__any_on>:
    a184:	b8 c4 00 85 	l.srai r6,r4,0x5
    a188:	84 a3 00 10 	l.lwz r5,16(r3)
    a18c:	d7 e1 0f fc 	l.sw -4(r1),r1
    a190:	e5 65 30 00 	l.sfges r5,r6
    a194:	9c 21 ff fc 	l.addi r1,r1,-4
    a198:	10 00 00 17 	l.bf a1f4 <__any_on+0x70>
    a19c:	9c 63 00 14 	l.addi r3,r3,20
    a1a0:	b8 85 00 02 	l.slli r4,r5,0x2
    a1a4:	e0 83 20 00 	l.add r4,r3,r4
    a1a8:	e4 63 20 00 	l.sfgeu r3,r4
    a1ac:	10 00 00 0f 	l.bf a1e8 <__any_on+0x64>
    a1b0:	9d 60 00 00 	l.addi r11,r0,0
    a1b4:	85 64 ff fc 	l.lwz r11,-4(r4)
    a1b8:	bc 2b 00 00 	l.sfnei r11,0
    a1bc:	0c 00 00 08 	l.bnf a1dc <__any_on+0x58>
    a1c0:	9c 84 ff fc 	l.addi r4,r4,-4
    a1c4:	00 00 00 1f 	l.j a240 <__any_on+0xbc>
    a1c8:	9c 21 00 04 	l.addi r1,r1,4
    a1cc:	84 a4 00 00 	l.lwz r5,0(r4)
    a1d0:	bc 25 00 00 	l.sfnei r5,0
    a1d4:	10 00 00 1a 	l.bf a23c <__any_on+0xb8>
    a1d8:	15 00 00 00 	l.nop 0x0
    a1dc:	e4 83 20 00 	l.sfltu r3,r4
    a1e0:	13 ff ff fb 	l.bf a1cc <__any_on+0x48>
    a1e4:	9c 84 ff fc 	l.addi r4,r4,-4
    a1e8:	9c 21 00 04 	l.addi r1,r1,4
    a1ec:	44 00 48 00 	l.jr r9
    a1f0:	84 21 ff fc 	l.lwz r1,-4(r1)
    a1f4:	e5 45 30 00 	l.sfgts r5,r6
    a1f8:	0c 00 00 0e 	l.bnf a230 <__any_on+0xac>
    a1fc:	a4 a4 00 1f 	l.andi r5,r4,0x1f
    a200:	bc 25 00 00 	l.sfnei r5,0
    a204:	0c 00 00 12 	l.bnf a24c <__any_on+0xc8>
    a208:	b8 86 00 02 	l.slli r4,r6,0x2
    a20c:	e0 83 20 00 	l.add r4,r3,r4
    a210:	84 e4 00 00 	l.lwz r7,0(r4)
    a214:	e0 c7 28 48 	l.srl r6,r7,r5
    a218:	e0 a6 28 08 	l.sll r5,r6,r5
    a21c:	e4 27 28 00 	l.sfne r7,r5
    a220:	13 ff ff f2 	l.bf a1e8 <__any_on+0x64>
    a224:	9d 60 00 01 	l.addi r11,r0,1
    a228:	03 ff ff e1 	l.j a1ac <__any_on+0x28>
    a22c:	e4 63 20 00 	l.sfgeu r3,r4
    a230:	b8 86 00 02 	l.slli r4,r6,0x2
    a234:	03 ff ff dd 	l.j a1a8 <__any_on+0x24>
    a238:	e0 83 20 00 	l.add r4,r3,r4
    a23c:	9c 21 00 04 	l.addi r1,r1,4
    a240:	9d 60 00 01 	l.addi r11,r0,1
    a244:	44 00 48 00 	l.jr r9
    a248:	84 21 ff fc 	l.lwz r1,-4(r1)
    a24c:	03 ff ff d7 	l.j a1a8 <__any_on+0x24>
    a250:	e0 83 20 00 	l.add r4,r3,r4

0000a254 <__fpclassifyd>:
    a254:	e0 a4 18 04 	l.or r5,r4,r3
    a258:	d7 e1 0f f8 	l.sw -8(r1),r1
    a25c:	d7 e1 17 fc 	l.sw -4(r1),r2
    a260:	bc 05 00 00 	l.sfeqi r5,0
    a264:	9c 21 ff f8 	l.addi r1,r1,-8
    a268:	0c 00 00 06 	l.bnf a280 <__fpclassifyd+0x2c>
    a26c:	9d 60 00 02 	l.addi r11,r0,2
    a270:	9c 21 00 08 	l.addi r1,r1,8
    a274:	84 21 ff f8 	l.lwz r1,-8(r1)
    a278:	44 00 48 00 	l.jr r9
    a27c:	84 41 ff fc 	l.lwz r2,-4(r1)
    a280:	18 40 80 00 	l.movhi r2,0x8000
    a284:	e0 e0 20 02 	l.sub r7,r0,r4
    a288:	e0 a3 10 00 	l.add r5,r3,r2
    a28c:	e0 87 20 04 	l.or r4,r7,r4
    a290:	e0 c0 28 02 	l.sub r6,r0,r5
    a294:	ac 84 ff ff 	l.xori r4,r4,-1
    a298:	e0 a6 28 04 	l.or r5,r6,r5
    a29c:	bd 85 00 00 	l.sfltsi r5,0
    a2a0:	10 00 00 05 	l.bf a2b4 <__fpclassifyd+0x60>
    a2a4:	b8 84 00 5f 	l.srli r4,r4,0x1f
    a2a8:	bc 24 00 00 	l.sfnei r4,0
    a2ac:	13 ff ff f1 	l.bf a270 <__fpclassifyd+0x1c>
    a2b0:	15 00 00 00 	l.nop 0x0
    a2b4:	18 40 7f ff 	l.movhi r2,0x7fff
    a2b8:	a8 42 ff ff 	l.ori r2,r2,0xffff
    a2bc:	e0 63 10 03 	l.and r3,r3,r2
    a2c0:	18 40 ff f0 	l.movhi r2,0xfff0
    a2c4:	e0 a3 10 00 	l.add r5,r3,r2
    a2c8:	18 40 7f df 	l.movhi r2,0x7fdf
    a2cc:	a8 42 ff ff 	l.ori r2,r2,0xffff
    a2d0:	e4 a5 10 00 	l.sfleu r5,r2
    a2d4:	13 ff ff e7 	l.bf a270 <__fpclassifyd+0x1c>
    a2d8:	9d 60 00 04 	l.addi r11,r0,4
    a2dc:	18 40 00 0f 	l.movhi r2,0xf
    a2e0:	a8 42 ff ff 	l.ori r2,r2,0xffff
    a2e4:	e4 a3 10 00 	l.sfleu r3,r2
    a2e8:	13 ff ff e2 	l.bf a270 <__fpclassifyd+0x1c>
    a2ec:	9d 60 00 03 	l.addi r11,r0,3
    a2f0:	18 40 7f f0 	l.movhi r2,0x7ff0
    a2f4:	e0 63 10 05 	l.xor r3,r3,r2
    a2f8:	e0 a0 18 02 	l.sub r5,r0,r3
    a2fc:	e0 65 18 04 	l.or r3,r5,r3
    a300:	ac 63 ff ff 	l.xori r3,r3,-1
    a304:	b8 63 00 5f 	l.srli r3,r3,0x1f
    a308:	03 ff ff da 	l.j a270 <__fpclassifyd+0x1c>
    a30c:	e1 64 18 03 	l.and r11,r4,r3

0000a310 <__sread>:
    a310:	d7 e1 17 f8 	l.sw -8(r1),r2
    a314:	a8 44 00 00 	l.ori r2,r4,0x0
    a318:	98 84 00 0e 	l.lhs r4,14(r4)
    a31c:	d7 e1 4f fc 	l.sw -4(r1),r9
    a320:	d7 e1 0f f4 	l.sw -12(r1),r1
    a324:	04 00 0c a4 	l.jal d5b4 <_read_r>
    a328:	9c 21 ff f4 	l.addi r1,r1,-12
    a32c:	bd 8b 00 00 	l.sfltsi r11,0
    a330:	10 00 00 0a 	l.bf a358 <__sread+0x48>
    a334:	9c 80 ef ff 	l.addi r4,r0,-4097
    a338:	84 62 00 50 	l.lwz r3,80(r2)
    a33c:	e0 63 58 00 	l.add r3,r3,r11
    a340:	d4 02 18 50 	l.sw 80(r2),r3
    a344:	9c 21 00 0c 	l.addi r1,r1,12
    a348:	85 21 ff fc 	l.lwz r9,-4(r1)
    a34c:	84 21 ff f4 	l.lwz r1,-12(r1)
    a350:	44 00 48 00 	l.jr r9
    a354:	84 41 ff f8 	l.lwz r2,-8(r1)
    a358:	94 62 00 0c 	l.lhz r3,12(r2)
    a35c:	e0 63 20 03 	l.and r3,r3,r4
    a360:	dc 02 18 0c 	l.sh 12(r2),r3
    a364:	9c 21 00 0c 	l.addi r1,r1,12
    a368:	85 21 ff fc 	l.lwz r9,-4(r1)
    a36c:	84 21 ff f4 	l.lwz r1,-12(r1)
    a370:	44 00 48 00 	l.jr r9
    a374:	84 41 ff f8 	l.lwz r2,-8(r1)

0000a378 <__seofread>:
    a378:	d7 e1 0f fc 	l.sw -4(r1),r1
    a37c:	9c 21 ff fc 	l.addi r1,r1,-4
    a380:	9d 60 00 00 	l.addi r11,r0,0
    a384:	9c 21 00 04 	l.addi r1,r1,4
    a388:	44 00 48 00 	l.jr r9
    a38c:	84 21 ff fc 	l.lwz r1,-4(r1)

0000a390 <__swrite>:
    a390:	d7 e1 17 ec 	l.sw -20(r1),r2
    a394:	a8 44 00 00 	l.ori r2,r4,0x0
    a398:	98 84 00 0c 	l.lhs r4,12(r4)
    a39c:	a4 e4 01 00 	l.andi r7,r4,0x100
    a3a0:	d7 e1 77 f0 	l.sw -16(r1),r14
    a3a4:	d7 e1 97 f4 	l.sw -12(r1),r18
    a3a8:	d7 e1 a7 f8 	l.sw -8(r1),r20
    a3ac:	d7 e1 4f fc 	l.sw -4(r1),r9
    a3b0:	d7 e1 0f e8 	l.sw -24(r1),r1
    a3b4:	bc 07 00 00 	l.sfeqi r7,0
    a3b8:	9c 21 ff e8 	l.addi r1,r1,-24
    a3bc:	a9 c3 00 00 	l.ori r14,r3,0x0
    a3c0:	aa 45 00 00 	l.ori r18,r5,0x0
    a3c4:	10 00 00 07 	l.bf a3e0 <__swrite+0x50>
    a3c8:	aa 86 00 00 	l.ori r20,r6,0x0
    a3cc:	98 82 00 0e 	l.lhs r4,14(r2)
    a3d0:	9c c0 00 02 	l.addi r6,r0,2
    a3d4:	04 00 0c 65 	l.jal d568 <_lseek_r>
    a3d8:	9c a0 00 00 	l.addi r5,r0,0
    a3dc:	98 82 00 0c 	l.lhs r4,12(r2)
    a3e0:	9c a0 ef ff 	l.addi r5,r0,-4097
    a3e4:	a8 d4 00 00 	l.ori r6,r20,0x0
    a3e8:	e0 64 28 03 	l.and r3,r4,r5
    a3ec:	98 82 00 0e 	l.lhs r4,14(r2)
    a3f0:	dc 02 18 0c 	l.sh 12(r2),r3
    a3f4:	a8 b2 00 00 	l.ori r5,r18,0x0
    a3f8:	04 00 0b e5 	l.jal d38c <_write_r>
    a3fc:	a8 6e 00 00 	l.ori r3,r14,0x0
    a400:	9c 21 00 18 	l.addi r1,r1,24
    a404:	85 21 ff fc 	l.lwz r9,-4(r1)
    a408:	84 21 ff e8 	l.lwz r1,-24(r1)
    a40c:	84 41 ff ec 	l.lwz r2,-20(r1)
    a410:	85 c1 ff f0 	l.lwz r14,-16(r1)
    a414:	86 41 ff f4 	l.lwz r18,-12(r1)
    a418:	44 00 48 00 	l.jr r9
    a41c:	86 81 ff f8 	l.lwz r20,-8(r1)

0000a420 <__sseek>:
    a420:	d7 e1 17 f8 	l.sw -8(r1),r2
    a424:	a8 44 00 00 	l.ori r2,r4,0x0
    a428:	98 84 00 0e 	l.lhs r4,14(r4)
    a42c:	d7 e1 4f fc 	l.sw -4(r1),r9
    a430:	d7 e1 0f f4 	l.sw -12(r1),r1
    a434:	04 00 0c 4d 	l.jal d568 <_lseek_r>
    a438:	9c 21 ff f4 	l.addi r1,r1,-12
    a43c:	bc 2b ff ff 	l.sfnei r11,-1
    a440:	0c 00 00 0a 	l.bnf a468 <__sseek+0x48>
    a444:	94 62 00 0c 	l.lhz r3,12(r2)
    a448:	a8 63 10 00 	l.ori r3,r3,0x1000
    a44c:	d4 02 58 50 	l.sw 80(r2),r11
    a450:	dc 02 18 0c 	l.sh 12(r2),r3
    a454:	9c 21 00 0c 	l.addi r1,r1,12
    a458:	85 21 ff fc 	l.lwz r9,-4(r1)
    a45c:	84 21 ff f4 	l.lwz r1,-12(r1)
    a460:	44 00 48 00 	l.jr r9
    a464:	84 41 ff f8 	l.lwz r2,-8(r1)
    a468:	9c 80 ef ff 	l.addi r4,r0,-4097
    a46c:	e0 63 20 03 	l.and r3,r3,r4
    a470:	dc 02 18 0c 	l.sh 12(r2),r3
    a474:	9c 21 00 0c 	l.addi r1,r1,12
    a478:	85 21 ff fc 	l.lwz r9,-4(r1)
    a47c:	84 21 ff f4 	l.lwz r1,-12(r1)
    a480:	44 00 48 00 	l.jr r9
    a484:	84 41 ff f8 	l.lwz r2,-8(r1)

0000a488 <__sclose>:
    a488:	98 84 00 0e 	l.lhs r4,14(r4)
    a48c:	d7 e1 4f fc 	l.sw -4(r1),r9
    a490:	d7 e1 0f f8 	l.sw -8(r1),r1
    a494:	04 00 0b ea 	l.jal d43c <_close_r>
    a498:	9c 21 ff f8 	l.addi r1,r1,-8
    a49c:	9c 21 00 08 	l.addi r1,r1,8
    a4a0:	85 21 ff fc 	l.lwz r9,-4(r1)
    a4a4:	44 00 48 00 	l.jr r9
    a4a8:	84 21 ff f8 	l.lwz r1,-8(r1)

0000a4ac <strcmp>:
    a4ac:	e1 63 20 04 	l.or r11,r3,r4
    a4b0:	d7 e1 0f f8 	l.sw -8(r1),r1
    a4b4:	a5 6b 00 03 	l.andi r11,r11,0x3
    a4b8:	d7 e1 17 fc 	l.sw -4(r1),r2
    a4bc:	bc 2b 00 00 	l.sfnei r11,0
    a4c0:	10 00 00 24 	l.bf a550 <strcmp+0xa4>
    a4c4:	9c 21 ff f8 	l.addi r1,r1,-8
    a4c8:	84 a4 00 00 	l.lwz r5,0(r4)
    a4cc:	84 c3 00 00 	l.lwz r6,0(r3)
    a4d0:	e4 25 30 00 	l.sfne r5,r6
    a4d4:	10 00 00 1f 	l.bf a550 <strcmp+0xa4>
    a4d8:	18 40 fe fe 	l.movhi r2,0xfefe
    a4dc:	a8 42 fe ff 	l.ori r2,r2,0xfeff
    a4e0:	e0 c5 10 00 	l.add r6,r5,r2
    a4e4:	ac a5 ff ff 	l.xori r5,r5,-1
    a4e8:	18 40 80 80 	l.movhi r2,0x8080
    a4ec:	e0 a6 28 03 	l.and r5,r6,r5
    a4f0:	a8 42 80 80 	l.ori r2,r2,0x8080
    a4f4:	e0 a5 10 03 	l.and r5,r5,r2
    a4f8:	bc 25 00 00 	l.sfnei r5,0
    a4fc:	0c 00 00 0b 	l.bnf a528 <strcmp+0x7c>
    a500:	9c 63 00 04 	l.addi r3,r3,4
    a504:	9c 63 ff fc 	l.addi r3,r3,-4
    a508:	00 00 00 24 	l.j a598 <strcmp+0xec>
    a50c:	9c 21 00 08 	l.addi r1,r1,8
    a510:	18 40 80 80 	l.movhi r2,0x8080
    a514:	a8 42 80 80 	l.ori r2,r2,0x8080
    a518:	e0 a5 10 03 	l.and r5,r5,r2
    a51c:	bc 25 00 00 	l.sfnei r5,0
    a520:	10 00 00 21 	l.bf a5a4 <strcmp+0xf8>
    a524:	9c 63 00 04 	l.addi r3,r3,4
    a528:	9c 84 00 04 	l.addi r4,r4,4
    a52c:	18 40 fe fe 	l.movhi r2,0xfefe
    a530:	84 c3 00 00 	l.lwz r6,0(r3)
    a534:	85 04 00 00 	l.lwz r8,0(r4)
    a538:	a8 42 fe ff 	l.ori r2,r2,0xfeff
    a53c:	ac a6 ff ff 	l.xori r5,r6,-1
    a540:	e0 e6 10 00 	l.add r7,r6,r2
    a544:	e4 06 40 00 	l.sfeq r6,r8
    a548:	13 ff ff f2 	l.bf a510 <strcmp+0x64>
    a54c:	e0 a7 28 03 	l.and r5,r7,r5
    a550:	91 63 00 00 	l.lbs r11,0(r3)
    a554:	bc 0b 00 00 	l.sfeqi r11,0
    a558:	0c 00 00 08 	l.bnf a578 <strcmp+0xcc>
    a55c:	15 00 00 00 	l.nop 0x0
    a560:	00 00 00 0c 	l.j a590 <strcmp+0xe4>
    a564:	8c 64 00 00 	l.lbz r3,0(r4)
    a568:	91 63 00 00 	l.lbs r11,0(r3)
    a56c:	bc 0b 00 00 	l.sfeqi r11,0
    a570:	10 00 00 07 	l.bf a58c <strcmp+0xe0>
    a574:	9c 84 00 01 	l.addi r4,r4,1
    a578:	90 a4 00 00 	l.lbs r5,0(r4)
    a57c:	e4 05 58 00 	l.sfeq r5,r11
    a580:	13 ff ff fa 	l.bf a568 <strcmp+0xbc>
    a584:	9c 63 00 01 	l.addi r3,r3,1
    a588:	a5 6b 00 ff 	l.andi r11,r11,0xff
    a58c:	8c 64 00 00 	l.lbz r3,0(r4)
    a590:	e1 6b 18 02 	l.sub r11,r11,r3
    a594:	9c 21 00 08 	l.addi r1,r1,8
    a598:	84 21 ff f8 	l.lwz r1,-8(r1)
    a59c:	44 00 48 00 	l.jr r9
    a5a0:	84 41 ff fc 	l.lwz r2,-4(r1)
    a5a4:	9c 21 00 08 	l.addi r1,r1,8
    a5a8:	9d 60 00 00 	l.addi r11,r0,0
    a5ac:	84 21 ff f8 	l.lwz r1,-8(r1)
    a5b0:	44 00 48 00 	l.jr r9
    a5b4:	84 41 ff fc 	l.lwz r2,-4(r1)

0000a5b8 <strlen>:
    a5b8:	a4 83 00 03 	l.andi r4,r3,0x3
    a5bc:	d7 e1 0f f8 	l.sw -8(r1),r1
    a5c0:	d7 e1 17 fc 	l.sw -4(r1),r2
    a5c4:	bc 04 00 00 	l.sfeqi r4,0
    a5c8:	10 00 00 3a 	l.bf a6b0 <strlen+0xf8>
    a5cc:	9c 21 ff f8 	l.addi r1,r1,-8
    a5d0:	90 a3 00 00 	l.lbs r5,0(r3)
    a5d4:	bc 05 00 00 	l.sfeqi r5,0
    a5d8:	10 00 00 38 	l.bf a6b8 <strlen+0x100>
    a5dc:	a8 83 00 00 	l.ori r4,r3,0x0
    a5e0:	00 00 00 07 	l.j a5fc <strlen+0x44>
    a5e4:	9c 84 00 01 	l.addi r4,r4,1
    a5e8:	90 a4 00 00 	l.lbs r5,0(r4)
    a5ec:	bc 25 00 00 	l.sfnei r5,0
    a5f0:	0c 00 00 2c 	l.bnf a6a0 <strlen+0xe8>
    a5f4:	e1 64 18 02 	l.sub r11,r4,r3
    a5f8:	9c 84 00 01 	l.addi r4,r4,1
    a5fc:	a4 a4 00 03 	l.andi r5,r4,0x3
    a600:	bc 25 00 00 	l.sfnei r5,0
    a604:	13 ff ff f9 	l.bf a5e8 <strlen+0x30>
    a608:	15 00 00 00 	l.nop 0x0
    a60c:	18 40 fe fe 	l.movhi r2,0xfefe
    a610:	84 a4 00 00 	l.lwz r5,0(r4)
    a614:	a8 42 fe ff 	l.ori r2,r2,0xfeff
    a618:	e0 c5 10 00 	l.add r6,r5,r2
    a61c:	ac a5 ff ff 	l.xori r5,r5,-1
    a620:	18 40 80 80 	l.movhi r2,0x8080
    a624:	e0 a6 28 03 	l.and r5,r6,r5
    a628:	a8 42 80 80 	l.ori r2,r2,0x8080
    a62c:	e0 a5 10 03 	l.and r5,r5,r2
    a630:	bc 25 00 00 	l.sfnei r5,0
    a634:	10 00 00 10 	l.bf a674 <strlen+0xbc>
    a638:	15 00 00 00 	l.nop 0x0
    a63c:	9c 84 00 04 	l.addi r4,r4,4
    a640:	18 40 fe fe 	l.movhi r2,0xfefe
    a644:	84 a4 00 00 	l.lwz r5,0(r4)
    a648:	a8 42 fe ff 	l.ori r2,r2,0xfeff
    a64c:	e0 c5 10 00 	l.add r6,r5,r2
    a650:	ac a5 ff ff 	l.xori r5,r5,-1
    a654:	18 40 80 80 	l.movhi r2,0x8080
    a658:	e0 a6 28 03 	l.and r5,r6,r5
    a65c:	a8 42 80 80 	l.ori r2,r2,0x8080
    a660:	e0 a5 10 03 	l.and r5,r5,r2
    a664:	bc 05 00 00 	l.sfeqi r5,0
    a668:	13 ff ff f6 	l.bf a640 <strlen+0x88>
    a66c:	9c 84 00 04 	l.addi r4,r4,4
    a670:	9c 84 ff fc 	l.addi r4,r4,-4
    a674:	90 a4 00 00 	l.lbs r5,0(r4)
    a678:	bc 05 00 00 	l.sfeqi r5,0
    a67c:	10 00 00 09 	l.bf a6a0 <strlen+0xe8>
    a680:	e1 64 18 02 	l.sub r11,r4,r3
    a684:	9c 84 00 01 	l.addi r4,r4,1
    a688:	90 a4 00 00 	l.lbs r5,0(r4)
    a68c:	bc 25 00 00 	l.sfnei r5,0
    a690:	13 ff ff fe 	l.bf a688 <strlen+0xd0>
    a694:	9c 84 00 01 	l.addi r4,r4,1
    a698:	9c 84 ff ff 	l.addi r4,r4,-1
    a69c:	e1 64 18 02 	l.sub r11,r4,r3
    a6a0:	9c 21 00 08 	l.addi r1,r1,8
    a6a4:	84 21 ff f8 	l.lwz r1,-8(r1)
    a6a8:	44 00 48 00 	l.jr r9
    a6ac:	84 41 ff fc 	l.lwz r2,-4(r1)
    a6b0:	03 ff ff d7 	l.j a60c <strlen+0x54>
    a6b4:	a8 83 00 00 	l.ori r4,r3,0x0
    a6b8:	03 ff ff fa 	l.j a6a0 <strlen+0xe8>
    a6bc:	a9 65 00 00 	l.ori r11,r5,0x0

0000a6c0 <__sprint_r.part.0>:
    a6c0:	d7 e1 17 dc 	l.sw -36(r1),r2
    a6c4:	84 44 00 64 	l.lwz r2,100(r4)
    a6c8:	d7 e1 a7 e8 	l.sw -24(r1),r20
    a6cc:	a4 42 20 00 	l.andi r2,r2,0x2000
    a6d0:	d7 e1 b7 ec 	l.sw -20(r1),r22
    a6d4:	d7 e1 c7 f0 	l.sw -16(r1),r24
    a6d8:	d7 e1 4f fc 	l.sw -4(r1),r9
    a6dc:	d7 e1 0f d8 	l.sw -40(r1),r1
    a6e0:	d7 e1 77 e0 	l.sw -32(r1),r14
    a6e4:	d7 e1 97 e4 	l.sw -28(r1),r18
    a6e8:	d7 e1 d7 f4 	l.sw -12(r1),r26
    a6ec:	d7 e1 e7 f8 	l.sw -8(r1),r28
    a6f0:	bc 02 00 00 	l.sfeqi r2,0
    a6f4:	9c 21 ff d8 	l.addi r1,r1,-40
    a6f8:	aa 84 00 00 	l.ori r20,r4,0x0
    a6fc:	aa c3 00 00 	l.ori r22,r3,0x0
    a700:	10 00 00 33 	l.bf a7cc <__sprint_r.part.0+0x10c>
    a704:	ab 05 00 00 	l.ori r24,r5,0x0
    a708:	84 65 00 08 	l.lwz r3,8(r5)
    a70c:	87 45 00 00 	l.lwz r26,0(r5)
    a710:	bc 23 00 00 	l.sfnei r3,0
    a714:	0c 00 00 2c 	l.bnf a7c4 <__sprint_r.part.0+0x104>
    a718:	9f 9a 00 04 	l.addi r28,r26,4
    a71c:	86 5c 00 00 	l.lwz r18,0(r28)
    a720:	9d c0 00 00 	l.addi r14,r0,0
    a724:	ba 52 00 42 	l.srli r18,r18,0x2
    a728:	e4 32 70 00 	l.sfne r18,r14
    a72c:	10 00 00 07 	l.bf a748 <__sprint_r.part.0+0x88>
    a730:	84 5a 00 00 	l.lwz r2,0(r26)
    a734:	00 00 00 1e 	l.j a7ac <__sprint_r.part.0+0xec>
    a738:	ba 52 00 02 	l.slli r18,r18,0x2
    a73c:	e4 32 70 00 	l.sfne r18,r14
    a740:	0c 00 00 19 	l.bnf a7a4 <__sprint_r.part.0+0xe4>
    a744:	15 00 00 00 	l.nop 0x0
    a748:	84 82 00 00 	l.lwz r4,0(r2)
    a74c:	a8 b4 00 00 	l.ori r5,r20,0x0
    a750:	a8 76 00 00 	l.ori r3,r22,0x0
    a754:	04 00 06 86 	l.jal c16c <_fputwc_r>
    a758:	9d ce 00 01 	l.addi r14,r14,1
    a75c:	bc 0b ff ff 	l.sfeqi r11,-1
    a760:	0f ff ff f7 	l.bnf a73c <__sprint_r.part.0+0x7c>
    a764:	9c 42 00 04 	l.addi r2,r2,4
    a768:	9c 40 00 00 	l.addi r2,r0,0
    a76c:	d4 18 10 08 	l.sw 8(r24),r2
    a770:	d4 18 10 04 	l.sw 4(r24),r2
    a774:	9c 21 00 28 	l.addi r1,r1,40
    a778:	85 21 ff fc 	l.lwz r9,-4(r1)
    a77c:	84 21 ff d8 	l.lwz r1,-40(r1)
    a780:	84 41 ff dc 	l.lwz r2,-36(r1)
    a784:	85 c1 ff e0 	l.lwz r14,-32(r1)
    a788:	86 41 ff e4 	l.lwz r18,-28(r1)
    a78c:	86 81 ff e8 	l.lwz r20,-24(r1)
    a790:	86 c1 ff ec 	l.lwz r22,-20(r1)
    a794:	87 01 ff f0 	l.lwz r24,-16(r1)
    a798:	87 41 ff f4 	l.lwz r26,-12(r1)
    a79c:	44 00 48 00 	l.jr r9
    a7a0:	87 81 ff f8 	l.lwz r28,-8(r1)
    a7a4:	84 78 00 08 	l.lwz r3,8(r24)
    a7a8:	ba 52 00 02 	l.slli r18,r18,0x2
    a7ac:	9f 5a 00 08 	l.addi r26,r26,8
    a7b0:	9f 9c 00 08 	l.addi r28,r28,8
    a7b4:	e0 63 90 02 	l.sub r3,r3,r18
    a7b8:	bc 23 00 00 	l.sfnei r3,0
    a7bc:	13 ff ff d8 	l.bf a71c <__sprint_r.part.0+0x5c>
    a7c0:	d4 18 18 08 	l.sw 8(r24),r3
    a7c4:	03 ff ff e9 	l.j a768 <__sprint_r.part.0+0xa8>
    a7c8:	9d 60 00 00 	l.addi r11,r0,0
    a7cc:	04 00 06 a0 	l.jal c24c <__sfvwrite_r>
    a7d0:	9c 40 00 00 	l.addi r2,r0,0
    a7d4:	03 ff ff e7 	l.j a770 <__sprint_r.part.0+0xb0>
    a7d8:	d4 18 10 08 	l.sw 8(r24),r2

0000a7dc <__sprint_r>:
    a7dc:	85 65 00 08 	l.lwz r11,8(r5)
    a7e0:	d7 e1 4f fc 	l.sw -4(r1),r9
    a7e4:	d7 e1 0f f8 	l.sw -8(r1),r1
    a7e8:	bc 2b 00 00 	l.sfnei r11,0
    a7ec:	0c 00 00 08 	l.bnf a80c <__sprint_r+0x30>
    a7f0:	9c 21 ff f8 	l.addi r1,r1,-8
    a7f4:	07 ff ff b3 	l.jal a6c0 <__sprint_r.part.0>
    a7f8:	15 00 00 00 	l.nop 0x0
    a7fc:	9c 21 00 08 	l.addi r1,r1,8
    a800:	85 21 ff fc 	l.lwz r9,-4(r1)
    a804:	44 00 48 00 	l.jr r9
    a808:	84 21 ff f8 	l.lwz r1,-8(r1)
    a80c:	9c 21 00 08 	l.addi r1,r1,8
    a810:	d4 05 58 04 	l.sw 4(r5),r11
    a814:	85 21 ff fc 	l.lwz r9,-4(r1)
    a818:	44 00 48 00 	l.jr r9
    a81c:	84 21 ff f8 	l.lwz r1,-8(r1)

0000a820 <_vfiprintf_r>:
    a820:	d7 e1 77 dc 	l.sw -36(r1),r14
    a824:	d7 e1 b7 e8 	l.sw -24(r1),r22
    a828:	d7 e1 c7 ec 	l.sw -20(r1),r24
    a82c:	d7 e1 4f fc 	l.sw -4(r1),r9
    a830:	d7 e1 0f d4 	l.sw -44(r1),r1
    a834:	d7 e1 17 d8 	l.sw -40(r1),r2
    a838:	d7 e1 97 e0 	l.sw -32(r1),r18
    a83c:	d7 e1 a7 e4 	l.sw -28(r1),r20
    a840:	d7 e1 d7 f0 	l.sw -16(r1),r26
    a844:	d7 e1 e7 f4 	l.sw -12(r1),r28
    a848:	d7 e1 f7 f8 	l.sw -8(r1),r30
    a84c:	9c 21 ff 34 	l.addi r1,r1,-204
    a850:	bc 03 00 00 	l.sfeqi r3,0
    a854:	d4 01 30 1c 	l.sw 28(r1),r6
    a858:	aa c3 00 00 	l.ori r22,r3,0x0
    a85c:	a9 c4 00 00 	l.ori r14,r4,0x0
    a860:	10 00 00 06 	l.bf a878 <_vfiprintf_r+0x58>
    a864:	ab 05 00 00 	l.ori r24,r5,0x0
    a868:	84 43 00 38 	l.lwz r2,56(r3)
    a86c:	bc 22 00 00 	l.sfnei r2,0
    a870:	0c 00 00 8e 	l.bnf aaa8 <_vfiprintf_r+0x288>
    a874:	15 00 00 00 	l.nop 0x0
    a878:	98 6e 00 0c 	l.lhs r3,12(r14)
    a87c:	a4 43 ff ff 	l.andi r2,r3,0xffff
    a880:	a4 82 20 00 	l.andi r4,r2,0x2000
    a884:	bc 24 00 00 	l.sfnei r4,0
    a888:	10 00 00 08 	l.bf a8a8 <_vfiprintf_r+0x88>
    a88c:	9c a0 df ff 	l.addi r5,r0,-8193
    a890:	84 8e 00 64 	l.lwz r4,100(r14)
    a894:	a8 43 20 00 	l.ori r2,r3,0x2000
    a898:	e0 64 28 03 	l.and r3,r4,r5
    a89c:	dc 0e 10 0c 	l.sh 12(r14),r2
    a8a0:	d4 0e 18 64 	l.sw 100(r14),r3
    a8a4:	a4 42 ff ff 	l.andi r2,r2,0xffff
    a8a8:	a4 62 00 08 	l.andi r3,r2,0x8
    a8ac:	bc 03 00 00 	l.sfeqi r3,0
    a8b0:	10 00 00 5e 	l.bf aa28 <_vfiprintf_r+0x208>
    a8b4:	a8 8e 00 00 	l.ori r4,r14,0x0
    a8b8:	84 6e 00 10 	l.lwz r3,16(r14)
    a8bc:	bc 23 00 00 	l.sfnei r3,0
    a8c0:	0c 00 00 5a 	l.bnf aa28 <_vfiprintf_r+0x208>
    a8c4:	a4 42 00 1a 	l.andi r2,r2,0x1a
    a8c8:	bc 22 00 0a 	l.sfnei r2,10
    a8cc:	0c 00 00 61 	l.bnf aa50 <_vfiprintf_r+0x230>
    a8d0:	9d 01 00 5f 	l.addi r8,r1,95
    a8d4:	9c 40 00 00 	l.addi r2,r0,0
    a8d8:	d4 01 40 18 	l.sw 24(r1),r8
    a8dc:	9f c1 00 60 	l.addi r30,r1,96
    a8e0:	d4 01 10 34 	l.sw 52(r1),r2
    a8e4:	d4 01 10 30 	l.sw 48(r1),r2
    a8e8:	d4 01 10 20 	l.sw 32(r1),r2
    a8ec:	84 41 00 18 	l.lwz r2,24(r1)
    a8f0:	d4 01 f0 2c 	l.sw 44(r1),r30
    a8f4:	e0 5e 10 02 	l.sub r2,r30,r2
    a8f8:	a8 fe 00 00 	l.ori r7,r30,0x0
    a8fc:	d4 01 10 24 	l.sw 36(r1),r2
    a900:	90 58 00 00 	l.lbs r2,0(r24)
    a904:	ac 62 00 25 	l.xori r3,r2,37
    a908:	a4 63 00 ff 	l.andi r3,r3,0xff
    a90c:	bc 03 00 00 	l.sfeqi r3,0
    a910:	10 00 00 27 	l.bf a9ac <_vfiprintf_r+0x18c>
    a914:	aa 58 00 00 	l.ori r18,r24,0x0
    a918:	a4 42 00 ff 	l.andi r2,r2,0xff
    a91c:	bc 02 00 00 	l.sfeqi r2,0
    a920:	0c 00 00 0a 	l.bnf a948 <_vfiprintf_r+0x128>
    a924:	9e 52 00 01 	l.addi r18,r18,1
    a928:	9e 52 ff ff 	l.addi r18,r18,-1
    a92c:	00 00 00 21 	l.j a9b0 <_vfiprintf_r+0x190>
    a930:	90 52 00 00 	l.lbs r2,0(r18)
    a934:	a4 42 00 ff 	l.andi r2,r2,0xff
    a938:	bc 22 00 00 	l.sfnei r2,0
    a93c:	0c 00 00 09 	l.bnf a960 <_vfiprintf_r+0x140>
    a940:	e0 52 c0 02 	l.sub r2,r18,r24
    a944:	9e 52 00 01 	l.addi r18,r18,1
    a948:	90 52 00 00 	l.lbs r2,0(r18)
    a94c:	a4 62 00 ff 	l.andi r3,r2,0xff
    a950:	bc 03 00 00 	l.sfeqi r3,0
    a954:	0f ff ff f8 	l.bnf a934 <_vfiprintf_r+0x114>
    a958:	ac 42 00 25 	l.xori r2,r2,37
    a95c:	e0 52 c0 02 	l.sub r2,r18,r24
    a960:	bc 02 00 00 	l.sfeqi r2,0
    a964:	10 00 00 12 	l.bf a9ac <_vfiprintf_r+0x18c>
    a968:	84 81 00 34 	l.lwz r4,52(r1)
    a96c:	84 61 00 30 	l.lwz r3,48(r1)
    a970:	e0 82 20 00 	l.add r4,r2,r4
    a974:	9c 63 00 01 	l.addi r3,r3,1
    a978:	d4 07 c0 00 	l.sw 0(r7),r24
    a97c:	d4 07 10 04 	l.sw 4(r7),r2
    a980:	d4 01 20 34 	l.sw 52(r1),r4
    a984:	bd 43 00 07 	l.sfgtsi r3,7
    a988:	0c 00 00 20 	l.bnf aa08 <_vfiprintf_r+0x1e8>
    a98c:	d4 01 18 30 	l.sw 48(r1),r3
    a990:	bc 24 00 00 	l.sfnei r4,0
    a994:	10 00 03 c3 	l.bf b8a0 <_vfiprintf_r+0x1080>
    a998:	85 01 00 20 	l.lwz r8,32(r1)
    a99c:	d4 01 20 30 	l.sw 48(r1),r4
    a9a0:	e1 08 10 00 	l.add r8,r8,r2
    a9a4:	a8 fe 00 00 	l.ori r7,r30,0x0
    a9a8:	d4 01 40 20 	l.sw 32(r1),r8
    a9ac:	90 52 00 00 	l.lbs r2,0(r18)
    a9b0:	bc 02 00 00 	l.sfeqi r2,0
    a9b4:	10 00 04 43 	l.bf bac0 <_vfiprintf_r+0x12a0>
    a9b8:	9c a0 00 00 	l.addi r5,r0,0
    a9bc:	9c 40 00 00 	l.addi r2,r0,0
    a9c0:	9e 52 00 01 	l.addi r18,r18,1
    a9c4:	d8 01 10 29 	l.sb 41(r1),r2
    a9c8:	a9 a5 00 00 	l.ori r13,r5,0x0
    a9cc:	9c c0 ff ff 	l.addi r6,r0,-1
    a9d0:	a8 45 00 00 	l.ori r2,r5,0x0
    a9d4:	ab 85 00 00 	l.ori r28,r5,0x0
    a9d8:	90 92 00 00 	l.lbs r4,0(r18)
    a9dc:	9f 12 00 01 	l.addi r24,r18,1
    a9e0:	9c 64 ff e0 	l.addi r3,r4,-32
    a9e4:	bc 43 00 58 	l.sfgtui r3,88
    a9e8:	10 00 02 11 	l.bf b22c <_vfiprintf_r+0xa0c>
    a9ec:	19 00 00 01 	l.movhi r8,0x1
    a9f0:	b8 63 00 02 	l.slli r3,r3,0x2
    a9f4:	a9 08 1c e4 	l.ori r8,r8,0x1ce4
    a9f8:	e0 63 40 00 	l.add r3,r3,r8
    a9fc:	84 63 00 00 	l.lwz r3,0(r3)
    aa00:	44 00 18 00 	l.jr r3
    aa04:	15 00 00 00 	l.nop 0x0
    aa08:	9c e7 00 08 	l.addi r7,r7,8
    aa0c:	85 01 00 20 	l.lwz r8,32(r1)
    aa10:	e1 08 10 00 	l.add r8,r8,r2
    aa14:	03 ff ff e6 	l.j a9ac <_vfiprintf_r+0x18c>
    aa18:	d4 01 40 20 	l.sw 32(r1),r8
    aa1c:	ab 9c 00 10 	l.ori r28,r28,0x10
    aa20:	03 ff ff ee 	l.j a9d8 <_vfiprintf_r+0x1b8>
    aa24:	aa 58 00 00 	l.ori r18,r24,0x0
    aa28:	07 ff e8 0b 	l.jal 4a54 <__swsetup_r>
    aa2c:	a8 76 00 00 	l.ori r3,r22,0x0
    aa30:	bc 0b 00 00 	l.sfeqi r11,0
    aa34:	0c 00 04 13 	l.bnf ba80 <_vfiprintf_r+0x1260>
    aa38:	15 00 00 00 	l.nop 0x0
    aa3c:	94 4e 00 0c 	l.lhz r2,12(r14)
    aa40:	a4 42 00 1a 	l.andi r2,r2,0x1a
    aa44:	bc 22 00 0a 	l.sfnei r2,10
    aa48:	13 ff ff a3 	l.bf a8d4 <_vfiprintf_r+0xb4>
    aa4c:	9d 01 00 5f 	l.addi r8,r1,95
    aa50:	98 4e 00 0e 	l.lhs r2,14(r14)
    aa54:	bd 82 00 00 	l.sfltsi r2,0
    aa58:	13 ff ff 9f 	l.bf a8d4 <_vfiprintf_r+0xb4>
    aa5c:	9d 01 00 5f 	l.addi r8,r1,95
    aa60:	84 c1 00 1c 	l.lwz r6,28(r1)
    aa64:	a8 b8 00 00 	l.ori r5,r24,0x0
    aa68:	a8 8e 00 00 	l.ori r4,r14,0x0
    aa6c:	04 00 04 88 	l.jal bc8c <__sbprintf>
    aa70:	a8 76 00 00 	l.ori r3,r22,0x0
    aa74:	9c 21 00 cc 	l.addi r1,r1,204
    aa78:	85 21 ff fc 	l.lwz r9,-4(r1)
    aa7c:	84 21 ff d4 	l.lwz r1,-44(r1)
    aa80:	84 41 ff d8 	l.lwz r2,-40(r1)
    aa84:	85 c1 ff dc 	l.lwz r14,-36(r1)
    aa88:	86 41 ff e0 	l.lwz r18,-32(r1)
    aa8c:	86 81 ff e4 	l.lwz r20,-28(r1)
    aa90:	86 c1 ff e8 	l.lwz r22,-24(r1)
    aa94:	87 01 ff ec 	l.lwz r24,-20(r1)
    aa98:	87 41 ff f0 	l.lwz r26,-16(r1)
    aa9c:	87 81 ff f4 	l.lwz r28,-12(r1)
    aaa0:	44 00 48 00 	l.jr r9
    aaa4:	87 c1 ff f8 	l.lwz r30,-8(r1)
    aaa8:	07 ff f2 9d 	l.jal 751c <__sinit>
    aaac:	15 00 00 00 	l.nop 0x0
    aab0:	03 ff ff 73 	l.j a87c <_vfiprintf_r+0x5c>
    aab4:	98 6e 00 0c 	l.lhs r3,12(r14)
    aab8:	85 01 00 1c 	l.lwz r8,28(r1)
    aabc:	84 48 00 00 	l.lwz r2,0(r8)
    aac0:	9d 08 00 04 	l.addi r8,r8,4
    aac4:	bd 62 00 00 	l.sfgesi r2,0
    aac8:	13 ff ff d6 	l.bf aa20 <_vfiprintf_r+0x200>
    aacc:	d4 01 40 1c 	l.sw 28(r1),r8
    aad0:	e0 40 10 02 	l.sub r2,r0,r2
    aad4:	ab 9c 00 04 	l.ori r28,r28,0x4
    aad8:	03 ff ff c0 	l.j a9d8 <_vfiprintf_r+0x1b8>
    aadc:	aa 58 00 00 	l.ori r18,r24,0x0
    aae0:	9d 00 00 30 	l.addi r8,r0,48
    aae4:	9c 60 00 78 	l.addi r3,r0,120
    aae8:	9c 80 00 00 	l.addi r4,r0,0
    aaec:	d8 01 40 2a 	l.sb 42(r1),r8
    aaf0:	d8 01 18 2b 	l.sb 43(r1),r3
    aaf4:	85 01 00 1c 	l.lwz r8,28(r1)
    aaf8:	d8 01 20 29 	l.sb 41(r1),r4
    aafc:	bd 86 00 00 	l.sfltsi r6,0
    ab00:	9d 68 00 04 	l.addi r11,r8,4
    ab04:	10 00 03 e5 	l.bf ba98 <_vfiprintf_r+0x1278>
    ab08:	84 68 00 00 	l.lwz r3,0(r8)
    ab0c:	e0 80 18 02 	l.sub r4,r0,r3
    ab10:	9c a0 ff 7f 	l.addi r5,r0,-129
    ab14:	e0 84 18 04 	l.or r4,r4,r3
    ab18:	e1 fc 28 03 	l.and r15,r28,r5
    ab1c:	d4 01 58 1c 	l.sw 28(r1),r11
    ab20:	bd 84 00 00 	l.sfltsi r4,0
    ab24:	10 00 03 a3 	l.bf b9b0 <_vfiprintf_r+0x1190>
    ab28:	ab 8f 00 02 	l.ori r28,r15,0x2
    ab2c:	e0 a0 30 02 	l.sub r5,r0,r6
    ab30:	e0 a5 30 04 	l.or r5,r5,r6
    ab34:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    ab38:	bc 25 00 00 	l.sfnei r5,0
    ab3c:	10 00 03 9e 	l.bf b9b4 <_vfiprintf_r+0x1194>
    ab40:	19 60 00 01 	l.movhi r11,0x1
    ab44:	9c c0 00 00 	l.addi r6,r0,0
    ab48:	aa 5e 00 00 	l.ori r18,r30,0x0
    ab4c:	ab 46 00 00 	l.ori r26,r6,0x0
    ab50:	e5 66 d0 00 	l.sfges r6,r26
    ab54:	10 00 00 03 	l.bf ab60 <_vfiprintf_r+0x340>
    ab58:	aa 86 00 00 	l.ori r20,r6,0x0
    ab5c:	aa 9a 00 00 	l.ori r20,r26,0x0
    ab60:	bc 05 00 00 	l.sfeqi r5,0
    ab64:	10 00 00 04 	l.bf ab74 <_vfiprintf_r+0x354>
    ab68:	a6 bc 00 02 	l.andi r21,r28,0x2
    ab6c:	9e 94 00 01 	l.addi r20,r20,1
    ab70:	a6 bc 00 02 	l.andi r21,r28,0x2
    ab74:	bc 15 00 00 	l.sfeqi r21,0
    ab78:	10 00 00 03 	l.bf ab84 <_vfiprintf_r+0x364>
    ab7c:	a6 7c 00 84 	l.andi r19,r28,0x84
    ab80:	9e 94 00 02 	l.addi r20,r20,2
    ab84:	bc 13 00 00 	l.sfeqi r19,0
    ab88:	0c 00 01 fa 	l.bnf b370 <_vfiprintf_r+0xb50>
    ab8c:	84 a1 00 30 	l.lwz r5,48(r1)
    ab90:	e1 a2 a0 02 	l.sub r13,r2,r20
    ab94:	bd 4d 00 00 	l.sfgtsi r13,0
    ab98:	0c 00 01 f6 	l.bnf b370 <_vfiprintf_r+0xb50>
    ab9c:	bd 4d 00 10 	l.sfgtsi r13,16
    aba0:	0c 00 03 e7 	l.bnf bb3c <_vfiprintf_r+0x131c>
    aba4:	84 61 00 34 	l.lwz r3,52(r1)
    aba8:	1a 20 00 01 	l.movhi r17,0x1
    abac:	85 61 00 30 	l.lwz r11,48(r1)
    abb0:	aa 31 1e 58 	l.ori r17,r17,0x1e58
    abb4:	00 00 00 09 	l.j abd8 <_vfiprintf_r+0x3b8>
    abb8:	9e e0 00 10 	l.addi r23,r0,16
    abbc:	9c ab 00 02 	l.addi r5,r11,2
    abc0:	9c e7 00 08 	l.addi r7,r7,8
    abc4:	a9 64 00 00 	l.ori r11,r4,0x0
    abc8:	9d ad ff f0 	l.addi r13,r13,-16
    abcc:	bd 4d 00 10 	l.sfgtsi r13,16
    abd0:	0c 00 00 12 	l.bnf ac18 <_vfiprintf_r+0x3f8>
    abd4:	15 00 00 00 	l.nop 0x0
    abd8:	9c 8b 00 01 	l.addi r4,r11,1
    abdc:	9c 63 00 10 	l.addi r3,r3,16
    abe0:	d4 07 88 00 	l.sw 0(r7),r17
    abe4:	d4 07 b8 04 	l.sw 4(r7),r23
    abe8:	d4 01 18 34 	l.sw 52(r1),r3
    abec:	bd 44 00 07 	l.sfgtsi r4,7
    abf0:	0f ff ff f3 	l.bnf abbc <_vfiprintf_r+0x39c>
    abf4:	d4 01 20 30 	l.sw 48(r1),r4
    abf8:	bc 23 00 00 	l.sfnei r3,0
    abfc:	10 00 01 c6 	l.bf b314 <_vfiprintf_r+0xaf4>
    ac00:	a9 63 00 00 	l.ori r11,r3,0x0
    ac04:	9d ad ff f0 	l.addi r13,r13,-16
    ac08:	bd 4d 00 10 	l.sfgtsi r13,16
    ac0c:	9c a0 00 01 	l.addi r5,r0,1
    ac10:	13 ff ff f2 	l.bf abd8 <_vfiprintf_r+0x3b8>
    ac14:	a8 fe 00 00 	l.ori r7,r30,0x0
    ac18:	e0 6d 18 00 	l.add r3,r13,r3
    ac1c:	d4 07 88 00 	l.sw 0(r7),r17
    ac20:	d4 07 68 04 	l.sw 4(r7),r13
    ac24:	d4 01 18 34 	l.sw 52(r1),r3
    ac28:	bd 45 00 07 	l.sfgtsi r5,7
    ac2c:	10 00 02 9d 	l.bf b6a0 <_vfiprintf_r+0xe80>
    ac30:	d4 01 28 30 	l.sw 48(r1),r5
    ac34:	90 81 00 29 	l.lbs r4,41(r1)
    ac38:	bc 04 00 00 	l.sfeqi r4,0
    ac3c:	9c e7 00 08 	l.addi r7,r7,8
    ac40:	0c 00 01 d2 	l.bnf b388 <_vfiprintf_r+0xb68>
    ac44:	9d 65 00 01 	l.addi r11,r5,1
    ac48:	bc 15 00 00 	l.sfeqi r21,0
    ac4c:	10 00 01 e1 	l.bf b3d0 <_vfiprintf_r+0xbb0>
    ac50:	bc 33 00 80 	l.sfnei r19,128
    ac54:	9c 63 00 02 	l.addi r3,r3,2
    ac58:	9d 01 00 2a 	l.addi r8,r1,42
    ac5c:	9c 80 00 02 	l.addi r4,r0,2
    ac60:	d4 07 40 00 	l.sw 0(r7),r8
    ac64:	d4 07 20 04 	l.sw 4(r7),r4
    ac68:	d4 01 18 34 	l.sw 52(r1),r3
    ac6c:	bd 4b 00 07 	l.sfgtsi r11,7
    ac70:	0c 00 02 a4 	l.bnf b700 <_vfiprintf_r+0xee0>
    ac74:	d4 01 58 30 	l.sw 48(r1),r11
    ac78:	bc 23 00 00 	l.sfnei r3,0
    ac7c:	10 00 03 23 	l.bf b908 <_vfiprintf_r+0x10e8>
    ac80:	bc 33 00 80 	l.sfnei r19,128
    ac84:	9d 60 00 01 	l.addi r11,r0,1
    ac88:	a8 a3 00 00 	l.ori r5,r3,0x0
    ac8c:	10 00 01 d3 	l.bf b3d8 <_vfiprintf_r+0xbb8>
    ac90:	a8 fe 00 00 	l.ori r7,r30,0x0
    ac94:	e2 22 a0 02 	l.sub r17,r2,r20
    ac98:	bd b1 00 00 	l.sflesi r17,0
    ac9c:	10 00 01 cf 	l.bf b3d8 <_vfiprintf_r+0xbb8>
    aca0:	bd b1 00 10 	l.sflesi r17,16
    aca4:	10 00 03 c2 	l.bf bbac <_vfiprintf_r+0x138c>
    aca8:	15 00 00 00 	l.nop 0x0
    acac:	19 a0 00 01 	l.movhi r13,0x1
    acb0:	9e a0 00 10 	l.addi r21,r0,16
    acb4:	00 00 00 09 	l.j acd8 <_vfiprintf_r+0x4b8>
    acb8:	a9 ad 1e 48 	l.ori r13,r13,0x1e48
    acbc:	9e 65 00 02 	l.addi r19,r5,2
    acc0:	9c e7 00 08 	l.addi r7,r7,8
    acc4:	a8 a4 00 00 	l.ori r5,r4,0x0
    acc8:	9e 31 ff f0 	l.addi r17,r17,-16
    accc:	bd 51 00 10 	l.sfgtsi r17,16
    acd0:	0c 00 00 12 	l.bnf ad18 <_vfiprintf_r+0x4f8>
    acd4:	15 00 00 00 	l.nop 0x0
    acd8:	9c 85 00 01 	l.addi r4,r5,1
    acdc:	9c 63 00 10 	l.addi r3,r3,16
    ace0:	d4 07 68 00 	l.sw 0(r7),r13
    ace4:	d4 07 a8 04 	l.sw 4(r7),r21
    ace8:	d4 01 18 34 	l.sw 52(r1),r3
    acec:	bd 44 00 07 	l.sfgtsi r4,7
    acf0:	0f ff ff f3 	l.bnf acbc <_vfiprintf_r+0x49c>
    acf4:	d4 01 20 30 	l.sw 48(r1),r4
    acf8:	bc 23 00 00 	l.sfnei r3,0
    acfc:	10 00 02 56 	l.bf b654 <_vfiprintf_r+0xe34>
    ad00:	9e 60 00 01 	l.addi r19,r0,1
    ad04:	9e 31 ff f0 	l.addi r17,r17,-16
    ad08:	bd 51 00 10 	l.sfgtsi r17,16
    ad0c:	a8 a3 00 00 	l.ori r5,r3,0x0
    ad10:	13 ff ff f2 	l.bf acd8 <_vfiprintf_r+0x4b8>
    ad14:	a8 fe 00 00 	l.ori r7,r30,0x0
    ad18:	e0 63 88 00 	l.add r3,r3,r17
    ad1c:	d4 07 68 00 	l.sw 0(r7),r13
    ad20:	d4 07 88 04 	l.sw 4(r7),r17
    ad24:	d4 01 18 34 	l.sw 52(r1),r3
    ad28:	bd 53 00 07 	l.sfgtsi r19,7
    ad2c:	10 00 03 06 	l.bf b944 <_vfiprintf_r+0x1124>
    ad30:	d4 01 98 30 	l.sw 48(r1),r19
    ad34:	e0 c6 d0 02 	l.sub r6,r6,r26
    ad38:	9c e7 00 08 	l.addi r7,r7,8
    ad3c:	bd a6 00 00 	l.sflesi r6,0
    ad40:	9d 73 00 01 	l.addi r11,r19,1
    ad44:	0c 00 01 a9 	l.bnf b3e8 <_vfiprintf_r+0xbc8>
    ad48:	a8 b3 00 00 	l.ori r5,r19,0x0
    ad4c:	e0 7a 18 00 	l.add r3,r26,r3
    ad50:	d4 07 90 00 	l.sw 0(r7),r18
    ad54:	d4 07 d0 04 	l.sw 4(r7),r26
    ad58:	d4 01 18 34 	l.sw 52(r1),r3
    ad5c:	bd 4b 00 07 	l.sfgtsi r11,7
    ad60:	0c 00 01 cf 	l.bnf b49c <_vfiprintf_r+0xc7c>
    ad64:	d4 01 58 30 	l.sw 48(r1),r11
    ad68:	bc 23 00 00 	l.sfnei r3,0
    ad6c:	10 00 02 be 	l.bf b864 <_vfiprintf_r+0x1044>
    ad70:	a5 fc 00 04 	l.andi r15,r28,0x4
    ad74:	bc 2f 00 00 	l.sfnei r15,0
    ad78:	0c 00 00 06 	l.bnf ad90 <_vfiprintf_r+0x570>
    ad7c:	d4 01 18 30 	l.sw 48(r1),r3
    ad80:	e2 42 a0 02 	l.sub r18,r2,r20
    ad84:	bd 52 00 00 	l.sfgtsi r18,0
    ad88:	10 00 01 ce 	l.bf b4c0 <_vfiprintf_r+0xca0>
    ad8c:	a8 fe 00 00 	l.ori r7,r30,0x0
    ad90:	e5 62 a0 00 	l.sfges r2,r20
    ad94:	10 00 00 03 	l.bf ada0 <_vfiprintf_r+0x580>
    ad98:	85 01 00 20 	l.lwz r8,32(r1)
    ad9c:	a8 54 00 00 	l.ori r2,r20,0x0
    ada0:	e1 08 10 00 	l.add r8,r8,r2
    ada4:	d4 01 40 20 	l.sw 32(r1),r8
    ada8:	9c 40 00 00 	l.addi r2,r0,0
    adac:	a8 fe 00 00 	l.ori r7,r30,0x0
    adb0:	03 ff fe d4 	l.j a900 <_vfiprintf_r+0xe0>
    adb4:	d4 01 10 30 	l.sw 48(r1),r2
    adb8:	9c a0 00 01 	l.addi r5,r0,1
    adbc:	9d a0 00 2b 	l.addi r13,r0,43
    adc0:	03 ff ff 06 	l.j a9d8 <_vfiprintf_r+0x1b8>
    adc4:	aa 58 00 00 	l.ori r18,r24,0x0
    adc8:	ab 9c 00 80 	l.ori r28,r28,0x80
    adcc:	03 ff ff 03 	l.j a9d8 <_vfiprintf_r+0x1b8>
    add0:	aa 58 00 00 	l.ori r18,r24,0x0
    add4:	a9 78 00 00 	l.ori r11,r24,0x0
    add8:	9c 40 00 00 	l.addi r2,r0,0
    addc:	9c 64 ff d0 	l.addi r3,r4,-48
    ade0:	e0 42 10 00 	l.add r2,r2,r2
    ade4:	90 8b 00 00 	l.lbs r4,0(r11)
    ade8:	b9 62 00 02 	l.slli r11,r2,0x2
    adec:	9f 18 00 01 	l.addi r24,r24,1
    adf0:	e0 42 58 00 	l.add r2,r2,r11
    adf4:	e0 43 10 00 	l.add r2,r3,r2
    adf8:	9c 64 ff d0 	l.addi r3,r4,-48
    adfc:	bc a3 00 09 	l.sfleui r3,9
    ae00:	13 ff ff f8 	l.bf ade0 <_vfiprintf_r+0x5c0>
    ae04:	a9 78 00 00 	l.ori r11,r24,0x0
    ae08:	03 ff fe f7 	l.j a9e4 <_vfiprintf_r+0x1c4>
    ae0c:	9c 64 ff e0 	l.addi r3,r4,-32
    ae10:	bc 05 00 00 	l.sfeqi r5,0
    ae14:	0c 00 03 7b 	l.bnf bc00 <_vfiprintf_r+0x13e0>
    ae18:	15 00 00 00 	l.nop 0x0
    ae1c:	ab 9c 00 10 	l.ori r28,r28,0x10
    ae20:	a4 7c 00 10 	l.andi r3,r28,0x10
    ae24:	bc 03 00 00 	l.sfeqi r3,0
    ae28:	10 00 02 98 	l.bf b888 <_vfiprintf_r+0x1068>
    ae2c:	a4 7c 00 40 	l.andi r3,r28,0x40
    ae30:	85 01 00 1c 	l.lwz r8,28(r1)
    ae34:	9e 88 00 04 	l.addi r20,r8,4
    ae38:	87 48 00 00 	l.lwz r26,0(r8)
    ae3c:	bd 9a 00 00 	l.sfltsi r26,0
    ae40:	10 00 02 f5 	l.bf ba14 <_vfiprintf_r+0x11f4>
    ae44:	bd 86 00 00 	l.sfltsi r6,0
    ae48:	10 00 03 7c 	l.bf bc38 <_vfiprintf_r+0x1418>
    ae4c:	e0 60 d0 02 	l.sub r3,r0,r26
    ae50:	9c 80 ff 7f 	l.addi r4,r0,-129
    ae54:	e0 63 d0 04 	l.or r3,r3,r26
    ae58:	bd 83 00 00 	l.sfltsi r3,0
    ae5c:	10 00 03 77 	l.bf bc38 <_vfiprintf_r+0x1418>
    ae60:	e3 9c 20 03 	l.and r28,r28,r4
    ae64:	e0 60 30 02 	l.sub r3,r0,r6
    ae68:	e0 63 30 04 	l.or r3,r3,r6
    ae6c:	bd 83 00 00 	l.sfltsi r3,0
    ae70:	10 00 03 72 	l.bf bc38 <_vfiprintf_r+0x1418>
    ae74:	15 00 00 00 	l.nop 0x0
    ae78:	90 a1 00 29 	l.lbs r5,41(r1)
    ae7c:	03 ff ff 32 	l.j ab44 <_vfiprintf_r+0x324>
    ae80:	d4 01 a0 1c 	l.sw 28(r1),r20
    ae84:	bc 05 00 00 	l.sfeqi r5,0
    ae88:	0c 00 03 6a 	l.bnf bc30 <_vfiprintf_r+0x1410>
    ae8c:	15 00 00 00 	l.nop 0x0
    ae90:	ab 9c 00 10 	l.ori r28,r28,0x10
    ae94:	a4 9c 00 10 	l.andi r4,r28,0x10
    ae98:	bc 04 00 00 	l.sfeqi r4,0
    ae9c:	0c 00 00 f7 	l.bnf b278 <_vfiprintf_r+0xa58>
    aea0:	9c 60 00 00 	l.addi r3,r0,0
    aea4:	a4 7c 00 40 	l.andi r3,r28,0x40
    aea8:	bc 03 00 00 	l.sfeqi r3,0
    aeac:	10 00 02 36 	l.bf b784 <_vfiprintf_r+0xf64>
    aeb0:	85 01 00 1c 	l.lwz r8,28(r1)
    aeb4:	d8 01 20 29 	l.sb 41(r1),r4
    aeb8:	84 68 00 00 	l.lwz r3,0(r8)
    aebc:	bd 66 00 00 	l.sfgesi r6,0
    aec0:	9d 68 00 04 	l.addi r11,r8,4
    aec4:	0c 00 00 fe 	l.bnf b2bc <_vfiprintf_r+0xa9c>
    aec8:	a4 63 ff ff 	l.andi r3,r3,0xffff
    aecc:	e0 80 18 02 	l.sub r4,r0,r3
    aed0:	9d 00 ff 7f 	l.addi r8,r0,-129
    aed4:	e0 84 18 04 	l.or r4,r4,r3
    aed8:	bd 84 00 00 	l.sfltsi r4,0
    aedc:	10 00 00 f8 	l.bf b2bc <_vfiprintf_r+0xa9c>
    aee0:	e3 9c 40 03 	l.and r28,r28,r8
    aee4:	e0 80 30 02 	l.sub r4,r0,r6
    aee8:	e0 84 30 04 	l.or r4,r4,r6
    aeec:	bd 64 00 00 	l.sfgesi r4,0
    aef0:	0c 00 00 f3 	l.bnf b2bc <_vfiprintf_r+0xa9c>
    aef4:	d4 01 58 1c 	l.sw 28(r1),r11
    aef8:	a4 7c 00 01 	l.andi r3,r28,0x1
    aefc:	bc 23 00 00 	l.sfnei r3,0
    af00:	10 00 02 35 	l.bf b7d4 <_vfiprintf_r+0xfb4>
    af04:	15 00 00 00 	l.nop 0x0
    af08:	a8 a3 00 00 	l.ori r5,r3,0x0
    af0c:	aa 5e 00 00 	l.ori r18,r30,0x0
    af10:	03 ff ff 10 	l.j ab50 <_vfiprintf_r+0x330>
    af14:	ab 43 00 00 	l.ori r26,r3,0x0
    af18:	bc 05 00 00 	l.sfeqi r5,0
    af1c:	0c 00 03 43 	l.bnf bc28 <_vfiprintf_r+0x1408>
    af20:	15 00 00 00 	l.nop 0x0
    af24:	ab 9c 00 10 	l.ori r28,r28,0x10
    af28:	a4 bc 00 10 	l.andi r5,r28,0x10
    af2c:	bc 05 00 00 	l.sfeqi r5,0
    af30:	0c 00 02 2f 	l.bnf b7ec <_vfiprintf_r+0xfcc>
    af34:	85 01 00 1c 	l.lwz r8,28(r1)
    af38:	a4 7c 00 40 	l.andi r3,r28,0x40
    af3c:	bc 03 00 00 	l.sfeqi r3,0
    af40:	10 00 01 fe 	l.bf b738 <_vfiprintf_r+0xf18>
    af44:	bd 86 00 00 	l.sfltsi r6,0
    af48:	85 01 00 1c 	l.lwz r8,28(r1)
    af4c:	d8 01 28 29 	l.sb 41(r1),r5
    af50:	87 48 00 00 	l.lwz r26,0(r8)
    af54:	bd 66 00 00 	l.sfgesi r6,0
    af58:	9e 88 00 04 	l.addi r20,r8,4
    af5c:	0c 00 02 02 	l.bnf b764 <_vfiprintf_r+0xf44>
    af60:	a7 5a ff ff 	l.andi r26,r26,0xffff
    af64:	e0 60 d0 02 	l.sub r3,r0,r26
    af68:	9d 00 ff 7f 	l.addi r8,r0,-129
    af6c:	e0 63 d0 04 	l.or r3,r3,r26
    af70:	bd 83 00 00 	l.sfltsi r3,0
    af74:	10 00 01 fb 	l.bf b760 <_vfiprintf_r+0xf40>
    af78:	e3 9c 40 03 	l.and r28,r28,r8
    af7c:	e0 60 30 02 	l.sub r3,r0,r6
    af80:	e0 63 30 04 	l.or r3,r3,r6
    af84:	b8 63 00 5f 	l.srli r3,r3,0x1f
    af88:	bc 23 00 00 	l.sfnei r3,0
    af8c:	10 00 01 f5 	l.bf b760 <_vfiprintf_r+0xf40>
    af90:	a8 a3 00 00 	l.ori r5,r3,0x0
    af94:	03 ff fe ec 	l.j ab44 <_vfiprintf_r+0x324>
    af98:	d4 01 a0 1c 	l.sw 28(r1),r20
    af9c:	bc 05 00 00 	l.sfeqi r5,0
    afa0:	0c 00 03 20 	l.bnf bc20 <_vfiprintf_r+0x1400>
    afa4:	15 00 00 00 	l.nop 0x0
    afa8:	a4 7c 00 10 	l.andi r3,r28,0x10
    afac:	19 60 00 01 	l.movhi r11,0x1
    afb0:	bc 03 00 00 	l.sfeqi r3,0
    afb4:	10 00 00 7f 	l.bf b1b0 <_vfiprintf_r+0x990>
    afb8:	a9 6b 19 8e 	l.ori r11,r11,0x198e
    afbc:	85 01 00 1c 	l.lwz r8,28(r1)
    afc0:	84 68 00 00 	l.lwz r3,0(r8)
    afc4:	9d 08 00 04 	l.addi r8,r8,4
    afc8:	d4 01 40 1c 	l.sw 28(r1),r8
    afcc:	a4 bc 00 01 	l.andi r5,r28,0x1
    afd0:	bc 25 00 00 	l.sfnei r5,0
    afd4:	0c 00 02 14 	l.bnf b824 <_vfiprintf_r+0x1004>
    afd8:	bd 86 00 00 	l.sfltsi r6,0
    afdc:	bc 23 00 00 	l.sfnei r3,0
    afe0:	10 00 02 6a 	l.bf b988 <_vfiprintf_r+0x1168>
    afe4:	9d 00 00 00 	l.addi r8,r0,0
    afe8:	bd 86 00 00 	l.sfltsi r6,0
    afec:	10 00 00 07 	l.bf b008 <_vfiprintf_r+0x7e8>
    aff0:	d8 01 18 29 	l.sb 41(r1),r3
    aff4:	9d 00 ff 7f 	l.addi r8,r0,-129
    aff8:	bc 26 00 00 	l.sfnei r6,0
    affc:	a8 a6 00 00 	l.ori r5,r6,0x0
    b000:	0f ff fe d1 	l.bnf ab44 <_vfiprintf_r+0x324>
    b004:	e3 9c 40 03 	l.and r28,r28,r8
    b008:	aa 5e 00 00 	l.ori r18,r30,0x0
    b00c:	a4 83 00 0f 	l.andi r4,r3,0xf
    b010:	b8 63 00 44 	l.srli r3,r3,0x4
    b014:	e0 8b 20 00 	l.add r4,r11,r4
    b018:	9e 52 ff ff 	l.addi r18,r18,-1
    b01c:	8c 84 00 00 	l.lbz r4,0(r4)
    b020:	bc 23 00 00 	l.sfnei r3,0
    b024:	13 ff ff fa 	l.bf b00c <_vfiprintf_r+0x7ec>
    b028:	d8 12 20 00 	l.sb 0(r18),r4
    b02c:	e3 5e 90 02 	l.sub r26,r30,r18
    b030:	03 ff fe c8 	l.j ab50 <_vfiprintf_r+0x330>
    b034:	a8 a3 00 00 	l.ori r5,r3,0x0
    b038:	85 01 00 1c 	l.lwz r8,28(r1)
    b03c:	9e 80 00 01 	l.addi r20,r0,1
    b040:	84 68 00 00 	l.lwz r3,0(r8)
    b044:	9d 08 00 04 	l.addi r8,r8,4
    b048:	d8 01 18 38 	l.sb 56(r1),r3
    b04c:	9c 60 00 00 	l.addi r3,r0,0
    b050:	d4 01 40 1c 	l.sw 28(r1),r8
    b054:	d8 01 18 29 	l.sb 41(r1),r3
    b058:	ab 54 00 00 	l.ori r26,r20,0x0
    b05c:	9e 41 00 38 	l.addi r18,r1,56
    b060:	03 ff fe c4 	l.j ab70 <_vfiprintf_r+0x350>
    b064:	9c c0 00 00 	l.addi r6,r0,0
    b068:	bc 05 00 00 	l.sfeqi r5,0
    b06c:	13 ff ff 6e 	l.bf ae24 <_vfiprintf_r+0x604>
    b070:	a4 7c 00 10 	l.andi r3,r28,0x10
    b074:	03 ff ff 6c 	l.j ae24 <_vfiprintf_r+0x604>
    b078:	d8 01 68 29 	l.sb 41(r1),r13
    b07c:	85 01 00 1c 	l.lwz r8,28(r1)
    b080:	9c 60 00 00 	l.addi r3,r0,0
    b084:	86 48 00 00 	l.lwz r18,0(r8)
    b088:	d8 01 18 29 	l.sb 41(r1),r3
    b08c:	bc 32 00 00 	l.sfnei r18,0
    b090:	0c 00 02 b3 	l.bnf bb5c <_vfiprintf_r+0x133c>
    b094:	9d 08 00 04 	l.addi r8,r8,4
    b098:	bd 86 00 00 	l.sfltsi r6,0
    b09c:	10 00 02 92 	l.bf bae4 <_vfiprintf_r+0x12c4>
    b0a0:	9c 80 00 00 	l.addi r4,r0,0
    b0a4:	a8 a6 00 00 	l.ori r5,r6,0x0
    b0a8:	a8 72 00 00 	l.ori r3,r18,0x0
    b0ac:	d4 01 30 00 	l.sw 0(r1),r6
    b0b0:	d4 01 38 10 	l.sw 16(r1),r7
    b0b4:	07 ff f6 3a 	l.jal 899c <memchr>
    b0b8:	d4 01 40 14 	l.sw 20(r1),r8
    b0bc:	bc 0b 00 00 	l.sfeqi r11,0
    b0c0:	84 c1 00 00 	l.lwz r6,0(r1)
    b0c4:	84 e1 00 10 	l.lwz r7,16(r1)
    b0c8:	10 00 02 bd 	l.bf bbbc <_vfiprintf_r+0x139c>
    b0cc:	85 01 00 14 	l.lwz r8,20(r1)
    b0d0:	e3 4b 90 02 	l.sub r26,r11,r18
    b0d4:	90 a1 00 29 	l.lbs r5,41(r1)
    b0d8:	d4 01 40 1c 	l.sw 28(r1),r8
    b0dc:	03 ff fe 9d 	l.j ab50 <_vfiprintf_r+0x330>
    b0e0:	9c c0 00 00 	l.addi r6,r0,0
    b0e4:	bc 05 00 00 	l.sfeqi r5,0
    b0e8:	13 ff ff 91 	l.bf af2c <_vfiprintf_r+0x70c>
    b0ec:	a4 bc 00 10 	l.andi r5,r28,0x10
    b0f0:	03 ff ff 8f 	l.j af2c <_vfiprintf_r+0x70c>
    b0f4:	d8 01 68 29 	l.sb 41(r1),r13
    b0f8:	90 98 00 00 	l.lbs r4,0(r24)
    b0fc:	bc 04 00 2a 	l.sfeqi r4,42
    b100:	10 00 02 b6 	l.bf bbd8 <_vfiprintf_r+0x13b8>
    b104:	9e 58 00 01 	l.addi r18,r24,1
    b108:	9c 64 ff d0 	l.addi r3,r4,-48
    b10c:	aa 32 00 00 	l.ori r17,r18,0x0
    b110:	bc a3 00 09 	l.sfleui r3,9
    b114:	ab 12 00 00 	l.ori r24,r18,0x0
    b118:	0f ff fe 32 	l.bnf a9e0 <_vfiprintf_r+0x1c0>
    b11c:	9c c0 00 00 	l.addi r6,r0,0
    b120:	e0 c6 30 00 	l.add r6,r6,r6
    b124:	90 91 00 00 	l.lbs r4,0(r17)
    b128:	b9 66 00 02 	l.slli r11,r6,0x2
    b12c:	9f 11 00 01 	l.addi r24,r17,1
    b130:	e0 c6 58 00 	l.add r6,r6,r11
    b134:	e0 c6 18 00 	l.add r6,r6,r3
    b138:	9c 64 ff d0 	l.addi r3,r4,-48
    b13c:	bc a3 00 09 	l.sfleui r3,9
    b140:	13 ff ff f8 	l.bf b120 <_vfiprintf_r+0x900>
    b144:	aa 38 00 00 	l.ori r17,r24,0x0
    b148:	bd 66 00 00 	l.sfgesi r6,0
    b14c:	13 ff fe 26 	l.bf a9e4 <_vfiprintf_r+0x1c4>
    b150:	9c 64 ff e0 	l.addi r3,r4,-32
    b154:	03 ff fe 24 	l.j a9e4 <_vfiprintf_r+0x1c4>
    b158:	9c c0 ff ff 	l.addi r6,r0,-1
    b15c:	bc 0d 00 00 	l.sfeqi r13,0
    b160:	0f ff fe 30 	l.bnf aa20 <_vfiprintf_r+0x200>
    b164:	15 00 00 00 	l.nop 0x0
    b168:	9c a0 00 01 	l.addi r5,r0,1
    b16c:	9d a0 00 20 	l.addi r13,r0,32
    b170:	03 ff fe 1a 	l.j a9d8 <_vfiprintf_r+0x1b8>
    b174:	aa 58 00 00 	l.ori r18,r24,0x0
    b178:	ab 9c 00 01 	l.ori r28,r28,0x1
    b17c:	03 ff fe 17 	l.j a9d8 <_vfiprintf_r+0x1b8>
    b180:	aa 58 00 00 	l.ori r18,r24,0x0
    b184:	ab 9c 00 40 	l.ori r28,r28,0x40
    b188:	03 ff fe 14 	l.j a9d8 <_vfiprintf_r+0x1b8>
    b18c:	aa 58 00 00 	l.ori r18,r24,0x0
    b190:	bc 05 00 00 	l.sfeqi r5,0
    b194:	0c 00 02 9f 	l.bnf bc10 <_vfiprintf_r+0x13f0>
    b198:	15 00 00 00 	l.nop 0x0
    b19c:	a4 7c 00 10 	l.andi r3,r28,0x10
    b1a0:	19 60 00 01 	l.movhi r11,0x1
    b1a4:	bc 03 00 00 	l.sfeqi r3,0
    b1a8:	0f ff ff 85 	l.bnf afbc <_vfiprintf_r+0x79c>
    b1ac:	a9 6b 19 9f 	l.ori r11,r11,0x199f
    b1b0:	85 01 00 1c 	l.lwz r8,28(r1)
    b1b4:	a4 7c 00 40 	l.andi r3,r28,0x40
    b1b8:	9d 08 00 04 	l.addi r8,r8,4
    b1bc:	bc 03 00 00 	l.sfeqi r3,0
    b1c0:	84 68 ff fc 	l.lwz r3,-4(r8)
    b1c4:	13 ff ff 82 	l.bf afcc <_vfiprintf_r+0x7ac>
    b1c8:	d4 01 40 1c 	l.sw 28(r1),r8
    b1cc:	03 ff ff 80 	l.j afcc <_vfiprintf_r+0x7ac>
    b1d0:	a4 63 ff ff 	l.andi r3,r3,0xffff
    b1d4:	bc 05 00 00 	l.sfeqi r5,0
    b1d8:	0c 00 02 8c 	l.bnf bc08 <_vfiprintf_r+0x13e8>
    b1dc:	15 00 00 00 	l.nop 0x0
    b1e0:	a4 5c 00 10 	l.andi r2,r28,0x10
    b1e4:	bc 02 00 00 	l.sfeqi r2,0
    b1e8:	0c 00 00 1e 	l.bnf b260 <_vfiprintf_r+0xa40>
    b1ec:	85 01 00 1c 	l.lwz r8,28(r1)
    b1f0:	a5 fc 00 40 	l.andi r15,r28,0x40
    b1f4:	bc 0f 00 00 	l.sfeqi r15,0
    b1f8:	10 00 00 1a 	l.bf b260 <_vfiprintf_r+0xa40>
    b1fc:	15 00 00 00 	l.nop 0x0
    b200:	84 48 00 00 	l.lwz r2,0(r8)
    b204:	9d 08 00 04 	l.addi r8,r8,4
    b208:	d4 01 40 1c 	l.sw 28(r1),r8
    b20c:	85 01 00 20 	l.lwz r8,32(r1)
    b210:	03 ff fd bc 	l.j a900 <_vfiprintf_r+0xe0>
    b214:	dc 02 40 00 	l.sh 0(r2),r8
    b218:	bc 05 00 00 	l.sfeqi r5,0
    b21c:	13 ff ff 1f 	l.bf ae98 <_vfiprintf_r+0x678>
    b220:	a4 9c 00 10 	l.andi r4,r28,0x10
    b224:	03 ff ff 1d 	l.j ae98 <_vfiprintf_r+0x678>
    b228:	d8 01 68 29 	l.sb 41(r1),r13
    b22c:	bc 05 00 00 	l.sfeqi r5,0
    b230:	0c 00 02 7a 	l.bnf bc18 <_vfiprintf_r+0x13f8>
    b234:	15 00 00 00 	l.nop 0x0
    b238:	bc 04 00 00 	l.sfeqi r4,0
    b23c:	10 00 02 21 	l.bf bac0 <_vfiprintf_r+0x12a0>
    b240:	9e 80 00 01 	l.addi r20,r0,1
    b244:	9d 00 00 00 	l.addi r8,r0,0
    b248:	d8 01 20 38 	l.sb 56(r1),r4
    b24c:	d8 01 40 29 	l.sb 41(r1),r8
    b250:	ab 54 00 00 	l.ori r26,r20,0x0
    b254:	9e 41 00 38 	l.addi r18,r1,56
    b258:	03 ff fe 46 	l.j ab70 <_vfiprintf_r+0x350>
    b25c:	9c c0 00 00 	l.addi r6,r0,0
    b260:	84 48 00 00 	l.lwz r2,0(r8)
    b264:	9d 08 00 04 	l.addi r8,r8,4
    b268:	d4 01 40 1c 	l.sw 28(r1),r8
    b26c:	85 01 00 20 	l.lwz r8,32(r1)
    b270:	03 ff fd a4 	l.j a900 <_vfiprintf_r+0xe0>
    b274:	d4 02 40 00 	l.sw 0(r2),r8
    b278:	85 01 00 1c 	l.lwz r8,28(r1)
    b27c:	d8 01 18 29 	l.sb 41(r1),r3
    b280:	bd 66 00 00 	l.sfgesi r6,0
    b284:	9d 68 00 04 	l.addi r11,r8,4
    b288:	0c 00 00 0d 	l.bnf b2bc <_vfiprintf_r+0xa9c>
    b28c:	84 68 00 00 	l.lwz r3,0(r8)
    b290:	e0 80 18 02 	l.sub r4,r0,r3
    b294:	9c a0 ff 7f 	l.addi r5,r0,-129
    b298:	e0 84 18 04 	l.or r4,r4,r3
    b29c:	bd 84 00 00 	l.sfltsi r4,0
    b2a0:	10 00 00 07 	l.bf b2bc <_vfiprintf_r+0xa9c>
    b2a4:	e3 9c 28 03 	l.and r28,r28,r5
    b2a8:	e0 80 30 02 	l.sub r4,r0,r6
    b2ac:	e0 84 30 04 	l.or r4,r4,r6
    b2b0:	bd 84 00 00 	l.sfltsi r4,0
    b2b4:	0c 00 01 44 	l.bnf b7c4 <_vfiprintf_r+0xfa4>
    b2b8:	15 00 00 00 	l.nop 0x0
    b2bc:	a8 be 00 00 	l.ori r5,r30,0x0
    b2c0:	a4 83 00 07 	l.andi r4,r3,0x7
    b2c4:	b8 63 00 43 	l.srli r3,r3,0x3
    b2c8:	9c 84 00 30 	l.addi r4,r4,48
    b2cc:	9c a5 ff ff 	l.addi r5,r5,-1
    b2d0:	bc 23 00 00 	l.sfnei r3,0
    b2d4:	13 ff ff fb 	l.bf b2c0 <_vfiprintf_r+0xaa0>
    b2d8:	d8 05 20 00 	l.sb 0(r5),r4
    b2dc:	ac 84 00 30 	l.xori r4,r4,48
    b2e0:	a4 84 00 ff 	l.andi r4,r4,0xff
    b2e4:	bc 04 00 00 	l.sfeqi r4,0
    b2e8:	10 00 01 f1 	l.bf baac <_vfiprintf_r+0x128c>
    b2ec:	a4 9c 00 01 	l.andi r4,r28,0x1
    b2f0:	bc 24 00 00 	l.sfnei r4,0
    b2f4:	0c 00 01 ee 	l.bnf baac <_vfiprintf_r+0x128c>
    b2f8:	9c 80 00 30 	l.addi r4,r0,48
    b2fc:	9e 45 ff ff 	l.addi r18,r5,-1
    b300:	e3 5e 90 02 	l.sub r26,r30,r18
    b304:	db e5 27 ff 	l.sb -1(r5),r4
    b308:	d4 01 58 1c 	l.sw 28(r1),r11
    b30c:	03 ff fe 11 	l.j ab50 <_vfiprintf_r+0x330>
    b310:	a8 a3 00 00 	l.ori r5,r3,0x0
    b314:	9c a1 00 2c 	l.addi r5,r1,44
    b318:	a8 8e 00 00 	l.ori r4,r14,0x0
    b31c:	a8 76 00 00 	l.ori r3,r22,0x0
    b320:	d4 01 30 00 	l.sw 0(r1),r6
    b324:	d4 01 68 08 	l.sw 8(r1),r13
    b328:	d4 01 88 04 	l.sw 4(r1),r17
    b32c:	d4 01 98 10 	l.sw 16(r1),r19
    b330:	d4 01 a8 0c 	l.sw 12(r1),r21
    b334:	07 ff fc e3 	l.jal a6c0 <__sprint_r.part.0>
    b338:	d4 01 b8 14 	l.sw 20(r1),r23
    b33c:	bc 2b 00 00 	l.sfnei r11,0
    b340:	84 c1 00 00 	l.lwz r6,0(r1)
    b344:	85 a1 00 08 	l.lwz r13,8(r1)
    b348:	86 21 00 04 	l.lwz r17,4(r1)
    b34c:	86 61 00 10 	l.lwz r19,16(r1)
    b350:	86 a1 00 0c 	l.lwz r21,12(r1)
    b354:	10 00 00 9b 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b358:	86 e1 00 14 	l.lwz r23,20(r1)
    b35c:	85 61 00 30 	l.lwz r11,48(r1)
    b360:	84 61 00 34 	l.lwz r3,52(r1)
    b364:	9c ab 00 01 	l.addi r5,r11,1
    b368:	03 ff fe 18 	l.j abc8 <_vfiprintf_r+0x3a8>
    b36c:	a8 fe 00 00 	l.ori r7,r30,0x0
    b370:	84 61 00 34 	l.lwz r3,52(r1)
    b374:	9d 65 00 01 	l.addi r11,r5,1
    b378:	90 81 00 29 	l.lbs r4,41(r1)
    b37c:	bc 04 00 00 	l.sfeqi r4,0
    b380:	13 ff fe 33 	l.bf ac4c <_vfiprintf_r+0x42c>
    b384:	bc 15 00 00 	l.sfeqi r21,0
    b388:	9c 63 00 01 	l.addi r3,r3,1
    b38c:	9c 81 00 29 	l.addi r4,r1,41
    b390:	9c a0 00 01 	l.addi r5,r0,1
    b394:	d4 07 20 00 	l.sw 0(r7),r4
    b398:	d4 07 28 04 	l.sw 4(r7),r5
    b39c:	d4 01 18 34 	l.sw 52(r1),r3
    b3a0:	bd 4b 00 07 	l.sfgtsi r11,7
    b3a4:	0c 00 00 cb 	l.bnf b6d0 <_vfiprintf_r+0xeb0>
    b3a8:	d4 01 58 30 	l.sw 48(r1),r11
    b3ac:	bc 23 00 00 	l.sfnei r3,0
    b3b0:	10 00 01 45 	l.bf b8c4 <_vfiprintf_r+0x10a4>
    b3b4:	bc 35 00 00 	l.sfnei r21,0
    b3b8:	10 00 00 cc 	l.bf b6e8 <_vfiprintf_r+0xec8>
    b3bc:	15 00 00 00 	l.nop 0x0
    b3c0:	a8 a3 00 00 	l.ori r5,r3,0x0
    b3c4:	9d 60 00 01 	l.addi r11,r0,1
    b3c8:	a8 fe 00 00 	l.ori r7,r30,0x0
    b3cc:	bc 33 00 80 	l.sfnei r19,128
    b3d0:	0f ff fe 32 	l.bnf ac98 <_vfiprintf_r+0x478>
    b3d4:	e2 22 a0 02 	l.sub r17,r2,r20
    b3d8:	e0 c6 d0 02 	l.sub r6,r6,r26
    b3dc:	bd a6 00 00 	l.sflesi r6,0
    b3e0:	13 ff fe 5b 	l.bf ad4c <_vfiprintf_r+0x52c>
    b3e4:	15 00 00 00 	l.nop 0x0
    b3e8:	19 a0 00 01 	l.movhi r13,0x1
    b3ec:	bd a6 00 10 	l.sflesi r6,16
    b3f0:	10 00 00 1b 	l.bf b45c <_vfiprintf_r+0xc3c>
    b3f4:	a9 ad 1e 48 	l.ori r13,r13,0x1e48
    b3f8:	00 00 00 09 	l.j b41c <_vfiprintf_r+0xbfc>
    b3fc:	9e 20 00 10 	l.addi r17,r0,16
    b400:	9d 65 00 02 	l.addi r11,r5,2
    b404:	9c e7 00 08 	l.addi r7,r7,8
    b408:	a8 a4 00 00 	l.ori r5,r4,0x0
    b40c:	9c c6 ff f0 	l.addi r6,r6,-16
    b410:	bd 46 00 10 	l.sfgtsi r6,16
    b414:	0c 00 00 12 	l.bnf b45c <_vfiprintf_r+0xc3c>
    b418:	15 00 00 00 	l.nop 0x0
    b41c:	9c 85 00 01 	l.addi r4,r5,1
    b420:	9c 63 00 10 	l.addi r3,r3,16
    b424:	d4 07 68 00 	l.sw 0(r7),r13
    b428:	d4 07 88 04 	l.sw 4(r7),r17
    b42c:	d4 01 18 34 	l.sw 52(r1),r3
    b430:	bd 44 00 07 	l.sfgtsi r4,7
    b434:	0f ff ff f3 	l.bnf b400 <_vfiprintf_r+0xbe0>
    b438:	d4 01 20 30 	l.sw 48(r1),r4
    b43c:	bc 23 00 00 	l.sfnei r3,0
    b440:	10 00 00 67 	l.bf b5dc <_vfiprintf_r+0xdbc>
    b444:	9d 60 00 01 	l.addi r11,r0,1
    b448:	9c c6 ff f0 	l.addi r6,r6,-16
    b44c:	bd 46 00 10 	l.sfgtsi r6,16
    b450:	a8 a3 00 00 	l.ori r5,r3,0x0
    b454:	13 ff ff f2 	l.bf b41c <_vfiprintf_r+0xbfc>
    b458:	a8 fe 00 00 	l.ori r7,r30,0x0
    b45c:	e0 63 30 00 	l.add r3,r3,r6
    b460:	d4 07 68 00 	l.sw 0(r7),r13
    b464:	d4 07 30 04 	l.sw 4(r7),r6
    b468:	d4 01 18 34 	l.sw 52(r1),r3
    b46c:	bd 4b 00 07 	l.sfgtsi r11,7
    b470:	10 00 00 a8 	l.bf b710 <_vfiprintf_r+0xef0>
    b474:	d4 01 58 30 	l.sw 48(r1),r11
    b478:	9c e7 00 08 	l.addi r7,r7,8
    b47c:	9d 6b 00 01 	l.addi r11,r11,1
    b480:	e0 7a 18 00 	l.add r3,r26,r3
    b484:	d4 07 90 00 	l.sw 0(r7),r18
    b488:	d4 07 d0 04 	l.sw 4(r7),r26
    b48c:	d4 01 18 34 	l.sw 52(r1),r3
    b490:	bd 4b 00 07 	l.sfgtsi r11,7
    b494:	13 ff fe 35 	l.bf ad68 <_vfiprintf_r+0x548>
    b498:	d4 01 58 30 	l.sw 48(r1),r11
    b49c:	9c e7 00 08 	l.addi r7,r7,8
    b4a0:	a5 fc 00 04 	l.andi r15,r28,0x4
    b4a4:	bc 0f 00 00 	l.sfeqi r15,0
    b4a8:	10 00 00 38 	l.bf b588 <_vfiprintf_r+0xd68>
    b4ac:	e5 62 a0 00 	l.sfges r2,r20
    b4b0:	e2 42 a0 02 	l.sub r18,r2,r20
    b4b4:	bd b2 00 00 	l.sflesi r18,0
    b4b8:	10 00 00 34 	l.bf b588 <_vfiprintf_r+0xd68>
    b4bc:	e5 62 a0 00 	l.sfges r2,r20
    b4c0:	bd 52 00 10 	l.sfgtsi r18,16
    b4c4:	0c 00 01 b5 	l.bnf bb98 <_vfiprintf_r+0x1378>
    b4c8:	15 00 00 00 	l.nop 0x0
    b4cc:	1a 20 00 01 	l.movhi r17,0x1
    b4d0:	84 a1 00 30 	l.lwz r5,48(r1)
    b4d4:	aa 31 1e 58 	l.ori r17,r17,0x1e58
    b4d8:	00 00 00 09 	l.j b4fc <_vfiprintf_r+0xcdc>
    b4dc:	9f 40 00 10 	l.addi r26,r0,16
    b4e0:	9c c5 00 02 	l.addi r6,r5,2
    b4e4:	9c e7 00 08 	l.addi r7,r7,8
    b4e8:	a8 a4 00 00 	l.ori r5,r4,0x0
    b4ec:	9e 52 ff f0 	l.addi r18,r18,-16
    b4f0:	bd 52 00 10 	l.sfgtsi r18,16
    b4f4:	0c 00 00 12 	l.bnf b53c <_vfiprintf_r+0xd1c>
    b4f8:	15 00 00 00 	l.nop 0x0
    b4fc:	9c 85 00 01 	l.addi r4,r5,1
    b500:	9c 63 00 10 	l.addi r3,r3,16
    b504:	d4 07 88 00 	l.sw 0(r7),r17
    b508:	d4 07 d0 04 	l.sw 4(r7),r26
    b50c:	d4 01 18 34 	l.sw 52(r1),r3
    b510:	bd 44 00 07 	l.sfgtsi r4,7
    b514:	0f ff ff f3 	l.bnf b4e0 <_vfiprintf_r+0xcc0>
    b518:	d4 01 20 30 	l.sw 48(r1),r4
    b51c:	bc 23 00 00 	l.sfnei r3,0
    b520:	10 00 00 40 	l.bf b620 <_vfiprintf_r+0xe00>
    b524:	9c c0 00 01 	l.addi r6,r0,1
    b528:	9e 52 ff f0 	l.addi r18,r18,-16
    b52c:	bd 52 00 10 	l.sfgtsi r18,16
    b530:	a8 a3 00 00 	l.ori r5,r3,0x0
    b534:	13 ff ff f2 	l.bf b4fc <_vfiprintf_r+0xcdc>
    b538:	a8 fe 00 00 	l.ori r7,r30,0x0
    b53c:	e0 63 90 00 	l.add r3,r3,r18
    b540:	d4 07 88 00 	l.sw 0(r7),r17
    b544:	d4 07 90 04 	l.sw 4(r7),r18
    b548:	d4 01 18 34 	l.sw 52(r1),r3
    b54c:	bd a6 00 07 	l.sflesi r6,7
    b550:	10 00 00 0d 	l.bf b584 <_vfiprintf_r+0xd64>
    b554:	d4 01 30 30 	l.sw 48(r1),r6
    b558:	bc 23 00 00 	l.sfnei r3,0
    b55c:	0f ff fe 0e 	l.bnf ad94 <_vfiprintf_r+0x574>
    b560:	e5 62 a0 00 	l.sfges r2,r20
    b564:	9c a1 00 2c 	l.addi r5,r1,44
    b568:	a8 8e 00 00 	l.ori r4,r14,0x0
    b56c:	07 ff fc 55 	l.jal a6c0 <__sprint_r.part.0>
    b570:	a8 76 00 00 	l.ori r3,r22,0x0
    b574:	bc 2b 00 00 	l.sfnei r11,0
    b578:	10 00 00 12 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b57c:	15 00 00 00 	l.nop 0x0
    b580:	84 61 00 34 	l.lwz r3,52(r1)
    b584:	e5 62 a0 00 	l.sfges r2,r20
    b588:	10 00 00 03 	l.bf b594 <_vfiprintf_r+0xd74>
    b58c:	85 01 00 20 	l.lwz r8,32(r1)
    b590:	a8 54 00 00 	l.ori r2,r20,0x0
    b594:	bc 23 00 00 	l.sfnei r3,0
    b598:	e1 08 10 00 	l.add r8,r8,r2
    b59c:	0f ff fe 03 	l.bnf ada8 <_vfiprintf_r+0x588>
    b5a0:	d4 01 40 20 	l.sw 32(r1),r8
    b5a4:	9c a1 00 2c 	l.addi r5,r1,44
    b5a8:	a8 8e 00 00 	l.ori r4,r14,0x0
    b5ac:	07 ff fc 45 	l.jal a6c0 <__sprint_r.part.0>
    b5b0:	a8 76 00 00 	l.ori r3,r22,0x0
    b5b4:	bc 2b 00 00 	l.sfnei r11,0
    b5b8:	0f ff fd fd 	l.bnf adac <_vfiprintf_r+0x58c>
    b5bc:	9c 40 00 00 	l.addi r2,r0,0
    b5c0:	94 4e 00 0c 	l.lhz r2,12(r14)
    b5c4:	a4 42 00 40 	l.andi r2,r2,0x40
    b5c8:	bc 22 00 00 	l.sfnei r2,0
    b5cc:	10 00 01 2d 	l.bf ba80 <_vfiprintf_r+0x1260>
    b5d0:	15 00 00 00 	l.nop 0x0
    b5d4:	03 ff fd 28 	l.j aa74 <_vfiprintf_r+0x254>
    b5d8:	85 61 00 20 	l.lwz r11,32(r1)
    b5dc:	9c a1 00 2c 	l.addi r5,r1,44
    b5e0:	a8 8e 00 00 	l.ori r4,r14,0x0
    b5e4:	a8 76 00 00 	l.ori r3,r22,0x0
    b5e8:	d4 01 30 00 	l.sw 0(r1),r6
    b5ec:	d4 01 68 08 	l.sw 8(r1),r13
    b5f0:	07 ff fc 34 	l.jal a6c0 <__sprint_r.part.0>
    b5f4:	d4 01 88 04 	l.sw 4(r1),r17
    b5f8:	bc 2b 00 00 	l.sfnei r11,0
    b5fc:	84 c1 00 00 	l.lwz r6,0(r1)
    b600:	85 a1 00 08 	l.lwz r13,8(r1)
    b604:	13 ff ff ef 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b608:	86 21 00 04 	l.lwz r17,4(r1)
    b60c:	84 a1 00 30 	l.lwz r5,48(r1)
    b610:	84 61 00 34 	l.lwz r3,52(r1)
    b614:	9d 65 00 01 	l.addi r11,r5,1
    b618:	03 ff ff 7d 	l.j b40c <_vfiprintf_r+0xbec>
    b61c:	a8 fe 00 00 	l.ori r7,r30,0x0
    b620:	9c a1 00 2c 	l.addi r5,r1,44
    b624:	a8 8e 00 00 	l.ori r4,r14,0x0
    b628:	a8 76 00 00 	l.ori r3,r22,0x0
    b62c:	07 ff fc 25 	l.jal a6c0 <__sprint_r.part.0>
    b630:	d4 01 88 04 	l.sw 4(r1),r17
    b634:	bc 2b 00 00 	l.sfnei r11,0
    b638:	13 ff ff e2 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b63c:	86 21 00 04 	l.lwz r17,4(r1)
    b640:	84 a1 00 30 	l.lwz r5,48(r1)
    b644:	84 61 00 34 	l.lwz r3,52(r1)
    b648:	9c c5 00 01 	l.addi r6,r5,1
    b64c:	03 ff ff a8 	l.j b4ec <_vfiprintf_r+0xccc>
    b650:	a8 fe 00 00 	l.ori r7,r30,0x0
    b654:	9c a1 00 2c 	l.addi r5,r1,44
    b658:	a8 8e 00 00 	l.ori r4,r14,0x0
    b65c:	a8 76 00 00 	l.ori r3,r22,0x0
    b660:	d4 01 30 00 	l.sw 0(r1),r6
    b664:	d4 01 68 08 	l.sw 8(r1),r13
    b668:	d4 01 88 04 	l.sw 4(r1),r17
    b66c:	07 ff fc 15 	l.jal a6c0 <__sprint_r.part.0>
    b670:	d4 01 a8 0c 	l.sw 12(r1),r21
    b674:	bc 2b 00 00 	l.sfnei r11,0
    b678:	84 c1 00 00 	l.lwz r6,0(r1)
    b67c:	85 a1 00 08 	l.lwz r13,8(r1)
    b680:	86 21 00 04 	l.lwz r17,4(r1)
    b684:	13 ff ff cf 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b688:	86 a1 00 0c 	l.lwz r21,12(r1)
    b68c:	84 a1 00 30 	l.lwz r5,48(r1)
    b690:	84 61 00 34 	l.lwz r3,52(r1)
    b694:	9e 65 00 01 	l.addi r19,r5,1
    b698:	03 ff fd 8c 	l.j acc8 <_vfiprintf_r+0x4a8>
    b69c:	a8 fe 00 00 	l.ori r7,r30,0x0
    b6a0:	bc 23 00 00 	l.sfnei r3,0
    b6a4:	10 00 00 e6 	l.bf ba3c <_vfiprintf_r+0x121c>
    b6a8:	90 81 00 29 	l.lbs r4,41(r1)
    b6ac:	bc 24 00 00 	l.sfnei r4,0
    b6b0:	0c 00 00 0c 	l.bnf b6e0 <_vfiprintf_r+0xec0>
    b6b4:	bc 35 00 00 	l.sfnei r21,0
    b6b8:	9d 60 00 01 	l.addi r11,r0,1
    b6bc:	9c 61 00 29 	l.addi r3,r1,41
    b6c0:	d4 01 58 64 	l.sw 100(r1),r11
    b6c4:	d4 01 18 60 	l.sw 96(r1),r3
    b6c8:	a8 fe 00 00 	l.ori r7,r30,0x0
    b6cc:	a8 6b 00 00 	l.ori r3,r11,0x0
    b6d0:	a8 ab 00 00 	l.ori r5,r11,0x0
    b6d4:	9c e7 00 08 	l.addi r7,r7,8
    b6d8:	03 ff fd 5c 	l.j ac48 <_vfiprintf_r+0x428>
    b6dc:	9d 6b 00 01 	l.addi r11,r11,1
    b6e0:	0c 00 00 ea 	l.bnf ba88 <_vfiprintf_r+0x1268>
    b6e4:	15 00 00 00 	l.nop 0x0
    b6e8:	9c 60 00 02 	l.addi r3,r0,2
    b6ec:	9c 81 00 2a 	l.addi r4,r1,42
    b6f0:	d4 01 18 64 	l.sw 100(r1),r3
    b6f4:	d4 01 20 60 	l.sw 96(r1),r4
    b6f8:	9d 60 00 01 	l.addi r11,r0,1
    b6fc:	a8 fe 00 00 	l.ori r7,r30,0x0
    b700:	a8 ab 00 00 	l.ori r5,r11,0x0
    b704:	9c e7 00 08 	l.addi r7,r7,8
    b708:	03 ff ff 31 	l.j b3cc <_vfiprintf_r+0xbac>
    b70c:	9d 6b 00 01 	l.addi r11,r11,1
    b710:	bc 23 00 00 	l.sfnei r3,0
    b714:	10 00 00 92 	l.bf b95c <_vfiprintf_r+0x113c>
    b718:	9c 80 00 01 	l.addi r4,r0,1
    b71c:	a8 7a 00 00 	l.ori r3,r26,0x0
    b720:	d4 01 90 60 	l.sw 96(r1),r18
    b724:	d4 01 d0 64 	l.sw 100(r1),r26
    b728:	d4 01 d0 34 	l.sw 52(r1),r26
    b72c:	d4 01 20 30 	l.sw 48(r1),r4
    b730:	03 ff ff 5b 	l.j b49c <_vfiprintf_r+0xc7c>
    b734:	a8 fe 00 00 	l.ori r7,r30,0x0
    b738:	d8 01 18 29 	l.sb 41(r1),r3
    b73c:	9e 88 00 04 	l.addi r20,r8,4
    b740:	10 00 01 03 	l.bf bb4c <_vfiprintf_r+0x132c>
    b744:	87 48 00 00 	l.lwz r26,0(r8)
    b748:	e0 60 d0 02 	l.sub r3,r0,r26
    b74c:	9c 80 ff 7f 	l.addi r4,r0,-129
    b750:	e0 63 d0 04 	l.or r3,r3,r26
    b754:	bd 83 00 00 	l.sfltsi r3,0
    b758:	0f ff fe 09 	l.bnf af7c <_vfiprintf_r+0x75c>
    b75c:	e3 9c 20 03 	l.and r28,r28,r4
    b760:	9c a0 00 00 	l.addi r5,r0,0
    b764:	bc 5a 00 09 	l.sfgtui r26,9
    b768:	10 00 00 95 	l.bf b9bc <_vfiprintf_r+0x119c>
    b76c:	9c 7a 00 30 	l.addi r3,r26,48
    b770:	d4 01 a0 1c 	l.sw 28(r1),r20
    b774:	87 41 00 24 	l.lwz r26,36(r1)
    b778:	d8 01 18 5f 	l.sb 95(r1),r3
    b77c:	03 ff fc f5 	l.j ab50 <_vfiprintf_r+0x330>
    b780:	9e 41 00 5f 	l.addi r18,r1,95
    b784:	d8 01 18 29 	l.sb 41(r1),r3
    b788:	bd 86 00 00 	l.sfltsi r6,0
    b78c:	9d 68 00 04 	l.addi r11,r8,4
    b790:	13 ff fe cb 	l.bf b2bc <_vfiprintf_r+0xa9c>
    b794:	84 68 00 00 	l.lwz r3,0(r8)
    b798:	e0 80 30 02 	l.sub r4,r0,r6
    b79c:	9c a0 ff 7f 	l.addi r5,r0,-129
    b7a0:	e0 84 30 04 	l.or r4,r4,r6
    b7a4:	bd 84 00 00 	l.sfltsi r4,0
    b7a8:	13 ff fe c5 	l.bf b2bc <_vfiprintf_r+0xa9c>
    b7ac:	e3 9c 28 03 	l.and r28,r28,r5
    b7b0:	e0 80 18 02 	l.sub r4,r0,r3
    b7b4:	e0 84 18 04 	l.or r4,r4,r3
    b7b8:	bd 84 00 00 	l.sfltsi r4,0
    b7bc:	13 ff fe c0 	l.bf b2bc <_vfiprintf_r+0xa9c>
    b7c0:	15 00 00 00 	l.nop 0x0
    b7c4:	a4 7c 00 01 	l.andi r3,r28,0x1
    b7c8:	bc 23 00 00 	l.sfnei r3,0
    b7cc:	0f ff fd cf 	l.bnf af08 <_vfiprintf_r+0x6e8>
    b7d0:	d4 01 58 1c 	l.sw 28(r1),r11
    b7d4:	9c a0 00 30 	l.addi r5,r0,48
    b7d8:	87 41 00 24 	l.lwz r26,36(r1)
    b7dc:	d8 01 28 5f 	l.sb 95(r1),r5
    b7e0:	9e 41 00 5f 	l.addi r18,r1,95
    b7e4:	03 ff fc db 	l.j ab50 <_vfiprintf_r+0x330>
    b7e8:	9c a0 00 00 	l.addi r5,r0,0
    b7ec:	9c a0 00 00 	l.addi r5,r0,0
    b7f0:	d8 01 28 29 	l.sb 41(r1),r5
    b7f4:	bd 66 00 00 	l.sfgesi r6,0
    b7f8:	9e 88 00 04 	l.addi r20,r8,4
    b7fc:	0f ff ff d9 	l.bnf b760 <_vfiprintf_r+0xf40>
    b800:	87 48 00 00 	l.lwz r26,0(r8)
    b804:	e0 60 d0 02 	l.sub r3,r0,r26
    b808:	9c a0 ff 7f 	l.addi r5,r0,-129
    b80c:	e0 63 d0 04 	l.or r3,r3,r26
    b810:	bd 83 00 00 	l.sfltsi r3,0
    b814:	0f ff fd da 	l.bnf af7c <_vfiprintf_r+0x75c>
    b818:	e3 9c 28 03 	l.and r28,r28,r5
    b81c:	03 ff ff d2 	l.j b764 <_vfiprintf_r+0xf44>
    b820:	9c a0 00 00 	l.addi r5,r0,0
    b824:	13 ff fd f9 	l.bf b008 <_vfiprintf_r+0x7e8>
    b828:	d8 01 28 29 	l.sb 41(r1),r5
    b82c:	e0 80 30 02 	l.sub r4,r0,r6
    b830:	9c a0 ff 7f 	l.addi r5,r0,-129
    b834:	e0 84 30 04 	l.or r4,r4,r6
    b838:	bd 84 00 00 	l.sfltsi r4,0
    b83c:	13 ff fd f3 	l.bf b008 <_vfiprintf_r+0x7e8>
    b840:	e3 9c 28 03 	l.and r28,r28,r5
    b844:	e0 a0 18 02 	l.sub r5,r0,r3
    b848:	e0 a5 18 04 	l.or r5,r5,r3
    b84c:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    b850:	bc 25 00 00 	l.sfnei r5,0
    b854:	0f ff fc bc 	l.bnf ab44 <_vfiprintf_r+0x324>
    b858:	aa 5e 00 00 	l.ori r18,r30,0x0
    b85c:	03 ff fd ed 	l.j b010 <_vfiprintf_r+0x7f0>
    b860:	a4 83 00 0f 	l.andi r4,r3,0xf
    b864:	9c a1 00 2c 	l.addi r5,r1,44
    b868:	a8 8e 00 00 	l.ori r4,r14,0x0
    b86c:	07 ff fb 95 	l.jal a6c0 <__sprint_r.part.0>
    b870:	a8 76 00 00 	l.ori r3,r22,0x0
    b874:	bc 2b 00 00 	l.sfnei r11,0
    b878:	13 ff ff 52 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b87c:	a8 fe 00 00 	l.ori r7,r30,0x0
    b880:	03 ff ff 08 	l.j b4a0 <_vfiprintf_r+0xc80>
    b884:	84 61 00 34 	l.lwz r3,52(r1)
    b888:	85 01 00 1c 	l.lwz r8,28(r1)
    b88c:	bc 03 00 00 	l.sfeqi r3,0
    b890:	10 00 00 69 	l.bf ba34 <_vfiprintf_r+0x1214>
    b894:	9e 88 00 04 	l.addi r20,r8,4
    b898:	03 ff fd 69 	l.j ae3c <_vfiprintf_r+0x61c>
    b89c:	9b 48 00 02 	l.lhs r26,2(r8)
    b8a0:	9c a1 00 2c 	l.addi r5,r1,44
    b8a4:	a8 8e 00 00 	l.ori r4,r14,0x0
    b8a8:	07 ff fb 86 	l.jal a6c0 <__sprint_r.part.0>
    b8ac:	a8 76 00 00 	l.ori r3,r22,0x0
    b8b0:	bc 2b 00 00 	l.sfnei r11,0
    b8b4:	13 ff ff 43 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b8b8:	a8 fe 00 00 	l.ori r7,r30,0x0
    b8bc:	03 ff fc 55 	l.j aa10 <_vfiprintf_r+0x1f0>
    b8c0:	85 01 00 20 	l.lwz r8,32(r1)
    b8c4:	9c a1 00 2c 	l.addi r5,r1,44
    b8c8:	a8 8e 00 00 	l.ori r4,r14,0x0
    b8cc:	a8 76 00 00 	l.ori r3,r22,0x0
    b8d0:	d4 01 30 00 	l.sw 0(r1),r6
    b8d4:	d4 01 98 10 	l.sw 16(r1),r19
    b8d8:	07 ff fb 7a 	l.jal a6c0 <__sprint_r.part.0>
    b8dc:	d4 01 a8 0c 	l.sw 12(r1),r21
    b8e0:	bc 2b 00 00 	l.sfnei r11,0
    b8e4:	84 c1 00 00 	l.lwz r6,0(r1)
    b8e8:	86 61 00 10 	l.lwz r19,16(r1)
    b8ec:	13 ff ff 35 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b8f0:	86 a1 00 0c 	l.lwz r21,12(r1)
    b8f4:	84 a1 00 30 	l.lwz r5,48(r1)
    b8f8:	84 61 00 34 	l.lwz r3,52(r1)
    b8fc:	9d 65 00 01 	l.addi r11,r5,1
    b900:	03 ff fc d2 	l.j ac48 <_vfiprintf_r+0x428>
    b904:	a8 fe 00 00 	l.ori r7,r30,0x0
    b908:	9c a1 00 2c 	l.addi r5,r1,44
    b90c:	a8 8e 00 00 	l.ori r4,r14,0x0
    b910:	a8 76 00 00 	l.ori r3,r22,0x0
    b914:	d4 01 30 00 	l.sw 0(r1),r6
    b918:	07 ff fb 6a 	l.jal a6c0 <__sprint_r.part.0>
    b91c:	d4 01 98 10 	l.sw 16(r1),r19
    b920:	bc 2b 00 00 	l.sfnei r11,0
    b924:	84 c1 00 00 	l.lwz r6,0(r1)
    b928:	13 ff ff 26 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b92c:	86 61 00 10 	l.lwz r19,16(r1)
    b930:	84 a1 00 30 	l.lwz r5,48(r1)
    b934:	84 61 00 34 	l.lwz r3,52(r1)
    b938:	9d 65 00 01 	l.addi r11,r5,1
    b93c:	03 ff fe a4 	l.j b3cc <_vfiprintf_r+0xbac>
    b940:	a8 fe 00 00 	l.ori r7,r30,0x0
    b944:	bc 23 00 00 	l.sfnei r3,0
    b948:	10 00 00 70 	l.bf bb08 <_vfiprintf_r+0x12e8>
    b94c:	9d 60 00 01 	l.addi r11,r0,1
    b950:	a8 a3 00 00 	l.ori r5,r3,0x0
    b954:	03 ff fe a1 	l.j b3d8 <_vfiprintf_r+0xbb8>
    b958:	a8 fe 00 00 	l.ori r7,r30,0x0
    b95c:	9c a1 00 2c 	l.addi r5,r1,44
    b960:	a8 8e 00 00 	l.ori r4,r14,0x0
    b964:	07 ff fb 57 	l.jal a6c0 <__sprint_r.part.0>
    b968:	a8 76 00 00 	l.ori r3,r22,0x0
    b96c:	bc 2b 00 00 	l.sfnei r11,0
    b970:	13 ff ff 14 	l.bf b5c0 <_vfiprintf_r+0xda0>
    b974:	85 61 00 30 	l.lwz r11,48(r1)
    b978:	84 61 00 34 	l.lwz r3,52(r1)
    b97c:	9d 6b 00 01 	l.addi r11,r11,1
    b980:	03 ff fc f3 	l.j ad4c <_vfiprintf_r+0x52c>
    b984:	a8 fe 00 00 	l.ori r7,r30,0x0
    b988:	9c a0 00 30 	l.addi r5,r0,48
    b98c:	d8 01 28 2a 	l.sb 42(r1),r5
    b990:	d8 01 20 2b 	l.sb 43(r1),r4
    b994:	bd 66 00 00 	l.sfgesi r6,0
    b998:	0c 00 00 6f 	l.bnf bb54 <_vfiprintf_r+0x1334>
    b99c:	d8 01 40 29 	l.sb 41(r1),r8
    b9a0:	9c 80 ff 7f 	l.addi r4,r0,-129
    b9a4:	e1 fc 20 03 	l.and r15,r28,r4
    b9a8:	03 ff fd 98 	l.j b008 <_vfiprintf_r+0x7e8>
    b9ac:	ab 8f 00 02 	l.ori r28,r15,0x2
    b9b0:	19 60 00 01 	l.movhi r11,0x1
    b9b4:	03 ff fd 95 	l.j b008 <_vfiprintf_r+0x7e8>
    b9b8:	a9 6b 19 9f 	l.ori r11,r11,0x199f
    b9bc:	aa 5e 00 00 	l.ori r18,r30,0x0
    b9c0:	a8 7a 00 00 	l.ori r3,r26,0x0
    b9c4:	9c 80 00 0a 	l.addi r4,r0,10
    b9c8:	d4 01 28 14 	l.sw 20(r1),r5
    b9cc:	d4 01 30 00 	l.sw 0(r1),r6
    b9d0:	d4 01 38 10 	l.sw 16(r1),r7
    b9d4:	04 00 0a ff 	l.jal e5d0 <__umodsi3>
    b9d8:	9e 52 ff ff 	l.addi r18,r18,-1
    b9dc:	9d 6b 00 30 	l.addi r11,r11,48
    b9e0:	a8 7a 00 00 	l.ori r3,r26,0x0
    b9e4:	9c 80 00 0a 	l.addi r4,r0,10
    b9e8:	04 00 0a a2 	l.jal e470 <__udivsi3>
    b9ec:	d8 12 58 00 	l.sb 0(r18),r11
    b9f0:	bc 2b 00 00 	l.sfnei r11,0
    b9f4:	ab 4b 00 00 	l.ori r26,r11,0x0
    b9f8:	84 a1 00 14 	l.lwz r5,20(r1)
    b9fc:	84 c1 00 00 	l.lwz r6,0(r1)
    ba00:	13 ff ff f0 	l.bf b9c0 <_vfiprintf_r+0x11a0>
    ba04:	84 e1 00 10 	l.lwz r7,16(r1)
    ba08:	e3 5e 90 02 	l.sub r26,r30,r18
    ba0c:	03 ff fc 51 	l.j ab50 <_vfiprintf_r+0x330>
    ba10:	d4 01 a0 1c 	l.sw 28(r1),r20
    ba14:	9c a0 00 2d 	l.addi r5,r0,45
    ba18:	d8 01 28 29 	l.sb 41(r1),r5
    ba1c:	10 00 00 5d 	l.bf bb90 <_vfiprintf_r+0x1370>
    ba20:	e3 40 d0 02 	l.sub r26,r0,r26
    ba24:	9d 00 ff 7f 	l.addi r8,r0,-129
    ba28:	9c a0 00 2d 	l.addi r5,r0,45
    ba2c:	03 ff ff 4e 	l.j b764 <_vfiprintf_r+0xf44>
    ba30:	e3 9c 40 03 	l.and r28,r28,r8
    ba34:	03 ff fd 02 	l.j ae3c <_vfiprintf_r+0x61c>
    ba38:	87 48 00 00 	l.lwz r26,0(r8)
    ba3c:	9c a1 00 2c 	l.addi r5,r1,44
    ba40:	a8 8e 00 00 	l.ori r4,r14,0x0
    ba44:	a8 76 00 00 	l.ori r3,r22,0x0
    ba48:	d4 01 30 00 	l.sw 0(r1),r6
    ba4c:	d4 01 98 10 	l.sw 16(r1),r19
    ba50:	07 ff fb 1c 	l.jal a6c0 <__sprint_r.part.0>
    ba54:	d4 01 a8 0c 	l.sw 12(r1),r21
    ba58:	bc 2b 00 00 	l.sfnei r11,0
    ba5c:	84 c1 00 00 	l.lwz r6,0(r1)
    ba60:	86 61 00 10 	l.lwz r19,16(r1)
    ba64:	13 ff fe d7 	l.bf b5c0 <_vfiprintf_r+0xda0>
    ba68:	86 a1 00 0c 	l.lwz r21,12(r1)
    ba6c:	84 a1 00 30 	l.lwz r5,48(r1)
    ba70:	84 61 00 34 	l.lwz r3,52(r1)
    ba74:	9d 65 00 01 	l.addi r11,r5,1
    ba78:	03 ff fe 40 	l.j b378 <_vfiprintf_r+0xb58>
    ba7c:	a8 fe 00 00 	l.ori r7,r30,0x0
    ba80:	03 ff fb fd 	l.j aa74 <_vfiprintf_r+0x254>
    ba84:	9d 60 ff ff 	l.addi r11,r0,-1
    ba88:	a8 a3 00 00 	l.ori r5,r3,0x0
    ba8c:	9d 60 00 01 	l.addi r11,r0,1
    ba90:	03 ff fe 52 	l.j b3d8 <_vfiprintf_r+0xbb8>
    ba94:	a8 fe 00 00 	l.ori r7,r30,0x0
    ba98:	d4 01 58 1c 	l.sw 28(r1),r11
    ba9c:	19 60 00 01 	l.movhi r11,0x1
    baa0:	ab 9c 00 02 	l.ori r28,r28,0x2
    baa4:	03 ff fd 59 	l.j b008 <_vfiprintf_r+0x7e8>
    baa8:	a9 6b 19 9f 	l.ori r11,r11,0x199f
    baac:	e3 5e 28 02 	l.sub r26,r30,r5
    bab0:	aa 45 00 00 	l.ori r18,r5,0x0
    bab4:	d4 01 58 1c 	l.sw 28(r1),r11
    bab8:	03 ff fc 26 	l.j ab50 <_vfiprintf_r+0x330>
    babc:	9c a0 00 00 	l.addi r5,r0,0
    bac0:	84 41 00 34 	l.lwz r2,52(r1)
    bac4:	bc 22 00 00 	l.sfnei r2,0
    bac8:	0f ff fe be 	l.bnf b5c0 <_vfiprintf_r+0xda0>
    bacc:	9c a1 00 2c 	l.addi r5,r1,44
    bad0:	a8 8e 00 00 	l.ori r4,r14,0x0
    bad4:	07 ff fa fb 	l.jal a6c0 <__sprint_r.part.0>
    bad8:	a8 76 00 00 	l.ori r3,r22,0x0
    badc:	03 ff fe ba 	l.j b5c4 <_vfiprintf_r+0xda4>
    bae0:	94 4e 00 0c 	l.lhz r2,12(r14)
    bae4:	a8 72 00 00 	l.ori r3,r18,0x0
    bae8:	d4 01 38 10 	l.sw 16(r1),r7
    baec:	07 ff fa b3 	l.jal a5b8 <strlen>
    baf0:	d4 01 40 1c 	l.sw 28(r1),r8
    baf4:	90 a1 00 29 	l.lbs r5,41(r1)
    baf8:	ab 4b 00 00 	l.ori r26,r11,0x0
    bafc:	9c c0 00 00 	l.addi r6,r0,0
    bb00:	03 ff fc 14 	l.j ab50 <_vfiprintf_r+0x330>
    bb04:	84 e1 00 10 	l.lwz r7,16(r1)
    bb08:	9c a1 00 2c 	l.addi r5,r1,44
    bb0c:	a8 8e 00 00 	l.ori r4,r14,0x0
    bb10:	a8 76 00 00 	l.ori r3,r22,0x0
    bb14:	07 ff fa eb 	l.jal a6c0 <__sprint_r.part.0>
    bb18:	d4 01 30 00 	l.sw 0(r1),r6
    bb1c:	bc 2b 00 00 	l.sfnei r11,0
    bb20:	13 ff fe a8 	l.bf b5c0 <_vfiprintf_r+0xda0>
    bb24:	84 c1 00 00 	l.lwz r6,0(r1)
    bb28:	84 a1 00 30 	l.lwz r5,48(r1)
    bb2c:	84 61 00 34 	l.lwz r3,52(r1)
    bb30:	9d 65 00 01 	l.addi r11,r5,1
    bb34:	03 ff fe 29 	l.j b3d8 <_vfiprintf_r+0xbb8>
    bb38:	a8 fe 00 00 	l.ori r7,r30,0x0
    bb3c:	1a 20 00 01 	l.movhi r17,0x1
    bb40:	9c a5 00 01 	l.addi r5,r5,1
    bb44:	03 ff fc 35 	l.j ac18 <_vfiprintf_r+0x3f8>
    bb48:	aa 31 1e 58 	l.ori r17,r17,0x1e58
    bb4c:	03 ff ff 06 	l.j b764 <_vfiprintf_r+0xf44>
    bb50:	a8 a3 00 00 	l.ori r5,r3,0x0
    bb54:	03 ff fd 2d 	l.j b008 <_vfiprintf_r+0x7e8>
    bb58:	ab 9c 00 02 	l.ori r28,r28,0x2
    bb5c:	bc a6 00 06 	l.sfleui r6,6
    bb60:	10 00 00 04 	l.bf bb70 <_vfiprintf_r+0x1350>
    bb64:	bd 66 00 00 	l.sfgesi r6,0
    bb68:	9c c0 00 06 	l.addi r6,r0,6
    bb6c:	bd 66 00 00 	l.sfgesi r6,0
    bb70:	ab 46 00 00 	l.ori r26,r6,0x0
    bb74:	0c 00 00 17 	l.bnf bbd0 <_vfiprintf_r+0x13b0>
    bb78:	aa 86 00 00 	l.ori r20,r6,0x0
    bb7c:	1a 40 00 01 	l.movhi r18,0x1
    bb80:	d4 01 40 1c 	l.sw 28(r1),r8
    bb84:	aa 52 19 b0 	l.ori r18,r18,0x19b0
    bb88:	03 ff fb fa 	l.j ab70 <_vfiprintf_r+0x350>
    bb8c:	9c c0 00 00 	l.addi r6,r0,0
    bb90:	03 ff fe f5 	l.j b764 <_vfiprintf_r+0xf44>
    bb94:	9c a0 00 2d 	l.addi r5,r0,45
    bb98:	1a 20 00 01 	l.movhi r17,0x1
    bb9c:	84 c1 00 30 	l.lwz r6,48(r1)
    bba0:	aa 31 1e 58 	l.ori r17,r17,0x1e58
    bba4:	03 ff fe 66 	l.j b53c <_vfiprintf_r+0xd1c>
    bba8:	9c c6 00 01 	l.addi r6,r6,1
    bbac:	19 a0 00 01 	l.movhi r13,0x1
    bbb0:	aa 6b 00 00 	l.ori r19,r11,0x0
    bbb4:	03 ff fc 59 	l.j ad18 <_vfiprintf_r+0x4f8>
    bbb8:	a9 ad 1e 48 	l.ori r13,r13,0x1e48
    bbbc:	ab 46 00 00 	l.ori r26,r6,0x0
    bbc0:	90 a1 00 29 	l.lbs r5,41(r1)
    bbc4:	d4 01 40 1c 	l.sw 28(r1),r8
    bbc8:	03 ff fb e2 	l.j ab50 <_vfiprintf_r+0x330>
    bbcc:	a8 cb 00 00 	l.ori r6,r11,0x0
    bbd0:	03 ff ff eb 	l.j bb7c <_vfiprintf_r+0x135c>
    bbd4:	9e 80 00 00 	l.addi r20,r0,0
    bbd8:	85 01 00 1c 	l.lwz r8,28(r1)
    bbdc:	ab 12 00 00 	l.ori r24,r18,0x0
    bbe0:	84 c8 00 00 	l.lwz r6,0(r8)
    bbe4:	9c 68 00 04 	l.addi r3,r8,4
    bbe8:	bd 86 00 00 	l.sfltsi r6,0
    bbec:	0f ff fb 8d 	l.bnf aa20 <_vfiprintf_r+0x200>
    bbf0:	d4 01 18 1c 	l.sw 28(r1),r3
    bbf4:	9c c0 ff ff 	l.addi r6,r0,-1
    bbf8:	03 ff fb 78 	l.j a9d8 <_vfiprintf_r+0x1b8>
    bbfc:	aa 58 00 00 	l.ori r18,r24,0x0
    bc00:	03 ff fc 87 	l.j ae1c <_vfiprintf_r+0x5fc>
    bc04:	d8 01 68 29 	l.sb 41(r1),r13
    bc08:	03 ff fd 76 	l.j b1e0 <_vfiprintf_r+0x9c0>
    bc0c:	d8 01 68 29 	l.sb 41(r1),r13
    bc10:	03 ff fd 63 	l.j b19c <_vfiprintf_r+0x97c>
    bc14:	d8 01 68 29 	l.sb 41(r1),r13
    bc18:	03 ff fd 88 	l.j b238 <_vfiprintf_r+0xa18>
    bc1c:	d8 01 68 29 	l.sb 41(r1),r13
    bc20:	03 ff fc e2 	l.j afa8 <_vfiprintf_r+0x788>
    bc24:	d8 01 68 29 	l.sb 41(r1),r13
    bc28:	03 ff fc bf 	l.j af24 <_vfiprintf_r+0x704>
    bc2c:	d8 01 68 29 	l.sb 41(r1),r13
    bc30:	03 ff fc 98 	l.j ae90 <_vfiprintf_r+0x670>
    bc34:	d8 01 68 29 	l.sb 41(r1),r13
    bc38:	03 ff fe cb 	l.j b764 <_vfiprintf_r+0xf44>
    bc3c:	90 a1 00 29 	l.lbs r5,41(r1)

0000bc40 <vfiprintf>:
    bc40:	d7 e1 4f fc 	l.sw -4(r1),r9
    bc44:	d7 e1 0f f8 	l.sw -8(r1),r1
    bc48:	9c 21 ff ec 	l.addi r1,r1,-20
    bc4c:	d4 01 18 08 	l.sw 8(r1),r3
    bc50:	d4 01 20 04 	l.sw 4(r1),r4
    bc54:	07 ff ef fd 	l.jal 7c48 <__getreent>
    bc58:	d4 01 28 00 	l.sw 0(r1),r5
    bc5c:	84 a1 00 00 	l.lwz r5,0(r1)
    bc60:	84 81 00 04 	l.lwz r4,4(r1)
    bc64:	84 61 00 08 	l.lwz r3,8(r1)
    bc68:	a8 c5 00 00 	l.ori r6,r5,0x0
    bc6c:	a8 a4 00 00 	l.ori r5,r4,0x0
    bc70:	a8 83 00 00 	l.ori r4,r3,0x0
    bc74:	07 ff fa eb 	l.jal a820 <_vfiprintf_r>
    bc78:	a8 6b 00 00 	l.ori r3,r11,0x0
    bc7c:	9c 21 00 14 	l.addi r1,r1,20
    bc80:	85 21 ff fc 	l.lwz r9,-4(r1)
    bc84:	44 00 48 00 	l.jr r9
    bc88:	84 21 ff f8 	l.lwz r1,-8(r1)

0000bc8c <__sbprintf>:
    bc8c:	94 e4 00 0c 	l.lhz r7,12(r4)
    bc90:	d7 e1 17 f0 	l.sw -16(r1),r2
    bc94:	d7 e1 77 f4 	l.sw -12(r1),r14
    bc98:	a8 44 00 00 	l.ori r2,r4,0x0
    bc9c:	85 c4 00 64 	l.lwz r14,100(r4)
    bca0:	9c 80 ff fd 	l.addi r4,r0,-3
    bca4:	d7 e1 97 f8 	l.sw -8(r1),r18
    bca8:	e0 e7 20 03 	l.and r7,r7,r4
    bcac:	d7 e1 4f fc 	l.sw -4(r1),r9
    bcb0:	d7 e1 0f ec 	l.sw -20(r1),r1
    bcb4:	9c 21 fb 84 	l.addi r1,r1,-1148
    bcb8:	9d 00 04 00 	l.addi r8,r0,1024
    bcbc:	dc 01 38 0c 	l.sh 12(r1),r7
    bcc0:	94 e2 00 0e 	l.lhz r7,14(r2)
    bcc4:	9d 61 00 68 	l.addi r11,r1,104
    bcc8:	85 a2 00 1c 	l.lwz r13,28(r2)
    bccc:	85 82 00 24 	l.lwz r12,36(r2)
    bcd0:	dc 01 38 0e 	l.sh 14(r1),r7
    bcd4:	a8 81 00 00 	l.ori r4,r1,0x0
    bcd8:	9c e0 00 00 	l.addi r7,r0,0
    bcdc:	d4 01 70 64 	l.sw 100(r1),r14
    bce0:	aa 43 00 00 	l.ori r18,r3,0x0
    bce4:	d4 01 68 1c 	l.sw 28(r1),r13
    bce8:	d4 01 60 24 	l.sw 36(r1),r12
    bcec:	d4 01 58 00 	l.sw 0(r1),r11
    bcf0:	d4 01 58 10 	l.sw 16(r1),r11
    bcf4:	d4 01 40 08 	l.sw 8(r1),r8
    bcf8:	d4 01 40 14 	l.sw 20(r1),r8
    bcfc:	07 ff fa c9 	l.jal a820 <_vfiprintf_r>
    bd00:	d4 01 38 18 	l.sw 24(r1),r7
    bd04:	bd 8b 00 00 	l.sfltsi r11,0
    bd08:	10 00 00 08 	l.bf bd28 <__sbprintf+0x9c>
    bd0c:	a9 cb 00 00 	l.ori r14,r11,0x0
    bd10:	a8 81 00 00 	l.ori r4,r1,0x0
    bd14:	07 ff ec d3 	l.jal 7060 <_fflush_r>
    bd18:	a8 72 00 00 	l.ori r3,r18,0x0
    bd1c:	bc 0b 00 00 	l.sfeqi r11,0
    bd20:	0c 00 00 12 	l.bnf bd68 <__sbprintf+0xdc>
    bd24:	15 00 00 00 	l.nop 0x0
    bd28:	94 61 00 0c 	l.lhz r3,12(r1)
    bd2c:	a4 63 00 40 	l.andi r3,r3,0x40
    bd30:	bc 03 00 00 	l.sfeqi r3,0
    bd34:	10 00 00 05 	l.bf bd48 <__sbprintf+0xbc>
    bd38:	15 00 00 00 	l.nop 0x0
    bd3c:	94 62 00 0c 	l.lhz r3,12(r2)
    bd40:	a8 63 00 40 	l.ori r3,r3,0x40
    bd44:	dc 02 18 0c 	l.sh 12(r2),r3
    bd48:	9c 21 04 7c 	l.addi r1,r1,1148
    bd4c:	a9 6e 00 00 	l.ori r11,r14,0x0
    bd50:	85 21 ff fc 	l.lwz r9,-4(r1)
    bd54:	84 21 ff ec 	l.lwz r1,-20(r1)
    bd58:	84 41 ff f0 	l.lwz r2,-16(r1)
    bd5c:	85 c1 ff f4 	l.lwz r14,-12(r1)
    bd60:	44 00 48 00 	l.jr r9
    bd64:	86 41 ff f8 	l.lwz r18,-8(r1)
    bd68:	03 ff ff f0 	l.j bd28 <__sbprintf+0x9c>
    bd6c:	9d c0 ff ff 	l.addi r14,r0,-1

0000bd70 <_calloc_r>:
    bd70:	e0 84 2b 06 	l.mul r4,r4,r5
    bd74:	d7 e1 17 f8 	l.sw -8(r1),r2
    bd78:	d7 e1 4f fc 	l.sw -4(r1),r9
    bd7c:	d7 e1 0f f4 	l.sw -12(r1),r1
    bd80:	07 ff f0 8c 	l.jal 7fb0 <_malloc_r>
    bd84:	9c 21 ff f4 	l.addi r1,r1,-12
    bd88:	bc 0b 00 00 	l.sfeqi r11,0
    bd8c:	10 00 00 1d 	l.bf be00 <_calloc_r+0x90>
    bd90:	a8 4b 00 00 	l.ori r2,r11,0x0
    bd94:	9c 60 ff fc 	l.addi r3,r0,-4
    bd98:	84 ab ff fc 	l.lwz r5,-4(r11)
    bd9c:	e0 a5 18 03 	l.and r5,r5,r3
    bda0:	e0 a5 18 00 	l.add r5,r5,r3
    bda4:	bc 45 00 24 	l.sfgtui r5,36
    bda8:	10 00 00 1c 	l.bf be18 <_calloc_r+0xa8>
    bdac:	bc a5 00 13 	l.sfleui r5,19
    bdb0:	10 00 00 10 	l.bf bdf0 <_calloc_r+0x80>
    bdb4:	a8 6b 00 00 	l.ori r3,r11,0x0
    bdb8:	9c 80 00 00 	l.addi r4,r0,0
    bdbc:	bc 45 00 1b 	l.sfgtui r5,27
    bdc0:	d4 0b 20 00 	l.sw 0(r11),r4
    bdc4:	0c 00 00 20 	l.bnf be44 <_calloc_r+0xd4>
    bdc8:	d4 0b 20 04 	l.sw 4(r11),r4
    bdcc:	9c 60 00 00 	l.addi r3,r0,0
    bdd0:	bc 05 00 24 	l.sfeqi r5,36
    bdd4:	d4 0b 18 08 	l.sw 8(r11),r3
    bdd8:	0c 00 00 19 	l.bnf be3c <_calloc_r+0xcc>
    bddc:	d4 0b 18 0c 	l.sw 12(r11),r3
    bde0:	9c 80 00 00 	l.addi r4,r0,0
    bde4:	9c 6b 00 18 	l.addi r3,r11,24
    bde8:	d4 0b 20 10 	l.sw 16(r11),r4
    bdec:	d4 0b 20 14 	l.sw 20(r11),r4
    bdf0:	9c 80 00 00 	l.addi r4,r0,0
    bdf4:	d4 03 20 00 	l.sw 0(r3),r4
    bdf8:	d4 03 20 04 	l.sw 4(r3),r4
    bdfc:	d4 03 20 08 	l.sw 8(r3),r4
    be00:	9c 21 00 0c 	l.addi r1,r1,12
    be04:	a9 62 00 00 	l.ori r11,r2,0x0
    be08:	85 21 ff fc 	l.lwz r9,-4(r1)
    be0c:	84 21 ff f4 	l.lwz r1,-12(r1)
    be10:	44 00 48 00 	l.jr r9
    be14:	84 41 ff f8 	l.lwz r2,-8(r1)
    be18:	9c 80 00 00 	l.addi r4,r0,0
    be1c:	07 ff f3 8a 	l.jal 8c44 <memset>
    be20:	a8 6b 00 00 	l.ori r3,r11,0x0
    be24:	9c 21 00 0c 	l.addi r1,r1,12
    be28:	a9 62 00 00 	l.ori r11,r2,0x0
    be2c:	85 21 ff fc 	l.lwz r9,-4(r1)
    be30:	84 21 ff f4 	l.lwz r1,-12(r1)
    be34:	44 00 48 00 	l.jr r9
    be38:	84 41 ff f8 	l.lwz r2,-8(r1)
    be3c:	03 ff ff ed 	l.j bdf0 <_calloc_r+0x80>
    be40:	9c 6b 00 10 	l.addi r3,r11,16
    be44:	03 ff ff eb 	l.j bdf0 <_calloc_r+0x80>
    be48:	9c 6b 00 08 	l.addi r3,r11,8

0000be4c <_fclose_r>:
    be4c:	d7 e1 17 f0 	l.sw -16(r1),r2
    be50:	d7 e1 77 f4 	l.sw -12(r1),r14
    be54:	d7 e1 4f fc 	l.sw -4(r1),r9
    be58:	d7 e1 0f ec 	l.sw -20(r1),r1
    be5c:	d7 e1 97 f8 	l.sw -8(r1),r18
    be60:	bc 24 00 00 	l.sfnei r4,0
    be64:	9c 21 ff ec 	l.addi r1,r1,-20
    be68:	a8 44 00 00 	l.ori r2,r4,0x0
    be6c:	0c 00 00 0d 	l.bnf bea0 <_fclose_r+0x54>
    be70:	a9 c3 00 00 	l.ori r14,r3,0x0
    be74:	bc 03 00 00 	l.sfeqi r3,0
    be78:	10 00 00 06 	l.bf be90 <_fclose_r+0x44>
    be7c:	15 00 00 00 	l.nop 0x0
    be80:	84 83 00 38 	l.lwz r4,56(r3)
    be84:	bc 24 00 00 	l.sfnei r4,0
    be88:	0c 00 00 40 	l.bnf bf88 <_fclose_r+0x13c>
    be8c:	15 00 00 00 	l.nop 0x0
    be90:	98 62 00 0c 	l.lhs r3,12(r2)
    be94:	bc 03 00 00 	l.sfeqi r3,0
    be98:	0c 00 00 0a 	l.bnf bec0 <_fclose_r+0x74>
    be9c:	a8 82 00 00 	l.ori r4,r2,0x0
    bea0:	9c 21 00 14 	l.addi r1,r1,20
    bea4:	9d 60 00 00 	l.addi r11,r0,0
    bea8:	85 21 ff fc 	l.lwz r9,-4(r1)
    beac:	84 21 ff ec 	l.lwz r1,-20(r1)
    beb0:	84 41 ff f0 	l.lwz r2,-16(r1)
    beb4:	85 c1 ff f4 	l.lwz r14,-12(r1)
    beb8:	44 00 48 00 	l.jr r9
    bebc:	86 41 ff f8 	l.lwz r18,-8(r1)
    bec0:	07 ff eb aa 	l.jal 6d68 <__sflush_r>
    bec4:	a8 6e 00 00 	l.ori r3,r14,0x0
    bec8:	aa 4b 00 00 	l.ori r18,r11,0x0
    becc:	85 62 00 2c 	l.lwz r11,44(r2)
    bed0:	bc 0b 00 00 	l.sfeqi r11,0
    bed4:	10 00 00 08 	l.bf bef4 <_fclose_r+0xa8>
    bed8:	15 00 00 00 	l.nop 0x0
    bedc:	84 82 00 1c 	l.lwz r4,28(r2)
    bee0:	48 00 58 00 	l.jalr r11
    bee4:	a8 6e 00 00 	l.ori r3,r14,0x0
    bee8:	bd 6b 00 00 	l.sfgesi r11,0
    beec:	0c 00 00 2b 	l.bnf bf98 <_fclose_r+0x14c>
    bef0:	15 00 00 00 	l.nop 0x0
    bef4:	94 62 00 0c 	l.lhz r3,12(r2)
    bef8:	a4 63 00 80 	l.andi r3,r3,0x80
    befc:	bc 03 00 00 	l.sfeqi r3,0
    bf00:	0c 00 00 28 	l.bnf bfa0 <_fclose_r+0x154>
    bf04:	15 00 00 00 	l.nop 0x0
    bf08:	84 82 00 30 	l.lwz r4,48(r2)
    bf0c:	bc 04 00 00 	l.sfeqi r4,0
    bf10:	10 00 00 09 	l.bf bf34 <_fclose_r+0xe8>
    bf14:	9c 62 00 40 	l.addi r3,r2,64
    bf18:	e4 04 18 00 	l.sfeq r4,r3
    bf1c:	10 00 00 05 	l.bf bf30 <_fclose_r+0xe4>
    bf20:	9c 60 00 00 	l.addi r3,r0,0
    bf24:	07 ff ee 09 	l.jal 7748 <_free_r>
    bf28:	a8 6e 00 00 	l.ori r3,r14,0x0
    bf2c:	9c 60 00 00 	l.addi r3,r0,0
    bf30:	d4 02 18 30 	l.sw 48(r2),r3
    bf34:	84 82 00 44 	l.lwz r4,68(r2)
    bf38:	bc 04 00 00 	l.sfeqi r4,0
    bf3c:	10 00 00 06 	l.bf bf54 <_fclose_r+0x108>
    bf40:	15 00 00 00 	l.nop 0x0
    bf44:	07 ff ee 01 	l.jal 7748 <_free_r>
    bf48:	a8 6e 00 00 	l.ori r3,r14,0x0
    bf4c:	9c 60 00 00 	l.addi r3,r0,0
    bf50:	d4 02 18 44 	l.sw 68(r2),r3
    bf54:	07 ff ed 7e 	l.jal 754c <__sfp_lock_acquire>
    bf58:	15 00 00 00 	l.nop 0x0
    bf5c:	9c 60 00 00 	l.addi r3,r0,0
    bf60:	07 ff ed 80 	l.jal 7560 <__sfp_lock_release>
    bf64:	dc 02 18 0c 	l.sh 12(r2),r3
    bf68:	9c 21 00 14 	l.addi r1,r1,20
    bf6c:	a9 72 00 00 	l.ori r11,r18,0x0
    bf70:	85 21 ff fc 	l.lwz r9,-4(r1)
    bf74:	84 21 ff ec 	l.lwz r1,-20(r1)
    bf78:	84 41 ff f0 	l.lwz r2,-16(r1)
    bf7c:	85 c1 ff f4 	l.lwz r14,-12(r1)
    bf80:	44 00 48 00 	l.jr r9
    bf84:	86 41 ff f8 	l.lwz r18,-8(r1)
    bf88:	07 ff ed 65 	l.jal 751c <__sinit>
    bf8c:	15 00 00 00 	l.nop 0x0
    bf90:	03 ff ff c1 	l.j be94 <_fclose_r+0x48>
    bf94:	98 62 00 0c 	l.lhs r3,12(r2)
    bf98:	03 ff ff d7 	l.j bef4 <_fclose_r+0xa8>
    bf9c:	9e 40 ff ff 	l.addi r18,r0,-1
    bfa0:	84 82 00 10 	l.lwz r4,16(r2)
    bfa4:	07 ff ed e9 	l.jal 7748 <_free_r>
    bfa8:	a8 6e 00 00 	l.ori r3,r14,0x0
    bfac:	03 ff ff d8 	l.j bf0c <_fclose_r+0xc0>
    bfb0:	84 82 00 30 	l.lwz r4,48(r2)

0000bfb4 <fclose>:
    bfb4:	d7 e1 4f fc 	l.sw -4(r1),r9
    bfb8:	d7 e1 0f f8 	l.sw -8(r1),r1
    bfbc:	9c 21 ff f4 	l.addi r1,r1,-12
    bfc0:	07 ff ef 22 	l.jal 7c48 <__getreent>
    bfc4:	d4 01 18 00 	l.sw 0(r1),r3
    bfc8:	84 61 00 00 	l.lwz r3,0(r1)
    bfcc:	a8 83 00 00 	l.ori r4,r3,0x0
    bfd0:	07 ff ff 9f 	l.jal be4c <_fclose_r>
    bfd4:	a8 6b 00 00 	l.ori r3,r11,0x0
    bfd8:	9c 21 00 0c 	l.addi r1,r1,12
    bfdc:	85 21 ff fc 	l.lwz r9,-4(r1)
    bfe0:	44 00 48 00 	l.jr r9
    bfe4:	84 21 ff f8 	l.lwz r1,-8(r1)

0000bfe8 <__fputwc>:
    bfe8:	d7 e1 17 e4 	l.sw -28(r1),r2
    bfec:	d7 e1 a7 f0 	l.sw -16(r1),r20
    bff0:	d7 e1 b7 f4 	l.sw -12(r1),r22
    bff4:	d7 e1 4f fc 	l.sw -4(r1),r9
    bff8:	d7 e1 0f e0 	l.sw -32(r1),r1
    bffc:	d7 e1 77 e8 	l.sw -24(r1),r14
    c000:	d7 e1 97 ec 	l.sw -20(r1),r18
    c004:	d7 e1 c7 f8 	l.sw -8(r1),r24
    c008:	9c 21 ff dc 	l.addi r1,r1,-36
    c00c:	aa c3 00 00 	l.ori r22,r3,0x0
    c010:	aa 84 00 00 	l.ori r20,r4,0x0
    c014:	07 ff ef 3a 	l.jal 7cfc <__locale_mb_cur_max>
    c018:	a8 45 00 00 	l.ori r2,r5,0x0
    c01c:	bc 2b 00 01 	l.sfnei r11,1
    c020:	0c 00 00 49 	l.bnf c144 <__fputwc+0x15c>
    c024:	9c 74 ff ff 	l.addi r3,r20,-1
    c028:	9d c1 00 03 	l.addi r14,r1,3
    c02c:	9c c2 00 5c 	l.addi r6,r2,92
    c030:	a8 b4 00 00 	l.ori r5,r20,0x0
    c034:	a8 8e 00 00 	l.ori r4,r14,0x0
    c038:	04 00 04 4a 	l.jal d160 <_wcrtomb_r>
    c03c:	a8 76 00 00 	l.ori r3,r22,0x0
    c040:	bc 2b ff ff 	l.sfnei r11,-1
    c044:	0c 00 00 31 	l.bnf c108 <__fputwc+0x120>
    c048:	ab 0b 00 00 	l.ori r24,r11,0x0
    c04c:	bc 2b 00 00 	l.sfnei r11,0
    c050:	0c 00 00 45 	l.bnf c164 <__fputwc+0x17c>
    c054:	90 81 00 03 	l.lbs r4,3(r1)
    c058:	84 62 00 08 	l.lwz r3,8(r2)
    c05c:	9e 40 00 00 	l.addi r18,r0,0
    c060:	9c 63 ff ff 	l.addi r3,r3,-1
    c064:	bd 63 00 00 	l.sfgesi r3,0
    c068:	0c 00 00 11 	l.bnf c0ac <__fputwc+0xc4>
    c06c:	d4 02 18 08 	l.sw 8(r2),r3
    c070:	84 62 00 00 	l.lwz r3,0(r2)
    c074:	d8 03 20 00 	l.sb 0(r3),r4
    c078:	84 62 00 00 	l.lwz r3,0(r2)
    c07c:	9c 63 00 01 	l.addi r3,r3,1
    c080:	d4 02 18 00 	l.sw 0(r2),r3
    c084:	9e 52 00 01 	l.addi r18,r18,1
    c088:	e4 58 90 00 	l.sfgtu r24,r18
    c08c:	0c 00 00 36 	l.bnf c164 <__fputwc+0x17c>
    c090:	9d ce 00 01 	l.addi r14,r14,1
    c094:	84 62 00 08 	l.lwz r3,8(r2)
    c098:	90 8e 00 00 	l.lbs r4,0(r14)
    c09c:	9c 63 ff ff 	l.addi r3,r3,-1
    c0a0:	bd 63 00 00 	l.sfgesi r3,0
    c0a4:	13 ff ff f3 	l.bf c070 <__fputwc+0x88>
    c0a8:	d4 02 18 08 	l.sw 8(r2),r3
    c0ac:	84 a2 00 18 	l.lwz r5,24(r2)
    c0b0:	e5 83 28 00 	l.sflts r3,r5
    c0b4:	10 00 00 22 	l.bf c13c <__fputwc+0x154>
    c0b8:	a8 a2 00 00 	l.ori r5,r2,0x0
    c0bc:	84 62 00 00 	l.lwz r3,0(r2)
    c0c0:	d8 03 20 00 	l.sb 0(r3),r4
    c0c4:	84 62 00 00 	l.lwz r3,0(r2)
    c0c8:	8c 83 00 00 	l.lbz r4,0(r3)
    c0cc:	bc 04 00 0a 	l.sfeqi r4,10
    c0d0:	0f ff ff ec 	l.bnf c080 <__fputwc+0x98>
    c0d4:	9c 63 00 01 	l.addi r3,r3,1
    c0d8:	04 00 03 a9 	l.jal cf7c <__swbuf_r>
    c0dc:	a8 76 00 00 	l.ori r3,r22,0x0
    c0e0:	ad 6b ff ff 	l.xori r11,r11,-1
    c0e4:	e0 60 58 02 	l.sub r3,r0,r11
    c0e8:	e1 63 58 04 	l.or r11,r3,r11
    c0ec:	ad 6b ff ff 	l.xori r11,r11,-1
    c0f0:	b9 6b 00 5f 	l.srli r11,r11,0x1f
    c0f4:	bc 2b 00 00 	l.sfnei r11,0
    c0f8:	0f ff ff e4 	l.bnf c088 <__fputwc+0xa0>
    c0fc:	9e 52 00 01 	l.addi r18,r18,1
    c100:	00 00 00 05 	l.j c114 <__fputwc+0x12c>
    c104:	9d 60 ff ff 	l.addi r11,r0,-1
    c108:	94 62 00 0c 	l.lhz r3,12(r2)
    c10c:	a8 63 00 40 	l.ori r3,r3,0x40
    c110:	dc 02 18 0c 	l.sh 12(r2),r3
    c114:	9c 21 00 24 	l.addi r1,r1,36
    c118:	85 21 ff fc 	l.lwz r9,-4(r1)
    c11c:	84 21 ff e0 	l.lwz r1,-32(r1)
    c120:	84 41 ff e4 	l.lwz r2,-28(r1)
    c124:	85 c1 ff e8 	l.lwz r14,-24(r1)
    c128:	86 41 ff ec 	l.lwz r18,-20(r1)
    c12c:	86 81 ff f0 	l.lwz r20,-16(r1)
    c130:	86 c1 ff f4 	l.lwz r22,-12(r1)
    c134:	44 00 48 00 	l.jr r9
    c138:	87 01 ff f8 	l.lwz r24,-8(r1)
    c13c:	03 ff ff e7 	l.j c0d8 <__fputwc+0xf0>
    c140:	a4 84 00 ff 	l.andi r4,r4,0xff
    c144:	bc 43 00 fe 	l.sfgtui r3,254
    c148:	13 ff ff b8 	l.bf c028 <__fputwc+0x40>
    c14c:	b8 94 00 18 	l.slli r4,r20,0x18
    c150:	ab 0b 00 00 	l.ori r24,r11,0x0
    c154:	9d c1 00 03 	l.addi r14,r1,3
    c158:	b8 84 00 98 	l.srai r4,r4,0x18
    c15c:	03 ff ff bf 	l.j c058 <__fputwc+0x70>
    c160:	d8 01 20 03 	l.sb 3(r1),r4
    c164:	03 ff ff ec 	l.j c114 <__fputwc+0x12c>
    c168:	a9 74 00 00 	l.ori r11,r20,0x0

0000c16c <_fputwc_r>:
    c16c:	98 c5 00 0c 	l.lhs r6,12(r5)
    c170:	a4 e6 20 00 	l.andi r7,r6,0x2000
    c174:	d7 e1 4f fc 	l.sw -4(r1),r9
    c178:	d7 e1 0f f8 	l.sw -8(r1),r1
    c17c:	bc 27 00 00 	l.sfnei r7,0
    c180:	10 00 00 07 	l.bf c19c <_fputwc_r+0x30>
    c184:	9c 21 ff f8 	l.addi r1,r1,-8
    c188:	84 e5 00 64 	l.lwz r7,100(r5)
    c18c:	a8 c6 20 00 	l.ori r6,r6,0x2000
    c190:	a8 e7 20 00 	l.ori r7,r7,0x2000
    c194:	dc 05 30 0c 	l.sh 12(r5),r6
    c198:	d4 05 38 64 	l.sw 100(r5),r7
    c19c:	07 ff ff 93 	l.jal bfe8 <__fputwc>
    c1a0:	15 00 00 00 	l.nop 0x0
    c1a4:	9c 21 00 08 	l.addi r1,r1,8
    c1a8:	85 21 ff fc 	l.lwz r9,-4(r1)
    c1ac:	44 00 48 00 	l.jr r9
    c1b0:	84 21 ff f8 	l.lwz r1,-8(r1)

0000c1b4 <fputwc>:
    c1b4:	d7 e1 17 f4 	l.sw -12(r1),r2
    c1b8:	d7 e1 77 f8 	l.sw -8(r1),r14
    c1bc:	d7 e1 4f fc 	l.sw -4(r1),r9
    c1c0:	d7 e1 0f f0 	l.sw -16(r1),r1
    c1c4:	9c 21 ff ec 	l.addi r1,r1,-20
    c1c8:	a9 c3 00 00 	l.ori r14,r3,0x0
    c1cc:	07 ff ee 9f 	l.jal 7c48 <__getreent>
    c1d0:	a8 44 00 00 	l.ori r2,r4,0x0
    c1d4:	bc 0b 00 00 	l.sfeqi r11,0
    c1d8:	10 00 00 06 	l.bf c1f0 <fputwc+0x3c>
    c1dc:	15 00 00 00 	l.nop 0x0
    c1e0:	84 6b 00 38 	l.lwz r3,56(r11)
    c1e4:	bc 23 00 00 	l.sfnei r3,0
    c1e8:	0c 00 00 15 	l.bnf c23c <fputwc+0x88>
    c1ec:	a8 6b 00 00 	l.ori r3,r11,0x0
    c1f0:	98 62 00 0c 	l.lhs r3,12(r2)
    c1f4:	a4 83 20 00 	l.andi r4,r3,0x2000
    c1f8:	bc 24 00 00 	l.sfnei r4,0
    c1fc:	10 00 00 06 	l.bf c214 <fputwc+0x60>
    c200:	a8 63 20 00 	l.ori r3,r3,0x2000
    c204:	84 82 00 64 	l.lwz r4,100(r2)
    c208:	a8 84 20 00 	l.ori r4,r4,0x2000
    c20c:	dc 02 18 0c 	l.sh 12(r2),r3
    c210:	d4 02 20 64 	l.sw 100(r2),r4
    c214:	a8 a2 00 00 	l.ori r5,r2,0x0
    c218:	a8 8e 00 00 	l.ori r4,r14,0x0
    c21c:	07 ff ff 73 	l.jal bfe8 <__fputwc>
    c220:	a8 6b 00 00 	l.ori r3,r11,0x0
    c224:	9c 21 00 14 	l.addi r1,r1,20
    c228:	85 21 ff fc 	l.lwz r9,-4(r1)
    c22c:	84 21 ff f0 	l.lwz r1,-16(r1)
    c230:	84 41 ff f4 	l.lwz r2,-12(r1)
    c234:	44 00 48 00 	l.jr r9
    c238:	85 c1 ff f8 	l.lwz r14,-8(r1)
    c23c:	07 ff ec b8 	l.jal 751c <__sinit>
    c240:	d4 01 58 00 	l.sw 0(r1),r11
    c244:	03 ff ff eb 	l.j c1f0 <fputwc+0x3c>
    c248:	85 61 00 00 	l.lwz r11,0(r1)

0000c24c <__sfvwrite_r>:
    c24c:	d7 e1 b7 e8 	l.sw -24(r1),r22
    c250:	aa c3 00 00 	l.ori r22,r3,0x0
    c254:	84 65 00 08 	l.lwz r3,8(r5)
    c258:	d7 e1 17 d8 	l.sw -40(r1),r2
    c25c:	d7 e1 d7 f0 	l.sw -16(r1),r26
    c260:	d7 e1 4f fc 	l.sw -4(r1),r9
    c264:	d7 e1 0f d4 	l.sw -44(r1),r1
    c268:	d7 e1 77 dc 	l.sw -36(r1),r14
    c26c:	d7 e1 97 e0 	l.sw -32(r1),r18
    c270:	d7 e1 a7 e4 	l.sw -28(r1),r20
    c274:	d7 e1 c7 ec 	l.sw -20(r1),r24
    c278:	d7 e1 e7 f4 	l.sw -12(r1),r28
    c27c:	d7 e1 f7 f8 	l.sw -8(r1),r30
    c280:	bc 23 00 00 	l.sfnei r3,0
    c284:	9c 21 ff cc 	l.addi r1,r1,-52
    c288:	ab 45 00 00 	l.ori r26,r5,0x0
    c28c:	0c 00 00 2a 	l.bnf c334 <__sfvwrite_r+0xe8>
    c290:	a8 44 00 00 	l.ori r2,r4,0x0
    c294:	94 c4 00 0c 	l.lhz r6,12(r4)
    c298:	a4 66 00 08 	l.andi r3,r6,0x8
    c29c:	bc 03 00 00 	l.sfeqi r3,0
    c2a0:	10 00 00 33 	l.bf c36c <__sfvwrite_r+0x120>
    c2a4:	15 00 00 00 	l.nop 0x0
    c2a8:	84 64 00 10 	l.lwz r3,16(r4)
    c2ac:	bc 23 00 00 	l.sfnei r3,0
    c2b0:	0c 00 00 2f 	l.bnf c36c <__sfvwrite_r+0x120>
    c2b4:	a5 c6 00 02 	l.andi r14,r6,0x2
    c2b8:	a5 ce ff ff 	l.andi r14,r14,0xffff
    c2bc:	bc 0e 00 00 	l.sfeqi r14,0
    c2c0:	10 00 00 37 	l.bf c39c <__sfvwrite_r+0x150>
    c2c4:	86 5a 00 00 	l.lwz r18,0(r26)
    c2c8:	9e 80 00 00 	l.addi r20,r0,0
    c2cc:	1b 00 7f ff 	l.movhi r24,0x7fff
    c2d0:	a9 d4 00 00 	l.ori r14,r20,0x0
    c2d4:	ab 18 fc 00 	l.ori r24,r24,0xfc00
    c2d8:	bc 0e 00 00 	l.sfeqi r14,0
    c2dc:	a8 b4 00 00 	l.ori r5,r20,0x0
    c2e0:	a8 76 00 00 	l.ori r3,r22,0x0
    c2e4:	10 00 00 73 	l.bf c4b0 <__sfvwrite_r+0x264>
    c2e8:	a8 ce 00 00 	l.ori r6,r14,0x0
    c2ec:	18 80 7f ff 	l.movhi r4,0x7fff
    c2f0:	a8 84 fc 00 	l.ori r4,r4,0xfc00
    c2f4:	e4 ae 20 00 	l.sfleu r14,r4
    c2f8:	10 00 00 03 	l.bf c304 <__sfvwrite_r+0xb8>
    c2fc:	15 00 00 00 	l.nop 0x0
    c300:	a8 d8 00 00 	l.ori r6,r24,0x0
    c304:	85 62 00 24 	l.lwz r11,36(r2)
    c308:	48 00 58 00 	l.jalr r11
    c30c:	84 82 00 1c 	l.lwz r4,28(r2)
    c310:	bd ab 00 00 	l.sflesi r11,0
    c314:	10 00 00 7e 	l.bf c50c <__sfvwrite_r+0x2c0>
    c318:	e2 94 58 00 	l.add r20,r20,r11
    c31c:	84 7a 00 08 	l.lwz r3,8(r26)
    c320:	e1 ce 58 02 	l.sub r14,r14,r11
    c324:	e1 63 58 02 	l.sub r11,r3,r11
    c328:	bc 2b 00 00 	l.sfnei r11,0
    c32c:	13 ff ff eb 	l.bf c2d8 <__sfvwrite_r+0x8c>
    c330:	d4 1a 58 08 	l.sw 8(r26),r11
    c334:	9d 60 00 00 	l.addi r11,r0,0
    c338:	9c 21 00 34 	l.addi r1,r1,52
    c33c:	85 21 ff fc 	l.lwz r9,-4(r1)
    c340:	84 21 ff d4 	l.lwz r1,-44(r1)
    c344:	84 41 ff d8 	l.lwz r2,-40(r1)
    c348:	85 c1 ff dc 	l.lwz r14,-36(r1)
    c34c:	86 41 ff e0 	l.lwz r18,-32(r1)
    c350:	86 81 ff e4 	l.lwz r20,-28(r1)
    c354:	86 c1 ff e8 	l.lwz r22,-24(r1)
    c358:	87 01 ff ec 	l.lwz r24,-20(r1)
    c35c:	87 41 ff f0 	l.lwz r26,-16(r1)
    c360:	87 81 ff f4 	l.lwz r28,-12(r1)
    c364:	44 00 48 00 	l.jr r9
    c368:	87 c1 ff f8 	l.lwz r30,-8(r1)
    c36c:	a8 82 00 00 	l.ori r4,r2,0x0
    c370:	07 ff e1 b9 	l.jal 4a54 <__swsetup_r>
    c374:	a8 76 00 00 	l.ori r3,r22,0x0
    c378:	bc 2b 00 00 	l.sfnei r11,0
    c37c:	10 00 01 21 	l.bf c800 <__sfvwrite_r+0x5b4>
    c380:	15 00 00 00 	l.nop 0x0
    c384:	94 c2 00 0c 	l.lhz r6,12(r2)
    c388:	a5 c6 00 02 	l.andi r14,r6,0x2
    c38c:	a5 ce ff ff 	l.andi r14,r14,0xffff
    c390:	bc 0e 00 00 	l.sfeqi r14,0
    c394:	0f ff ff cd 	l.bnf c2c8 <__sfvwrite_r+0x7c>
    c398:	86 5a 00 00 	l.lwz r18,0(r26)
    c39c:	a7 86 00 01 	l.andi r28,r6,0x1
    c3a0:	bc 1c 00 00 	l.sfeqi r28,0
    c3a4:	10 00 00 5f 	l.bf c520 <__sfvwrite_r+0x2d4>
    c3a8:	aa 9c 00 00 	l.ori r20,r28,0x0
    c3ac:	a9 0e 00 00 	l.ori r8,r14,0x0
    c3b0:	ab ce 00 00 	l.ori r30,r14,0x0
    c3b4:	aa 8e 00 00 	l.ori r20,r14,0x0
    c3b8:	bc 14 00 00 	l.sfeqi r20,0
    c3bc:	10 00 00 38 	l.bf c49c <__sfvwrite_r+0x250>
    c3c0:	bc 28 00 00 	l.sfnei r8,0
    c3c4:	0c 00 00 b7 	l.bnf c6a0 <__sfvwrite_r+0x454>
    c3c8:	a8 b4 00 00 	l.ori r5,r20,0x0
    c3cc:	e4 ae a0 00 	l.sfleu r14,r20
    c3d0:	10 00 00 03 	l.bf c3dc <__sfvwrite_r+0x190>
    c3d4:	ab 0e 00 00 	l.ori r24,r14,0x0
    c3d8:	ab 14 00 00 	l.ori r24,r20,0x0
    c3dc:	84 82 00 10 	l.lwz r4,16(r2)
    c3e0:	84 62 00 00 	l.lwz r3,0(r2)
    c3e4:	84 c2 00 14 	l.lwz r6,20(r2)
    c3e8:	84 e2 00 08 	l.lwz r7,8(r2)
    c3ec:	e4 43 20 00 	l.sfgtu r3,r4
    c3f0:	ab 98 00 00 	l.ori r28,r24,0x0
    c3f4:	e0 e6 38 00 	l.add r7,r6,r7
    c3f8:	10 00 00 03 	l.bf c404 <__sfvwrite_r+0x1b8>
    c3fc:	9c 80 00 01 	l.addi r4,r0,1
    c400:	9c 80 00 00 	l.addi r4,r0,0
    c404:	a4 84 00 ff 	l.andi r4,r4,0xff
    c408:	bc 04 00 00 	l.sfeqi r4,0
    c40c:	10 00 00 09 	l.bf c430 <__sfvwrite_r+0x1e4>
    c410:	e5 58 38 00 	l.sfgts r24,r7
    c414:	10 00 00 03 	l.bf c420 <__sfvwrite_r+0x1d4>
    c418:	9c 80 00 01 	l.addi r4,r0,1
    c41c:	9c 80 00 00 	l.addi r4,r0,0
    c420:	a4 84 00 ff 	l.andi r4,r4,0xff
    c424:	bc 04 00 00 	l.sfeqi r4,0
    c428:	0c 00 00 d3 	l.bnf c774 <__sfvwrite_r+0x528>
    c42c:	a8 a7 00 00 	l.ori r5,r7,0x0
    c430:	e5 98 30 00 	l.sflts r24,r6
    c434:	10 00 00 82 	l.bf c63c <__sfvwrite_r+0x3f0>
    c438:	a8 b8 00 00 	l.ori r5,r24,0x0
    c43c:	85 62 00 24 	l.lwz r11,36(r2)
    c440:	84 82 00 1c 	l.lwz r4,28(r2)
    c444:	a8 be 00 00 	l.ori r5,r30,0x0
    c448:	d4 01 40 00 	l.sw 0(r1),r8
    c44c:	48 00 58 00 	l.jalr r11
    c450:	a8 76 00 00 	l.ori r3,r22,0x0
    c454:	bd 4b 00 00 	l.sfgtsi r11,0
    c458:	ab 8b 00 00 	l.ori r28,r11,0x0
    c45c:	0c 00 00 2c 	l.bnf c50c <__sfvwrite_r+0x2c0>
    c460:	85 01 00 00 	l.lwz r8,0(r1)
    c464:	e1 ce e0 02 	l.sub r14,r14,r28
    c468:	bc 2e 00 00 	l.sfnei r14,0
    c46c:	0c 00 00 82 	l.bnf c674 <__sfvwrite_r+0x428>
    c470:	a8 82 00 00 	l.ori r4,r2,0x0
    c474:	84 7a 00 08 	l.lwz r3,8(r26)
    c478:	e3 de e0 00 	l.add r30,r30,r28
    c47c:	e0 63 e0 02 	l.sub r3,r3,r28
    c480:	e2 94 e0 02 	l.sub r20,r20,r28
    c484:	bc 23 00 00 	l.sfnei r3,0
    c488:	0f ff ff ab 	l.bnf c334 <__sfvwrite_r+0xe8>
    c48c:	d4 1a 18 08 	l.sw 8(r26),r3
    c490:	bc 14 00 00 	l.sfeqi r20,0
    c494:	0f ff ff cc 	l.bnf c3c4 <__sfvwrite_r+0x178>
    c498:	bc 28 00 00 	l.sfnei r8,0
    c49c:	87 d2 00 00 	l.lwz r30,0(r18)
    c4a0:	86 92 00 04 	l.lwz r20,4(r18)
    c4a4:	9d 00 00 00 	l.addi r8,r0,0
    c4a8:	03 ff ff c4 	l.j c3b8 <__sfvwrite_r+0x16c>
    c4ac:	9e 52 00 08 	l.addi r18,r18,8
    c4b0:	86 92 00 00 	l.lwz r20,0(r18)
    c4b4:	85 d2 00 04 	l.lwz r14,4(r18)
    c4b8:	03 ff ff 88 	l.j c2d8 <__sfvwrite_r+0x8c>
    c4bc:	9e 52 00 08 	l.addi r18,r18,8
    c4c0:	18 60 7f ff 	l.movhi r3,0x7fff
    c4c4:	a8 63 ff ff 	l.ori r3,r3,0xffff
    c4c8:	e4 b4 18 00 	l.sfleu r20,r3
    c4cc:	10 00 00 05 	l.bf c4e0 <__sfvwrite_r+0x294>
    c4d0:	a8 74 00 00 	l.ori r3,r20,0x0
    c4d4:	18 80 00 01 	l.movhi r4,0x1
    c4d8:	a8 84 1e 68 	l.ori r4,r4,0x1e68
    c4dc:	84 64 00 00 	l.lwz r3,0(r4)
    c4e0:	04 00 08 23 	l.jal e56c <__divsi3>
    c4e4:	a8 9e 00 00 	l.ori r4,r30,0x0
    c4e8:	e0 cb f3 06 	l.mul r6,r11,r30
    c4ec:	a8 bc 00 00 	l.ori r5,r28,0x0
    c4f0:	85 62 00 24 	l.lwz r11,36(r2)
    c4f4:	84 82 00 1c 	l.lwz r4,28(r2)
    c4f8:	48 00 58 00 	l.jalr r11
    c4fc:	a8 76 00 00 	l.ori r3,r22,0x0
    c500:	bd 4b 00 00 	l.sfgtsi r11,0
    c504:	10 00 00 20 	l.bf c584 <__sfvwrite_r+0x338>
    c508:	15 00 00 00 	l.nop 0x0
    c50c:	98 62 00 0c 	l.lhs r3,12(r2)
    c510:	a8 63 00 40 	l.ori r3,r3,0x40
    c514:	9d 60 ff ff 	l.addi r11,r0,-1
    c518:	03 ff ff 88 	l.j c338 <__sfvwrite_r+0xec>
    c51c:	dc 02 18 0c 	l.sh 12(r2),r3
    c520:	bc 14 00 00 	l.sfeqi r20,0
    c524:	10 00 00 22 	l.bf c5ac <__sfvwrite_r+0x360>
    c528:	15 00 00 00 	l.nop 0x0
    c52c:	a4 66 02 00 	l.andi r3,r6,0x200
    c530:	bc 03 00 00 	l.sfeqi r3,0
    c534:	10 00 00 22 	l.bf c5bc <__sfvwrite_r+0x370>
    c538:	85 c2 00 08 	l.lwz r14,8(r2)
    c53c:	e4 94 70 00 	l.sfltu r20,r14
    c540:	10 00 00 54 	l.bf c690 <__sfvwrite_r+0x444>
    c544:	ab ce 00 00 	l.ori r30,r14,0x0
    c548:	a4 66 04 80 	l.andi r3,r6,0x480
    c54c:	bc 23 00 00 	l.sfnei r3,0
    c550:	10 00 00 5d 	l.bf c6c4 <__sfvwrite_r+0x478>
    c554:	15 00 00 00 	l.nop 0x0
    c558:	84 62 00 00 	l.lwz r3,0(r2)
    c55c:	a8 be 00 00 	l.ori r5,r30,0x0
    c560:	04 00 00 ae 	l.jal c818 <memmove>
    c564:	a8 9c 00 00 	l.ori r4,r28,0x0
    c568:	85 62 00 08 	l.lwz r11,8(r2)
    c56c:	84 62 00 00 	l.lwz r3,0(r2)
    c570:	e1 cb 70 02 	l.sub r14,r11,r14
    c574:	e3 c3 f0 00 	l.add r30,r3,r30
    c578:	d4 02 70 08 	l.sw 8(r2),r14
    c57c:	d4 02 f0 00 	l.sw 0(r2),r30
    c580:	a9 74 00 00 	l.ori r11,r20,0x0
    c584:	84 7a 00 08 	l.lwz r3,8(r26)
    c588:	e3 9c 58 00 	l.add r28,r28,r11
    c58c:	e0 63 58 02 	l.sub r3,r3,r11
    c590:	e2 94 58 02 	l.sub r20,r20,r11
    c594:	bc 03 00 00 	l.sfeqi r3,0
    c598:	13 ff ff 67 	l.bf c334 <__sfvwrite_r+0xe8>
    c59c:	d4 1a 18 08 	l.sw 8(r26),r3
    c5a0:	bc 14 00 00 	l.sfeqi r20,0
    c5a4:	0f ff ff e2 	l.bnf c52c <__sfvwrite_r+0x2e0>
    c5a8:	94 c2 00 0c 	l.lhz r6,12(r2)
    c5ac:	87 92 00 00 	l.lwz r28,0(r18)
    c5b0:	86 92 00 04 	l.lwz r20,4(r18)
    c5b4:	03 ff ff db 	l.j c520 <__sfvwrite_r+0x2d4>
    c5b8:	9e 52 00 08 	l.addi r18,r18,8
    c5bc:	84 62 00 00 	l.lwz r3,0(r2)
    c5c0:	84 82 00 10 	l.lwz r4,16(r2)
    c5c4:	e4 43 20 00 	l.sfgtu r3,r4
    c5c8:	10 00 00 06 	l.bf c5e0 <__sfvwrite_r+0x394>
    c5cc:	e4 ae a0 00 	l.sfleu r14,r20
    c5d0:	87 c2 00 14 	l.lwz r30,20(r2)
    c5d4:	e4 74 f0 00 	l.sfgeu r20,r30
    c5d8:	13 ff ff ba 	l.bf c4c0 <__sfvwrite_r+0x274>
    c5dc:	e4 ae a0 00 	l.sfleu r14,r20
    c5e0:	10 00 00 03 	l.bf c5ec <__sfvwrite_r+0x3a0>
    c5e4:	a8 9c 00 00 	l.ori r4,r28,0x0
    c5e8:	a9 d4 00 00 	l.ori r14,r20,0x0
    c5ec:	04 00 00 8b 	l.jal c818 <memmove>
    c5f0:	a8 ae 00 00 	l.ori r5,r14,0x0
    c5f4:	84 62 00 08 	l.lwz r3,8(r2)
    c5f8:	84 82 00 00 	l.lwz r4,0(r2)
    c5fc:	e0 63 70 02 	l.sub r3,r3,r14
    c600:	e0 84 70 00 	l.add r4,r4,r14
    c604:	d4 02 18 08 	l.sw 8(r2),r3
    c608:	bc 03 00 00 	l.sfeqi r3,0
    c60c:	10 00 00 04 	l.bf c61c <__sfvwrite_r+0x3d0>
    c610:	d4 02 20 00 	l.sw 0(r2),r4
    c614:	03 ff ff dc 	l.j c584 <__sfvwrite_r+0x338>
    c618:	a9 6e 00 00 	l.ori r11,r14,0x0
    c61c:	a8 82 00 00 	l.ori r4,r2,0x0
    c620:	07 ff ea 90 	l.jal 7060 <_fflush_r>
    c624:	a8 76 00 00 	l.ori r3,r22,0x0
    c628:	bc 2b 00 00 	l.sfnei r11,0
    c62c:	13 ff ff b8 	l.bf c50c <__sfvwrite_r+0x2c0>
    c630:	15 00 00 00 	l.nop 0x0
    c634:	03 ff ff d4 	l.j c584 <__sfvwrite_r+0x338>
    c638:	a9 6e 00 00 	l.ori r11,r14,0x0
    c63c:	a8 9e 00 00 	l.ori r4,r30,0x0
    c640:	04 00 00 76 	l.jal c818 <memmove>
    c644:	d4 01 40 00 	l.sw 0(r1),r8
    c648:	84 62 00 08 	l.lwz r3,8(r2)
    c64c:	84 82 00 00 	l.lwz r4,0(r2)
    c650:	e0 63 c0 02 	l.sub r3,r3,r24
    c654:	e1 ce e0 02 	l.sub r14,r14,r28
    c658:	e3 04 c0 00 	l.add r24,r4,r24
    c65c:	d4 02 18 08 	l.sw 8(r2),r3
    c660:	d4 02 c0 00 	l.sw 0(r2),r24
    c664:	bc 2e 00 00 	l.sfnei r14,0
    c668:	13 ff ff 83 	l.bf c474 <__sfvwrite_r+0x228>
    c66c:	85 01 00 00 	l.lwz r8,0(r1)
    c670:	a8 82 00 00 	l.ori r4,r2,0x0
    c674:	07 ff ea 7b 	l.jal 7060 <_fflush_r>
    c678:	a8 76 00 00 	l.ori r3,r22,0x0
    c67c:	bc 0b 00 00 	l.sfeqi r11,0
    c680:	0f ff ff a3 	l.bnf c50c <__sfvwrite_r+0x2c0>
    c684:	a9 0e 00 00 	l.ori r8,r14,0x0
    c688:	03 ff ff 7c 	l.j c478 <__sfvwrite_r+0x22c>
    c68c:	84 7a 00 08 	l.lwz r3,8(r26)
    c690:	a9 d4 00 00 	l.ori r14,r20,0x0
    c694:	84 62 00 00 	l.lwz r3,0(r2)
    c698:	03 ff ff b1 	l.j c55c <__sfvwrite_r+0x310>
    c69c:	ab d4 00 00 	l.ori r30,r20,0x0
    c6a0:	9c 80 00 0a 	l.addi r4,r0,10
    c6a4:	07 ff f0 be 	l.jal 899c <memchr>
    c6a8:	a8 7e 00 00 	l.ori r3,r30,0x0
    c6ac:	bc 0b 00 00 	l.sfeqi r11,0
    c6b0:	10 00 00 51 	l.bf c7f4 <__sfvwrite_r+0x5a8>
    c6b4:	9d 6b 00 01 	l.addi r11,r11,1
    c6b8:	9d 00 00 01 	l.addi r8,r0,1
    c6bc:	03 ff ff 44 	l.j c3cc <__sfvwrite_r+0x180>
    c6c0:	e1 cb f0 02 	l.sub r14,r11,r30
    c6c4:	84 62 00 14 	l.lwz r3,20(r2)
    c6c8:	84 82 00 10 	l.lwz r4,16(r2)
    c6cc:	e1 c3 18 00 	l.add r14,r3,r3
    c6d0:	87 c2 00 00 	l.lwz r30,0(r2)
    c6d4:	e0 6e 18 00 	l.add r3,r14,r3
    c6d8:	e3 de 20 02 	l.sub r30,r30,r4
    c6dc:	b9 c3 00 5f 	l.srli r14,r3,0x1f
    c6e0:	9c fe 00 01 	l.addi r7,r30,1
    c6e4:	e0 6e 18 00 	l.add r3,r14,r3
    c6e8:	e0 e7 a0 00 	l.add r7,r7,r20
    c6ec:	b9 c3 00 81 	l.srai r14,r3,0x1
    c6f0:	e4 a7 70 00 	l.sfleu r7,r14
    c6f4:	10 00 00 04 	l.bf c704 <__sfvwrite_r+0x4b8>
    c6f8:	a8 ae 00 00 	l.ori r5,r14,0x0
    c6fc:	a9 c7 00 00 	l.ori r14,r7,0x0
    c700:	a8 a7 00 00 	l.ori r5,r7,0x0
    c704:	a4 c6 04 00 	l.andi r6,r6,0x400
    c708:	bc 06 00 00 	l.sfeqi r6,0
    c70c:	10 00 00 2c 	l.bf c7bc <__sfvwrite_r+0x570>
    c710:	15 00 00 00 	l.nop 0x0
    c714:	a8 85 00 00 	l.ori r4,r5,0x0
    c718:	07 ff ee 26 	l.jal 7fb0 <_malloc_r>
    c71c:	a8 76 00 00 	l.ori r3,r22,0x0
    c720:	bc 2b 00 00 	l.sfnei r11,0
    c724:	0c 00 00 39 	l.bnf c808 <__sfvwrite_r+0x5bc>
    c728:	ab 0b 00 00 	l.ori r24,r11,0x0
    c72c:	84 82 00 10 	l.lwz r4,16(r2)
    c730:	a8 6b 00 00 	l.ori r3,r11,0x0
    c734:	07 ff f0 ed 	l.jal 8ae8 <memcpy>
    c738:	a8 be 00 00 	l.ori r5,r30,0x0
    c73c:	94 62 00 0c 	l.lhz r3,12(r2)
    c740:	9c 80 fb 7f 	l.addi r4,r0,-1153
    c744:	e0 63 20 03 	l.and r3,r3,r4
    c748:	a8 63 00 80 	l.ori r3,r3,0x80
    c74c:	dc 02 18 0c 	l.sh 12(r2),r3
    c750:	e0 78 f0 00 	l.add r3,r24,r30
    c754:	e3 ce f0 02 	l.sub r30,r14,r30
    c758:	d4 02 70 14 	l.sw 20(r2),r14
    c75c:	d4 02 f0 08 	l.sw 8(r2),r30
    c760:	d4 02 c0 10 	l.sw 16(r2),r24
    c764:	d4 02 18 00 	l.sw 0(r2),r3
    c768:	a9 d4 00 00 	l.ori r14,r20,0x0
    c76c:	03 ff ff 7c 	l.j c55c <__sfvwrite_r+0x310>
    c770:	ab d4 00 00 	l.ori r30,r20,0x0
    c774:	a8 9e 00 00 	l.ori r4,r30,0x0
    c778:	d4 01 40 00 	l.sw 0(r1),r8
    c77c:	04 00 00 27 	l.jal c818 <memmove>
    c780:	d4 01 38 04 	l.sw 4(r1),r7
    c784:	84 e1 00 04 	l.lwz r7,4(r1)
    c788:	84 a2 00 00 	l.lwz r5,0(r2)
    c78c:	a8 82 00 00 	l.ori r4,r2,0x0
    c790:	e0 a5 38 00 	l.add r5,r5,r7
    c794:	a8 76 00 00 	l.ori r3,r22,0x0
    c798:	d4 02 28 00 	l.sw 0(r2),r5
    c79c:	07 ff ea 31 	l.jal 7060 <_fflush_r>
    c7a0:	d4 01 38 04 	l.sw 4(r1),r7
    c7a4:	bc 0b 00 00 	l.sfeqi r11,0
    c7a8:	84 e1 00 04 	l.lwz r7,4(r1)
    c7ac:	0f ff ff 58 	l.bnf c50c <__sfvwrite_r+0x2c0>
    c7b0:	85 01 00 00 	l.lwz r8,0(r1)
    c7b4:	03 ff ff 2c 	l.j c464 <__sfvwrite_r+0x218>
    c7b8:	ab 87 00 00 	l.ori r28,r7,0x0
    c7bc:	04 00 00 80 	l.jal c9bc <_realloc_r>
    c7c0:	a8 76 00 00 	l.ori r3,r22,0x0
    c7c4:	bc 2b 00 00 	l.sfnei r11,0
    c7c8:	13 ff ff e2 	l.bf c750 <__sfvwrite_r+0x504>
    c7cc:	ab 0b 00 00 	l.ori r24,r11,0x0
    c7d0:	84 82 00 10 	l.lwz r4,16(r2)
    c7d4:	07 ff eb dd 	l.jal 7748 <_free_r>
    c7d8:	a8 76 00 00 	l.ori r3,r22,0x0
    c7dc:	98 62 00 0c 	l.lhs r3,12(r2)
    c7e0:	9c 80 ff 7f 	l.addi r4,r0,-129
    c7e4:	e0 63 20 03 	l.and r3,r3,r4
    c7e8:	9c 80 00 0c 	l.addi r4,r0,12
    c7ec:	03 ff ff 49 	l.j c510 <__sfvwrite_r+0x2c4>
    c7f0:	d4 16 20 00 	l.sw 0(r22),r4
    c7f4:	9d d4 00 01 	l.addi r14,r20,1
    c7f8:	03 ff fe f5 	l.j c3cc <__sfvwrite_r+0x180>
    c7fc:	9d 00 00 01 	l.addi r8,r0,1
    c800:	03 ff fe ce 	l.j c338 <__sfvwrite_r+0xec>
    c804:	9d 60 ff ff 	l.addi r11,r0,-1
    c808:	9c 80 00 0c 	l.addi r4,r0,12
    c80c:	98 62 00 0c 	l.lhs r3,12(r2)
    c810:	03 ff ff 40 	l.j c510 <__sfvwrite_r+0x2c4>
    c814:	d4 16 20 00 	l.sw 0(r22),r4

0000c818 <memmove>:
    c818:	d7 e1 0f f8 	l.sw -8(r1),r1
    c81c:	d7 e1 17 fc 	l.sw -4(r1),r2
    c820:	e4 a3 20 00 	l.sfleu r3,r4
    c824:	10 00 00 15 	l.bf c878 <memmove+0x60>
    c828:	9c 21 ff f8 	l.addi r1,r1,-8
    c82c:	e0 c4 28 00 	l.add r6,r4,r5
    c830:	e4 63 30 00 	l.sfgeu r3,r6
    c834:	10 00 00 12 	l.bf c87c <memmove+0x64>
    c838:	bc a5 00 0f 	l.sfleui r5,15
    c83c:	e0 83 28 00 	l.add r4,r3,r5
    c840:	bc 25 00 00 	l.sfnei r5,0
    c844:	0c 00 00 08 	l.bnf c864 <memmove+0x4c>
    c848:	e0 a4 28 02 	l.sub r5,r4,r5
    c84c:	9c c6 ff ff 	l.addi r6,r6,-1
    c850:	8c 46 00 00 	l.lbz r2,0(r6)
    c854:	9c 84 ff ff 	l.addi r4,r4,-1
    c858:	e4 25 20 00 	l.sfne r5,r4
    c85c:	13 ff ff fc 	l.bf c84c <memmove+0x34>
    c860:	d8 04 10 00 	l.sb 0(r4),r2
    c864:	9c 21 00 08 	l.addi r1,r1,8
    c868:	a9 63 00 00 	l.ori r11,r3,0x0
    c86c:	84 21 ff f8 	l.lwz r1,-8(r1)
    c870:	44 00 48 00 	l.jr r9
    c874:	84 41 ff fc 	l.lwz r2,-4(r1)
    c878:	bc a5 00 0f 	l.sfleui r5,15
    c87c:	0c 00 00 12 	l.bnf c8c4 <memmove+0xac>
    c880:	e0 c4 18 04 	l.or r6,r4,r3
    c884:	a8 c3 00 00 	l.ori r6,r3,0x0
    c888:	bc 05 00 00 	l.sfeqi r5,0
    c88c:	13 ff ff f6 	l.bf c864 <memmove+0x4c>
    c890:	15 00 00 00 	l.nop 0x0
    c894:	e0 a6 28 00 	l.add r5,r6,r5
    c898:	8c 44 00 00 	l.lbz r2,0(r4)
    c89c:	9c c6 00 01 	l.addi r6,r6,1
    c8a0:	db e6 17 ff 	l.sb -1(r6),r2
    c8a4:	e4 26 28 00 	l.sfne r6,r5
    c8a8:	13 ff ff fc 	l.bf c898 <memmove+0x80>
    c8ac:	9c 84 00 01 	l.addi r4,r4,1
    c8b0:	9c 21 00 08 	l.addi r1,r1,8
    c8b4:	a9 63 00 00 	l.ori r11,r3,0x0
    c8b8:	84 21 ff f8 	l.lwz r1,-8(r1)
    c8bc:	44 00 48 00 	l.jr r9
    c8c0:	84 41 ff fc 	l.lwz r2,-4(r1)
    c8c4:	a4 c6 00 03 	l.andi r6,r6,0x3
    c8c8:	bc 26 00 00 	l.sfnei r6,0
    c8cc:	13 ff ff f2 	l.bf c894 <memmove+0x7c>
    c8d0:	a8 c3 00 00 	l.ori r6,r3,0x0
    c8d4:	9e e5 ff f0 	l.addi r23,r5,-16
    c8d8:	9c c4 00 04 	l.addi r6,r4,4
    c8dc:	ba f7 00 44 	l.srli r23,r23,0x4
    c8e0:	9e 63 00 04 	l.addi r19,r3,4
    c8e4:	9e 24 00 08 	l.addi r17,r4,8
    c8e8:	ba b7 00 04 	l.slli r21,r23,0x4
    c8ec:	9d e3 00 08 	l.addi r15,r3,8
    c8f0:	9d a4 00 0c 	l.addi r13,r4,12
    c8f4:	9e b5 00 14 	l.addi r21,r21,20
    c8f8:	9d 83 00 0c 	l.addi r12,r3,12
    c8fc:	e2 a4 a8 00 	l.add r21,r4,r21
    c900:	a9 04 00 00 	l.ori r8,r4,0x0
    c904:	a8 e3 00 00 	l.ori r7,r3,0x0
    c908:	85 68 00 00 	l.lwz r11,0(r8)
    c90c:	9c c6 00 10 	l.addi r6,r6,16
    c910:	d4 07 58 00 	l.sw 0(r7),r11
    c914:	e4 26 a8 00 	l.sfne r6,r21
    c918:	85 66 ff f0 	l.lwz r11,-16(r6)
    c91c:	9d 08 00 10 	l.addi r8,r8,16
    c920:	d4 13 58 00 	l.sw 0(r19),r11
    c924:	9c e7 00 10 	l.addi r7,r7,16
    c928:	85 71 00 00 	l.lwz r11,0(r17)
    c92c:	9e 73 00 10 	l.addi r19,r19,16
    c930:	d4 0f 58 00 	l.sw 0(r15),r11
    c934:	9e 31 00 10 	l.addi r17,r17,16
    c938:	85 6d 00 00 	l.lwz r11,0(r13)
    c93c:	9d ef 00 10 	l.addi r15,r15,16
    c940:	d4 0c 58 00 	l.sw 0(r12),r11
    c944:	9d ad 00 10 	l.addi r13,r13,16
    c948:	13 ff ff f0 	l.bf c908 <memmove+0xf0>
    c94c:	9d 8c 00 10 	l.addi r12,r12,16
    c950:	9c f7 00 01 	l.addi r7,r23,1
    c954:	a5 a5 00 0f 	l.andi r13,r5,0xf
    c958:	b8 e7 00 04 	l.slli r7,r7,0x4
    c95c:	bc ad 00 03 	l.sfleui r13,3
    c960:	e0 c3 38 00 	l.add r6,r3,r7
    c964:	10 00 00 14 	l.bf c9b4 <memmove+0x19c>
    c968:	e0 84 38 00 	l.add r4,r4,r7
    c96c:	a9 86 00 00 	l.ori r12,r6,0x0
    c970:	a9 04 00 00 	l.ori r8,r4,0x0
    c974:	a8 ed 00 00 	l.ori r7,r13,0x0
    c978:	85 68 00 00 	l.lwz r11,0(r8)
    c97c:	9c e7 ff fc 	l.addi r7,r7,-4
    c980:	d4 0c 58 00 	l.sw 0(r12),r11
    c984:	bc 47 00 03 	l.sfgtui r7,3
    c988:	9d 8c 00 04 	l.addi r12,r12,4
    c98c:	13 ff ff fb 	l.bf c978 <memmove+0x160>
    c990:	9d 08 00 04 	l.addi r8,r8,4
    c994:	9c ed ff fc 	l.addi r7,r13,-4
    c998:	9c 40 ff fc 	l.addi r2,r0,-4
    c99c:	a4 a5 00 03 	l.andi r5,r5,0x3
    c9a0:	e0 e7 10 03 	l.and r7,r7,r2
    c9a4:	9c e7 00 04 	l.addi r7,r7,4
    c9a8:	e0 c6 38 00 	l.add r6,r6,r7
    c9ac:	03 ff ff b7 	l.j c888 <memmove+0x70>
    c9b0:	e0 84 38 00 	l.add r4,r4,r7
    c9b4:	03 ff ff b5 	l.j c888 <memmove+0x70>
    c9b8:	a8 ad 00 00 	l.ori r5,r13,0x0

0000c9bc <_realloc_r>:
    c9bc:	d7 e1 77 dc 	l.sw -36(r1),r14
    c9c0:	d7 e1 b7 e8 	l.sw -24(r1),r22
    c9c4:	d7 e1 4f fc 	l.sw -4(r1),r9
    c9c8:	d7 e1 0f d4 	l.sw -44(r1),r1
    c9cc:	d7 e1 17 d8 	l.sw -40(r1),r2
    c9d0:	d7 e1 97 e0 	l.sw -32(r1),r18
    c9d4:	d7 e1 a7 e4 	l.sw -28(r1),r20
    c9d8:	d7 e1 c7 ec 	l.sw -20(r1),r24
    c9dc:	d7 e1 d7 f0 	l.sw -16(r1),r26
    c9e0:	d7 e1 e7 f4 	l.sw -12(r1),r28
    c9e4:	d7 e1 f7 f8 	l.sw -8(r1),r30
    c9e8:	bc 24 00 00 	l.sfnei r4,0
    c9ec:	9c 21 ff d0 	l.addi r1,r1,-48
    c9f0:	aa c4 00 00 	l.ori r22,r4,0x0
    c9f4:	0c 00 00 88 	l.bnf cc14 <_realloc_r+0x258>
    c9f8:	a9 c3 00 00 	l.ori r14,r3,0x0
    c9fc:	07 ff f0 ec 	l.jal 8dac <__malloc_lock>
    ca00:	d4 01 28 00 	l.sw 0(r1),r5
    ca04:	84 a1 00 00 	l.lwz r5,0(r1)
    ca08:	84 d6 ff fc 	l.lwz r6,-4(r22)
    ca0c:	9c 45 00 0b 	l.addi r2,r5,11
    ca10:	9c 60 ff fc 	l.addi r3,r0,-4
    ca14:	bc a2 00 16 	l.sfleui r2,22
    ca18:	9f 56 ff f8 	l.addi r26,r22,-8
    ca1c:	0c 00 00 46 	l.bnf cb34 <_realloc_r+0x178>
    ca20:	e3 06 18 03 	l.and r24,r6,r3
    ca24:	9c 80 00 10 	l.addi r4,r0,16
    ca28:	9c 60 00 00 	l.addi r3,r0,0
    ca2c:	aa 84 00 00 	l.ori r20,r4,0x0
    ca30:	e4 94 28 00 	l.sfltu r20,r5
    ca34:	10 00 00 03 	l.bf ca40 <_realloc_r+0x84>
    ca38:	9c 40 00 01 	l.addi r2,r0,1
    ca3c:	9c 40 00 00 	l.addi r2,r0,0
    ca40:	a4 42 00 ff 	l.andi r2,r2,0xff
    ca44:	bc 22 00 00 	l.sfnei r2,0
    ca48:	10 00 00 bc 	l.bf cd38 <_realloc_r+0x37c>
    ca4c:	bc 03 00 00 	l.sfeqi r3,0
    ca50:	0c 00 00 ba 	l.bnf cd38 <_realloc_r+0x37c>
    ca54:	e5 78 20 00 	l.sfges r24,r4
    ca58:	10 00 00 3c 	l.bf cb48 <_realloc_r+0x18c>
    ca5c:	aa 56 00 00 	l.ori r18,r22,0x0
    ca60:	1a 40 00 01 	l.movhi r18,0x1
    ca64:	e0 7a c0 00 	l.add r3,r26,r24
    ca68:	aa 52 25 18 	l.ori r18,r18,0x2518
    ca6c:	84 52 00 08 	l.lwz r2,8(r18)
    ca70:	e4 03 10 00 	l.sfeq r3,r2
    ca74:	10 00 00 b5 	l.bf cd48 <_realloc_r+0x38c>
    ca78:	84 43 00 04 	l.lwz r2,4(r3)
    ca7c:	9d 00 ff fe 	l.addi r8,r0,-2
    ca80:	e0 e2 40 03 	l.and r7,r2,r8
    ca84:	e0 e3 38 00 	l.add r7,r3,r7
    ca88:	84 e7 00 04 	l.lwz r7,4(r7)
    ca8c:	a4 e7 00 01 	l.andi r7,r7,0x1
    ca90:	bc 07 00 00 	l.sfeqi r7,0
    ca94:	10 00 00 47 	l.bf cbb0 <_realloc_r+0x1f4>
    ca98:	9d 00 ff fc 	l.addi r8,r0,-4
    ca9c:	a4 c6 00 01 	l.andi r6,r6,0x1
    caa0:	bc 06 00 00 	l.sfeqi r6,0
    caa4:	10 00 00 8e 	l.bf ccdc <_realloc_r+0x320>
    caa8:	15 00 00 00 	l.nop 0x0
    caac:	a8 85 00 00 	l.ori r4,r5,0x0
    cab0:	07 ff ed 40 	l.jal 7fb0 <_malloc_r>
    cab4:	a8 6e 00 00 	l.ori r3,r14,0x0
    cab8:	bc 2b 00 00 	l.sfnei r11,0
    cabc:	0c 00 00 1a 	l.bnf cb24 <_realloc_r+0x168>
    cac0:	a8 4b 00 00 	l.ori r2,r11,0x0
    cac4:	84 d6 ff fc 	l.lwz r6,-4(r22)
    cac8:	9c a0 ff fe 	l.addi r5,r0,-2
    cacc:	9c 8b ff f8 	l.addi r4,r11,-8
    cad0:	e0 66 28 03 	l.and r3,r6,r5
    cad4:	e0 7a 18 00 	l.add r3,r26,r3
    cad8:	e4 24 18 00 	l.sfne r4,r3
    cadc:	0c 00 00 f6 	l.bnf ceb4 <_realloc_r+0x4f8>
    cae0:	9c b8 ff fc 	l.addi r5,r24,-4
    cae4:	bc 45 00 24 	l.sfgtui r5,36
    cae8:	10 00 00 e5 	l.bf ce7c <_realloc_r+0x4c0>
    caec:	bc a5 00 13 	l.sfleui r5,19
    caf0:	0c 00 00 ce 	l.bnf ce28 <_realloc_r+0x46c>
    caf4:	bc 45 00 1b 	l.sfgtui r5,27
    caf8:	a8 6b 00 00 	l.ori r3,r11,0x0
    cafc:	a8 96 00 00 	l.ori r4,r22,0x0
    cb00:	84 a4 00 00 	l.lwz r5,0(r4)
    cb04:	d4 03 28 00 	l.sw 0(r3),r5
    cb08:	84 a4 00 04 	l.lwz r5,4(r4)
    cb0c:	d4 03 28 04 	l.sw 4(r3),r5
    cb10:	84 84 00 08 	l.lwz r4,8(r4)
    cb14:	d4 03 20 08 	l.sw 8(r3),r4
    cb18:	a8 96 00 00 	l.ori r4,r22,0x0
    cb1c:	07 ff eb 0b 	l.jal 7748 <_free_r>
    cb20:	a8 6e 00 00 	l.ori r3,r14,0x0
    cb24:	07 ff f0 cc 	l.jal 8e54 <__malloc_unlock>
    cb28:	a8 6e 00 00 	l.ori r3,r14,0x0
    cb2c:	00 00 00 14 	l.j cb7c <_realloc_r+0x1c0>
    cb30:	a9 62 00 00 	l.ori r11,r2,0x0
    cb34:	9c e0 ff f8 	l.addi r7,r0,-8
    cb38:	e2 82 38 03 	l.and r20,r2,r7
    cb3c:	a8 94 00 00 	l.ori r4,r20,0x0
    cb40:	03 ff ff bc 	l.j ca30 <_realloc_r+0x74>
    cb44:	b8 74 00 5f 	l.srli r3,r20,0x1f
    cb48:	e0 58 a0 02 	l.sub r2,r24,r20
    cb4c:	bc a2 00 0f 	l.sfleui r2,15
    cb50:	0c 00 00 23 	l.bnf cbdc <_realloc_r+0x220>
    cb54:	a4 c6 00 01 	l.andi r6,r6,0x1
    cb58:	e0 c6 c0 04 	l.or r6,r6,r24
    cb5c:	e0 7a c0 00 	l.add r3,r26,r24
    cb60:	d4 1a 30 04 	l.sw 4(r26),r6
    cb64:	84 43 00 04 	l.lwz r2,4(r3)
    cb68:	a8 42 00 01 	l.ori r2,r2,0x1
    cb6c:	d4 03 10 04 	l.sw 4(r3),r2
    cb70:	07 ff f0 b9 	l.jal 8e54 <__malloc_unlock>
    cb74:	a8 6e 00 00 	l.ori r3,r14,0x0
    cb78:	a9 72 00 00 	l.ori r11,r18,0x0
    cb7c:	9c 21 00 30 	l.addi r1,r1,48
    cb80:	85 21 ff fc 	l.lwz r9,-4(r1)
    cb84:	84 21 ff d4 	l.lwz r1,-44(r1)
    cb88:	84 41 ff d8 	l.lwz r2,-40(r1)
    cb8c:	85 c1 ff dc 	l.lwz r14,-36(r1)
    cb90:	86 41 ff e0 	l.lwz r18,-32(r1)
    cb94:	86 81 ff e4 	l.lwz r20,-28(r1)
    cb98:	86 c1 ff e8 	l.lwz r22,-24(r1)
    cb9c:	87 01 ff ec 	l.lwz r24,-20(r1)
    cba0:	87 41 ff f0 	l.lwz r26,-16(r1)
    cba4:	87 81 ff f4 	l.lwz r28,-12(r1)
    cba8:	44 00 48 00 	l.jr r9
    cbac:	87 c1 ff f8 	l.lwz r30,-8(r1)
    cbb0:	e0 42 40 03 	l.and r2,r2,r8
    cbb4:	e0 42 c0 00 	l.add r2,r2,r24
    cbb8:	e5 62 20 00 	l.sfges r2,r4
    cbbc:	0c 00 00 1a 	l.bnf cc24 <_realloc_r+0x268>
    cbc0:	aa 56 00 00 	l.ori r18,r22,0x0
    cbc4:	84 83 00 0c 	l.lwz r4,12(r3)
    cbc8:	84 63 00 08 	l.lwz r3,8(r3)
    cbcc:	d4 03 20 0c 	l.sw 12(r3),r4
    cbd0:	d4 04 18 08 	l.sw 8(r4),r3
    cbd4:	03 ff ff dd 	l.j cb48 <_realloc_r+0x18c>
    cbd8:	ab 02 00 00 	l.ori r24,r2,0x0
    cbdc:	e0 9a a0 00 	l.add r4,r26,r20
    cbe0:	e2 86 a0 04 	l.or r20,r6,r20
    cbe4:	a8 62 00 01 	l.ori r3,r2,0x1
    cbe8:	d4 1a a0 04 	l.sw 4(r26),r20
    cbec:	d4 04 18 04 	l.sw 4(r4),r3
    cbf0:	e0 44 10 00 	l.add r2,r4,r2
    cbf4:	a8 6e 00 00 	l.ori r3,r14,0x0
    cbf8:	84 a2 00 04 	l.lwz r5,4(r2)
    cbfc:	9c 84 00 08 	l.addi r4,r4,8
    cc00:	a8 a5 00 01 	l.ori r5,r5,0x1
    cc04:	07 ff ea d1 	l.jal 7748 <_free_r>
    cc08:	d4 02 28 04 	l.sw 4(r2),r5
    cc0c:	03 ff ff d9 	l.j cb70 <_realloc_r+0x1b4>
    cc10:	15 00 00 00 	l.nop 0x0
    cc14:	07 ff ec e7 	l.jal 7fb0 <_malloc_r>
    cc18:	a8 85 00 00 	l.ori r4,r5,0x0
    cc1c:	03 ff ff d9 	l.j cb80 <_realloc_r+0x1c4>
    cc20:	9c 21 00 30 	l.addi r1,r1,48
    cc24:	a4 c6 00 01 	l.andi r6,r6,0x1
    cc28:	bc 06 00 00 	l.sfeqi r6,0
    cc2c:	0f ff ff a0 	l.bnf caac <_realloc_r+0xf0>
    cc30:	9c e0 ff fc 	l.addi r7,r0,-4
    cc34:	87 96 ff f8 	l.lwz r28,-8(r22)
    cc38:	e3 9a e0 02 	l.sub r28,r26,r28
    cc3c:	84 dc 00 04 	l.lwz r6,4(r28)
    cc40:	e0 c6 38 03 	l.and r6,r6,r7
    cc44:	e0 42 30 00 	l.add r2,r2,r6
    cc48:	e5 62 20 00 	l.sfges r2,r4
    cc4c:	0c 00 00 28 	l.bnf ccec <_realloc_r+0x330>
    cc50:	15 00 00 00 	l.nop 0x0
    cc54:	84 83 00 0c 	l.lwz r4,12(r3)
    cc58:	84 63 00 08 	l.lwz r3,8(r3)
    cc5c:	9c b8 ff fc 	l.addi r5,r24,-4
    cc60:	d4 03 20 0c 	l.sw 12(r3),r4
    cc64:	d4 04 18 08 	l.sw 8(r4),r3
    cc68:	84 7c 00 0c 	l.lwz r3,12(r28)
    cc6c:	84 9c 00 08 	l.lwz r4,8(r28)
    cc70:	bc 45 00 24 	l.sfgtui r5,36
    cc74:	d4 04 18 0c 	l.sw 12(r4),r3
    cc78:	d4 03 20 08 	l.sw 8(r3),r4
    cc7c:	10 00 00 28 	l.bf cd1c <_realloc_r+0x360>
    cc80:	9c 7c 00 08 	l.addi r3,r28,8
    cc84:	bc a5 00 13 	l.sfleui r5,19
    cc88:	10 00 00 0a 	l.bf ccb0 <_realloc_r+0x2f4>
    cc8c:	a8 83 00 00 	l.ori r4,r3,0x0
    cc90:	84 96 00 00 	l.lwz r4,0(r22)
    cc94:	bc 45 00 1b 	l.sfgtui r5,27
    cc98:	d4 1c 20 08 	l.sw 8(r28),r4
    cc9c:	84 96 00 04 	l.lwz r4,4(r22)
    cca0:	10 00 00 8b 	l.bf cecc <_realloc_r+0x510>
    cca4:	d4 1c 20 0c 	l.sw 12(r28),r4
    cca8:	9c 9c 00 10 	l.addi r4,r28,16
    ccac:	9e d6 00 08 	l.addi r22,r22,8
    ccb0:	84 b6 00 00 	l.lwz r5,0(r22)
    ccb4:	ab 02 00 00 	l.ori r24,r2,0x0
    ccb8:	d4 04 28 00 	l.sw 0(r4),r5
    ccbc:	aa 43 00 00 	l.ori r18,r3,0x0
    ccc0:	84 56 00 04 	l.lwz r2,4(r22)
    ccc4:	ab 5c 00 00 	l.ori r26,r28,0x0
    ccc8:	d4 04 10 04 	l.sw 4(r4),r2
    cccc:	84 56 00 08 	l.lwz r2,8(r22)
    ccd0:	d4 04 10 08 	l.sw 8(r4),r2
    ccd4:	03 ff ff 9d 	l.j cb48 <_realloc_r+0x18c>
    ccd8:	84 dc 00 04 	l.lwz r6,4(r28)
    ccdc:	87 96 ff f8 	l.lwz r28,-8(r22)
    cce0:	e3 9a e0 02 	l.sub r28,r26,r28
    cce4:	84 dc 00 04 	l.lwz r6,4(r28)
    cce8:	e0 c6 40 03 	l.and r6,r6,r8
    ccec:	e0 58 30 00 	l.add r2,r24,r6
    ccf0:	e5 82 20 00 	l.sflts r2,r4
    ccf4:	13 ff ff 6f 	l.bf cab0 <_realloc_r+0xf4>
    ccf8:	a8 85 00 00 	l.ori r4,r5,0x0
    ccfc:	84 7c 00 0c 	l.lwz r3,12(r28)
    cd00:	84 9c 00 08 	l.lwz r4,8(r28)
    cd04:	9c b8 ff fc 	l.addi r5,r24,-4
    cd08:	d4 04 18 0c 	l.sw 12(r4),r3
    cd0c:	d4 03 20 08 	l.sw 8(r3),r4
    cd10:	bc 45 00 24 	l.sfgtui r5,36
    cd14:	0f ff ff dc 	l.bnf cc84 <_realloc_r+0x2c8>
    cd18:	9c 7c 00 08 	l.addi r3,r28,8
    cd1c:	a8 96 00 00 	l.ori r4,r22,0x0
    cd20:	07 ff fe be 	l.jal c818 <memmove>
    cd24:	aa 43 00 00 	l.ori r18,r3,0x0
    cd28:	ab 02 00 00 	l.ori r24,r2,0x0
    cd2c:	84 dc 00 04 	l.lwz r6,4(r28)
    cd30:	03 ff ff 86 	l.j cb48 <_realloc_r+0x18c>
    cd34:	ab 5c 00 00 	l.ori r26,r28,0x0
    cd38:	9c 40 00 0c 	l.addi r2,r0,12
    cd3c:	9d 60 00 00 	l.addi r11,r0,0
    cd40:	03 ff ff 8f 	l.j cb7c <_realloc_r+0x1c0>
    cd44:	d4 0e 10 00 	l.sw 0(r14),r2
    cd48:	9c e0 ff fc 	l.addi r7,r0,-4
    cd4c:	9c 74 00 10 	l.addi r3,r20,16
    cd50:	e0 42 38 03 	l.and r2,r2,r7
    cd54:	e0 42 c0 00 	l.add r2,r2,r24
    cd58:	e5 62 18 00 	l.sfges r2,r3
    cd5c:	10 00 00 3b 	l.bf ce48 <_realloc_r+0x48c>
    cd60:	a4 c6 00 01 	l.andi r6,r6,0x1
    cd64:	bc 06 00 00 	l.sfeqi r6,0
    cd68:	0f ff ff 51 	l.bnf caac <_realloc_r+0xf0>
    cd6c:	9d 00 ff fc 	l.addi r8,r0,-4
    cd70:	87 96 ff f8 	l.lwz r28,-8(r22)
    cd74:	e3 9a e0 02 	l.sub r28,r26,r28
    cd78:	84 dc 00 04 	l.lwz r6,4(r28)
    cd7c:	e0 c6 40 03 	l.and r6,r6,r8
    cd80:	e3 c6 10 00 	l.add r30,r6,r2
    cd84:	e5 a3 f0 00 	l.sfles r3,r30
    cd88:	0f ff ff d9 	l.bnf ccec <_realloc_r+0x330>
    cd8c:	15 00 00 00 	l.nop 0x0
    cd90:	84 5c 00 0c 	l.lwz r2,12(r28)
    cd94:	84 7c 00 08 	l.lwz r3,8(r28)
    cd98:	9c b8 ff fc 	l.addi r5,r24,-4
    cd9c:	d4 03 10 0c 	l.sw 12(r3),r2
    cda0:	d4 02 18 08 	l.sw 8(r2),r3
    cda4:	bc 45 00 24 	l.sfgtui r5,36
    cda8:	10 00 00 60 	l.bf cf28 <_realloc_r+0x56c>
    cdac:	9c 5c 00 08 	l.addi r2,r28,8
    cdb0:	bc a5 00 13 	l.sfleui r5,19
    cdb4:	10 00 00 0a 	l.bf cddc <_realloc_r+0x420>
    cdb8:	a8 62 00 00 	l.ori r3,r2,0x0
    cdbc:	84 76 00 00 	l.lwz r3,0(r22)
    cdc0:	bc 45 00 1b 	l.sfgtui r5,27
    cdc4:	d4 1c 18 08 	l.sw 8(r28),r3
    cdc8:	84 76 00 04 	l.lwz r3,4(r22)
    cdcc:	10 00 00 5c 	l.bf cf3c <_realloc_r+0x580>
    cdd0:	d4 1c 18 0c 	l.sw 12(r28),r3
    cdd4:	9c 7c 00 10 	l.addi r3,r28,16
    cdd8:	9e d6 00 08 	l.addi r22,r22,8
    cddc:	84 96 00 00 	l.lwz r4,0(r22)
    cde0:	d4 03 20 00 	l.sw 0(r3),r4
    cde4:	84 96 00 04 	l.lwz r4,4(r22)
    cde8:	d4 03 20 04 	l.sw 4(r3),r4
    cdec:	84 96 00 08 	l.lwz r4,8(r22)
    cdf0:	d4 03 20 08 	l.sw 8(r3),r4
    cdf4:	e0 7e a0 02 	l.sub r3,r30,r20
    cdf8:	e0 9c a0 00 	l.add r4,r28,r20
    cdfc:	a8 63 00 01 	l.ori r3,r3,0x1
    ce00:	d4 12 20 08 	l.sw 8(r18),r4
    ce04:	d4 04 18 04 	l.sw 4(r4),r3
    ce08:	a8 6e 00 00 	l.ori r3,r14,0x0
    ce0c:	84 9c 00 04 	l.lwz r4,4(r28)
    ce10:	a4 84 00 01 	l.andi r4,r4,0x1
    ce14:	e2 84 a0 04 	l.or r20,r4,r20
    ce18:	07 ff f0 0f 	l.jal 8e54 <__malloc_unlock>
    ce1c:	d4 1c a0 04 	l.sw 4(r28),r20
    ce20:	03 ff ff 57 	l.j cb7c <_realloc_r+0x1c0>
    ce24:	a9 62 00 00 	l.ori r11,r2,0x0
    ce28:	84 76 00 00 	l.lwz r3,0(r22)
    ce2c:	d4 0b 18 00 	l.sw 0(r11),r3
    ce30:	84 76 00 04 	l.lwz r3,4(r22)
    ce34:	10 00 00 17 	l.bf ce90 <_realloc_r+0x4d4>
    ce38:	d4 0b 18 04 	l.sw 4(r11),r3
    ce3c:	9c 6b 00 08 	l.addi r3,r11,8
    ce40:	03 ff ff 30 	l.j cb00 <_realloc_r+0x144>
    ce44:	9c 96 00 08 	l.addi r4,r22,8
    ce48:	e0 42 a0 02 	l.sub r2,r2,r20
    ce4c:	e3 5a a0 00 	l.add r26,r26,r20
    ce50:	a8 42 00 01 	l.ori r2,r2,0x1
    ce54:	d4 12 d0 08 	l.sw 8(r18),r26
    ce58:	d4 1a 10 04 	l.sw 4(r26),r2
    ce5c:	a8 6e 00 00 	l.ori r3,r14,0x0
    ce60:	84 56 ff fc 	l.lwz r2,-4(r22)
    ce64:	a4 42 00 01 	l.andi r2,r2,0x1
    ce68:	e0 42 a0 04 	l.or r2,r2,r20
    ce6c:	07 ff ef fa 	l.jal 8e54 <__malloc_unlock>
    ce70:	d7 f6 17 fc 	l.sw -4(r22),r2
    ce74:	03 ff ff 42 	l.j cb7c <_realloc_r+0x1c0>
    ce78:	a9 76 00 00 	l.ori r11,r22,0x0
    ce7c:	a8 96 00 00 	l.ori r4,r22,0x0
    ce80:	07 ff fe 66 	l.jal c818 <memmove>
    ce84:	a8 6b 00 00 	l.ori r3,r11,0x0
    ce88:	03 ff ff 25 	l.j cb1c <_realloc_r+0x160>
    ce8c:	a8 96 00 00 	l.ori r4,r22,0x0
    ce90:	84 76 00 08 	l.lwz r3,8(r22)
    ce94:	bc 05 00 24 	l.sfeqi r5,36
    ce98:	d4 0b 18 08 	l.sw 8(r11),r3
    ce9c:	84 76 00 0c 	l.lwz r3,12(r22)
    cea0:	10 00 00 14 	l.bf cef0 <_realloc_r+0x534>
    cea4:	d4 0b 18 0c 	l.sw 12(r11),r3
    cea8:	9c 6b 00 10 	l.addi r3,r11,16
    ceac:	03 ff ff 15 	l.j cb00 <_realloc_r+0x144>
    ceb0:	9c 96 00 10 	l.addi r4,r22,16
    ceb4:	84 4b ff fc 	l.lwz r2,-4(r11)
    ceb8:	9c e0 ff fc 	l.addi r7,r0,-4
    cebc:	aa 56 00 00 	l.ori r18,r22,0x0
    cec0:	e0 42 38 03 	l.and r2,r2,r7
    cec4:	03 ff ff 21 	l.j cb48 <_realloc_r+0x18c>
    cec8:	e3 18 10 00 	l.add r24,r24,r2
    cecc:	84 96 00 08 	l.lwz r4,8(r22)
    ced0:	bc 05 00 24 	l.sfeqi r5,36
    ced4:	d4 1c 20 10 	l.sw 16(r28),r4
    ced8:	84 96 00 0c 	l.lwz r4,12(r22)
    cedc:	10 00 00 0c 	l.bf cf0c <_realloc_r+0x550>
    cee0:	d4 1c 20 14 	l.sw 20(r28),r4
    cee4:	9c 9c 00 18 	l.addi r4,r28,24
    cee8:	03 ff ff 72 	l.j ccb0 <_realloc_r+0x2f4>
    ceec:	9e d6 00 10 	l.addi r22,r22,16
    cef0:	84 96 00 10 	l.lwz r4,16(r22)
    cef4:	9c 6b 00 18 	l.addi r3,r11,24
    cef8:	d4 0b 20 10 	l.sw 16(r11),r4
    cefc:	9c 96 00 18 	l.addi r4,r22,24
    cf00:	84 b6 00 14 	l.lwz r5,20(r22)
    cf04:	03 ff fe ff 	l.j cb00 <_realloc_r+0x144>
    cf08:	d4 0b 28 14 	l.sw 20(r11),r5
    cf0c:	84 b6 00 10 	l.lwz r5,16(r22)
    cf10:	9c 9c 00 20 	l.addi r4,r28,32
    cf14:	d4 1c 28 18 	l.sw 24(r28),r5
    cf18:	9e d6 00 18 	l.addi r22,r22,24
    cf1c:	84 b6 ff fc 	l.lwz r5,-4(r22)
    cf20:	03 ff ff 64 	l.j ccb0 <_realloc_r+0x2f4>
    cf24:	d4 1c 28 1c 	l.sw 28(r28),r5
    cf28:	a8 96 00 00 	l.ori r4,r22,0x0
    cf2c:	07 ff fe 3b 	l.jal c818 <memmove>
    cf30:	a8 62 00 00 	l.ori r3,r2,0x0
    cf34:	03 ff ff b1 	l.j cdf8 <_realloc_r+0x43c>
    cf38:	e0 7e a0 02 	l.sub r3,r30,r20
    cf3c:	84 76 00 08 	l.lwz r3,8(r22)
    cf40:	bc 05 00 24 	l.sfeqi r5,36
    cf44:	d4 1c 18 10 	l.sw 16(r28),r3
    cf48:	84 76 00 0c 	l.lwz r3,12(r22)
    cf4c:	10 00 00 05 	l.bf cf60 <_realloc_r+0x5a4>
    cf50:	d4 1c 18 14 	l.sw 20(r28),r3
    cf54:	9c 7c 00 18 	l.addi r3,r28,24
    cf58:	03 ff ff a1 	l.j cddc <_realloc_r+0x420>
    cf5c:	9e d6 00 10 	l.addi r22,r22,16
    cf60:	84 96 00 10 	l.lwz r4,16(r22)
    cf64:	9c 7c 00 20 	l.addi r3,r28,32
    cf68:	d4 1c 20 18 	l.sw 24(r28),r4
    cf6c:	9e d6 00 18 	l.addi r22,r22,24
    cf70:	84 96 ff fc 	l.lwz r4,-4(r22)
    cf74:	03 ff ff 9a 	l.j cddc <_realloc_r+0x420>
    cf78:	d4 1c 20 1c 	l.sw 28(r28),r4

0000cf7c <__swbuf_r>:
    cf7c:	d7 e1 77 f4 	l.sw -12(r1),r14
    cf80:	d7 e1 97 f8 	l.sw -8(r1),r18
    cf84:	d7 e1 4f fc 	l.sw -4(r1),r9
    cf88:	d7 e1 0f ec 	l.sw -20(r1),r1
    cf8c:	d7 e1 17 f0 	l.sw -16(r1),r2
    cf90:	bc 03 00 00 	l.sfeqi r3,0
    cf94:	9c 21 ff e8 	l.addi r1,r1,-24
    cf98:	a9 c3 00 00 	l.ori r14,r3,0x0
    cf9c:	10 00 00 06 	l.bf cfb4 <__swbuf_r+0x38>
    cfa0:	aa 44 00 00 	l.ori r18,r4,0x0
    cfa4:	84 43 00 38 	l.lwz r2,56(r3)
    cfa8:	bc 22 00 00 	l.sfnei r2,0
    cfac:	0c 00 00 57 	l.bnf d108 <__swbuf_r+0x18c>
    cfb0:	15 00 00 00 	l.nop 0x0
    cfb4:	98 c5 00 0c 	l.lhs r6,12(r5)
    cfb8:	a4 86 ff ff 	l.andi r4,r6,0xffff
    cfbc:	84 65 00 18 	l.lwz r3,24(r5)
    cfc0:	a4 44 00 08 	l.andi r2,r4,0x8
    cfc4:	bc 02 00 00 	l.sfeqi r2,0
    cfc8:	10 00 00 45 	l.bf d0dc <__swbuf_r+0x160>
    cfcc:	d4 05 18 08 	l.sw 8(r5),r3
    cfd0:	84 65 00 10 	l.lwz r3,16(r5)
    cfd4:	bc 23 00 00 	l.sfnei r3,0
    cfd8:	0c 00 00 41 	l.bnf d0dc <__swbuf_r+0x160>
    cfdc:	15 00 00 00 	l.nop 0x0
    cfe0:	a4 84 20 00 	l.andi r4,r4,0x2000
    cfe4:	bc 24 00 00 	l.sfnei r4,0
    cfe8:	0c 00 00 27 	l.bnf d084 <__swbuf_r+0x108>
    cfec:	a4 52 00 ff 	l.andi r2,r18,0xff
    cff0:	84 85 00 00 	l.lwz r4,0(r5)
    cff4:	84 c5 00 14 	l.lwz r6,20(r5)
    cff8:	e0 64 18 02 	l.sub r3,r4,r3
    cffc:	e5 63 30 00 	l.sfges r3,r6
    d000:	10 00 00 2d 	l.bf d0b4 <__swbuf_r+0x138>
    d004:	9c 63 00 01 	l.addi r3,r3,1
    d008:	84 c5 00 08 	l.lwz r6,8(r5)
    d00c:	9c e4 00 01 	l.addi r7,r4,1
    d010:	9c c6 ff ff 	l.addi r6,r6,-1
    d014:	d4 05 38 00 	l.sw 0(r5),r7
    d018:	d4 05 30 08 	l.sw 8(r5),r6
    d01c:	d8 04 90 00 	l.sb 0(r4),r18
    d020:	84 85 00 14 	l.lwz r4,20(r5)
    d024:	e4 04 18 00 	l.sfeq r4,r3
    d028:	10 00 00 09 	l.bf d04c <__swbuf_r+0xd0>
    d02c:	bc 22 00 0a 	l.sfnei r2,10
    d030:	10 00 00 0e 	l.bf d068 <__swbuf_r+0xec>
    d034:	a9 62 00 00 	l.ori r11,r2,0x0
    d038:	94 65 00 0c 	l.lhz r3,12(r5)
    d03c:	a4 63 00 01 	l.andi r3,r3,0x1
    d040:	bc 03 00 00 	l.sfeqi r3,0
    d044:	10 00 00 09 	l.bf d068 <__swbuf_r+0xec>
    d048:	15 00 00 00 	l.nop 0x0
    d04c:	a8 85 00 00 	l.ori r4,r5,0x0
    d050:	07 ff e8 04 	l.jal 7060 <_fflush_r>
    d054:	a8 6e 00 00 	l.ori r3,r14,0x0
    d058:	bc 2b 00 00 	l.sfnei r11,0
    d05c:	10 00 00 03 	l.bf d068 <__swbuf_r+0xec>
    d060:	9d 60 ff ff 	l.addi r11,r0,-1
    d064:	a9 62 00 00 	l.ori r11,r2,0x0
    d068:	9c 21 00 18 	l.addi r1,r1,24
    d06c:	85 21 ff fc 	l.lwz r9,-4(r1)
    d070:	84 21 ff ec 	l.lwz r1,-20(r1)
    d074:	84 41 ff f0 	l.lwz r2,-16(r1)
    d078:	85 c1 ff f4 	l.lwz r14,-12(r1)
    d07c:	44 00 48 00 	l.jr r9
    d080:	86 41 ff f8 	l.lwz r18,-8(r1)
    d084:	84 85 00 64 	l.lwz r4,100(r5)
    d088:	9c e0 df ff 	l.addi r7,r0,-8193
    d08c:	a8 c6 20 00 	l.ori r6,r6,0x2000
    d090:	e0 84 38 03 	l.and r4,r4,r7
    d094:	dc 05 30 0c 	l.sh 12(r5),r6
    d098:	d4 05 20 64 	l.sw 100(r5),r4
    d09c:	84 85 00 00 	l.lwz r4,0(r5)
    d0a0:	84 c5 00 14 	l.lwz r6,20(r5)
    d0a4:	e0 64 18 02 	l.sub r3,r4,r3
    d0a8:	e5 63 30 00 	l.sfges r3,r6
    d0ac:	0f ff ff d7 	l.bnf d008 <__swbuf_r+0x8c>
    d0b0:	9c 63 00 01 	l.addi r3,r3,1
    d0b4:	a8 85 00 00 	l.ori r4,r5,0x0
    d0b8:	a8 6e 00 00 	l.ori r3,r14,0x0
    d0bc:	07 ff e7 e9 	l.jal 7060 <_fflush_r>
    d0c0:	d4 01 28 00 	l.sw 0(r1),r5
    d0c4:	bc 2b 00 00 	l.sfnei r11,0
    d0c8:	10 00 00 14 	l.bf d118 <__swbuf_r+0x19c>
    d0cc:	84 a1 00 00 	l.lwz r5,0(r1)
    d0d0:	84 85 00 00 	l.lwz r4,0(r5)
    d0d4:	03 ff ff cd 	l.j d008 <__swbuf_r+0x8c>
    d0d8:	9c 60 00 01 	l.addi r3,r0,1
    d0dc:	a8 85 00 00 	l.ori r4,r5,0x0
    d0e0:	a8 6e 00 00 	l.ori r3,r14,0x0
    d0e4:	07 ff de 5c 	l.jal 4a54 <__swsetup_r>
    d0e8:	d4 01 28 00 	l.sw 0(r1),r5
    d0ec:	bc 0b 00 00 	l.sfeqi r11,0
    d0f0:	0c 00 00 0a 	l.bnf d118 <__swbuf_r+0x19c>
    d0f4:	84 a1 00 00 	l.lwz r5,0(r1)
    d0f8:	98 c5 00 0c 	l.lhs r6,12(r5)
    d0fc:	84 65 00 10 	l.lwz r3,16(r5)
    d100:	03 ff ff b8 	l.j cfe0 <__swbuf_r+0x64>
    d104:	a4 86 ff ff 	l.andi r4,r6,0xffff
    d108:	07 ff e9 05 	l.jal 751c <__sinit>
    d10c:	d4 01 28 00 	l.sw 0(r1),r5
    d110:	03 ff ff a9 	l.j cfb4 <__swbuf_r+0x38>
    d114:	84 a1 00 00 	l.lwz r5,0(r1)
    d118:	03 ff ff d4 	l.j d068 <__swbuf_r+0xec>
    d11c:	9d 60 ff ff 	l.addi r11,r0,-1

0000d120 <__swbuf>:
    d120:	d7 e1 4f fc 	l.sw -4(r1),r9
    d124:	d7 e1 0f f8 	l.sw -8(r1),r1
    d128:	9c 21 ff f0 	l.addi r1,r1,-16
    d12c:	d4 01 18 04 	l.sw 4(r1),r3
    d130:	07 ff ea c6 	l.jal 7c48 <__getreent>
    d134:	d4 01 20 00 	l.sw 0(r1),r4
    d138:	84 81 00 00 	l.lwz r4,0(r1)
    d13c:	84 61 00 04 	l.lwz r3,4(r1)
    d140:	a8 a4 00 00 	l.ori r5,r4,0x0
    d144:	a8 83 00 00 	l.ori r4,r3,0x0
    d148:	07 ff ff 8d 	l.jal cf7c <__swbuf_r>
    d14c:	a8 6b 00 00 	l.ori r3,r11,0x0
    d150:	9c 21 00 10 	l.addi r1,r1,16
    d154:	85 21 ff fc 	l.lwz r9,-4(r1)
    d158:	44 00 48 00 	l.jr r9
    d15c:	84 21 ff f8 	l.lwz r1,-8(r1)

0000d160 <_wcrtomb_r>:
    d160:	d7 e1 17 f0 	l.sw -16(r1),r2
    d164:	a8 43 00 00 	l.ori r2,r3,0x0
    d168:	18 60 00 01 	l.movhi r3,0x1
    d16c:	d7 e1 77 f4 	l.sw -12(r1),r14
    d170:	d7 e1 97 f8 	l.sw -8(r1),r18
    d174:	d7 e1 4f fc 	l.sw -4(r1),r9
    d178:	d7 e1 0f ec 	l.sw -20(r1),r1
    d17c:	a8 63 29 20 	l.ori r3,r3,0x2920
    d180:	9c 21 ff d8 	l.addi r1,r1,-40
    d184:	86 43 00 00 	l.lwz r18,0(r3)
    d188:	bc 24 00 00 	l.sfnei r4,0
    d18c:	d4 01 20 00 	l.sw 0(r1),r4
    d190:	0c 00 00 17 	l.bnf d1ec <_wcrtomb_r+0x8c>
    d194:	a9 c6 00 00 	l.ori r14,r6,0x0
    d198:	07 ff ea d2 	l.jal 7ce0 <__locale_charset>
    d19c:	d4 01 28 04 	l.sw 4(r1),r5
    d1a0:	a8 ee 00 00 	l.ori r7,r14,0x0
    d1a4:	a8 cb 00 00 	l.ori r6,r11,0x0
    d1a8:	84 a1 00 04 	l.lwz r5,4(r1)
    d1ac:	84 81 00 00 	l.lwz r4,0(r1)
    d1b0:	48 00 90 00 	l.jalr r18
    d1b4:	a8 62 00 00 	l.ori r3,r2,0x0
    d1b8:	bc 2b ff ff 	l.sfnei r11,-1
    d1bc:	10 00 00 05 	l.bf d1d0 <_wcrtomb_r+0x70>
    d1c0:	9c 60 00 00 	l.addi r3,r0,0
    d1c4:	d4 0e 18 00 	l.sw 0(r14),r3
    d1c8:	9c 60 00 8a 	l.addi r3,r0,138
    d1cc:	d4 02 18 00 	l.sw 0(r2),r3
    d1d0:	9c 21 00 28 	l.addi r1,r1,40
    d1d4:	85 21 ff fc 	l.lwz r9,-4(r1)
    d1d8:	84 21 ff ec 	l.lwz r1,-20(r1)
    d1dc:	84 41 ff f0 	l.lwz r2,-16(r1)
    d1e0:	85 c1 ff f4 	l.lwz r14,-12(r1)
    d1e4:	44 00 48 00 	l.jr r9
    d1e8:	86 41 ff f8 	l.lwz r18,-8(r1)
    d1ec:	07 ff ea bd 	l.jal 7ce0 <__locale_charset>
    d1f0:	15 00 00 00 	l.nop 0x0
    d1f4:	84 81 00 00 	l.lwz r4,0(r1)
    d1f8:	a8 ee 00 00 	l.ori r7,r14,0x0
    d1fc:	a8 a4 00 00 	l.ori r5,r4,0x0
    d200:	a8 cb 00 00 	l.ori r6,r11,0x0
    d204:	9c 81 00 08 	l.addi r4,r1,8
    d208:	48 00 90 00 	l.jalr r18
    d20c:	a8 62 00 00 	l.ori r3,r2,0x0
    d210:	03 ff ff eb 	l.j d1bc <_wcrtomb_r+0x5c>
    d214:	bc 2b ff ff 	l.sfnei r11,-1

0000d218 <wcrtomb>:
    d218:	d7 e1 17 e8 	l.sw -24(r1),r2
    d21c:	d7 e1 77 ec 	l.sw -20(r1),r14
    d220:	d7 e1 97 f0 	l.sw -16(r1),r18
    d224:	d7 e1 a7 f4 	l.sw -12(r1),r20
    d228:	d7 e1 4f fc 	l.sw -4(r1),r9
    d22c:	d7 e1 0f e4 	l.sw -28(r1),r1
    d230:	d7 e1 b7 f8 	l.sw -8(r1),r22
    d234:	9c 21 ff d8 	l.addi r1,r1,-40
    d238:	a8 43 00 00 	l.ori r2,r3,0x0
    d23c:	aa 84 00 00 	l.ori r20,r4,0x0
    d240:	07 ff ea 82 	l.jal 7c48 <__getreent>
    d244:	aa 45 00 00 	l.ori r18,r5,0x0
    d248:	18 60 00 01 	l.movhi r3,0x1
    d24c:	bc 22 00 00 	l.sfnei r2,0
    d250:	a9 cb 00 00 	l.ori r14,r11,0x0
    d254:	0c 00 00 19 	l.bnf d2b8 <wcrtomb+0xa0>
    d258:	a8 63 29 20 	l.ori r3,r3,0x2920
    d25c:	07 ff ea a1 	l.jal 7ce0 <__locale_charset>
    d260:	86 c3 00 00 	l.lwz r22,0(r3)
    d264:	a8 f2 00 00 	l.ori r7,r18,0x0
    d268:	a8 cb 00 00 	l.ori r6,r11,0x0
    d26c:	a8 b4 00 00 	l.ori r5,r20,0x0
    d270:	a8 82 00 00 	l.ori r4,r2,0x0
    d274:	48 00 b0 00 	l.jalr r22
    d278:	a8 6e 00 00 	l.ori r3,r14,0x0
    d27c:	bc 2b ff ff 	l.sfnei r11,-1
    d280:	10 00 00 05 	l.bf d294 <wcrtomb+0x7c>
    d284:	9c 40 00 00 	l.addi r2,r0,0
    d288:	d4 12 10 00 	l.sw 0(r18),r2
    d28c:	9c 40 00 8a 	l.addi r2,r0,138
    d290:	d4 0e 10 00 	l.sw 0(r14),r2
    d294:	9c 21 00 28 	l.addi r1,r1,40
    d298:	85 21 ff fc 	l.lwz r9,-4(r1)
    d29c:	84 21 ff e4 	l.lwz r1,-28(r1)
    d2a0:	84 41 ff e8 	l.lwz r2,-24(r1)
    d2a4:	85 c1 ff ec 	l.lwz r14,-20(r1)
    d2a8:	86 41 ff f0 	l.lwz r18,-16(r1)
    d2ac:	86 81 ff f4 	l.lwz r20,-12(r1)
    d2b0:	44 00 48 00 	l.jr r9
    d2b4:	86 c1 ff f8 	l.lwz r22,-8(r1)
    d2b8:	07 ff ea 8a 	l.jal 7ce0 <__locale_charset>
    d2bc:	86 83 00 00 	l.lwz r20,0(r3)
    d2c0:	a8 f2 00 00 	l.ori r7,r18,0x0
    d2c4:	a8 cb 00 00 	l.ori r6,r11,0x0
    d2c8:	a8 a2 00 00 	l.ori r5,r2,0x0
    d2cc:	a8 81 00 00 	l.ori r4,r1,0x0
    d2d0:	48 00 a0 00 	l.jalr r20
    d2d4:	a8 6e 00 00 	l.ori r3,r14,0x0
    d2d8:	03 ff ff ea 	l.j d280 <wcrtomb+0x68>
    d2dc:	bc 2b ff ff 	l.sfnei r11,-1

0000d2e0 <__ascii_wctomb>:
    d2e0:	d7 e1 0f fc 	l.sw -4(r1),r1
    d2e4:	bc 04 00 00 	l.sfeqi r4,0
    d2e8:	10 00 00 0a 	l.bf d310 <__ascii_wctomb+0x30>
    d2ec:	9c 21 ff fc 	l.addi r1,r1,-4
    d2f0:	bc a5 00 ff 	l.sfleui r5,255
    d2f4:	0c 00 00 0b 	l.bnf d320 <__ascii_wctomb+0x40>
    d2f8:	9d 60 ff ff 	l.addi r11,r0,-1
    d2fc:	d8 04 28 00 	l.sb 0(r4),r5
    d300:	9d 60 00 01 	l.addi r11,r0,1
    d304:	9c 21 00 04 	l.addi r1,r1,4
    d308:	44 00 48 00 	l.jr r9
    d30c:	84 21 ff fc 	l.lwz r1,-4(r1)
    d310:	9c 21 00 04 	l.addi r1,r1,4
    d314:	a9 64 00 00 	l.ori r11,r4,0x0
    d318:	44 00 48 00 	l.jr r9
    d31c:	84 21 ff fc 	l.lwz r1,-4(r1)
    d320:	9c 80 00 8a 	l.addi r4,r0,138
    d324:	03 ff ff f8 	l.j d304 <__ascii_wctomb+0x24>
    d328:	d4 03 20 00 	l.sw 0(r3),r4

0000d32c <_wctomb_r>:
    d32c:	d7 e1 17 f8 	l.sw -8(r1),r2
    d330:	18 40 00 01 	l.movhi r2,0x1
    d334:	d7 e1 4f fc 	l.sw -4(r1),r9
    d338:	d7 e1 0f f4 	l.sw -12(r1),r1
    d33c:	a8 42 29 20 	l.ori r2,r2,0x2920
    d340:	9c 21 ff e4 	l.addi r1,r1,-28
    d344:	84 42 00 00 	l.lwz r2,0(r2)
    d348:	d4 01 18 0c 	l.sw 12(r1),r3
    d34c:	d4 01 20 08 	l.sw 8(r1),r4
    d350:	d4 01 28 04 	l.sw 4(r1),r5
    d354:	07 ff ea 63 	l.jal 7ce0 <__locale_charset>
    d358:	d4 01 30 00 	l.sw 0(r1),r6
    d35c:	84 c1 00 00 	l.lwz r6,0(r1)
    d360:	84 a1 00 04 	l.lwz r5,4(r1)
    d364:	a8 e6 00 00 	l.ori r7,r6,0x0
    d368:	84 81 00 08 	l.lwz r4,8(r1)
    d36c:	84 61 00 0c 	l.lwz r3,12(r1)
    d370:	48 00 10 00 	l.jalr r2
    d374:	a8 cb 00 00 	l.ori r6,r11,0x0
    d378:	9c 21 00 1c 	l.addi r1,r1,28
    d37c:	85 21 ff fc 	l.lwz r9,-4(r1)
    d380:	84 21 ff f4 	l.lwz r1,-12(r1)
    d384:	44 00 48 00 	l.jr r9
    d388:	84 41 ff f8 	l.lwz r2,-8(r1)

0000d38c <_write_r>:
    d38c:	d7 e1 17 f0 	l.sw -16(r1),r2
    d390:	d7 e1 77 f4 	l.sw -12(r1),r14
    d394:	d7 e1 97 f8 	l.sw -8(r1),r18
    d398:	d7 e1 4f fc 	l.sw -4(r1),r9
    d39c:	d7 e1 0f ec 	l.sw -20(r1),r1
    d3a0:	bc 26 00 00 	l.sfnei r6,0
    d3a4:	9c 21 ff ec 	l.addi r1,r1,-20
    d3a8:	aa 46 00 00 	l.ori r18,r6,0x0
    d3ac:	a8 45 00 00 	l.ori r2,r5,0x0
    d3b0:	10 00 00 09 	l.bf d3d4 <_write_r+0x48>
    d3b4:	e1 c5 30 00 	l.add r14,r5,r6
    d3b8:	00 00 00 14 	l.j d408 <_write_r+0x7c>
    d3bc:	9c 21 00 14 	l.addi r1,r1,20
    d3c0:	04 00 01 0a 	l.jal d7e8 <_or1k_outbyte>
    d3c4:	9c 42 00 01 	l.addi r2,r2,1
    d3c8:	e4 22 70 00 	l.sfne r2,r14
    d3cc:	0c 00 00 0e 	l.bnf d404 <_write_r+0x78>
    d3d0:	15 00 00 00 	l.nop 0x0
    d3d4:	90 62 00 00 	l.lbs r3,0(r2)
    d3d8:	bc 23 00 0a 	l.sfnei r3,10
    d3dc:	13 ff ff f9 	l.bf d3c0 <_write_r+0x34>
    d3e0:	15 00 00 00 	l.nop 0x0
    d3e4:	9c 60 00 0d 	l.addi r3,r0,13
    d3e8:	04 00 01 00 	l.jal d7e8 <_or1k_outbyte>
    d3ec:	9c 42 00 01 	l.addi r2,r2,1
    d3f0:	04 00 00 fe 	l.jal d7e8 <_or1k_outbyte>
    d3f4:	90 62 ff ff 	l.lbs r3,-1(r2)
    d3f8:	e4 22 70 00 	l.sfne r2,r14
    d3fc:	13 ff ff f6 	l.bf d3d4 <_write_r+0x48>
    d400:	15 00 00 00 	l.nop 0x0
    d404:	9c 21 00 14 	l.addi r1,r1,20
    d408:	a9 72 00 00 	l.ori r11,r18,0x0
    d40c:	85 21 ff fc 	l.lwz r9,-4(r1)
    d410:	84 21 ff ec 	l.lwz r1,-20(r1)
    d414:	84 41 ff f0 	l.lwz r2,-16(r1)
    d418:	85 c1 ff f4 	l.lwz r14,-12(r1)
    d41c:	44 00 48 00 	l.jr r9
    d420:	86 41 ff f8 	l.lwz r18,-8(r1)

0000d424 <_exit>:
    d424:	d7 e1 4f fc 	l.sw -4(r1),r9
    d428:	d7 e1 0f f8 	l.sw -8(r1),r1
    d42c:	04 00 04 02 	l.jal e434 <_or1k_board_exit>
    d430:	9c 21 ff f8 	l.addi r1,r1,-8
    d434:	00 00 00 00 	l.j d434 <_exit+0x10>
    d438:	15 00 00 00 	l.nop 0x0

0000d43c <_close_r>:
    d43c:	d7 e1 0f fc 	l.sw -4(r1),r1
    d440:	9c 21 ff fc 	l.addi r1,r1,-4
    d444:	9c 80 00 58 	l.addi r4,r0,88
    d448:	9c 21 00 04 	l.addi r1,r1,4
    d44c:	9d 60 ff ff 	l.addi r11,r0,-1
    d450:	d4 03 20 00 	l.sw 0(r3),r4
    d454:	44 00 48 00 	l.jr r9
    d458:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d45c <_execve_r>:
    d45c:	d7 e1 0f fc 	l.sw -4(r1),r1
    d460:	9c 21 ff fc 	l.addi r1,r1,-4
    d464:	9c 80 00 58 	l.addi r4,r0,88
    d468:	9c 21 00 04 	l.addi r1,r1,4
    d46c:	9d 60 ff ff 	l.addi r11,r0,-1
    d470:	d4 03 20 00 	l.sw 0(r3),r4
    d474:	44 00 48 00 	l.jr r9
    d478:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d47c <_fork_r>:
    d47c:	d7 e1 4f fc 	l.sw -4(r1),r9
    d480:	d7 e1 0f f8 	l.sw -8(r1),r1
    d484:	04 00 03 f3 	l.jal e450 <__errno>
    d488:	9c 21 ff f8 	l.addi r1,r1,-8
    d48c:	9c 60 00 58 	l.addi r3,r0,88
    d490:	d4 0b 18 00 	l.sw 0(r11),r3
    d494:	9c 21 00 08 	l.addi r1,r1,8
    d498:	9d 60 ff ff 	l.addi r11,r0,-1
    d49c:	85 21 ff fc 	l.lwz r9,-4(r1)
    d4a0:	44 00 48 00 	l.jr r9
    d4a4:	84 21 ff f8 	l.lwz r1,-8(r1)

0000d4a8 <_fstat_r>:
    d4a8:	d7 e1 0f fc 	l.sw -4(r1),r1
    d4ac:	9c 21 ff fc 	l.addi r1,r1,-4
    d4b0:	9c 80 00 58 	l.addi r4,r0,88
    d4b4:	9c 21 00 04 	l.addi r1,r1,4
    d4b8:	9d 60 ff ff 	l.addi r11,r0,-1
    d4bc:	d4 03 20 00 	l.sw 0(r3),r4
    d4c0:	44 00 48 00 	l.jr r9
    d4c4:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d4c8 <_getpid_r>:
    d4c8:	d7 e1 0f fc 	l.sw -4(r1),r1
    d4cc:	9c 21 ff fc 	l.addi r1,r1,-4
    d4d0:	9c 80 00 58 	l.addi r4,r0,88
    d4d4:	9c 21 00 04 	l.addi r1,r1,4
    d4d8:	9d 60 ff ff 	l.addi r11,r0,-1
    d4dc:	d4 03 20 00 	l.sw 0(r3),r4
    d4e0:	44 00 48 00 	l.jr r9
    d4e4:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d4e8 <_gettimeofday>:
    d4e8:	d7 e1 0f fc 	l.sw -4(r1),r1
    d4ec:	9c 21 ff fc 	l.addi r1,r1,-4
    d4f0:	9c 80 00 58 	l.addi r4,r0,88
    d4f4:	9c 21 00 04 	l.addi r1,r1,4
    d4f8:	9d 60 ff ff 	l.addi r11,r0,-1
    d4fc:	d4 03 20 00 	l.sw 0(r3),r4
    d500:	44 00 48 00 	l.jr r9
    d504:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d508 <_isatty_r>:
    d508:	d7 e1 0f fc 	l.sw -4(r1),r1
    d50c:	9c 21 ff fc 	l.addi r1,r1,-4
    d510:	9c 80 00 58 	l.addi r4,r0,88
    d514:	9c 21 00 04 	l.addi r1,r1,4
    d518:	9d 60 00 00 	l.addi r11,r0,0
    d51c:	d4 03 20 00 	l.sw 0(r3),r4
    d520:	44 00 48 00 	l.jr r9
    d524:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d528 <_kill_r>:
    d528:	d7 e1 0f fc 	l.sw -4(r1),r1
    d52c:	9c 21 ff fc 	l.addi r1,r1,-4
    d530:	9c 80 00 58 	l.addi r4,r0,88
    d534:	9c 21 00 04 	l.addi r1,r1,4
    d538:	9d 60 ff ff 	l.addi r11,r0,-1
    d53c:	d4 03 20 00 	l.sw 0(r3),r4
    d540:	44 00 48 00 	l.jr r9
    d544:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d548 <_link_r>:
    d548:	d7 e1 0f fc 	l.sw -4(r1),r1
    d54c:	9c 21 ff fc 	l.addi r1,r1,-4
    d550:	9c 80 00 58 	l.addi r4,r0,88
    d554:	9c 21 00 04 	l.addi r1,r1,4
    d558:	9d 60 ff ff 	l.addi r11,r0,-1
    d55c:	d4 03 20 00 	l.sw 0(r3),r4
    d560:	44 00 48 00 	l.jr r9
    d564:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d568 <_lseek_r>:
    d568:	d7 e1 4f fc 	l.sw -4(r1),r9
    d56c:	d7 e1 0f f8 	l.sw -8(r1),r1
    d570:	04 00 03 b8 	l.jal e450 <__errno>
    d574:	9c 21 ff f8 	l.addi r1,r1,-8
    d578:	9c 60 00 58 	l.addi r3,r0,88
    d57c:	d4 0b 18 00 	l.sw 0(r11),r3
    d580:	9c 21 00 08 	l.addi r1,r1,8
    d584:	9d 60 ff ff 	l.addi r11,r0,-1
    d588:	85 21 ff fc 	l.lwz r9,-4(r1)
    d58c:	44 00 48 00 	l.jr r9
    d590:	84 21 ff f8 	l.lwz r1,-8(r1)

0000d594 <_open>:
    d594:	d7 e1 0f fc 	l.sw -4(r1),r1
    d598:	9c 21 ff fc 	l.addi r1,r1,-4
    d59c:	9c 80 00 58 	l.addi r4,r0,88
    d5a0:	9c 21 00 04 	l.addi r1,r1,4
    d5a4:	9d 60 ff ff 	l.addi r11,r0,-1
    d5a8:	d4 03 20 00 	l.sw 0(r3),r4
    d5ac:	44 00 48 00 	l.jr r9
    d5b0:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d5b4 <_read_r>:
    d5b4:	d7 e1 0f fc 	l.sw -4(r1),r1
    d5b8:	9c 21 ff fc 	l.addi r1,r1,-4
    d5bc:	9c 80 00 58 	l.addi r4,r0,88
    d5c0:	9c 21 00 04 	l.addi r1,r1,4
    d5c4:	9d 60 ff ff 	l.addi r11,r0,-1
    d5c8:	d4 03 20 00 	l.sw 0(r3),r4
    d5cc:	44 00 48 00 	l.jr r9
    d5d0:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d5d4 <_readlink_r>:
    d5d4:	d7 e1 0f fc 	l.sw -4(r1),r1
    d5d8:	9c 21 ff fc 	l.addi r1,r1,-4
    d5dc:	9c 80 00 58 	l.addi r4,r0,88
    d5e0:	9c 21 00 04 	l.addi r1,r1,4
    d5e4:	9d 60 ff ff 	l.addi r11,r0,-1
    d5e8:	d4 03 20 00 	l.sw 0(r3),r4
    d5ec:	44 00 48 00 	l.jr r9
    d5f0:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d5f4 <_stat_r>:
    d5f4:	d7 e1 0f fc 	l.sw -4(r1),r1
    d5f8:	9c 21 ff fc 	l.addi r1,r1,-4
    d5fc:	9c 80 00 05 	l.addi r4,r0,5
    d600:	9c 21 00 04 	l.addi r1,r1,4
    d604:	9d 60 ff ff 	l.addi r11,r0,-1
    d608:	d4 03 20 00 	l.sw 0(r3),r4
    d60c:	44 00 48 00 	l.jr r9
    d610:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d614 <_unlink_r>:
    d614:	d7 e1 0f fc 	l.sw -4(r1),r1
    d618:	9c 21 ff fc 	l.addi r1,r1,-4
    d61c:	9c 80 00 05 	l.addi r4,r0,5
    d620:	9c 21 00 04 	l.addi r1,r1,4
    d624:	9d 60 ff ff 	l.addi r11,r0,-1
    d628:	d4 03 20 00 	l.sw 0(r3),r4
    d62c:	44 00 48 00 	l.jr r9
    d630:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d634 <_or1k_uart_interrupt_handler>:
    d634:	18 60 00 00 	l.movhi r3,0x0
    d638:	d7 e1 0f fc 	l.sw -4(r1),r1
    d63c:	a8 63 e4 28 	l.ori r3,r3,0xe428
    d640:	9c 21 ff fc 	l.addi r1,r1,-4
    d644:	84 63 00 00 	l.lwz r3,0(r3)
    d648:	9c 63 00 02 	l.addi r3,r3,2
    d64c:	8c 63 00 00 	l.lbz r3,0(r3)
    d650:	9c 21 00 04 	l.addi r1,r1,4
    d654:	44 00 48 00 	l.jr r9
    d658:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d65c <_or1k_uart_init>:
    d65c:	d7 e1 17 f4 	l.sw -12(r1),r2
    d660:	18 40 00 00 	l.movhi r2,0x0
    d664:	d7 e1 77 f8 	l.sw -8(r1),r14
    d668:	a8 42 e4 28 	l.ori r2,r2,0xe428
    d66c:	d7 e1 4f fc 	l.sw -4(r1),r9
    d670:	85 c2 00 00 	l.lwz r14,0(r2)
    d674:	d7 e1 0f f0 	l.sw -16(r1),r1
    d678:	bc 0e 00 00 	l.sfeqi r14,0
    d67c:	10 00 00 2c 	l.bf d72c <_or1k_uart_init+0xd0>
    d680:	9c 21 ff f0 	l.addi r1,r1,-16
    d684:	18 60 00 00 	l.movhi r3,0x0
    d688:	18 a0 00 01 	l.movhi r5,0x1
    d68c:	a8 63 e4 2c 	l.ori r3,r3,0xe42c
    d690:	9c c0 00 00 	l.addi r6,r0,0
    d694:	84 83 00 00 	l.lwz r4,0(r3)
    d698:	18 60 00 00 	l.movhi r3,0x0
    d69c:	a8 a5 2d c4 	l.ori r5,r5,0x2dc4
    d6a0:	a8 63 e4 24 	l.ori r3,r3,0xe424
    d6a4:	b8 84 00 04 	l.slli r4,r4,0x4
    d6a8:	84 63 00 00 	l.lwz r3,0(r3)
    d6ac:	d4 05 30 00 	l.sw 0(r5),r6
    d6b0:	04 00 03 70 	l.jal e470 <__udivsi3>
    d6b4:	9d ce 00 03 	l.addi r14,r14,3
    d6b8:	9c 60 ff 80 	l.addi r3,r0,-128
    d6bc:	a4 8b 00 ff 	l.andi r4,r11,0xff
    d6c0:	d8 0e 18 00 	l.sb 0(r14),r3
    d6c4:	a5 6b ff ff 	l.andi r11,r11,0xffff
    d6c8:	84 62 00 00 	l.lwz r3,0(r2)
    d6cc:	9c c0 ff c3 	l.addi r6,r0,-61
    d6d0:	d8 03 20 00 	l.sb 0(r3),r4
    d6d4:	b8 6b 00 48 	l.srli r3,r11,0x8
    d6d8:	84 82 00 00 	l.lwz r4,0(r2)
    d6dc:	9d 60 00 00 	l.addi r11,r0,0
    d6e0:	9c 84 00 01 	l.addi r4,r4,1
    d6e4:	d8 04 18 00 	l.sb 0(r4),r3
    d6e8:	9c 80 00 03 	l.addi r4,r0,3
    d6ec:	84 62 00 00 	l.lwz r3,0(r2)
    d6f0:	9c 63 00 03 	l.addi r3,r3,3
    d6f4:	d8 03 20 00 	l.sb 0(r3),r4
    d6f8:	84 62 00 00 	l.lwz r3,0(r2)
    d6fc:	9c 63 00 02 	l.addi r3,r3,2
    d700:	d8 03 30 00 	l.sb 0(r3),r6
    d704:	9c 60 00 00 	l.addi r3,r0,0
    d708:	84 42 00 00 	l.lwz r2,0(r2)
    d70c:	9c 42 00 01 	l.addi r2,r2,1
    d710:	d8 02 18 00 	l.sb 0(r2),r3
    d714:	9c 21 00 10 	l.addi r1,r1,16
    d718:	85 21 ff fc 	l.lwz r9,-4(r1)
    d71c:	84 21 ff f0 	l.lwz r1,-16(r1)
    d720:	84 41 ff f4 	l.lwz r2,-12(r1)
    d724:	44 00 48 00 	l.jr r9
    d728:	85 c1 ff f8 	l.lwz r14,-8(r1)
    d72c:	03 ff ff fa 	l.j d714 <_or1k_uart_init+0xb8>
    d730:	9d 60 ff ff 	l.addi r11,r0,-1

0000d734 <_or1k_uart_write>:
    d734:	18 80 00 00 	l.movhi r4,0x0
    d738:	b8 63 00 18 	l.slli r3,r3,0x18
    d73c:	a8 84 e4 28 	l.ori r4,r4,0xe428
    d740:	d7 e1 0f fc 	l.sw -4(r1),r1
    d744:	84 c4 00 00 	l.lwz r6,0(r4)
    d748:	b8 63 00 98 	l.srai r3,r3,0x18
    d74c:	9c 21 ff fc 	l.addi r1,r1,-4
    d750:	9c a6 00 05 	l.addi r5,r6,5
    d754:	8c 85 00 00 	l.lbz r4,0(r5)
    d758:	a4 84 00 20 	l.andi r4,r4,0x20
    d75c:	bc 04 00 00 	l.sfeqi r4,0
    d760:	13 ff ff fd 	l.bf d754 <_or1k_uart_write+0x20>
    d764:	15 00 00 00 	l.nop 0x0
    d768:	a4 63 00 ff 	l.andi r3,r3,0xff
    d76c:	d8 06 18 00 	l.sb 0(r6),r3
    d770:	9c 21 00 04 	l.addi r1,r1,4
    d774:	44 00 48 00 	l.jr r9
    d778:	84 21 ff fc 	l.lwz r1,-4(r1)

0000d77c <or1k_uart_set_read_cb>:
    d77c:	d7 e1 17 f8 	l.sw -8(r1),r2
    d780:	18 40 00 00 	l.movhi r2,0x0
    d784:	d7 e1 4f fc 	l.sw -4(r1),r9
    d788:	a8 42 e4 28 	l.ori r2,r2,0xe428
    d78c:	d7 e1 0f f4 	l.sw -12(r1),r1
    d790:	84 82 00 00 	l.lwz r4,0(r2)
    d794:	18 40 00 01 	l.movhi r2,0x1
    d798:	9c 84 00 01 	l.addi r4,r4,1
    d79c:	a8 42 2d c4 	l.ori r2,r2,0x2dc4
    d7a0:	9c 21 ff f4 	l.addi r1,r1,-12
    d7a4:	d4 02 18 00 	l.sw 0(r2),r3
    d7a8:	9c 40 00 01 	l.addi r2,r0,1
    d7ac:	9c a0 00 00 	l.addi r5,r0,0
    d7b0:	d8 04 10 00 	l.sb 0(r4),r2
    d7b4:	18 40 00 00 	l.movhi r2,0x0
    d7b8:	18 80 00 00 	l.movhi r4,0x0
    d7bc:	a8 42 e4 30 	l.ori r2,r2,0xe430
    d7c0:	a8 84 d6 34 	l.ori r4,r4,0xd634
    d7c4:	04 00 00 df 	l.jal db40 <or1k_interrupt_handler_add>
    d7c8:	84 62 00 00 	l.lwz r3,0(r2)
    d7cc:	04 00 01 33 	l.jal dc98 <or1k_interrupt_enable>
    d7d0:	84 62 00 00 	l.lwz r3,0(r2)
    d7d4:	9c 21 00 0c 	l.addi r1,r1,12
    d7d8:	85 21 ff fc 	l.lwz r9,-4(r1)
    d7dc:	84 21 ff f4 	l.lwz r1,-12(r1)
    d7e0:	44 00 48 00 	l.jr r9
    d7e4:	84 41 ff f8 	l.lwz r2,-8(r1)

0000d7e8 <_or1k_outbyte>:
    d7e8:	18 80 00 00 	l.movhi r4,0x0
    d7ec:	a8 84 e4 28 	l.ori r4,r4,0xe428
    d7f0:	84 84 00 00 	l.lwz r4,0(r4)
    d7f4:	e4 04 00 00 	l.sfeq r4,r0
    d7f8:	10 00 00 04 	l.bf d808 <_or1k_outbyte+0x20>
    d7fc:	15 00 00 00 	l.nop 0x0
    d800:	03 ff ff cd 	l.j d734 <_or1k_uart_write>
    d804:	15 00 00 00 	l.nop 0x0
    d808:	44 00 48 00 	l.jr r9
    d80c:	15 00 00 04 	l.nop 0x4

0000d810 <_or1k_cache_init>:
    d810:	b4 60 00 01 	l.mfspr r3,r0,0x1
    d814:	a4 83 00 04 	l.andi r4,r3,0x4
    d818:	e4 04 00 00 	l.sfeq r4,r0
    d81c:	10 00 00 21 	l.bf d8a0 <_or1k_cache_init+0x90>
    d820:	15 00 00 00 	l.nop 0x0
    d824:	b4 c0 00 11 	l.mfspr r6,r0,0x11
    d828:	9c a0 ff ff 	l.addi r5,r0,-1
    d82c:	ac a5 00 10 	l.xori r5,r5,16
    d830:	e0 a6 28 03 	l.and r5,r6,r5
    d834:	c0 00 28 11 	l.mtspr r0,r5,0x11
    d838:	b4 60 00 06 	l.mfspr r3,r0,0x6
    d83c:	a4 83 00 80 	l.andi r4,r3,0x80
    d840:	b8 e4 00 47 	l.srli r7,r4,0x7
    d844:	a9 00 00 10 	l.ori r8,r0,0x10
    d848:	e1 c8 38 08 	l.sll r14,r8,r7
    d84c:	a4 83 00 78 	l.andi r4,r3,0x78
    d850:	b8 e4 00 43 	l.srli r7,r4,0x3
    d854:	a9 00 00 01 	l.ori r8,r0,0x1
    d858:	e1 a8 38 08 	l.sll r13,r8,r7
    d85c:	9c c0 00 00 	l.addi r6,r0,0
    d860:	e0 ae 38 08 	l.sll r5,r14,r7
    d864:	c0 80 30 02 	l.mtspr r0,r6,0x2002
    d868:	e4 26 28 00 	l.sfne r6,r5
    d86c:	13 ff ff fe 	l.bf d864 <_or1k_cache_init+0x54>
    d870:	e0 c6 70 00 	l.add r6,r6,r14
    d874:	b4 c0 00 11 	l.mfspr r6,r0,0x11
    d878:	a8 c6 00 10 	l.ori r6,r6,0x10
    d87c:	c0 00 30 11 	l.mtspr r0,r6,0x11
    d880:	15 00 00 00 	l.nop 0x0
    d884:	15 00 00 00 	l.nop 0x0
    d888:	15 00 00 00 	l.nop 0x0
    d88c:	15 00 00 00 	l.nop 0x0
    d890:	15 00 00 00 	l.nop 0x0
    d894:	15 00 00 00 	l.nop 0x0
    d898:	15 00 00 00 	l.nop 0x0
    d89c:	15 00 00 00 	l.nop 0x0
    d8a0:	b4 60 00 01 	l.mfspr r3,r0,0x1
    d8a4:	a4 83 00 02 	l.andi r4,r3,0x2
    d8a8:	e4 04 00 00 	l.sfeq r4,r0
    d8ac:	10 00 00 19 	l.bf d910 <_or1k_cache_init+0x100>
    d8b0:	15 00 00 00 	l.nop 0x0
    d8b4:	b4 c0 00 11 	l.mfspr r6,r0,0x11
    d8b8:	9c a0 ff ff 	l.addi r5,r0,-1
    d8bc:	ac a5 00 08 	l.xori r5,r5,8
    d8c0:	e0 a6 28 03 	l.and r5,r6,r5
    d8c4:	c0 00 28 11 	l.mtspr r0,r5,0x11
    d8c8:	b4 60 00 05 	l.mfspr r3,r0,0x5
    d8cc:	a4 83 00 80 	l.andi r4,r3,0x80
    d8d0:	b8 e4 00 47 	l.srli r7,r4,0x7
    d8d4:	a9 00 00 10 	l.ori r8,r0,0x10
    d8d8:	e1 c8 38 08 	l.sll r14,r8,r7
    d8dc:	a4 83 00 78 	l.andi r4,r3,0x78
    d8e0:	b8 e4 00 43 	l.srli r7,r4,0x3
    d8e4:	a9 00 00 01 	l.ori r8,r0,0x1
    d8e8:	e1 a8 38 08 	l.sll r13,r8,r7
    d8ec:	9c c0 00 00 	l.addi r6,r0,0
    d8f0:	e0 ae 38 08 	l.sll r5,r14,r7
    d8f4:	c0 60 30 03 	l.mtspr r0,r6,0x1803
    d8f8:	e4 26 28 00 	l.sfne r6,r5
    d8fc:	13 ff ff fe 	l.bf d8f4 <_or1k_cache_init+0xe4>
    d900:	e0 c6 70 00 	l.add r6,r6,r14
    d904:	b4 c0 00 11 	l.mfspr r6,r0,0x11
    d908:	a8 c6 00 08 	l.ori r6,r6,0x8
    d90c:	c0 00 30 11 	l.mtspr r0,r6,0x11
    d910:	44 00 48 00 	l.jr r9
    d914:	15 00 00 00 	l.nop 0x0

0000d918 <or1k_icache_enable>:
    d918:	b5 a0 00 11 	l.mfspr r13,r0,0x11
    d91c:	a9 ad 00 10 	l.ori r13,r13,0x10
    d920:	c0 00 68 11 	l.mtspr r0,r13,0x11
    d924:	15 00 00 00 	l.nop 0x0
    d928:	15 00 00 00 	l.nop 0x0
    d92c:	15 00 00 00 	l.nop 0x0
    d930:	15 00 00 00 	l.nop 0x0
    d934:	15 00 00 00 	l.nop 0x0
    d938:	44 00 48 00 	l.jr r9
    d93c:	15 00 00 00 	l.nop 0x0

0000d940 <or1k_icache_disable>:
    d940:	b5 a0 00 11 	l.mfspr r13,r0,0x11
    d944:	9d 80 ff ff 	l.addi r12,r0,-1
    d948:	ad 8c 00 10 	l.xori r12,r12,16
    d94c:	e1 8d 60 03 	l.and r12,r13,r12
    d950:	c0 00 60 11 	l.mtspr r0,r12,0x11
    d954:	44 00 48 00 	l.jr r9
    d958:	15 00 00 00 	l.nop 0x0

0000d95c <or1k_icache_flush>:
    d95c:	44 00 48 00 	l.jr r9
    d960:	c0 80 18 02 	l.mtspr r0,r3,0x2002

0000d964 <or1k_dcache_enable>:
    d964:	b5 a0 00 11 	l.mfspr r13,r0,0x11
    d968:	a9 ad 00 08 	l.ori r13,r13,0x8
    d96c:	c0 00 68 11 	l.mtspr r0,r13,0x11
    d970:	15 00 00 00 	l.nop 0x0
    d974:	15 00 00 00 	l.nop 0x0
    d978:	15 00 00 00 	l.nop 0x0
    d97c:	15 00 00 00 	l.nop 0x0
    d980:	15 00 00 00 	l.nop 0x0
    d984:	44 00 48 00 	l.jr r9
    d988:	15 00 00 00 	l.nop 0x0

0000d98c <or1k_dcache_disable>:
    d98c:	b5 a0 00 11 	l.mfspr r13,r0,0x11
    d990:	9d 80 ff ff 	l.addi r12,r0,-1
    d994:	ad 8c 00 08 	l.xori r12,r12,8
    d998:	e1 8d 60 03 	l.and r12,r13,r12
    d99c:	c0 00 60 11 	l.mtspr r0,r12,0x11
    d9a0:	44 00 48 00 	l.jr r9
    d9a4:	15 00 00 00 	l.nop 0x0

0000d9a8 <or1k_dcache_flush>:
    d9a8:	44 00 48 00 	l.jr r9
    d9ac:	c0 60 18 03 	l.mtspr r0,r3,0x1803

0000d9b0 <_or1k_exception_handler>:
    d9b0:	d4 01 10 08 	l.sw 8(r1),r2
    d9b4:	d4 01 28 14 	l.sw 20(r1),r5
    d9b8:	d4 01 30 18 	l.sw 24(r1),r6
    d9bc:	d4 01 38 1c 	l.sw 28(r1),r7
    d9c0:	d4 01 40 20 	l.sw 32(r1),r8
    d9c4:	d4 01 48 24 	l.sw 36(r1),r9
    d9c8:	d4 01 50 28 	l.sw 40(r1),r10
    d9cc:	d4 01 58 2c 	l.sw 44(r1),r11
    d9d0:	d4 01 60 30 	l.sw 48(r1),r12
    d9d4:	d4 01 68 34 	l.sw 52(r1),r13
    d9d8:	d4 01 70 38 	l.sw 56(r1),r14
    d9dc:	d4 01 78 3c 	l.sw 60(r1),r15
    d9e0:	d4 01 80 40 	l.sw 64(r1),r16
    d9e4:	d4 01 88 44 	l.sw 68(r1),r17
    d9e8:	d4 01 90 48 	l.sw 72(r1),r18
    d9ec:	d4 01 98 4c 	l.sw 76(r1),r19
    d9f0:	d4 01 a0 50 	l.sw 80(r1),r20
    d9f4:	d4 01 a8 54 	l.sw 84(r1),r21
    d9f8:	d4 01 b0 58 	l.sw 88(r1),r22
    d9fc:	d4 01 b8 5c 	l.sw 92(r1),r23
    da00:	d4 01 c0 60 	l.sw 96(r1),r24
    da04:	d4 01 c8 64 	l.sw 100(r1),r25
    da08:	d4 01 d0 68 	l.sw 104(r1),r26
    da0c:	d4 01 d8 6c 	l.sw 108(r1),r27
    da10:	d4 01 e0 70 	l.sw 112(r1),r28
    da14:	d4 01 e8 74 	l.sw 116(r1),r29
    da18:	d4 01 f0 78 	l.sw 120(r1),r30
    da1c:	d4 01 f8 7c 	l.sw 124(r1),r31
    da20:	b5 c0 00 20 	l.mfspr r14,r0,0x20
    da24:	d4 01 70 80 	l.sw 128(r1),r14
    da28:	b5 c0 00 40 	l.mfspr r14,r0,0x40
    da2c:	d4 01 70 84 	l.sw 132(r1),r14
    da30:	1a 80 00 01 	l.movhi r20,0x1
    da34:	aa 94 29 2c 	l.ori r20,r20,0x292c
    da38:	86 94 00 00 	l.lwz r20,0(r20)
    da3c:	1a a0 00 01 	l.movhi r21,0x1
    da40:	aa b5 2e d8 	l.ori r21,r21,0x2ed8
    da44:	d4 15 a0 00 	l.sw 0(r21),r20
    da48:	a5 a3 ff 00 	l.andi r13,r3,0xff00
    da4c:	b9 ad 00 46 	l.srli r13,r13,0x6
    da50:	9d ad ff f8 	l.addi r13,r13,-8
    da54:	19 c0 00 01 	l.movhi r14,0x1
    da58:	a9 ce 2e f4 	l.ori r14,r14,0x2ef4
    da5c:	e1 ce 68 00 	l.add r14,r14,r13
    da60:	85 ae 00 00 	l.lwz r13,0(r14)
    da64:	e4 2d 00 00 	l.sfne r13,r0
    da68:	0c 00 00 34 	l.bnf db38 <exception_exit>
    da6c:	15 00 00 00 	l.nop 0x0
    da70:	48 00 68 00 	l.jalr r13
    da74:	e0 64 20 04 	l.or r3,r4,r4
    da78:	1a 80 00 01 	l.movhi r20,0x1
    da7c:	aa 94 2e dc 	l.ori r20,r20,0x2edc
    da80:	86 94 00 00 	l.lwz r20,0(r20)
    da84:	1a a0 00 01 	l.movhi r21,0x1
    da88:	aa b5 2e d8 	l.ori r21,r21,0x2ed8
    da8c:	d4 15 a0 00 	l.sw 0(r21),r20
    da90:	18 40 00 01 	l.movhi r2,0x1
    da94:	a8 42 2e e0 	l.ori r2,r2,0x2ee0
    da98:	84 62 00 00 	l.lwz r3,0(r2)
    da9c:	9c 63 ff ff 	l.addi r3,r3,-1
    daa0:	d4 02 18 00 	l.sw 0(r2),r3
    daa4:	84 41 00 80 	l.lwz r2,128(r1)
    daa8:	c0 00 10 20 	l.mtspr r0,r2,0x20
    daac:	84 41 00 84 	l.lwz r2,132(r1)
    dab0:	c0 00 10 40 	l.mtspr r0,r2,0x40
    dab4:	84 41 00 08 	l.lwz r2,8(r1)
    dab8:	84 61 00 0c 	l.lwz r3,12(r1)
    dabc:	84 81 00 10 	l.lwz r4,16(r1)
    dac0:	84 a1 00 14 	l.lwz r5,20(r1)
    dac4:	84 c1 00 18 	l.lwz r6,24(r1)
    dac8:	84 e1 00 1c 	l.lwz r7,28(r1)
    dacc:	85 01 00 20 	l.lwz r8,32(r1)
    dad0:	85 21 00 24 	l.lwz r9,36(r1)
    dad4:	85 41 00 28 	l.lwz r10,40(r1)
    dad8:	85 61 00 2c 	l.lwz r11,44(r1)
    dadc:	85 81 00 30 	l.lwz r12,48(r1)
    dae0:	85 a1 00 34 	l.lwz r13,52(r1)
    dae4:	85 c1 00 38 	l.lwz r14,56(r1)
    dae8:	85 e1 00 3c 	l.lwz r15,60(r1)
    daec:	86 01 00 40 	l.lwz r16,64(r1)
    daf0:	86 21 00 44 	l.lwz r17,68(r1)
    daf4:	86 41 00 48 	l.lwz r18,72(r1)
    daf8:	86 61 00 4c 	l.lwz r19,76(r1)
    dafc:	86 81 00 50 	l.lwz r20,80(r1)
    db00:	86 a1 00 54 	l.lwz r21,84(r1)
    db04:	86 c1 00 58 	l.lwz r22,88(r1)
    db08:	86 e1 00 5c 	l.lwz r23,92(r1)
    db0c:	87 01 00 60 	l.lwz r24,96(r1)
    db10:	87 21 00 64 	l.lwz r25,100(r1)
    db14:	87 41 00 68 	l.lwz r26,104(r1)
    db18:	87 61 00 6c 	l.lwz r27,108(r1)
    db1c:	87 81 00 70 	l.lwz r28,112(r1)
    db20:	87 a1 00 74 	l.lwz r29,116(r1)
    db24:	87 c1 00 78 	l.lwz r30,120(r1)
    db28:	87 e1 00 7c 	l.lwz r31,124(r1)
    db2c:	84 21 00 04 	l.lwz r1,4(r1)
    db30:	24 00 00 00 	l.rfe
    db34:	15 00 00 00 	l.nop 0x0

0000db38 <exception_exit>:
    db38:	07 ff d2 92 	l.jal 2580 <exit>
    db3c:	e0 64 20 04 	l.or r3,r4,r4

0000db40 <or1k_interrupt_handler_add>:
    db40:	d7 e1 17 fc 	l.sw -4(r1),r2
    db44:	18 40 00 01 	l.movhi r2,0x1
    db48:	b8 63 00 02 	l.slli r3,r3,0x2
    db4c:	a8 42 2d c8 	l.ori r2,r2,0x2dc8
    db50:	d7 e1 0f f8 	l.sw -8(r1),r1
    db54:	e0 c3 10 00 	l.add r6,r3,r2
    db58:	18 40 00 01 	l.movhi r2,0x1
    db5c:	9c 21 ff f8 	l.addi r1,r1,-8
    db60:	a8 42 2e 48 	l.ori r2,r2,0x2e48
    db64:	d4 06 20 00 	l.sw 0(r6),r4
    db68:	e0 63 10 00 	l.add r3,r3,r2
    db6c:	d4 03 28 00 	l.sw 0(r3),r5
    db70:	9c 21 00 08 	l.addi r1,r1,8
    db74:	84 21 ff f8 	l.lwz r1,-8(r1)
    db78:	44 00 48 00 	l.jr r9
    db7c:	84 41 ff fc 	l.lwz r2,-4(r1)

0000db80 <or1k_interrupts_enable>:
    db80:	d7 e1 0f fc 	l.sw -4(r1),r1
    db84:	9c 80 00 11 	l.addi r4,r0,17
    db88:	9c 21 ff fc 	l.addi r1,r1,-4
    db8c:	b4 64 00 00 	l.mfspr r3,r4,0x0
    db90:	a8 63 00 04 	l.ori r3,r3,0x4
    db94:	c0 04 18 00 	l.mtspr r4,r3,0x0
    db98:	9c 21 00 04 	l.addi r1,r1,4
    db9c:	44 00 48 00 	l.jr r9
    dba0:	84 21 ff fc 	l.lwz r1,-4(r1)

0000dba4 <or1k_interrupts_disable>:
    dba4:	d7 e1 0f f8 	l.sw -8(r1),r1
    dba8:	d7 e1 17 fc 	l.sw -4(r1),r2
    dbac:	9c 60 00 11 	l.addi r3,r0,17
    dbb0:	9c 21 ff f8 	l.addi r1,r1,-8
    dbb4:	b5 63 00 00 	l.mfspr r11,r3,0x0
    dbb8:	9c 40 ff fb 	l.addi r2,r0,-5
    dbbc:	e0 8b 10 03 	l.and r4,r11,r2
    dbc0:	c0 03 20 00 	l.mtspr r3,r4,0x0
    dbc4:	9c 21 00 08 	l.addi r1,r1,8
    dbc8:	b9 6b 00 42 	l.srli r11,r11,0x2
    dbcc:	84 21 ff f8 	l.lwz r1,-8(r1)
    dbd0:	a5 6b 00 01 	l.andi r11,r11,0x1
    dbd4:	44 00 48 00 	l.jr r9
    dbd8:	84 41 ff fc 	l.lwz r2,-4(r1)

0000dbdc <or1k_interrupts_restore>:
    dbdc:	d7 e1 0f f8 	l.sw -8(r1),r1
    dbe0:	d7 e1 17 fc 	l.sw -4(r1),r2
    dbe4:	9c 80 00 11 	l.addi r4,r0,17
    dbe8:	9c 21 ff f8 	l.addi r1,r1,-8
    dbec:	b4 84 00 00 	l.mfspr r4,r4,0x0
    dbf0:	9c 40 ff fb 	l.addi r2,r0,-5
    dbf4:	bc 23 00 00 	l.sfnei r3,0
    dbf8:	e0 84 10 03 	l.and r4,r4,r2
    dbfc:	10 00 00 03 	l.bf dc08 <or1k_interrupts_restore+0x2c>
    dc00:	9c a0 00 04 	l.addi r5,r0,4
    dc04:	a8 a3 00 00 	l.ori r5,r3,0x0
    dc08:	e0 65 20 04 	l.or r3,r5,r4
    dc0c:	9c 80 00 11 	l.addi r4,r0,17
    dc10:	c0 04 18 00 	l.mtspr r4,r3,0x0
    dc14:	9c 21 00 08 	l.addi r1,r1,8
    dc18:	84 21 ff f8 	l.lwz r1,-8(r1)
    dc1c:	44 00 48 00 	l.jr r9
    dc20:	84 41 ff fc 	l.lwz r2,-4(r1)

0000dc24 <_or1k_interrupt_handler>:
    dc24:	9c 21 ff fc 	l.addi r1,r1,-4
    dc28:	d4 01 48 00 	l.sw 0(r1),r9
    dc2c:	b6 80 48 02 	l.mfspr r20,r0,0x4802
    dc30:	1a 00 00 01 	l.movhi r16,0x1
    dc34:	aa 10 2d c8 	l.ori r16,r16,0x2dc8
    dc38:	1a 40 00 01 	l.movhi r18,0x1
    dc3c:	aa 52 2e 48 	l.ori r18,r18,0x2e48
    dc40:	e0 94 00 0f 	l.ff1 r4,r20
    dc44:	e4 24 00 00 	l.sfne r4,r0
    dc48:	0c 00 00 10 	l.bnf dc88 <_or1k_interrupt_handler+0x64>
    dc4c:	15 00 00 00 	l.nop 0x0
    dc50:	9e c4 ff ff 	l.addi r22,r4,-1
    dc54:	b8 d6 00 02 	l.slli r6,r22,0x2
    dc58:	e1 c6 80 00 	l.add r14,r6,r16
    dc5c:	e1 a6 90 00 	l.add r13,r6,r18
    dc60:	85 ce 00 00 	l.lwz r14,0(r14)
    dc64:	e4 2e 00 00 	l.sfne r14,r0
    dc68:	0c 00 00 04 	l.bnf dc78 <_or1k_interrupt_handler+0x54>
    dc6c:	15 00 00 00 	l.nop 0x0
    dc70:	48 00 70 00 	l.jalr r14
    dc74:	84 6d 00 00 	l.lwz r3,0(r13)
    dc78:	a8 c0 00 01 	l.ori r6,r0,0x1
    dc7c:	e0 c6 b0 08 	l.sll r6,r6,r22
    dc80:	03 ff ff f0 	l.j dc40 <_or1k_interrupt_handler+0x1c>
    dc84:	e2 94 30 05 	l.xor r20,r20,r6
    dc88:	85 21 00 00 	l.lwz r9,0(r1)
    dc8c:	c1 20 a0 02 	l.mtspr r0,r20,0x4802
    dc90:	44 00 48 00 	l.jr r9
    dc94:	9c 21 00 04 	l.addi r1,r1,4

0000dc98 <or1k_interrupt_enable>:
    dc98:	9c 21 ff fc 	l.addi r1,r1,-4
    dc9c:	d4 01 20 00 	l.sw 0(r1),r4
    dca0:	a8 80 00 01 	l.ori r4,r0,0x1
    dca4:	e0 84 18 08 	l.sll r4,r4,r3
    dca8:	b4 60 48 00 	l.mfspr r3,r0,0x4800
    dcac:	e0 63 20 04 	l.or r3,r3,r4
    dcb0:	c1 20 18 00 	l.mtspr r0,r3,0x4800
    dcb4:	84 81 00 00 	l.lwz r4,0(r1)
    dcb8:	44 00 48 00 	l.jr r9
    dcbc:	9c 21 00 04 	l.addi r1,r1,4

0000dcc0 <or1k_interrupt_disable>:
    dcc0:	9c 21 ff fc 	l.addi r1,r1,-4
    dcc4:	d4 01 20 00 	l.sw 0(r1),r4
    dcc8:	a8 80 00 01 	l.ori r4,r0,0x1
    dccc:	e0 84 18 08 	l.sll r4,r4,r3
    dcd0:	ac 84 ff ff 	l.xori r4,r4,-1
    dcd4:	b4 60 48 00 	l.mfspr r3,r0,0x4800
    dcd8:	e0 63 20 03 	l.and r3,r3,r4
    dcdc:	c1 20 18 00 	l.mtspr r0,r3,0x4800
    dce0:	84 81 00 00 	l.lwz r4,0(r1)
    dce4:	44 00 48 00 	l.jr r9
    dce8:	9c 21 00 04 	l.addi r1,r1,4

0000dcec <_sbrk_r>:
    dcec:	d7 e1 4f fc 	l.sw -4(r1),r9
    dcf0:	d7 e1 17 e8 	l.sw -24(r1),r2
    dcf4:	d7 e1 77 ec 	l.sw -20(r1),r14
    dcf8:	d7 e1 97 f0 	l.sw -16(r1),r18
    dcfc:	d7 e1 a7 f4 	l.sw -12(r1),r20
    dd00:	d7 e1 b7 f8 	l.sw -8(r1),r22
    dd04:	d7 e1 0f e4 	l.sw -28(r1),r1
    dd08:	9c 21 ff e4 	l.addi r1,r1,-28
    dd0c:	aa 44 00 00 	l.ori r18,r4,0x0
    dd10:	07 ff ff a5 	l.jal dba4 <or1k_interrupts_disable>
    dd14:	18 40 00 01 	l.movhi r2,0x1
    dd18:	04 00 01 71 	l.jal e2dc <or1k_timer_disable>
    dd1c:	aa 8b 00 00 	l.ori r20,r11,0x0
    dd20:	a8 42 29 28 	l.ori r2,r2,0x2928
    dd24:	18 60 00 01 	l.movhi r3,0x1
    dd28:	9c 80 00 00 	l.addi r4,r0,0
    dd2c:	a8 63 2e c8 	l.ori r3,r3,0x2ec8
    dd30:	84 a2 00 00 	l.lwz r5,0(r2)
    dd34:	aa cb 00 00 	l.ori r22,r11,0x0
    dd38:	04 00 00 c0 	l.jal e038 <or1k_sync_cas>
    dd3c:	a9 c3 00 00 	l.ori r14,r3,0x0
    dd40:	84 4e 00 00 	l.lwz r2,0(r14)
    dd44:	18 60 00 01 	l.movhi r3,0x1
    dd48:	e0 a2 90 00 	l.add r5,r2,r18
    dd4c:	a8 63 2e c8 	l.ori r3,r3,0x2ec8
    dd50:	04 00 00 ba 	l.jal e038 <or1k_sync_cas>
    dd54:	a8 82 00 00 	l.ori r4,r2,0x0
    dd58:	e4 22 58 00 	l.sfne r2,r11
    dd5c:	13 ff ff f9 	l.bf dd40 <_sbrk_r+0x54>
    dd60:	15 00 00 00 	l.nop 0x0
    dd64:	04 00 01 6c 	l.jal e314 <or1k_timer_restore>
    dd68:	a8 76 00 00 	l.ori r3,r22,0x0
    dd6c:	07 ff ff 9c 	l.jal dbdc <or1k_interrupts_restore>
    dd70:	a8 74 00 00 	l.ori r3,r20,0x0
    dd74:	9c 21 00 1c 	l.addi r1,r1,28
    dd78:	a9 62 00 00 	l.ori r11,r2,0x0
    dd7c:	85 21 ff fc 	l.lwz r9,-4(r1)
    dd80:	84 21 ff e4 	l.lwz r1,-28(r1)
    dd84:	84 41 ff e8 	l.lwz r2,-24(r1)
    dd88:	85 c1 ff ec 	l.lwz r14,-20(r1)
    dd8c:	86 41 ff f0 	l.lwz r18,-16(r1)
    dd90:	86 81 ff f4 	l.lwz r20,-12(r1)
    dd94:	44 00 48 00 	l.jr r9
    dd98:	86 c1 ff f8 	l.lwz r22,-8(r1)

0000dd9c <_or1k_libc_impure_init>:
    dd9c:	d7 e1 17 d8 	l.sw -40(r1),r2
    dda0:	18 40 00 01 	l.movhi r2,0x1
    dda4:	9d 00 04 24 	l.addi r8,r0,1060
    dda8:	a8 42 20 6c 	l.ori r2,r2,0x206c
    ddac:	d7 e1 4f fc 	l.sw -4(r1),r9
    ddb0:	84 62 00 00 	l.lwz r3,0(r2)
    ddb4:	d7 e1 77 dc 	l.sw -36(r1),r14
    ddb8:	d7 e1 97 e0 	l.sw -32(r1),r18
    ddbc:	d7 e1 a7 e4 	l.sw -28(r1),r20
    ddc0:	d7 e1 b7 e8 	l.sw -24(r1),r22
    ddc4:	d7 e1 c7 ec 	l.sw -20(r1),r24
    ddc8:	d7 e1 d7 f0 	l.sw -16(r1),r26
    ddcc:	d7 e1 e7 f4 	l.sw -12(r1),r28
    ddd0:	d7 e1 f7 f8 	l.sw -8(r1),r30
    ddd4:	a8 a8 00 00 	l.ori r5,r8,0x0
    ddd8:	d7 e1 0f d4 	l.sw -44(r1),r1
    dddc:	9c 80 00 00 	l.addi r4,r0,0
    dde0:	9c 21 ff d0 	l.addi r1,r1,-48
    dde4:	9f c0 33 0e 	l.addi r30,r0,13070
    dde8:	07 ff eb 97 	l.jal 8c44 <memset>
    ddec:	d4 01 40 00 	l.sw 0(r1),r8
    ddf0:	84 c2 00 00 	l.lwz r6,0(r2)
    ddf4:	9f 80 ab cd 	l.addi r28,r0,-21555
    ddf8:	9f 40 12 34 	l.addi r26,r0,4660
    ddfc:	9e c0 e6 6d 	l.addi r22,r0,-6547
    de00:	9e 80 de ec 	l.addi r20,r0,-8468
    de04:	9e 40 00 05 	l.addi r18,r0,5
    de08:	9d c0 00 0b 	l.addi r14,r0,11
    de0c:	dc 06 f0 ac 	l.sh 172(r6),r30
    de10:	dc 06 e0 ae 	l.sh 174(r6),r28
    de14:	dc 06 d0 b0 	l.sh 176(r6),r26
    de18:	dc 06 b0 b2 	l.sh 178(r6),r22
    de1c:	dc 06 a0 b4 	l.sh 180(r6),r20
    de20:	dc 06 90 b6 	l.sh 182(r6),r18
    de24:	dc 06 70 b8 	l.sh 184(r6),r14
    de28:	1b 00 00 01 	l.movhi r24,0x1
    de2c:	18 e0 00 01 	l.movhi r7,0x1
    de30:	85 01 00 00 	l.lwz r8,0(r1)
    de34:	9c a6 02 ec 	l.addi r5,r6,748
    de38:	9c 86 03 54 	l.addi r4,r6,852
    de3c:	9c 66 03 bc 	l.addi r3,r6,956
    de40:	a8 e7 29 2c 	l.ori r7,r7,0x292c
    de44:	ab 18 19 7c 	l.ori r24,r24,0x197c
    de48:	9d 60 00 00 	l.addi r11,r0,0
    de4c:	9d 80 00 01 	l.addi r12,r0,1
    de50:	d4 06 28 04 	l.sw 4(r6),r5
    de54:	d4 06 20 08 	l.sw 8(r6),r4
    de58:	d4 06 18 0c 	l.sw 12(r6),r3
    de5c:	d4 06 c0 34 	l.sw 52(r6),r24
    de60:	84 67 00 00 	l.lwz r3,0(r7)
    de64:	a8 a8 00 00 	l.ori r5,r8,0x0
    de68:	9c 80 00 00 	l.addi r4,r0,0
    de6c:	d4 06 58 a4 	l.sw 164(r6),r11
    de70:	d4 06 60 a8 	l.sw 168(r6),r12
    de74:	07 ff eb 74 	l.jal 8c44 <memset>
    de78:	d4 01 38 00 	l.sw 0(r1),r7
    de7c:	84 e1 00 00 	l.lwz r7,0(r1)
    de80:	84 42 00 00 	l.lwz r2,0(r2)
    de84:	84 67 00 00 	l.lwz r3,0(r7)
    de88:	9c 83 03 bc 	l.addi r4,r3,956
    de8c:	9c a3 03 54 	l.addi r5,r3,852
    de90:	d4 03 20 0c 	l.sw 12(r3),r4
    de94:	18 80 00 01 	l.movhi r4,0x1
    de98:	d4 03 28 08 	l.sw 8(r3),r5
    de9c:	a8 84 2e dc 	l.ori r4,r4,0x2edc
    dea0:	9c c3 02 ec 	l.addi r6,r3,748
    dea4:	d4 04 10 00 	l.sw 0(r4),r2
    dea8:	18 80 00 01 	l.movhi r4,0x1
    deac:	9c a0 00 01 	l.addi r5,r0,1
    deb0:	a8 84 2e d8 	l.ori r4,r4,0x2ed8
    deb4:	dc 03 f0 ac 	l.sh 172(r3),r30
    deb8:	d4 04 10 00 	l.sw 0(r4),r2
    debc:	9c 80 00 00 	l.addi r4,r0,0
    dec0:	dc 03 e0 ae 	l.sh 174(r3),r28
    dec4:	dc 03 d0 b0 	l.sh 176(r3),r26
    dec8:	dc 03 b0 b2 	l.sh 178(r3),r22
    decc:	dc 03 a0 b4 	l.sh 180(r3),r20
    ded0:	dc 03 90 b6 	l.sh 182(r3),r18
    ded4:	dc 03 70 b8 	l.sh 184(r3),r14
    ded8:	d4 03 20 a4 	l.sw 164(r3),r4
    dedc:	d4 03 28 a8 	l.sw 168(r3),r5
    dee0:	d4 03 c0 34 	l.sw 52(r3),r24
    dee4:	d4 03 30 04 	l.sw 4(r3),r6
    dee8:	9c 21 00 30 	l.addi r1,r1,48
    deec:	85 21 ff fc 	l.lwz r9,-4(r1)
    def0:	84 21 ff d4 	l.lwz r1,-44(r1)
    def4:	84 41 ff d8 	l.lwz r2,-40(r1)
    def8:	85 c1 ff dc 	l.lwz r14,-36(r1)
    defc:	86 41 ff e0 	l.lwz r18,-32(r1)
    df00:	86 81 ff e4 	l.lwz r20,-28(r1)
    df04:	86 c1 ff e8 	l.lwz r22,-24(r1)
    df08:	87 01 ff ec 	l.lwz r24,-20(r1)
    df0c:	87 41 ff f0 	l.lwz r26,-16(r1)
    df10:	87 81 ff f4 	l.lwz r28,-12(r1)
    df14:	44 00 48 00 	l.jr r9
    df18:	87 c1 ff f8 	l.lwz r30,-8(r1)

0000df1c <_or1k_libc_getreent>:
    df1c:	18 60 00 01 	l.movhi r3,0x1
    df20:	d7 e1 0f fc 	l.sw -4(r1),r1
    df24:	a8 63 2e d8 	l.ori r3,r3,0x2ed8
    df28:	9c 21 ff fc 	l.addi r1,r1,-4
    df2c:	85 63 00 00 	l.lwz r11,0(r3)
    df30:	9c 21 00 04 	l.addi r1,r1,4
    df34:	44 00 48 00 	l.jr r9
    df38:	84 21 ff fc 	l.lwz r1,-4(r1)

0000df3c <_or1k_reent_init>:
    df3c:	d7 e1 0f fc 	l.sw -4(r1),r1
    df40:	9c 21 ff fc 	l.addi r1,r1,-4
    df44:	9c 21 00 04 	l.addi r1,r1,4
    df48:	44 00 48 00 	l.jr r9
    df4c:	84 21 ff fc 	l.lwz r1,-4(r1)

0000df50 <_or1k_init>:
    df50:	d7 e1 4f fc 	l.sw -4(r1),r9
    df54:	d7 e1 17 f8 	l.sw -8(r1),r2
    df58:	d7 e1 0f f4 	l.sw -12(r1),r1
    df5c:	9c 21 ff f4 	l.addi r1,r1,-12
    df60:	07 ff ff f7 	l.jal df3c <_or1k_reent_init>
    df64:	9c 40 00 00 	l.addi r2,r0,0
    df68:	18 80 00 00 	l.movhi r4,0x0
    df6c:	18 60 00 01 	l.movhi r3,0x1
    df70:	a8 84 dc 24 	l.ori r4,r4,0xdc24
    df74:	a8 63 2e f4 	l.ori r3,r3,0x2ef4
    df78:	d4 03 20 18 	l.sw 24(r3),r4
    df7c:	18 60 00 01 	l.movhi r3,0x1
    df80:	a8 63 2e e0 	l.ori r3,r3,0x2ee0
    df84:	d4 03 10 00 	l.sw 0(r3),r2
    df88:	9c 21 00 0c 	l.addi r1,r1,12
    df8c:	85 21 ff fc 	l.lwz r9,-4(r1)
    df90:	84 21 ff f4 	l.lwz r1,-12(r1)
    df94:	44 00 48 00 	l.jr r9
    df98:	84 41 ff f8 	l.lwz r2,-8(r1)

0000df9c <or1k_critical_begin>:
    df9c:	d7 e1 4f fc 	l.sw -4(r1),r9
    dfa0:	d7 e1 17 f8 	l.sw -8(r1),r2
    dfa4:	d7 e1 0f f4 	l.sw -12(r1),r1
    dfa8:	07 ff fe ff 	l.jal dba4 <or1k_interrupts_disable>
    dfac:	9c 21 ff f4 	l.addi r1,r1,-12
    dfb0:	04 00 00 cb 	l.jal e2dc <or1k_timer_disable>
    dfb4:	a8 4b 00 00 	l.ori r2,r11,0x0
    dfb8:	9c 21 00 0c 	l.addi r1,r1,12
    dfbc:	e0 42 10 00 	l.add r2,r2,r2
    dfc0:	85 21 ff fc 	l.lwz r9,-4(r1)
    dfc4:	84 21 ff f4 	l.lwz r1,-12(r1)
    dfc8:	e1 62 58 04 	l.or r11,r2,r11
    dfcc:	44 00 48 00 	l.jr r9
    dfd0:	84 41 ff f8 	l.lwz r2,-8(r1)

0000dfd4 <or1k_critical_end>:
    dfd4:	d7 e1 4f fc 	l.sw -4(r1),r9
    dfd8:	d7 e1 17 f8 	l.sw -8(r1),r2
    dfdc:	d7 e1 0f f4 	l.sw -12(r1),r1
    dfe0:	a8 43 00 00 	l.ori r2,r3,0x0
    dfe4:	9c 21 ff f4 	l.addi r1,r1,-12
    dfe8:	04 00 00 cb 	l.jal e314 <or1k_timer_restore>
    dfec:	a4 63 00 01 	l.andi r3,r3,0x1
    dff0:	b8 62 00 41 	l.srli r3,r2,0x1
    dff4:	07 ff fe fa 	l.jal dbdc <or1k_interrupts_restore>
    dff8:	a4 63 00 01 	l.andi r3,r3,0x1
    dffc:	9c 21 00 0c 	l.addi r1,r1,12
    e000:	85 21 ff fc 	l.lwz r9,-4(r1)
    e004:	84 21 ff f4 	l.lwz r1,-12(r1)
    e008:	44 00 48 00 	l.jr r9
    e00c:	84 41 ff f8 	l.lwz r2,-8(r1)

0000e010 <or1k_has_multicore_support>:
    e010:	44 00 48 00 	l.jr r9
    e014:	e1 60 00 04 	l.or r11,r0,r0

0000e018 <or1k_coreid>:
    e018:	44 00 48 00 	l.jr r9
    e01c:	e1 60 00 04 	l.or r11,r0,r0

0000e020 <or1k_numcores>:
    e020:	44 00 48 00 	l.jr r9
    e024:	a9 60 00 01 	l.ori r11,r0,0x1

0000e028 <or1k_sync_ll>:
    e028:	44 00 48 00 	l.jr r9
    e02c:	85 63 00 00 	l.lwz r11,0(r3)

0000e030 <or1k_sync_sc>:
    e030:	44 00 48 00 	l.jr r9
    e034:	d4 03 20 00 	l.sw 0(r3),r4

0000e038 <or1k_sync_cas>:
    e038:	85 63 00 00 	l.lwz r11,0(r3)
    e03c:	e4 0b 20 00 	l.sfeq r11,r4
    e040:	0c 00 00 03 	l.bnf e04c <.or1k_sync_cas_done>
    e044:	15 00 00 00 	l.nop 0x0
    e048:	d4 03 28 00 	l.sw 0(r3),r5

0000e04c <.or1k_sync_cas_done>:
    e04c:	44 00 48 00 	l.jr r9
    e050:	15 00 00 00 	l.nop 0x0

0000e054 <or1k_sync_tsl>:
    e054:	e0 80 00 04 	l.or r4,r0,r0
    e058:	03 ff ff f8 	l.j e038 <or1k_sync_cas>
    e05c:	9c a0 00 01 	l.addi r5,r0,1

0000e060 <or1k_exception_handler_add>:
    e060:	9c 63 ff fe 	l.addi r3,r3,-2
    e064:	d7 e1 17 fc 	l.sw -4(r1),r2
    e068:	18 40 00 01 	l.movhi r2,0x1
    e06c:	b8 63 00 02 	l.slli r3,r3,0x2
    e070:	a8 42 2e f4 	l.ori r2,r2,0x2ef4
    e074:	d7 e1 0f f8 	l.sw -8(r1),r1
    e078:	e0 63 10 00 	l.add r3,r3,r2
    e07c:	9c 21 ff f8 	l.addi r1,r1,-8
    e080:	d4 03 20 00 	l.sw 0(r3),r4
    e084:	9c 21 00 08 	l.addi r1,r1,8
    e088:	84 21 ff f8 	l.lwz r1,-8(r1)
    e08c:	44 00 48 00 	l.jr r9
    e090:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e094 <_or1k_timer_interrupt_handler>:
    e094:	18 a0 00 01 	l.movhi r5,0x1
    e098:	d7 e1 0f f8 	l.sw -8(r1),r1
    e09c:	a8 a5 2e cc 	l.ori r5,r5,0x2ecc
    e0a0:	d7 e1 17 fc 	l.sw -4(r1),r2
    e0a4:	84 65 00 00 	l.lwz r3,0(r5)
    e0a8:	9c 21 ff f8 	l.addi r1,r1,-8
    e0ac:	9c 63 00 01 	l.addi r3,r3,1
    e0b0:	9c 80 50 00 	l.addi r4,r0,20480
    e0b4:	d4 05 18 00 	l.sw 0(r5),r3
    e0b8:	b4 64 00 00 	l.mfspr r3,r4,0x0
    e0bc:	18 40 2f ff 	l.movhi r2,0x2fff
    e0c0:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e0c4:	e0 63 10 03 	l.and r3,r3,r2
    e0c8:	18 40 60 00 	l.movhi r2,0x6000
    e0cc:	e0 63 10 04 	l.or r3,r3,r2
    e0d0:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e0d4:	9c 21 00 08 	l.addi r1,r1,8
    e0d8:	84 21 ff f8 	l.lwz r1,-8(r1)
    e0dc:	44 00 48 00 	l.jr r9
    e0e0:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e0e4 <or1k_timer_init>:
    e0e4:	d7 e1 97 f8 	l.sw -8(r1),r18
    e0e8:	d7 e1 4f fc 	l.sw -4(r1),r9
    e0ec:	d7 e1 0f ec 	l.sw -20(r1),r1
    e0f0:	d7 e1 17 f0 	l.sw -16(r1),r2
    e0f4:	d7 e1 77 f4 	l.sw -12(r1),r14
    e0f8:	9e 40 00 01 	l.addi r18,r0,1
    e0fc:	9c 21 ff ec 	l.addi r1,r1,-20
    e100:	b4 b2 00 00 	l.mfspr r5,r18,0x0
    e104:	b8 a5 00 4a 	l.srli r5,r5,0xa
    e108:	e0 a5 90 03 	l.and r5,r5,r18
    e10c:	bc 05 00 00 	l.sfeqi r5,0
    e110:	10 00 00 20 	l.bf e190 <or1k_timer_init+0xac>
    e114:	18 40 00 00 	l.movhi r2,0x0
    e118:	a8 83 00 00 	l.ori r4,r3,0x0
    e11c:	a8 42 e4 24 	l.ori r2,r2,0xe424
    e120:	19 c0 00 01 	l.movhi r14,0x1
    e124:	84 62 00 00 	l.lwz r3,0(r2)
    e128:	04 00 00 d2 	l.jal e470 <__udivsi3>
    e12c:	18 40 0f ff 	l.movhi r2,0xfff
    e130:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e134:	a9 ce 2e cc 	l.ori r14,r14,0x2ecc
    e138:	e1 6b 10 03 	l.and r11,r11,r2
    e13c:	9c 40 50 00 	l.addi r2,r0,20480
    e140:	d4 0e 58 04 	l.sw 4(r14),r11
    e144:	c0 02 58 00 	l.mtspr r2,r11,0x0
    e148:	18 80 00 00 	l.movhi r4,0x0
    e14c:	9c 40 00 00 	l.addi r2,r0,0
    e150:	a8 84 e0 94 	l.ori r4,r4,0xe094
    e154:	9c 60 00 05 	l.addi r3,r0,5
    e158:	d4 0e 10 00 	l.sw 0(r14),r2
    e15c:	07 ff ff c1 	l.jal e060 <or1k_exception_handler_add>
    e160:	15 00 00 00 	l.nop 0x0
    e164:	9c 60 50 01 	l.addi r3,r0,20481
    e168:	d4 0e 90 08 	l.sw 8(r14),r18
    e16c:	c0 03 10 00 	l.mtspr r3,r2,0x0
    e170:	a9 62 00 00 	l.ori r11,r2,0x0
    e174:	9c 21 00 14 	l.addi r1,r1,20
    e178:	85 21 ff fc 	l.lwz r9,-4(r1)
    e17c:	84 21 ff ec 	l.lwz r1,-20(r1)
    e180:	84 41 ff f0 	l.lwz r2,-16(r1)
    e184:	85 c1 ff f4 	l.lwz r14,-12(r1)
    e188:	44 00 48 00 	l.jr r9
    e18c:	86 41 ff f8 	l.lwz r18,-8(r1)
    e190:	03 ff ff f9 	l.j e174 <or1k_timer_init+0x90>
    e194:	9d 60 ff ff 	l.addi r11,r0,-1

0000e198 <or1k_timer_set_period>:
    e198:	a8 83 00 00 	l.ori r4,r3,0x0
    e19c:	18 60 00 00 	l.movhi r3,0x0
    e1a0:	d7 e1 17 f8 	l.sw -8(r1),r2
    e1a4:	a8 63 e4 24 	l.ori r3,r3,0xe424
    e1a8:	18 40 0f ff 	l.movhi r2,0xfff
    e1ac:	d7 e1 4f fc 	l.sw -4(r1),r9
    e1b0:	d7 e1 0f f4 	l.sw -12(r1),r1
    e1b4:	84 63 00 00 	l.lwz r3,0(r3)
    e1b8:	9c 21 ff f4 	l.addi r1,r1,-12
    e1bc:	04 00 00 ad 	l.jal e470 <__udivsi3>
    e1c0:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e1c4:	9c 80 50 00 	l.addi r4,r0,20480
    e1c8:	e1 6b 10 03 	l.and r11,r11,r2
    e1cc:	b4 64 00 00 	l.mfspr r3,r4,0x0
    e1d0:	18 40 f0 00 	l.movhi r2,0xf000
    e1d4:	e0 63 10 03 	l.and r3,r3,r2
    e1d8:	e0 6b 18 04 	l.or r3,r11,r3
    e1dc:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e1e0:	18 60 00 01 	l.movhi r3,0x1
    e1e4:	a8 63 2e cc 	l.ori r3,r3,0x2ecc
    e1e8:	d4 03 58 04 	l.sw 4(r3),r11
    e1ec:	9c 21 00 0c 	l.addi r1,r1,12
    e1f0:	85 21 ff fc 	l.lwz r9,-4(r1)
    e1f4:	84 21 ff f4 	l.lwz r1,-12(r1)
    e1f8:	44 00 48 00 	l.jr r9
    e1fc:	84 41 ff f8 	l.lwz r2,-8(r1)

0000e200 <or1k_timer_set_handler>:
    e200:	d7 e1 4f fc 	l.sw -4(r1),r9
    e204:	d7 e1 0f f8 	l.sw -8(r1),r1
    e208:	a8 83 00 00 	l.ori r4,r3,0x0
    e20c:	9c 21 ff f8 	l.addi r1,r1,-8
    e210:	07 ff ff 94 	l.jal e060 <or1k_exception_handler_add>
    e214:	9c 60 00 05 	l.addi r3,r0,5
    e218:	9c 21 00 08 	l.addi r1,r1,8
    e21c:	85 21 ff fc 	l.lwz r9,-4(r1)
    e220:	44 00 48 00 	l.jr r9
    e224:	84 21 ff f8 	l.lwz r1,-8(r1)

0000e228 <or1k_timer_set_mode>:
    e228:	18 80 00 01 	l.movhi r4,0x1
    e22c:	d7 e1 0f f8 	l.sw -8(r1),r1
    e230:	a8 84 2e cc 	l.ori r4,r4,0x2ecc
    e234:	d7 e1 17 fc 	l.sw -4(r1),r2
    e238:	9c a0 50 00 	l.addi r5,r0,20480
    e23c:	9c 21 ff f8 	l.addi r1,r1,-8
    e240:	d4 04 18 08 	l.sw 8(r4),r3
    e244:	b4 85 00 00 	l.mfspr r4,r5,0x0
    e248:	b8 c4 00 5e 	l.srli r6,r4,0x1e
    e24c:	bc 06 00 00 	l.sfeqi r6,0
    e250:	10 00 00 07 	l.bf e26c <or1k_timer_set_mode+0x44>
    e254:	b8 63 00 1e 	l.slli r3,r3,0x1e
    e258:	18 40 3f ff 	l.movhi r2,0x3fff
    e25c:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e260:	e0 84 10 03 	l.and r4,r4,r2
    e264:	e0 83 20 04 	l.or r4,r3,r4
    e268:	c0 05 20 00 	l.mtspr r5,r4,0x0
    e26c:	9c 21 00 08 	l.addi r1,r1,8
    e270:	84 21 ff f8 	l.lwz r1,-8(r1)
    e274:	44 00 48 00 	l.jr r9
    e278:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e27c <or1k_timer_enable>:
    e27c:	d7 e1 0f f8 	l.sw -8(r1),r1
    e280:	d7 e1 17 fc 	l.sw -4(r1),r2
    e284:	9c a0 50 00 	l.addi r5,r0,20480
    e288:	9c 21 ff f8 	l.addi r1,r1,-8
    e28c:	b4 65 00 00 	l.mfspr r3,r5,0x0
    e290:	18 40 3f ff 	l.movhi r2,0x3fff
    e294:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e298:	e0 83 10 03 	l.and r4,r3,r2
    e29c:	18 60 00 01 	l.movhi r3,0x1
    e2a0:	18 40 20 00 	l.movhi r2,0x2000
    e2a4:	a8 63 2e cc 	l.ori r3,r3,0x2ecc
    e2a8:	84 63 00 08 	l.lwz r3,8(r3)
    e2ac:	b8 63 00 1e 	l.slli r3,r3,0x1e
    e2b0:	e0 63 10 04 	l.or r3,r3,r2
    e2b4:	e0 63 20 04 	l.or r3,r3,r4
    e2b8:	c0 05 18 00 	l.mtspr r5,r3,0x0
    e2bc:	9c 80 00 11 	l.addi r4,r0,17
    e2c0:	b4 64 00 00 	l.mfspr r3,r4,0x0
    e2c4:	a8 63 00 02 	l.ori r3,r3,0x2
    e2c8:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e2cc:	9c 21 00 08 	l.addi r1,r1,8
    e2d0:	84 21 ff f8 	l.lwz r1,-8(r1)
    e2d4:	44 00 48 00 	l.jr r9
    e2d8:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e2dc <or1k_timer_disable>:
    e2dc:	d7 e1 0f f8 	l.sw -8(r1),r1
    e2e0:	d7 e1 17 fc 	l.sw -4(r1),r2
    e2e4:	9c 60 00 11 	l.addi r3,r0,17
    e2e8:	9c 21 ff f8 	l.addi r1,r1,-8
    e2ec:	b5 63 00 00 	l.mfspr r11,r3,0x0
    e2f0:	9c 40 ff fd 	l.addi r2,r0,-3
    e2f4:	e0 8b 10 03 	l.and r4,r11,r2
    e2f8:	c0 03 20 00 	l.mtspr r3,r4,0x0
    e2fc:	9c 21 00 08 	l.addi r1,r1,8
    e300:	b9 6b 00 41 	l.srli r11,r11,0x1
    e304:	84 21 ff f8 	l.lwz r1,-8(r1)
    e308:	a5 6b 00 01 	l.andi r11,r11,0x1
    e30c:	44 00 48 00 	l.jr r9
    e310:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e314 <or1k_timer_restore>:
    e314:	d7 e1 0f f8 	l.sw -8(r1),r1
    e318:	d7 e1 17 fc 	l.sw -4(r1),r2
    e31c:	9c 80 00 11 	l.addi r4,r0,17
    e320:	9c 21 ff f8 	l.addi r1,r1,-8
    e324:	b4 84 00 00 	l.mfspr r4,r4,0x0
    e328:	9c 40 ff fd 	l.addi r2,r0,-3
    e32c:	bc 23 00 00 	l.sfnei r3,0
    e330:	e0 84 10 03 	l.and r4,r4,r2
    e334:	10 00 00 03 	l.bf e340 <or1k_timer_restore+0x2c>
    e338:	9c a0 00 02 	l.addi r5,r0,2
    e33c:	a8 a3 00 00 	l.ori r5,r3,0x0
    e340:	e0 65 20 04 	l.or r3,r5,r4
    e344:	9c 80 00 11 	l.addi r4,r0,17
    e348:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e34c:	9c 21 00 08 	l.addi r1,r1,8
    e350:	84 21 ff f8 	l.lwz r1,-8(r1)
    e354:	44 00 48 00 	l.jr r9
    e358:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e35c <or1k_timer_pause>:
    e35c:	d7 e1 0f f8 	l.sw -8(r1),r1
    e360:	d7 e1 17 fc 	l.sw -4(r1),r2
    e364:	9c 80 50 00 	l.addi r4,r0,20480
    e368:	9c 21 ff f8 	l.addi r1,r1,-8
    e36c:	b4 64 00 00 	l.mfspr r3,r4,0x0
    e370:	18 40 3f ff 	l.movhi r2,0x3fff
    e374:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e378:	e0 63 10 03 	l.and r3,r3,r2
    e37c:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e380:	9c 21 00 08 	l.addi r1,r1,8
    e384:	84 21 ff f8 	l.lwz r1,-8(r1)
    e388:	44 00 48 00 	l.jr r9
    e38c:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e390 <or1k_timer_reset>:
    e390:	d7 e1 0f f8 	l.sw -8(r1),r1
    e394:	d7 e1 17 fc 	l.sw -4(r1),r2
    e398:	9c 80 50 00 	l.addi r4,r0,20480
    e39c:	9c 21 ff f8 	l.addi r1,r1,-8
    e3a0:	b4 64 00 00 	l.mfspr r3,r4,0x0
    e3a4:	18 40 ef ff 	l.movhi r2,0xefff
    e3a8:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e3ac:	e0 63 10 03 	l.and r3,r3,r2
    e3b0:	c0 04 18 00 	l.mtspr r4,r3,0x0
    e3b4:	9c 80 00 00 	l.addi r4,r0,0
    e3b8:	9c 60 50 01 	l.addi r3,r0,20481
    e3bc:	c0 03 20 00 	l.mtspr r3,r4,0x0
    e3c0:	9c 21 00 08 	l.addi r1,r1,8
    e3c4:	84 21 ff f8 	l.lwz r1,-8(r1)
    e3c8:	44 00 48 00 	l.jr r9
    e3cc:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e3d0 <or1k_timer_get_ticks>:
    e3d0:	18 60 00 01 	l.movhi r3,0x1
    e3d4:	d7 e1 0f fc 	l.sw -4(r1),r1
    e3d8:	a8 63 2e cc 	l.ori r3,r3,0x2ecc
    e3dc:	9c 21 ff fc 	l.addi r1,r1,-4
    e3e0:	85 63 00 00 	l.lwz r11,0(r3)
    e3e4:	9c 21 00 04 	l.addi r1,r1,4
    e3e8:	44 00 48 00 	l.jr r9
    e3ec:	84 21 ff fc 	l.lwz r1,-4(r1)

0000e3f0 <or1k_timer_reset_ticks>:
    e3f0:	18 60 00 01 	l.movhi r3,0x1
    e3f4:	d7 e1 17 fc 	l.sw -4(r1),r2
    e3f8:	a8 63 2e cc 	l.ori r3,r3,0x2ecc
    e3fc:	9c 40 00 00 	l.addi r2,r0,0
    e400:	d7 e1 0f f8 	l.sw -8(r1),r1
    e404:	9c 21 ff f8 	l.addi r1,r1,-8
    e408:	d4 03 10 00 	l.sw 0(r3),r2
    e40c:	9c 21 00 08 	l.addi r1,r1,8
    e410:	84 21 ff f8 	l.lwz r1,-8(r1)
    e414:	44 00 48 00 	l.jr r9
    e418:	84 41 ff fc 	l.lwz r2,-4(r1)

0000e41c <_or1k_board_mem_base>:
    e41c:	00 00 00 00 	l.j e41c <_or1k_board_mem_base>

0000e420 <_or1k_board_mem_size>:
    e420:	00 80 00 00 	l.j 200e420 <_end+0x1ffb4b4>

0000e424 <_or1k_board_clk_freq>:
    e424:	05 f5 e1 00 	l.jal 7d86824 <_end+0x7d738b8>

0000e428 <_or1k_board_uart_base>:
    e428:	00 00 00 00 	l.j e428 <_or1k_board_uart_base>

0000e42c <_or1k_board_uart_baud>:
    e42c:	00 01 c2 00 	l.j 7ec2c <_end+0x6bcc0>

0000e430 <_or1k_board_uart_IRQ>:
    e430:	00 00 00 0d 	l.j e464 <__errno+0x14>

0000e434 <_or1k_board_exit>:
    e434:	15 00 00 0c 	l.nop 0xc
    e438:	00 00 00 00 	l.j e438 <_or1k_board_exit+0x4>
    e43c:	15 00 00 00 	l.nop 0x0

0000e440 <_or1k_board_init_early>:
    e440:	44 00 48 00 	l.jr r9
    e444:	15 00 00 00 	l.nop 0x0

0000e448 <_or1k_board_init>:
    e448:	44 00 48 00 	l.jr r9
    e44c:	15 00 00 00 	l.nop 0x0

0000e450 <__errno>:
    e450:	d7 e1 4f fc 	l.sw -4(r1),r9
    e454:	d7 e1 0f f8 	l.sw -8(r1),r1
    e458:	07 ff e5 fc 	l.jal 7c48 <__getreent>
    e45c:	9c 21 ff f8 	l.addi r1,r1,-8
    e460:	9c 21 00 08 	l.addi r1,r1,8
    e464:	85 21 ff fc 	l.lwz r9,-4(r1)
    e468:	44 00 48 00 	l.jr r9
    e46c:	84 21 ff f8 	l.lwz r1,-8(r1)

0000e470 <__udivsi3>:
    e470:	9c 21 ff fc 	l.addi r1,r1,-4
    e474:	d4 01 48 00 	l.sw 0(r1),r9
    e478:	9d 60 00 00 	l.addi r11,r0,0
    e47c:	9d 04 00 00 	l.addi r8,r4,0
    e480:	9c a3 00 00 	l.addi r5,r3,0
    e484:	e4 28 58 00 	l.sfne r8,r11
    e488:	0c 00 00 36 	l.bnf e560 <__udivsi3+0xf0>
    e48c:	9c e0 00 00 	l.addi r7,r0,0
    e490:	e4 48 28 00 	l.sfgtu r8,r5
    e494:	10 00 00 32 	l.bf e55c <__udivsi3+0xec>
    e498:	e4 08 28 00 	l.sfeq r8,r5
    e49c:	10 00 00 2e 	l.bf e554 <__udivsi3+0xe4>
    e4a0:	e4 8b 40 00 	l.sfltu r11,r8
    e4a4:	0c 00 00 0d 	l.bnf e4d8 <__udivsi3+0x68>
    e4a8:	9d a0 00 20 	l.addi r13,r0,32
    e4ac:	19 20 80 00 	l.movhi r9,0x8000
    e4b0:	9c c0 ff ff 	l.addi r6,r0,-1
    e4b4:	e0 65 48 03 	l.and r3,r5,r9
    e4b8:	b8 87 00 01 	l.slli r4,r7,0x1
    e4bc:	9d e5 00 00 	l.addi r15,r5,0
    e4c0:	b8 63 00 5f 	l.srli r3,r3,0x1f
    e4c4:	e1 ad 30 00 	l.add r13,r13,r6
    e4c8:	e0 e4 18 04 	l.or r7,r4,r3
    e4cc:	e4 87 40 00 	l.sfltu r7,r8
    e4d0:	13 ff ff f9 	l.bf e4b4 <__udivsi3+0x44>
    e4d4:	b8 a5 00 01 	l.slli r5,r5,0x1
    e4d8:	b8 e7 00 41 	l.srli r7,r7,0x1
    e4dc:	9d ad 00 01 	l.addi r13,r13,1
    e4e0:	9d 20 00 00 	l.addi r9,r0,0
    e4e4:	e4 89 68 00 	l.sfltu r9,r13
    e4e8:	0c 00 00 1e 	l.bnf e560 <__udivsi3+0xf0>
    e4ec:	9c af 00 00 	l.addi r5,r15,0
    e4f0:	19 e0 80 00 	l.movhi r15,0x8000
    e4f4:	9e 20 00 00 	l.addi r17,r0,0
    e4f8:	e0 65 78 03 	l.and r3,r5,r15
    e4fc:	b8 87 00 01 	l.slli r4,r7,0x1
    e500:	b8 63 00 5f 	l.srli r3,r3,0x1f
    e504:	e0 e4 18 04 	l.or r7,r4,r3
    e508:	e0 c7 40 02 	l.sub r6,r7,r8
    e50c:	e0 66 78 03 	l.and r3,r6,r15
    e510:	b8 63 00 5f 	l.srli r3,r3,0x1f
    e514:	9c 80 00 00 	l.addi r4,r0,0
    e518:	e4 23 20 00 	l.sfne r3,r4
    e51c:	10 00 00 03 	l.bf e528 <__udivsi3+0xb8>
    e520:	b8 6b 00 01 	l.slli r3,r11,0x1
    e524:	9c 80 00 01 	l.addi r4,r0,1
    e528:	b8 a5 00 01 	l.slli r5,r5,0x1
    e52c:	e4 24 88 00 	l.sfne r4,r17
    e530:	0c 00 00 03 	l.bnf e53c <__udivsi3+0xcc>
    e534:	e1 63 20 04 	l.or r11,r3,r4
    e538:	9c e6 00 00 	l.addi r7,r6,0
    e53c:	9d 29 00 01 	l.addi r9,r9,1
    e540:	e4 89 68 00 	l.sfltu r9,r13
    e544:	13 ff ff ed 	l.bf e4f8 <__udivsi3+0x88>
    e548:	15 00 00 00 	l.nop 0x0
    e54c:	00 00 00 05 	l.j e560 <__udivsi3+0xf0>
    e550:	15 00 00 00 	l.nop 0x0
    e554:	00 00 00 03 	l.j e560 <__udivsi3+0xf0>
    e558:	9d 60 00 01 	l.addi r11,r0,1
    e55c:	9c e5 00 00 	l.addi r7,r5,0
    e560:	85 21 00 00 	l.lwz r9,0(r1)
    e564:	44 00 48 00 	l.jr r9
    e568:	9c 21 00 04 	l.addi r1,r1,4

0000e56c <__divsi3>:
    e56c:	9c 21 ff f8 	l.addi r1,r1,-8
    e570:	d4 01 48 00 	l.sw 0(r1),r9
    e574:	d4 01 70 04 	l.sw 4(r1),r14
    e578:	9c a3 00 00 	l.addi r5,r3,0
    e57c:	9d c0 00 00 	l.addi r14,r0,0
    e580:	e5 85 00 00 	l.sflts r5,r0
    e584:	0c 00 00 04 	l.bnf e594 <__divsi3+0x28>
    e588:	9c 60 00 00 	l.addi r3,r0,0
    e58c:	9d c0 00 01 	l.addi r14,r0,1
    e590:	e0 a0 28 02 	l.sub r5,r0,r5
    e594:	e5 84 00 00 	l.sflts r4,r0
    e598:	0c 00 00 04 	l.bnf e5a8 <__divsi3+0x3c>
    e59c:	15 00 00 00 	l.nop 0x0
    e5a0:	9d ce 00 01 	l.addi r14,r14,1
    e5a4:	e0 80 20 02 	l.sub r4,r0,r4
    e5a8:	07 ff ff b2 	l.jal e470 <__udivsi3>
    e5ac:	9c 65 00 00 	l.addi r3,r5,0
    e5b0:	bc 0e 00 01 	l.sfeqi r14,1
    e5b4:	0c 00 00 03 	l.bnf e5c0 <__divsi3+0x54>
    e5b8:	15 00 00 00 	l.nop 0x0
    e5bc:	e1 60 58 02 	l.sub r11,r0,r11
    e5c0:	85 21 00 00 	l.lwz r9,0(r1)
    e5c4:	85 c1 00 04 	l.lwz r14,4(r1)
    e5c8:	44 00 48 00 	l.jr r9
    e5cc:	9c 21 00 08 	l.addi r1,r1,8

0000e5d0 <__umodsi3>:
    e5d0:	9c 21 ff fc 	l.addi r1,r1,-4
    e5d4:	d4 01 48 00 	l.sw 0(r1),r9
    e5d8:	07 ff ff a6 	l.jal e470 <__udivsi3>
    e5dc:	15 00 00 00 	l.nop 0x0
    e5e0:	9d 67 00 00 	l.addi r11,r7,0
    e5e4:	85 21 00 00 	l.lwz r9,0(r1)
    e5e8:	44 00 48 00 	l.jr r9
    e5ec:	9c 21 00 04 	l.addi r1,r1,4

0000e5f0 <__modsi3>:
    e5f0:	9c 21 ff f8 	l.addi r1,r1,-8
    e5f4:	d4 01 48 00 	l.sw 0(r1),r9
    e5f8:	d4 01 70 04 	l.sw 4(r1),r14
    e5fc:	9d c0 00 00 	l.addi r14,r0,0
    e600:	e5 83 00 00 	l.sflts r3,r0
    e604:	0c 00 00 04 	l.bnf e614 <__modsi3+0x24>
    e608:	15 00 00 00 	l.nop 0x0
    e60c:	9d c0 00 01 	l.addi r14,r0,1
    e610:	e0 60 18 02 	l.sub r3,r0,r3
    e614:	e5 84 00 00 	l.sflts r4,r0
    e618:	0c 00 00 03 	l.bnf e624 <__modsi3+0x34>
    e61c:	15 00 00 00 	l.nop 0x0
    e620:	e0 80 20 02 	l.sub r4,r0,r4
    e624:	07 ff ff 93 	l.jal e470 <__udivsi3>
    e628:	15 00 00 00 	l.nop 0x0
    e62c:	bc 0e 00 01 	l.sfeqi r14,1
    e630:	0c 00 00 03 	l.bnf e63c <__modsi3+0x4c>
    e634:	9d 67 00 00 	l.addi r11,r7,0
    e638:	e1 60 58 02 	l.sub r11,r0,r11
    e63c:	85 21 00 00 	l.lwz r9,0(r1)
    e640:	85 c1 00 04 	l.lwz r14,4(r1)
    e644:	44 00 48 00 	l.jr r9
    e648:	9c 21 00 08 	l.addi r1,r1,8

0000e64c <__adddf3>:
    e64c:	d7 e1 17 ec 	l.sw -20(r1),r2
    e650:	18 40 00 0f 	l.movhi r2,0xf
    e654:	d7 e1 97 f4 	l.sw -12(r1),r18
    e658:	a8 42 ff ff 	l.ori r2,r2,0xffff
    e65c:	ba 43 00 5f 	l.srli r18,r3,0x1f
    e660:	e0 e3 10 03 	l.and r7,r3,r2
    e664:	e1 05 10 03 	l.and r8,r5,r2
    e668:	b9 a5 00 5f 	l.srli r13,r5,0x1f
    e66c:	b8 63 00 54 	l.srli r3,r3,0x14
    e670:	b9 87 00 03 	l.slli r12,r7,0x3
    e674:	b9 68 00 03 	l.slli r11,r8,0x3
    e678:	b8 e4 00 5d 	l.srli r7,r4,0x1d
    e67c:	b9 06 00 5d 	l.srli r8,r6,0x1d
    e680:	b8 a5 00 54 	l.srli r5,r5,0x14
    e684:	d7 e1 77 f0 	l.sw -16(r1),r14
    e688:	d7 e1 4f fc 	l.sw -4(r1),r9
    e68c:	d7 e1 0f e8 	l.sw -24(r1),r1
    e690:	d7 e1 a7 f8 	l.sw -8(r1),r20
    e694:	e4 32 68 00 	l.sfne r18,r13
    e698:	a4 43 07 ff 	l.andi r2,r3,0x7ff
    e69c:	9c 21 ff e8 	l.addi r1,r1,-24
    e6a0:	a8 72 00 00 	l.ori r3,r18,0x0
    e6a4:	e0 ec 38 04 	l.or r7,r12,r7
    e6a8:	b9 c4 00 03 	l.slli r14,r4,0x3
    e6ac:	a4 a5 07 ff 	l.andi r5,r5,0x7ff
    e6b0:	e1 0b 40 04 	l.or r8,r11,r8
    e6b4:	0c 00 00 9e 	l.bnf e92c <__adddf3+0x2e0>
    e6b8:	b8 c6 00 03 	l.slli r6,r6,0x3
    e6bc:	e0 62 28 02 	l.sub r3,r2,r5
    e6c0:	bd a3 00 00 	l.sflesi r3,0
    e6c4:	10 00 00 eb 	l.bf ea70 <__adddf3+0x424>
    e6c8:	bc 25 00 00 	l.sfnei r5,0
    e6cc:	10 00 00 3b 	l.bf e7b8 <__adddf3+0x16c>
    e6d0:	bc 02 07 ff 	l.sfeqi r2,2047
    e6d4:	e0 88 30 04 	l.or r4,r8,r6
    e6d8:	bc 04 00 00 	l.sfeqi r4,0
    e6dc:	0c 00 00 ca 	l.bnf ea04 <__adddf3+0x3b8>
    e6e0:	9c 63 ff ff 	l.addi r3,r3,-1
    e6e4:	a4 6e 00 07 	l.andi r3,r14,0x7
    e6e8:	bc 03 00 00 	l.sfeqi r3,0
    e6ec:	10 00 00 0c 	l.bf e71c <__adddf3+0xd0>
    e6f0:	18 80 00 80 	l.movhi r4,0x80
    e6f4:	a4 6e 00 0f 	l.andi r3,r14,0xf
    e6f8:	bc 03 00 04 	l.sfeqi r3,4
    e6fc:	10 00 00 07 	l.bf e718 <__adddf3+0xcc>
    e700:	9c 6e 00 04 	l.addi r3,r14,4
    e704:	e4 4e 18 00 	l.sfgtu r14,r3
    e708:	0c 00 00 bd 	l.bnf e9fc <__adddf3+0x3b0>
    e70c:	9c 80 00 01 	l.addi r4,r0,1
    e710:	e0 e7 20 00 	l.add r7,r7,r4
    e714:	a9 c3 00 00 	l.ori r14,r3,0x0
    e718:	18 80 00 80 	l.movhi r4,0x80
    e71c:	e0 67 20 03 	l.and r3,r7,r4
    e720:	bc 03 00 00 	l.sfeqi r3,0
    e724:	10 00 00 77 	l.bf e900 <__adddf3+0x2b4>
    e728:	b8 87 00 1d 	l.slli r4,r7,0x1d
    e72c:	9c 42 00 01 	l.addi r2,r2,1
    e730:	bc 22 07 ff 	l.sfnei r2,2047
    e734:	0c 00 00 e8 	l.bnf ead4 <__adddf3+0x488>
    e738:	19 60 ff 7f 	l.movhi r11,0xff7f
    e73c:	18 60 00 0f 	l.movhi r3,0xf
    e740:	a9 6b ff ff 	l.ori r11,r11,0xffff
    e744:	b9 ce 00 43 	l.srli r14,r14,0x3
    e748:	e0 e7 58 03 	l.and r7,r7,r11
    e74c:	a8 63 ff ff 	l.ori r3,r3,0xffff
    e750:	b8 87 00 1d 	l.slli r4,r7,0x1d
    e754:	b8 e7 00 43 	l.srli r7,r7,0x3
    e758:	a4 42 07 ff 	l.andi r2,r2,0x7ff
    e75c:	e1 c4 70 04 	l.or r14,r4,r14
    e760:	e0 e7 18 03 	l.and r7,r7,r3
    e764:	a8 72 00 00 	l.ori r3,r18,0x0
    e768:	18 a0 00 0f 	l.movhi r5,0xf
    e76c:	a4 42 07 ff 	l.andi r2,r2,0x7ff
    e770:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    e774:	b8 42 00 14 	l.slli r2,r2,0x14
    e778:	e0 e7 28 03 	l.and r7,r7,r5
    e77c:	b8 63 00 1f 	l.slli r3,r3,0x1f
    e780:	e0 e7 10 04 	l.or r7,r7,r2
    e784:	9c 21 00 18 	l.addi r1,r1,24
    e788:	e0 e7 18 04 	l.or r7,r7,r3
    e78c:	a8 ae 00 00 	l.ori r5,r14,0x0
    e790:	a8 87 00 00 	l.ori r4,r7,0x0
    e794:	85 21 ff fc 	l.lwz r9,-4(r1)
    e798:	84 21 ff e8 	l.lwz r1,-24(r1)
    e79c:	e1 64 00 04 	l.or r11,r4,r0
    e7a0:	e1 85 00 04 	l.or r12,r5,r0
    e7a4:	84 41 ff ec 	l.lwz r2,-20(r1)
    e7a8:	85 c1 ff f0 	l.lwz r14,-16(r1)
    e7ac:	86 41 ff f4 	l.lwz r18,-12(r1)
    e7b0:	44 00 48 00 	l.jr r9
    e7b4:	86 81 ff f8 	l.lwz r20,-8(r1)
    e7b8:	13 ff ff cb 	l.bf e6e4 <__adddf3+0x98>
    e7bc:	18 80 00 80 	l.movhi r4,0x80
    e7c0:	e1 08 20 04 	l.or r8,r8,r4
    e7c4:	bd 43 00 38 	l.sfgtsi r3,56
    e7c8:	10 00 00 d2 	l.bf eb10 <__adddf3+0x4c4>
    e7cc:	bd 43 00 1f 	l.sfgtsi r3,31
    e7d0:	10 00 00 fe 	l.bf ebc8 <__adddf3+0x57c>
    e7d4:	9c 83 ff e0 	l.addi r4,r3,-32
    e7d8:	9c a0 00 20 	l.addi r5,r0,32
    e7dc:	e0 86 18 48 	l.srl r4,r6,r3
    e7e0:	e0 a5 18 02 	l.sub r5,r5,r3
    e7e4:	e0 68 18 48 	l.srl r3,r8,r3
    e7e8:	e0 c6 28 08 	l.sll r6,r6,r5
    e7ec:	e1 08 28 08 	l.sll r8,r8,r5
    e7f0:	e0 a0 30 02 	l.sub r5,r0,r6
    e7f4:	e0 88 20 04 	l.or r4,r8,r4
    e7f8:	e0 c5 30 04 	l.or r6,r5,r6
    e7fc:	b8 c6 00 5f 	l.srli r6,r6,0x1f
    e800:	e0 84 30 04 	l.or r4,r4,r6
    e804:	e0 8e 20 02 	l.sub r4,r14,r4
    e808:	e0 e7 18 02 	l.sub r7,r7,r3
    e80c:	e4 8e 20 00 	l.sfltu r14,r4
    e810:	10 00 00 03 	l.bf e81c <__adddf3+0x1d0>
    e814:	9c 60 00 01 	l.addi r3,r0,1
    e818:	9c 60 00 00 	l.addi r3,r0,0
    e81c:	e0 e7 18 02 	l.sub r7,r7,r3
    e820:	a9 c4 00 00 	l.ori r14,r4,0x0
    e824:	18 80 00 80 	l.movhi r4,0x80
    e828:	e0 67 20 03 	l.and r3,r7,r4
    e82c:	bc 03 00 00 	l.sfeqi r3,0
    e830:	10 00 00 30 	l.bf e8f0 <__adddf3+0x2a4>
    e834:	a4 6e 00 07 	l.andi r3,r14,0x7
    e838:	18 a0 00 7f 	l.movhi r5,0x7f
    e83c:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    e840:	e2 87 28 03 	l.and r20,r7,r5
    e844:	bc 14 00 00 	l.sfeqi r20,0
    e848:	10 00 00 ae 	l.bf eb00 <__adddf3+0x4b4>
    e84c:	15 00 00 00 	l.nop 0x0
    e850:	04 00 0b dd 	l.jal 117c4 <__clzsi2>
    e854:	a8 74 00 00 	l.ori r3,r20,0x0
    e858:	9c 8b ff f8 	l.addi r4,r11,-8
    e85c:	bd 44 00 1f 	l.sfgtsi r4,31
    e860:	10 00 00 a5 	l.bf eaf4 <__adddf3+0x4a8>
    e864:	9d 6b ff d8 	l.addi r11,r11,-40
    e868:	9c 60 00 20 	l.addi r3,r0,32
    e86c:	e1 74 20 08 	l.sll r11,r20,r4
    e870:	e0 63 20 02 	l.sub r3,r3,r4
    e874:	e0 6e 18 48 	l.srl r3,r14,r3
    e878:	e1 ce 20 08 	l.sll r14,r14,r4
    e87c:	e1 63 58 04 	l.or r11,r3,r11
    e880:	e5 42 20 00 	l.sfgts r2,r4
    e884:	10 00 00 98 	l.bf eae4 <__adddf3+0x498>
    e888:	18 60 ff 7f 	l.movhi r3,0xff7f
    e88c:	e0 44 10 02 	l.sub r2,r4,r2
    e890:	9c e2 00 01 	l.addi r7,r2,1
    e894:	bd 47 00 1f 	l.sfgtsi r7,31
    e898:	10 00 00 be 	l.bf eb90 <__adddf3+0x544>
    e89c:	bc 07 00 20 	l.sfeqi r7,32
    e8a0:	9c 40 00 20 	l.addi r2,r0,32
    e8a4:	e0 8e 38 48 	l.srl r4,r14,r7
    e8a8:	e0 42 38 02 	l.sub r2,r2,r7
    e8ac:	e0 eb 38 48 	l.srl r7,r11,r7
    e8b0:	e0 6e 10 08 	l.sll r3,r14,r2
    e8b4:	e1 6b 10 08 	l.sll r11,r11,r2
    e8b8:	9c 40 00 00 	l.addi r2,r0,0
    e8bc:	e1 c0 18 02 	l.sub r14,r0,r3
    e8c0:	e1 6b 20 04 	l.or r11,r11,r4
    e8c4:	e0 6e 18 04 	l.or r3,r14,r3
    e8c8:	b8 63 00 5f 	l.srli r3,r3,0x1f
    e8cc:	03 ff ff 86 	l.j e6e4 <__adddf3+0x98>
    e8d0:	e1 cb 18 04 	l.or r14,r11,r3
    e8d4:	e0 e4 18 04 	l.or r7,r4,r3
    e8d8:	bc 07 00 00 	l.sfeqi r7,0
    e8dc:	10 00 01 f3 	l.bf f0a8 <__adddf3+0xa5c>
    e8e0:	a9 c7 00 00 	l.ori r14,r7,0x0
    e8e4:	a8 e3 00 00 	l.ori r7,r3,0x0
    e8e8:	a9 c4 00 00 	l.ori r14,r4,0x0
    e8ec:	a4 6e 00 07 	l.andi r3,r14,0x7
    e8f0:	bc 23 00 00 	l.sfnei r3,0
    e8f4:	13 ff ff 81 	l.bf e6f8 <__adddf3+0xac>
    e8f8:	a4 6e 00 0f 	l.andi r3,r14,0xf
    e8fc:	b8 87 00 1d 	l.slli r4,r7,0x1d
    e900:	b9 ce 00 43 	l.srli r14,r14,0x3
    e904:	b8 e7 00 43 	l.srli r7,r7,0x3
    e908:	a8 72 00 00 	l.ori r3,r18,0x0
    e90c:	e1 c4 70 04 	l.or r14,r4,r14
    e910:	bc 02 07 ff 	l.sfeqi r2,2047
    e914:	10 00 00 31 	l.bf e9d8 <__adddf3+0x38c>
    e918:	18 a0 00 0f 	l.movhi r5,0xf
    e91c:	a4 42 07 ff 	l.andi r2,r2,0x7ff
    e920:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    e924:	03 ff ff 91 	l.j e768 <__adddf3+0x11c>
    e928:	e0 e7 28 03 	l.and r7,r7,r5
    e92c:	e0 82 28 02 	l.sub r4,r2,r5
    e930:	bd a4 00 00 	l.sflesi r4,0
    e934:	10 00 00 7d 	l.bf eb28 <__adddf3+0x4dc>
    e938:	bc 25 00 00 	l.sfnei r5,0
    e93c:	0c 00 00 3d 	l.bnf ea30 <__adddf3+0x3e4>
    e940:	bc 02 07 ff 	l.sfeqi r2,2047
    e944:	13 ff ff 68 	l.bf e6e4 <__adddf3+0x98>
    e948:	bd 44 00 38 	l.sfgtsi r4,56
    e94c:	18 a0 00 80 	l.movhi r5,0x80
    e950:	e1 08 28 04 	l.or r8,r8,r5
    e954:	0c 00 00 d2 	l.bnf ec9c <__adddf3+0x650>
    e958:	bd 44 00 1f 	l.sfgtsi r4,31
    e95c:	e0 c8 30 04 	l.or r6,r8,r6
    e960:	9c 80 00 00 	l.addi r4,r0,0
    e964:	e0 a0 30 02 	l.sub r5,r0,r6
    e968:	e0 c5 30 04 	l.or r6,r5,r6
    e96c:	b8 a6 00 5f 	l.srli r5,r6,0x1f
    e970:	e0 a5 70 00 	l.add r5,r5,r14
    e974:	e0 e4 38 00 	l.add r7,r4,r7
    e978:	e4 4e 28 00 	l.sfgtu r14,r5
    e97c:	10 00 00 03 	l.bf e988 <__adddf3+0x33c>
    e980:	9c 80 00 01 	l.addi r4,r0,1
    e984:	9c 80 00 00 	l.addi r4,r0,0
    e988:	e0 e4 38 00 	l.add r7,r4,r7
    e98c:	a9 c5 00 00 	l.ori r14,r5,0x0
    e990:	18 a0 00 80 	l.movhi r5,0x80
    e994:	e0 87 28 03 	l.and r4,r7,r5
    e998:	bc 04 00 00 	l.sfeqi r4,0
    e99c:	13 ff ff d4 	l.bf e8ec <__adddf3+0x2a0>
    e9a0:	15 00 00 00 	l.nop 0x0
    e9a4:	9c 42 00 01 	l.addi r2,r2,1
    e9a8:	bc 02 07 ff 	l.sfeqi r2,2047
    e9ac:	10 00 01 3d 	l.bf eea0 <__adddf3+0x854>
    e9b0:	19 60 ff 7f 	l.movhi r11,0xff7f
    e9b4:	b8 ae 00 41 	l.srli r5,r14,0x1
    e9b8:	a9 6b ff ff 	l.ori r11,r11,0xffff
    e9bc:	a4 6e 00 01 	l.andi r3,r14,0x1
    e9c0:	e0 e7 58 03 	l.and r7,r7,r11
    e9c4:	e1 c5 18 04 	l.or r14,r5,r3
    e9c8:	b8 87 00 1f 	l.slli r4,r7,0x1f
    e9cc:	b8 e7 00 41 	l.srli r7,r7,0x1
    e9d0:	03 ff ff 45 	l.j e6e4 <__adddf3+0x98>
    e9d4:	e1 c4 70 04 	l.or r14,r4,r14
    e9d8:	e0 87 70 04 	l.or r4,r7,r14
    e9dc:	bc 04 00 00 	l.sfeqi r4,0
    e9e0:	10 00 01 ac 	l.bf f090 <__adddf3+0xa44>
    e9e4:	19 60 00 08 	l.movhi r11,0x8
    e9e8:	18 80 00 0f 	l.movhi r4,0xf
    e9ec:	e0 e7 58 04 	l.or r7,r7,r11
    e9f0:	a8 84 ff ff 	l.ori r4,r4,0xffff
    e9f4:	03 ff ff 5d 	l.j e768 <__adddf3+0x11c>
    e9f8:	e0 e7 20 03 	l.and r7,r7,r4
    e9fc:	03 ff ff 45 	l.j e710 <__adddf3+0xc4>
    ea00:	9c 80 00 00 	l.addi r4,r0,0
    ea04:	bc 23 00 00 	l.sfnei r3,0
    ea08:	10 00 00 5e 	l.bf eb80 <__adddf3+0x534>
    ea0c:	bc 02 07 ff 	l.sfeqi r2,2047
    ea10:	e0 ce 30 02 	l.sub r6,r14,r6
    ea14:	e0 e7 40 02 	l.sub r7,r7,r8
    ea18:	e4 8e 30 00 	l.sfltu r14,r6
    ea1c:	0c 00 00 ae 	l.bnf ecd4 <__adddf3+0x688>
    ea20:	9c 80 00 01 	l.addi r4,r0,1
    ea24:	e0 e7 20 02 	l.sub r7,r7,r4
    ea28:	03 ff ff 7f 	l.j e824 <__adddf3+0x1d8>
    ea2c:	a9 c6 00 00 	l.ori r14,r6,0x0
    ea30:	e0 a8 30 04 	l.or r5,r8,r6
    ea34:	bc 05 00 00 	l.sfeqi r5,0
    ea38:	13 ff ff 2b 	l.bf e6e4 <__adddf3+0x98>
    ea3c:	9c 84 ff ff 	l.addi r4,r4,-1
    ea40:	bc 24 00 00 	l.sfnei r4,0
    ea44:	10 00 00 b6 	l.bf ed1c <__adddf3+0x6d0>
    ea48:	bc 02 07 ff 	l.sfeqi r2,2047
    ea4c:	e0 ce 30 00 	l.add r6,r14,r6
    ea50:	e0 e7 40 00 	l.add r7,r7,r8
    ea54:	e4 4e 30 00 	l.sfgtu r14,r6
    ea58:	10 00 00 03 	l.bf ea64 <__adddf3+0x418>
    ea5c:	9c a0 00 01 	l.addi r5,r0,1
    ea60:	a8 a4 00 00 	l.ori r5,r4,0x0
    ea64:	e0 e5 38 00 	l.add r7,r5,r7
    ea68:	03 ff ff ca 	l.j e990 <__adddf3+0x344>
    ea6c:	a9 c6 00 00 	l.ori r14,r6,0x0
    ea70:	bc 03 00 00 	l.sfeqi r3,0
    ea74:	0c 00 00 62 	l.bnf ebfc <__adddf3+0x5b0>
    ea78:	9c 82 00 01 	l.addi r4,r2,1
    ea7c:	a4 84 07 ff 	l.andi r4,r4,0x7ff
    ea80:	bd 44 00 01 	l.sfgtsi r4,1
    ea84:	0c 00 00 c8 	l.bnf eda4 <__adddf3+0x758>
    ea88:	e0 ae 30 02 	l.sub r5,r14,r6
    ea8c:	e0 87 40 02 	l.sub r4,r7,r8
    ea90:	e4 8e 28 00 	l.sfltu r14,r5
    ea94:	10 00 00 03 	l.bf eaa0 <__adddf3+0x454>
    ea98:	9e 80 00 01 	l.addi r20,r0,1
    ea9c:	aa 83 00 00 	l.ori r20,r3,0x0
    eaa0:	e2 84 a0 02 	l.sub r20,r4,r20
    eaa4:	19 60 00 80 	l.movhi r11,0x80
    eaa8:	e0 74 58 03 	l.and r3,r20,r11
    eaac:	bc 03 00 00 	l.sfeqi r3,0
    eab0:	10 00 00 73 	l.bf ec7c <__adddf3+0x630>
    eab4:	e0 e8 38 02 	l.sub r7,r8,r7
    eab8:	e1 c6 70 02 	l.sub r14,r6,r14
    eabc:	e4 86 70 00 	l.sfltu r6,r14
    eac0:	0c 00 00 95 	l.bnf ed14 <__adddf3+0x6c8>
    eac4:	9e 80 00 01 	l.addi r20,r0,1
    eac8:	e2 87 a0 02 	l.sub r20,r7,r20
    eacc:	03 ff ff 5e 	l.j e844 <__adddf3+0x1f8>
    ead0:	aa 4d 00 00 	l.ori r18,r13,0x0
    ead4:	9c e0 00 00 	l.addi r7,r0,0
    ead8:	a8 72 00 00 	l.ori r3,r18,0x0
    eadc:	03 ff ff 23 	l.j e768 <__adddf3+0x11c>
    eae0:	a9 c7 00 00 	l.ori r14,r7,0x0
    eae4:	e0 42 20 02 	l.sub r2,r2,r4
    eae8:	a8 63 ff ff 	l.ori r3,r3,0xffff
    eaec:	03 ff fe fe 	l.j e6e4 <__adddf3+0x98>
    eaf0:	e0 eb 18 03 	l.and r7,r11,r3
    eaf4:	e1 6e 58 08 	l.sll r11,r14,r11
    eaf8:	03 ff ff 62 	l.j e880 <__adddf3+0x234>
    eafc:	9d c0 00 00 	l.addi r14,r0,0
    eb00:	04 00 0b 31 	l.jal 117c4 <__clzsi2>
    eb04:	a8 6e 00 00 	l.ori r3,r14,0x0
    eb08:	03 ff ff 54 	l.j e858 <__adddf3+0x20c>
    eb0c:	9d 6b 00 20 	l.addi r11,r11,32
    eb10:	e0 c8 30 04 	l.or r6,r8,r6
    eb14:	9c 60 00 00 	l.addi r3,r0,0
    eb18:	e0 80 30 02 	l.sub r4,r0,r6
    eb1c:	e0 c4 30 04 	l.or r6,r4,r6
    eb20:	03 ff ff 39 	l.j e804 <__adddf3+0x1b8>
    eb24:	b8 86 00 5f 	l.srli r4,r6,0x1f
    eb28:	bc 04 00 00 	l.sfeqi r4,0
    eb2c:	0c 00 00 c0 	l.bnf ee2c <__adddf3+0x7e0>
    eb30:	bc 22 00 00 	l.sfnei r2,0
    eb34:	9c a2 00 01 	l.addi r5,r2,1
    eb38:	a5 65 07 ff 	l.andi r11,r5,0x7ff
    eb3c:	bd 4b 00 01 	l.sfgtsi r11,1
    eb40:	0c 00 00 7f 	l.bnf ed3c <__adddf3+0x6f0>
    eb44:	bc 05 07 ff 	l.sfeqi r5,2047
    eb48:	10 00 00 df 	l.bf eec4 <__adddf3+0x878>
    eb4c:	e0 ce 30 00 	l.add r6,r14,r6
    eb50:	e0 e7 40 00 	l.add r7,r7,r8
    eb54:	e4 4e 30 00 	l.sfgtu r14,r6
    eb58:	10 00 00 03 	l.bf eb64 <__adddf3+0x518>
    eb5c:	9d 00 00 01 	l.addi r8,r0,1
    eb60:	a9 04 00 00 	l.ori r8,r4,0x0
    eb64:	e0 e8 38 00 	l.add r7,r8,r7
    eb68:	b8 c6 00 41 	l.srli r6,r6,0x1
    eb6c:	b9 c7 00 1f 	l.slli r14,r7,0x1f
    eb70:	a8 45 00 00 	l.ori r2,r5,0x0
    eb74:	b8 e7 00 41 	l.srli r7,r7,0x1
    eb78:	03 ff fe db 	l.j e6e4 <__adddf3+0x98>
    eb7c:	e1 ce 30 04 	l.or r14,r14,r6
    eb80:	0f ff ff 12 	l.bnf e7c8 <__adddf3+0x17c>
    eb84:	bd 43 00 38 	l.sfgtsi r3,56
    eb88:	03 ff fe d8 	l.j e6e8 <__adddf3+0x9c>
    eb8c:	a4 6e 00 07 	l.andi r3,r14,0x7
    eb90:	9c 42 ff e1 	l.addi r2,r2,-31
    eb94:	10 00 00 66 	l.bf ed2c <__adddf3+0x6e0>
    eb98:	e0 8b 10 48 	l.srl r4,r11,r2
    eb9c:	9c 40 00 40 	l.addi r2,r0,64
    eba0:	e0 e2 38 02 	l.sub r7,r2,r7
    eba4:	e1 6b 38 08 	l.sll r11,r11,r7
    eba8:	e1 ce 58 04 	l.or r14,r14,r11
    ebac:	9c e0 00 00 	l.addi r7,r0,0
    ebb0:	e0 60 70 02 	l.sub r3,r0,r14
    ebb4:	a8 47 00 00 	l.ori r2,r7,0x0
    ebb8:	e1 c3 70 04 	l.or r14,r3,r14
    ebbc:	b9 ce 00 5f 	l.srli r14,r14,0x1f
    ebc0:	03 ff ff 4b 	l.j e8ec <__adddf3+0x2a0>
    ebc4:	e1 c4 70 04 	l.or r14,r4,r14
    ebc8:	bc 03 00 20 	l.sfeqi r3,32
    ebcc:	10 00 00 5a 	l.bf ed34 <__adddf3+0x6e8>
    ebd0:	e0 88 20 48 	l.srl r4,r8,r4
    ebd4:	9c a0 00 40 	l.addi r5,r0,64
    ebd8:	e0 65 18 02 	l.sub r3,r5,r3
    ebdc:	e1 08 18 08 	l.sll r8,r8,r3
    ebe0:	e0 c8 30 04 	l.or r6,r8,r6
    ebe4:	9c 60 00 00 	l.addi r3,r0,0
    ebe8:	e0 a0 30 02 	l.sub r5,r0,r6
    ebec:	e0 c5 30 04 	l.or r6,r5,r6
    ebf0:	b8 c6 00 5f 	l.srli r6,r6,0x1f
    ebf4:	03 ff ff 04 	l.j e804 <__adddf3+0x1b8>
    ebf8:	e0 84 30 04 	l.or r4,r4,r6
    ebfc:	bc 22 00 00 	l.sfnei r2,0
    ec00:	0c 00 00 37 	l.bnf ecdc <__adddf3+0x690>
    ec04:	bc 05 07 ff 	l.sfeqi r5,2047
    ec08:	10 00 00 84 	l.bf ee18 <__adddf3+0x7cc>
    ec0c:	19 60 00 80 	l.movhi r11,0x80
    ec10:	e0 60 18 02 	l.sub r3,r0,r3
    ec14:	e0 e7 58 04 	l.or r7,r7,r11
    ec18:	bd 43 00 38 	l.sfgtsi r3,56
    ec1c:	10 00 00 a4 	l.bf eeac <__adddf3+0x860>
    ec20:	bd 43 00 1f 	l.sfgtsi r3,31
    ec24:	10 00 01 23 	l.bf f0b0 <__adddf3+0xa64>
    ec28:	9c 83 ff e0 	l.addi r4,r3,-32
    ec2c:	9c 80 00 20 	l.addi r4,r0,32
    ec30:	e1 6e 18 48 	l.srl r11,r14,r3
    ec34:	e0 84 18 02 	l.sub r4,r4,r3
    ec38:	e0 67 18 48 	l.srl r3,r7,r3
    ec3c:	e0 4e 20 08 	l.sll r2,r14,r4
    ec40:	e0 87 20 08 	l.sll r4,r7,r4
    ec44:	e0 e0 10 02 	l.sub r7,r0,r2
    ec48:	e0 84 58 04 	l.or r4,r4,r11
    ec4c:	e0 47 10 04 	l.or r2,r7,r2
    ec50:	b8 42 00 5f 	l.srli r2,r2,0x1f
    ec54:	e1 c4 10 04 	l.or r14,r4,r2
    ec58:	e1 c6 70 02 	l.sub r14,r6,r14
    ec5c:	e0 e8 18 02 	l.sub r7,r8,r3
    ec60:	e4 86 70 00 	l.sfltu r6,r14
    ec64:	0c 00 00 2a 	l.bnf ed0c <__adddf3+0x6c0>
    ec68:	9c 40 00 01 	l.addi r2,r0,1
    ec6c:	e0 e7 10 02 	l.sub r7,r7,r2
    ec70:	aa 4d 00 00 	l.ori r18,r13,0x0
    ec74:	03 ff fe ec 	l.j e824 <__adddf3+0x1d8>
    ec78:	a8 45 00 00 	l.ori r2,r5,0x0
    ec7c:	e0 e5 a0 04 	l.or r7,r5,r20
    ec80:	bc 07 00 00 	l.sfeqi r7,0
    ec84:	0f ff fe f0 	l.bnf e844 <__adddf3+0x1f8>
    ec88:	a9 c5 00 00 	l.ori r14,r5,0x0
    ec8c:	a9 c7 00 00 	l.ori r14,r7,0x0
    ec90:	a8 67 00 00 	l.ori r3,r7,0x0
    ec94:	03 ff ff 1f 	l.j e910 <__adddf3+0x2c4>
    ec98:	a8 47 00 00 	l.ori r2,r7,0x0
    ec9c:	10 00 00 50 	l.bf eddc <__adddf3+0x790>
    eca0:	bc 04 00 20 	l.sfeqi r4,32
    eca4:	9d 60 00 20 	l.addi r11,r0,32
    eca8:	e0 a6 20 48 	l.srl r5,r6,r4
    ecac:	e1 6b 20 02 	l.sub r11,r11,r4
    ecb0:	e0 88 20 48 	l.srl r4,r8,r4
    ecb4:	e0 c6 58 08 	l.sll r6,r6,r11
    ecb8:	e1 08 58 08 	l.sll r8,r8,r11
    ecbc:	e1 60 30 02 	l.sub r11,r0,r6
    ecc0:	e0 a8 28 04 	l.or r5,r8,r5
    ecc4:	e0 cb 30 04 	l.or r6,r11,r6
    ecc8:	b8 c6 00 5f 	l.srli r6,r6,0x1f
    eccc:	03 ff ff 29 	l.j e970 <__adddf3+0x324>
    ecd0:	e0 a5 30 04 	l.or r5,r5,r6
    ecd4:	03 ff ff 54 	l.j ea24 <__adddf3+0x3d8>
    ecd8:	a8 83 00 00 	l.ori r4,r3,0x0
    ecdc:	e0 47 70 04 	l.or r2,r7,r14
    ece0:	bc 02 00 00 	l.sfeqi r2,0
    ece4:	10 00 00 4d 	l.bf ee18 <__adddf3+0x7cc>
    ece8:	ac 63 ff ff 	l.xori r3,r3,-1
    ecec:	bc 23 00 00 	l.sfnei r3,0
    ecf0:	10 00 00 48 	l.bf ee10 <__adddf3+0x7c4>
    ecf4:	bc 05 07 ff 	l.sfeqi r5,2047
    ecf8:	e1 c6 70 02 	l.sub r14,r6,r14
    ecfc:	e0 e8 38 02 	l.sub r7,r8,r7
    ed00:	e4 86 70 00 	l.sfltu r6,r14
    ed04:	13 ff ff da 	l.bf ec6c <__adddf3+0x620>
    ed08:	9c 40 00 01 	l.addi r2,r0,1
    ed0c:	03 ff ff d8 	l.j ec6c <__adddf3+0x620>
    ed10:	9c 40 00 00 	l.addi r2,r0,0
    ed14:	03 ff ff 6d 	l.j eac8 <__adddf3+0x47c>
    ed18:	9e 80 00 00 	l.addi r20,r0,0
    ed1c:	0f ff ff 0e 	l.bnf e954 <__adddf3+0x308>
    ed20:	bd 44 00 38 	l.sfgtsi r4,56
    ed24:	03 ff fe 71 	l.j e6e8 <__adddf3+0x9c>
    ed28:	a4 6e 00 07 	l.andi r3,r14,0x7
    ed2c:	03 ff ff 9f 	l.j eba8 <__adddf3+0x55c>
    ed30:	9d 60 00 00 	l.addi r11,r0,0
    ed34:	03 ff ff ab 	l.j ebe0 <__adddf3+0x594>
    ed38:	9d 00 00 00 	l.addi r8,r0,0
    ed3c:	bc 22 00 00 	l.sfnei r2,0
    ed40:	10 00 00 bb 	l.bf f02c <__adddf3+0x9e0>
    ed44:	e0 67 70 04 	l.or r3,r7,r14
    ed48:	bc 03 00 00 	l.sfeqi r3,0
    ed4c:	10 00 00 f5 	l.bf f120 <__adddf3+0xad4>
    ed50:	e0 68 30 04 	l.or r3,r8,r6
    ed54:	bc 03 00 00 	l.sfeqi r3,0
    ed58:	13 ff fe 64 	l.bf e6e8 <__adddf3+0x9c>
    ed5c:	a4 6e 00 07 	l.andi r3,r14,0x7
    ed60:	e0 ce 30 00 	l.add r6,r14,r6
    ed64:	e0 e7 40 00 	l.add r7,r7,r8
    ed68:	e4 4e 30 00 	l.sfgtu r14,r6
    ed6c:	10 00 00 03 	l.bf ed78 <__adddf3+0x72c>
    ed70:	9c 60 00 01 	l.addi r3,r0,1
    ed74:	a8 62 00 00 	l.ori r3,r2,0x0
    ed78:	e0 e3 38 00 	l.add r7,r3,r7
    ed7c:	18 80 00 80 	l.movhi r4,0x80
    ed80:	e0 67 20 03 	l.and r3,r7,r4
    ed84:	bc 03 00 00 	l.sfeqi r3,0
    ed88:	10 00 00 f8 	l.bf f168 <__adddf3+0xb1c>
    ed8c:	18 a0 ff 7f 	l.movhi r5,0xff7f
    ed90:	a9 c6 00 00 	l.ori r14,r6,0x0
    ed94:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    ed98:	9c 40 00 01 	l.addi r2,r0,1
    ed9c:	03 ff fe 52 	l.j e6e4 <__adddf3+0x98>
    eda0:	e0 e7 28 03 	l.and r7,r7,r5
    eda4:	bc 22 00 00 	l.sfnei r2,0
    eda8:	10 00 00 33 	l.bf ee74 <__adddf3+0x828>
    edac:	15 00 00 00 	l.nop 0x0
    edb0:	e0 67 70 04 	l.or r3,r7,r14
    edb4:	bc 23 00 00 	l.sfnei r3,0
    edb8:	10 00 00 64 	l.bf ef48 <__adddf3+0x8fc>
    edbc:	15 00 00 00 	l.nop 0x0
    edc0:	e0 e8 30 04 	l.or r7,r8,r6
    edc4:	bc 07 00 00 	l.sfeqi r7,0
    edc8:	10 00 00 b7 	l.bf f0a4 <__adddf3+0xa58>
    edcc:	aa 4d 00 00 	l.ori r18,r13,0x0
    edd0:	a8 e8 00 00 	l.ori r7,r8,0x0
    edd4:	03 ff fe 44 	l.j e6e4 <__adddf3+0x98>
    edd8:	a9 c6 00 00 	l.ori r14,r6,0x0
    eddc:	9c a4 ff e0 	l.addi r5,r4,-32
    ede0:	10 00 00 af 	l.bf f09c <__adddf3+0xa50>
    ede4:	e0 a8 28 48 	l.srl r5,r8,r5
    ede8:	9d 60 00 40 	l.addi r11,r0,64
    edec:	e0 8b 20 02 	l.sub r4,r11,r4
    edf0:	e1 08 20 08 	l.sll r8,r8,r4
    edf4:	e0 c8 30 04 	l.or r6,r8,r6
    edf8:	9c 80 00 00 	l.addi r4,r0,0
    edfc:	e1 00 30 02 	l.sub r8,r0,r6
    ee00:	e0 c8 30 04 	l.or r6,r8,r6
    ee04:	b8 c6 00 5f 	l.srli r6,r6,0x1f
    ee08:	03 ff fe da 	l.j e970 <__adddf3+0x324>
    ee0c:	e0 a5 30 04 	l.or r5,r5,r6
    ee10:	0f ff ff 83 	l.bnf ec1c <__adddf3+0x5d0>
    ee14:	bd 43 00 38 	l.sfgtsi r3,56
    ee18:	a8 e8 00 00 	l.ori r7,r8,0x0
    ee1c:	a9 c6 00 00 	l.ori r14,r6,0x0
    ee20:	a8 45 00 00 	l.ori r2,r5,0x0
    ee24:	03 ff fe 30 	l.j e6e4 <__adddf3+0x98>
    ee28:	aa 4d 00 00 	l.ori r18,r13,0x0
    ee2c:	10 00 00 2a 	l.bf eed4 <__adddf3+0x888>
    ee30:	bc 05 07 ff 	l.sfeqi r5,2047
    ee34:	e0 47 70 04 	l.or r2,r7,r14
    ee38:	bc 02 00 00 	l.sfeqi r2,0
    ee3c:	10 00 00 78 	l.bf f01c <__adddf3+0x9d0>
    ee40:	ac 84 ff ff 	l.xori r4,r4,-1
    ee44:	bc 24 00 00 	l.sfnei r4,0
    ee48:	10 00 00 73 	l.bf f014 <__adddf3+0x9c8>
    ee4c:	bc 05 07 ff 	l.sfeqi r5,2047
    ee50:	e1 ce 30 00 	l.add r14,r14,r6
    ee54:	e0 e7 40 00 	l.add r7,r7,r8
    ee58:	e4 46 70 00 	l.sfgtu r6,r14
    ee5c:	10 00 00 03 	l.bf ee68 <__adddf3+0x81c>
    ee60:	9c 40 00 01 	l.addi r2,r0,1
    ee64:	a8 44 00 00 	l.ori r2,r4,0x0
    ee68:	e0 e2 38 00 	l.add r7,r2,r7
    ee6c:	03 ff fe c9 	l.j e990 <__adddf3+0x344>
    ee70:	a8 45 00 00 	l.ori r2,r5,0x0
    ee74:	e0 47 70 04 	l.or r2,r7,r14
    ee78:	bc 22 00 00 	l.sfnei r2,0
    ee7c:	10 00 00 4b 	l.bf efa8 <__adddf3+0x95c>
    ee80:	e0 68 30 04 	l.or r3,r8,r6
    ee84:	bc 03 00 00 	l.sfeqi r3,0
    ee88:	10 00 00 97 	l.bf f0e4 <__adddf3+0xa98>
    ee8c:	aa 4d 00 00 	l.ori r18,r13,0x0
    ee90:	a8 e8 00 00 	l.ori r7,r8,0x0
    ee94:	a9 c6 00 00 	l.ori r14,r6,0x0
    ee98:	03 ff fe 13 	l.j e6e4 <__adddf3+0x98>
    ee9c:	9c 40 07 ff 	l.addi r2,r0,2047
    eea0:	9c e0 00 00 	l.addi r7,r0,0
    eea4:	03 ff fe 9b 	l.j e910 <__adddf3+0x2c4>
    eea8:	a9 c7 00 00 	l.ori r14,r7,0x0
    eeac:	e0 e7 70 04 	l.or r7,r7,r14
    eeb0:	9c 60 00 00 	l.addi r3,r0,0
    eeb4:	e1 c0 38 02 	l.sub r14,r0,r7
    eeb8:	e1 ce 38 04 	l.or r14,r14,r7
    eebc:	03 ff ff 67 	l.j ec58 <__adddf3+0x60c>
    eec0:	b9 ce 00 5f 	l.srli r14,r14,0x1f
    eec4:	a8 e4 00 00 	l.ori r7,r4,0x0
    eec8:	a8 45 00 00 	l.ori r2,r5,0x0
    eecc:	03 ff fe 91 	l.j e910 <__adddf3+0x2c4>
    eed0:	a9 c4 00 00 	l.ori r14,r4,0x0
    eed4:	10 00 00 52 	l.bf f01c <__adddf3+0x9d0>
    eed8:	19 60 00 80 	l.movhi r11,0x80
    eedc:	e0 80 20 02 	l.sub r4,r0,r4
    eee0:	e0 e7 58 04 	l.or r7,r7,r11
    eee4:	bd 44 00 38 	l.sfgtsi r4,56
    eee8:	10 00 00 84 	l.bf f0f8 <__adddf3+0xaac>
    eeec:	bd 44 00 1f 	l.sfgtsi r4,31
    eef0:	10 00 00 8f 	l.bf f12c <__adddf3+0xae0>
    eef4:	9d 64 ff e0 	l.addi r11,r4,-32
    eef8:	9d 60 00 20 	l.addi r11,r0,32
    eefc:	e1 8e 20 48 	l.srl r12,r14,r4
    ef00:	e1 6b 20 02 	l.sub r11,r11,r4
    ef04:	e0 87 20 48 	l.srl r4,r7,r4
    ef08:	e0 4e 58 08 	l.sll r2,r14,r11
    ef0c:	e0 e7 58 08 	l.sll r7,r7,r11
    ef10:	e1 60 10 02 	l.sub r11,r0,r2
    ef14:	e0 e7 60 04 	l.or r7,r7,r12
    ef18:	e0 4b 10 04 	l.or r2,r11,r2
    ef1c:	b8 42 00 5f 	l.srli r2,r2,0x1f
    ef20:	e1 c7 10 04 	l.or r14,r7,r2
    ef24:	e1 ce 30 00 	l.add r14,r14,r6
    ef28:	e1 04 40 00 	l.add r8,r4,r8
    ef2c:	e4 46 70 00 	l.sfgtu r6,r14
    ef30:	10 00 00 03 	l.bf ef3c <__adddf3+0x8f0>
    ef34:	9c e0 00 01 	l.addi r7,r0,1
    ef38:	9c e0 00 00 	l.addi r7,r0,0
    ef3c:	e0 e7 40 00 	l.add r7,r7,r8
    ef40:	03 ff fe 94 	l.j e990 <__adddf3+0x344>
    ef44:	a8 45 00 00 	l.ori r2,r5,0x0
    ef48:	e0 68 30 04 	l.or r3,r8,r6
    ef4c:	bc 03 00 00 	l.sfeqi r3,0
    ef50:	13 ff fd e6 	l.bf e6e8 <__adddf3+0x9c>
    ef54:	a4 6e 00 07 	l.andi r3,r14,0x7
    ef58:	e0 8e 30 02 	l.sub r4,r14,r6
    ef5c:	e0 67 40 02 	l.sub r3,r7,r8
    ef60:	e4 8e 20 00 	l.sfltu r14,r4
    ef64:	10 00 00 03 	l.bf ef70 <__adddf3+0x924>
    ef68:	9c a0 00 01 	l.addi r5,r0,1
    ef6c:	a8 a2 00 00 	l.ori r5,r2,0x0
    ef70:	e0 63 28 02 	l.sub r3,r3,r5
    ef74:	19 60 00 80 	l.movhi r11,0x80
    ef78:	e0 a3 58 03 	l.and r5,r3,r11
    ef7c:	bc 05 00 00 	l.sfeqi r5,0
    ef80:	13 ff fe 55 	l.bf e8d4 <__adddf3+0x288>
    ef84:	e1 c6 70 02 	l.sub r14,r6,r14
    ef88:	e0 e8 38 02 	l.sub r7,r8,r7
    ef8c:	e4 86 70 00 	l.sfltu r6,r14
    ef90:	10 00 00 03 	l.bf ef9c <__adddf3+0x950>
    ef94:	9c 60 00 01 	l.addi r3,r0,1
    ef98:	9c 60 00 00 	l.addi r3,r0,0
    ef9c:	e0 e7 18 02 	l.sub r7,r7,r3
    efa0:	03 ff fd d1 	l.j e6e4 <__adddf3+0x98>
    efa4:	aa 4d 00 00 	l.ori r18,r13,0x0
    efa8:	bc 03 00 00 	l.sfeqi r3,0
    efac:	13 ff fd ce 	l.bf e6e4 <__adddf3+0x98>
    efb0:	9c 40 07 ff 	l.addi r2,r0,2047
    efb4:	b8 47 00 43 	l.srli r2,r7,0x3
    efb8:	18 80 00 08 	l.movhi r4,0x8
    efbc:	b9 ce 00 43 	l.srli r14,r14,0x3
    efc0:	e0 62 20 03 	l.and r3,r2,r4
    efc4:	b8 e7 00 1d 	l.slli r7,r7,0x1d
    efc8:	bc 03 00 00 	l.sfeqi r3,0
    efcc:	10 00 00 0c 	l.bf effc <__adddf3+0x9b0>
    efd0:	e1 c7 70 04 	l.or r14,r7,r14
    efd4:	b8 68 00 43 	l.srli r3,r8,0x3
    efd8:	e0 83 20 03 	l.and r4,r3,r4
    efdc:	bc 24 00 00 	l.sfnei r4,0
    efe0:	10 00 00 07 	l.bf effc <__adddf3+0x9b0>
    efe4:	15 00 00 00 	l.nop 0x0
    efe8:	b8 c6 00 43 	l.srli r6,r6,0x3
    efec:	b9 c8 00 1d 	l.slli r14,r8,0x1d
    eff0:	a8 43 00 00 	l.ori r2,r3,0x0
    eff4:	aa 4d 00 00 	l.ori r18,r13,0x0
    eff8:	e1 ce 30 04 	l.or r14,r14,r6
    effc:	b8 62 00 03 	l.slli r3,r2,0x3
    f000:	b8 ee 00 5d 	l.srli r7,r14,0x1d
    f004:	9c 40 07 ff 	l.addi r2,r0,2047
    f008:	b9 ce 00 03 	l.slli r14,r14,0x3
    f00c:	03 ff fd b6 	l.j e6e4 <__adddf3+0x98>
    f010:	e0 e7 18 04 	l.or r7,r7,r3
    f014:	0f ff ff b5 	l.bnf eee8 <__adddf3+0x89c>
    f018:	bd 44 00 38 	l.sfgtsi r4,56
    f01c:	a8 e8 00 00 	l.ori r7,r8,0x0
    f020:	a9 c6 00 00 	l.ori r14,r6,0x0
    f024:	03 ff fd b0 	l.j e6e4 <__adddf3+0x98>
    f028:	a8 45 00 00 	l.ori r2,r5,0x0
    f02c:	e0 47 70 04 	l.or r2,r7,r14
    f030:	bc 02 00 00 	l.sfeqi r2,0
    f034:	10 00 00 37 	l.bf f110 <__adddf3+0xac4>
    f038:	e0 68 30 04 	l.or r3,r8,r6
    f03c:	bc 03 00 00 	l.sfeqi r3,0
    f040:	13 ff fd a9 	l.bf e6e4 <__adddf3+0x98>
    f044:	9c 40 07 ff 	l.addi r2,r0,2047
    f048:	b8 47 00 43 	l.srli r2,r7,0x3
    f04c:	19 60 00 08 	l.movhi r11,0x8
    f050:	b9 ce 00 43 	l.srli r14,r14,0x3
    f054:	e0 62 58 03 	l.and r3,r2,r11
    f058:	b8 e7 00 1d 	l.slli r7,r7,0x1d
    f05c:	bc 03 00 00 	l.sfeqi r3,0
    f060:	13 ff ff e7 	l.bf effc <__adddf3+0x9b0>
    f064:	e1 c7 70 04 	l.or r14,r7,r14
    f068:	b8 68 00 43 	l.srli r3,r8,0x3
    f06c:	e0 83 58 03 	l.and r4,r3,r11
    f070:	bc 24 00 00 	l.sfnei r4,0
    f074:	13 ff ff e2 	l.bf effc <__adddf3+0x9b0>
    f078:	15 00 00 00 	l.nop 0x0
    f07c:	b8 c6 00 43 	l.srli r6,r6,0x3
    f080:	b9 c8 00 1d 	l.slli r14,r8,0x1d
    f084:	a8 43 00 00 	l.ori r2,r3,0x0
    f088:	03 ff ff dd 	l.j effc <__adddf3+0x9b0>
    f08c:	e1 ce 30 04 	l.or r14,r14,r6
    f090:	a9 c4 00 00 	l.ori r14,r4,0x0
    f094:	03 ff fd b5 	l.j e768 <__adddf3+0x11c>
    f098:	a8 e4 00 00 	l.ori r7,r4,0x0
    f09c:	03 ff ff 56 	l.j edf4 <__adddf3+0x7a8>
    f0a0:	9d 00 00 00 	l.addi r8,r0,0
    f0a4:	a9 c7 00 00 	l.ori r14,r7,0x0
    f0a8:	03 ff fe 1a 	l.j e910 <__adddf3+0x2c4>
    f0ac:	a8 67 00 00 	l.ori r3,r7,0x0
    f0b0:	bc 03 00 20 	l.sfeqi r3,32
    f0b4:	10 00 00 2b 	l.bf f160 <__adddf3+0xb14>
    f0b8:	e0 87 20 48 	l.srl r4,r7,r4
    f0bc:	9c 40 00 40 	l.addi r2,r0,64
    f0c0:	e0 42 18 02 	l.sub r2,r2,r3
    f0c4:	e0 47 10 08 	l.sll r2,r7,r2
    f0c8:	e0 42 70 04 	l.or r2,r2,r14
    f0cc:	9c 60 00 00 	l.addi r3,r0,0
    f0d0:	e0 e0 10 02 	l.sub r7,r0,r2
    f0d4:	e0 47 10 04 	l.or r2,r7,r2
    f0d8:	b8 42 00 5f 	l.srli r2,r2,0x1f
    f0dc:	03 ff fe df 	l.j ec58 <__adddf3+0x60c>
    f0e0:	e1 c4 10 04 	l.or r14,r4,r2
    f0e4:	18 40 00 0f 	l.movhi r2,0xf
    f0e8:	9d c0 ff ff 	l.addi r14,r0,-1
    f0ec:	a8 e2 ff ff 	l.ori r7,r2,0xffff
    f0f0:	03 ff fe 08 	l.j e910 <__adddf3+0x2c4>
    f0f4:	9c 40 07 ff 	l.addi r2,r0,2047
    f0f8:	e0 e7 70 04 	l.or r7,r7,r14
    f0fc:	9c 80 00 00 	l.addi r4,r0,0
    f100:	e1 c0 38 02 	l.sub r14,r0,r7
    f104:	e1 ce 38 04 	l.or r14,r14,r7
    f108:	03 ff ff 87 	l.j ef24 <__adddf3+0x8d8>
    f10c:	b9 ce 00 5f 	l.srli r14,r14,0x1f
    f110:	a8 e8 00 00 	l.ori r7,r8,0x0
    f114:	a9 c6 00 00 	l.ori r14,r6,0x0
    f118:	03 ff fd 73 	l.j e6e4 <__adddf3+0x98>
    f11c:	9c 40 07 ff 	l.addi r2,r0,2047
    f120:	a8 e8 00 00 	l.ori r7,r8,0x0
    f124:	03 ff fd 70 	l.j e6e4 <__adddf3+0x98>
    f128:	a9 c6 00 00 	l.ori r14,r6,0x0
    f12c:	bc 04 00 20 	l.sfeqi r4,32
    f130:	10 00 00 10 	l.bf f170 <__adddf3+0xb24>
    f134:	e1 67 58 48 	l.srl r11,r7,r11
    f138:	9c 40 00 40 	l.addi r2,r0,64
    f13c:	e0 42 20 02 	l.sub r2,r2,r4
    f140:	e0 47 10 08 	l.sll r2,r7,r2
    f144:	e0 42 70 04 	l.or r2,r2,r14
    f148:	9c 80 00 00 	l.addi r4,r0,0
    f14c:	e0 e0 10 02 	l.sub r7,r0,r2
    f150:	e0 47 10 04 	l.or r2,r7,r2
    f154:	b8 42 00 5f 	l.srli r2,r2,0x1f
    f158:	03 ff ff 73 	l.j ef24 <__adddf3+0x8d8>
    f15c:	e1 cb 10 04 	l.or r14,r11,r2
    f160:	03 ff ff da 	l.j f0c8 <__adddf3+0xa7c>
    f164:	9c 40 00 00 	l.addi r2,r0,0
    f168:	03 ff fd e1 	l.j e8ec <__adddf3+0x2a0>
    f16c:	a9 c6 00 00 	l.ori r14,r6,0x0
    f170:	03 ff ff f5 	l.j f144 <__adddf3+0xaf8>
    f174:	9c 40 00 00 	l.addi r2,r0,0

0000f178 <__divdf3>:
    f178:	d7 e1 a7 e4 	l.sw -28(r1),r20
    f17c:	ba 83 00 54 	l.srli r20,r3,0x14
    f180:	d7 e1 17 d8 	l.sw -40(r1),r2
    f184:	18 40 00 0f 	l.movhi r2,0xf
    f188:	a6 94 07 ff 	l.andi r20,r20,0x7ff
    f18c:	d7 e1 77 dc 	l.sw -36(r1),r14
    f190:	d7 e1 b7 e8 	l.sw -24(r1),r22
    f194:	d7 e1 c7 ec 	l.sw -20(r1),r24
    f198:	d7 e1 4f fc 	l.sw -4(r1),r9
    f19c:	d7 e1 0f d4 	l.sw -44(r1),r1
    f1a0:	d7 e1 97 e0 	l.sw -32(r1),r18
    f1a4:	d7 e1 d7 f0 	l.sw -16(r1),r26
    f1a8:	d7 e1 e7 f4 	l.sw -12(r1),r28
    f1ac:	d7 e1 f7 f8 	l.sw -8(r1),r30
    f1b0:	a8 42 ff ff 	l.ori r2,r2,0xffff
    f1b4:	bc 14 00 00 	l.sfeqi r20,0
    f1b8:	9c 21 ff c0 	l.addi r1,r1,-64
    f1bc:	aa c4 00 00 	l.ori r22,r4,0x0
    f1c0:	e1 c3 10 03 	l.and r14,r3,r2
    f1c4:	10 00 00 5a 	l.bf f32c <__divdf3+0x1b4>
    f1c8:	bb 03 00 5f 	l.srli r24,r3,0x1f
    f1cc:	bc 14 07 ff 	l.sfeqi r20,2047
    f1d0:	10 00 00 2b 	l.bf f27c <__divdf3+0x104>
    f1d4:	18 60 00 10 	l.movhi r3,0x10
    f1d8:	b8 44 00 5d 	l.srli r2,r4,0x1d
    f1dc:	e1 ce 18 04 	l.or r14,r14,r3
    f1e0:	9e 40 00 00 	l.addi r18,r0,0
    f1e4:	b9 ce 00 03 	l.slli r14,r14,0x3
    f1e8:	ba c4 00 03 	l.slli r22,r4,0x3
    f1ec:	9e 94 fc 01 	l.addi r20,r20,-1023
    f1f0:	e1 c2 70 04 	l.or r14,r2,r14
    f1f4:	a9 92 00 00 	l.ori r12,r18,0x0
    f1f8:	b8 e5 00 54 	l.srli r7,r5,0x14
    f1fc:	18 80 00 0f 	l.movhi r4,0xf
    f200:	bb 45 00 5f 	l.srli r26,r5,0x1f
    f204:	a4 e7 07 ff 	l.andi r7,r7,0x7ff
    f208:	a8 84 ff ff 	l.ori r4,r4,0xffff
    f20c:	bc 07 00 00 	l.sfeqi r7,0
    f210:	a9 06 00 00 	l.ori r8,r6,0x0
    f214:	e0 45 20 03 	l.and r2,r5,r4
    f218:	10 00 00 6b 	l.bf f3c4 <__divdf3+0x24c>
    f21c:	ab da 00 00 	l.ori r30,r26,0x0
    f220:	bc 07 07 ff 	l.sfeqi r7,2047
    f224:	10 00 00 60 	l.bf f3a4 <__divdf3+0x22c>
    f228:	18 a0 00 10 	l.movhi r5,0x10
    f22c:	b9 06 00 03 	l.slli r8,r6,0x3
    f230:	e0 42 28 04 	l.or r2,r2,r5
    f234:	b8 a6 00 5d 	l.srli r5,r6,0x1d
    f238:	b8 42 00 03 	l.slli r2,r2,0x3
    f23c:	9c e7 fc 01 	l.addi r7,r7,-1023
    f240:	9c 60 00 00 	l.addi r3,r0,0
    f244:	e0 45 10 04 	l.or r2,r5,r2
    f248:	e0 83 90 04 	l.or r4,r3,r18
    f24c:	e0 b8 d0 05 	l.xor r5,r24,r26
    f250:	bc 44 00 0f 	l.sfgtui r4,15
    f254:	ab 85 00 00 	l.ori r28,r5,0x0
    f258:	10 00 00 8b 	l.bf f484 <__divdf3+0x30c>
    f25c:	e2 94 38 02 	l.sub r20,r20,r7
    f260:	18 c0 00 01 	l.movhi r6,0x1
    f264:	b8 84 00 02 	l.slli r4,r4,0x2
    f268:	a8 c6 1e 6c 	l.ori r6,r6,0x1e6c
    f26c:	e0 84 30 00 	l.add r4,r4,r6
    f270:	84 84 00 00 	l.lwz r4,0(r4)
    f274:	44 00 20 00 	l.jr r4
    f278:	15 00 00 00 	l.nop 0x0
    f27c:	e0 8e 20 04 	l.or r4,r14,r4
    f280:	bc 04 00 00 	l.sfeqi r4,0
    f284:	0c 00 00 73 	l.bnf f450 <__divdf3+0x2d8>
    f288:	15 00 00 00 	l.nop 0x0
    f28c:	a9 c4 00 00 	l.ori r14,r4,0x0
    f290:	9e 40 00 08 	l.addi r18,r0,8
    f294:	aa c4 00 00 	l.ori r22,r4,0x0
    f298:	03 ff ff d8 	l.j f1f8 <__divdf3+0x80>
    f29c:	9d 80 00 02 	l.addi r12,r0,2
    f2a0:	a8 4e 00 00 	l.ori r2,r14,0x0
    f2a4:	a9 16 00 00 	l.ori r8,r22,0x0
    f2a8:	ab d8 00 00 	l.ori r30,r24,0x0
    f2ac:	a8 6c 00 00 	l.ori r3,r12,0x0
    f2b0:	bc 03 00 02 	l.sfeqi r3,2
    f2b4:	0c 00 00 93 	l.bnf f500 <__divdf3+0x388>
    f2b8:	ab 9e 00 00 	l.ori r28,r30,0x0
    f2bc:	9c 40 00 00 	l.addi r2,r0,0
    f2c0:	a4 bc 00 01 	l.andi r5,r28,0x1
    f2c4:	9d c0 07 ff 	l.addi r14,r0,2047
    f2c8:	aa c2 00 00 	l.ori r22,r2,0x0
    f2cc:	18 80 00 0f 	l.movhi r4,0xf
    f2d0:	b9 ce 00 14 	l.slli r14,r14,0x14
    f2d4:	a8 84 ff ff 	l.ori r4,r4,0xffff
    f2d8:	b8 a5 00 1f 	l.slli r5,r5,0x1f
    f2dc:	e0 42 20 03 	l.and r2,r2,r4
    f2e0:	9c 21 00 40 	l.addi r1,r1,64
    f2e4:	e0 42 70 04 	l.or r2,r2,r14
    f2e8:	85 21 ff fc 	l.lwz r9,-4(r1)
    f2ec:	e0 42 28 04 	l.or r2,r2,r5
    f2f0:	84 21 ff d4 	l.lwz r1,-44(r1)
    f2f4:	a8 82 00 00 	l.ori r4,r2,0x0
    f2f8:	a8 b6 00 00 	l.ori r5,r22,0x0
    f2fc:	84 41 ff d8 	l.lwz r2,-40(r1)
    f300:	e1 64 00 04 	l.or r11,r4,r0
    f304:	e1 85 00 04 	l.or r12,r5,r0
    f308:	85 c1 ff dc 	l.lwz r14,-36(r1)
    f30c:	86 41 ff e0 	l.lwz r18,-32(r1)
    f310:	86 81 ff e4 	l.lwz r20,-28(r1)
    f314:	86 c1 ff e8 	l.lwz r22,-24(r1)
    f318:	87 01 ff ec 	l.lwz r24,-20(r1)
    f31c:	87 41 ff f0 	l.lwz r26,-16(r1)
    f320:	87 81 ff f4 	l.lwz r28,-12(r1)
    f324:	44 00 48 00 	l.jr r9
    f328:	87 c1 ff f8 	l.lwz r30,-8(r1)
    f32c:	e0 4e 20 04 	l.or r2,r14,r4
    f330:	bc 02 00 00 	l.sfeqi r2,0
    f334:	10 00 00 43 	l.bf f440 <__divdf3+0x2c8>
    f338:	9e 40 00 04 	l.addi r18,r0,4
    f33c:	bc 0e 00 00 	l.sfeqi r14,0
    f340:	10 00 01 d3 	l.bf fa8c <__divdf3+0x914>
    f344:	a8 64 00 00 	l.ori r3,r4,0x0
    f348:	a8 6e 00 00 	l.ori r3,r14,0x0
    f34c:	d4 01 20 0c 	l.sw 12(r1),r4
    f350:	d4 01 28 08 	l.sw 8(r1),r5
    f354:	04 00 09 1c 	l.jal 117c4 <__clzsi2>
    f358:	d4 01 30 00 	l.sw 0(r1),r6
    f35c:	84 81 00 0c 	l.lwz r4,12(r1)
    f360:	84 a1 00 08 	l.lwz r5,8(r1)
    f364:	84 c1 00 00 	l.lwz r6,0(r1)
    f368:	9c eb ff f5 	l.addi r7,r11,-11
    f36c:	bd 47 00 1c 	l.sfgtsi r7,28
    f370:	10 00 01 c3 	l.bf fa7c <__divdf3+0x904>
    f374:	9d 00 00 1d 	l.addi r8,r0,29
    f378:	9c 6b ff f8 	l.addi r3,r11,-8
    f37c:	e1 08 38 02 	l.sub r8,r8,r7
    f380:	e1 ce 18 08 	l.sll r14,r14,r3
    f384:	e1 04 40 48 	l.srl r8,r4,r8
    f388:	e2 c4 18 08 	l.sll r22,r4,r3
    f38c:	e1 c8 70 04 	l.or r14,r8,r14
    f390:	9e 40 00 00 	l.addi r18,r0,0
    f394:	9e 80 fc 02 	l.addi r20,r0,-1022
    f398:	a9 92 00 00 	l.ori r12,r18,0x0
    f39c:	03 ff ff 97 	l.j f1f8 <__divdf3+0x80>
    f3a0:	e2 94 38 02 	l.sub r20,r20,r7
    f3a4:	e0 c2 30 04 	l.or r6,r2,r6
    f3a8:	bc 06 00 00 	l.sfeqi r6,0
    f3ac:	0f ff ff a7 	l.bnf f248 <__divdf3+0xd0>
    f3b0:	9c 60 00 03 	l.addi r3,r0,3
    f3b4:	a8 46 00 00 	l.ori r2,r6,0x0
    f3b8:	9c 60 00 02 	l.addi r3,r0,2
    f3bc:	03 ff ff a3 	l.j f248 <__divdf3+0xd0>
    f3c0:	a9 06 00 00 	l.ori r8,r6,0x0
    f3c4:	e0 62 30 04 	l.or r3,r2,r6
    f3c8:	bc 03 00 00 	l.sfeqi r3,0
    f3cc:	10 00 00 1a 	l.bf f434 <__divdf3+0x2bc>
    f3d0:	a9 07 00 00 	l.ori r8,r7,0x0
    f3d4:	bc 02 00 00 	l.sfeqi r2,0
    f3d8:	10 00 01 ba 	l.bf fac0 <__divdf3+0x948>
    f3dc:	a8 66 00 00 	l.ori r3,r6,0x0
    f3e0:	a8 62 00 00 	l.ori r3,r2,0x0
    f3e4:	d4 01 30 00 	l.sw 0(r1),r6
    f3e8:	04 00 08 f7 	l.jal 117c4 <__clzsi2>
    f3ec:	d4 01 60 0c 	l.sw 12(r1),r12
    f3f0:	84 c1 00 00 	l.lwz r6,0(r1)
    f3f4:	85 81 00 0c 	l.lwz r12,12(r1)
    f3f8:	9c eb ff f5 	l.addi r7,r11,-11
    f3fc:	bd 47 00 1c 	l.sfgtsi r7,28
    f400:	10 00 01 ac 	l.bf fab0 <__divdf3+0x938>
    f404:	15 00 00 00 	l.nop 0x0
    f408:	9c 60 00 1d 	l.addi r3,r0,29
    f40c:	9d 0b ff f8 	l.addi r8,r11,-8
    f410:	e0 63 38 02 	l.sub r3,r3,r7
    f414:	e0 42 40 08 	l.sll r2,r2,r8
    f418:	e0 66 18 48 	l.srl r3,r6,r3
    f41c:	e1 06 40 08 	l.sll r8,r6,r8
    f420:	e0 43 10 04 	l.or r2,r3,r2
    f424:	9c 80 fc 02 	l.addi r4,r0,-1022
    f428:	9c 60 00 00 	l.addi r3,r0,0
    f42c:	03 ff ff 87 	l.j f248 <__divdf3+0xd0>
    f430:	e0 e4 38 02 	l.sub r7,r4,r7
    f434:	a8 47 00 00 	l.ori r2,r7,0x0
    f438:	03 ff ff 84 	l.j f248 <__divdf3+0xd0>
    f43c:	9c 60 00 01 	l.addi r3,r0,1
    f440:	a9 d4 00 00 	l.ori r14,r20,0x0
    f444:	aa d4 00 00 	l.ori r22,r20,0x0
    f448:	03 ff ff 6c 	l.j f1f8 <__divdf3+0x80>
    f44c:	9d 80 00 01 	l.addi r12,r0,1
    f450:	9e 40 00 0c 	l.addi r18,r0,12
    f454:	03 ff ff 69 	l.j f1f8 <__divdf3+0x80>
    f458:	9d 80 00 03 	l.addi r12,r0,3
    f45c:	18 40 00 0f 	l.movhi r2,0xf
    f460:	9c a0 00 00 	l.addi r5,r0,0
    f464:	a8 42 ff ff 	l.ori r2,r2,0xffff
    f468:	9e c0 ff ff 	l.addi r22,r0,-1
    f46c:	03 ff ff 98 	l.j f2cc <__divdf3+0x154>
    f470:	9d c0 07 ff 	l.addi r14,r0,2047
    f474:	9d c0 00 00 	l.addi r14,r0,0
    f478:	a8 4e 00 00 	l.ori r2,r14,0x0
    f47c:	03 ff ff 94 	l.j f2cc <__divdf3+0x154>
    f480:	aa ce 00 00 	l.ori r22,r14,0x0
    f484:	e4 4e 10 00 	l.sfgtu r14,r2
    f488:	10 00 00 28 	l.bf f528 <__divdf3+0x3b0>
    f48c:	b8 8e 00 1f 	l.slli r4,r14,0x1f
    f490:	e0 6e 10 05 	l.xor r3,r14,r2
    f494:	e0 80 18 02 	l.sub r4,r0,r3
    f498:	e0 64 18 04 	l.or r3,r4,r3
    f49c:	bd 83 00 00 	l.sfltsi r3,0
    f4a0:	10 00 00 09 	l.bf f4c4 <__divdf3+0x34c>
    f4a4:	e4 76 40 00 	l.sfgeu r22,r8
    f4a8:	10 00 00 03 	l.bf f4b4 <__divdf3+0x33c>
    f4ac:	9c 60 00 01 	l.addi r3,r0,1
    f4b0:	9c 60 00 00 	l.addi r3,r0,0
    f4b4:	a4 63 00 ff 	l.andi r3,r3,0xff
    f4b8:	bc 03 00 00 	l.sfeqi r3,0
    f4bc:	0c 00 00 1a 	l.bnf f524 <__divdf3+0x3ac>
    f4c0:	15 00 00 00 	l.nop 0x0
    f4c4:	9e 94 ff ff 	l.addi r20,r20,-1
    f4c8:	00 00 00 1c 	l.j f538 <__divdf3+0x3c0>
    f4cc:	9c e0 00 00 	l.addi r7,r0,0
    f4d0:	18 c0 00 08 	l.movhi r6,0x8
    f4d4:	e0 6e 30 03 	l.and r3,r14,r6
    f4d8:	bc 23 00 00 	l.sfnei r3,0
    f4dc:	10 00 01 80 	l.bf fadc <__divdf3+0x964>
    f4e0:	18 80 00 08 	l.movhi r4,0x8
    f4e4:	18 60 00 0f 	l.movhi r3,0xf
    f4e8:	e0 4e 30 04 	l.or r2,r14,r6
    f4ec:	a8 63 ff ff 	l.ori r3,r3,0xffff
    f4f0:	a8 b8 00 00 	l.ori r5,r24,0x0
    f4f4:	e0 42 18 03 	l.and r2,r2,r3
    f4f8:	03 ff ff 75 	l.j f2cc <__divdf3+0x154>
    f4fc:	9d c0 07 ff 	l.addi r14,r0,2047
    f500:	bc 03 00 03 	l.sfeqi r3,3
    f504:	10 00 02 0d 	l.bf fd38 <__divdf3+0xbc0>
    f508:	bc 03 00 01 	l.sfeqi r3,1
    f50c:	0c 00 01 37 	l.bnf f9e8 <__divdf3+0x870>
    f510:	9d c0 00 00 	l.addi r14,r0,0
    f514:	a8 be 00 00 	l.ori r5,r30,0x0
    f518:	a8 4e 00 00 	l.ori r2,r14,0x0
    f51c:	03 ff ff 6c 	l.j f2cc <__divdf3+0x154>
    f520:	aa ce 00 00 	l.ori r22,r14,0x0
    f524:	b8 8e 00 1f 	l.slli r4,r14,0x1f
    f528:	b8 76 00 41 	l.srli r3,r22,0x1
    f52c:	b9 ce 00 41 	l.srli r14,r14,0x1
    f530:	b8 f6 00 1f 	l.slli r7,r22,0x1f
    f534:	e2 c4 18 04 	l.or r22,r4,r3
    f538:	b8 88 00 58 	l.srli r4,r8,0x18
    f53c:	b8 42 00 08 	l.slli r2,r2,0x8
    f540:	b8 c8 00 08 	l.slli r6,r8,0x8
    f544:	a8 6e 00 00 	l.ori r3,r14,0x0
    f548:	e2 42 20 04 	l.or r18,r2,r4
    f54c:	d4 01 30 00 	l.sw 0(r1),r6
    f550:	bb 12 00 50 	l.srli r24,r18,0x10
    f554:	a7 52 ff ff 	l.andi r26,r18,0xffff
    f558:	d4 01 38 04 	l.sw 4(r1),r7
    f55c:	07 ff fb c5 	l.jal e470 <__udivsi3>
    f560:	a8 98 00 00 	l.ori r4,r24,0x0
    f564:	e0 5a 5b 06 	l.mul r2,r26,r11
    f568:	a8 6e 00 00 	l.ori r3,r14,0x0
    f56c:	a8 98 00 00 	l.ori r4,r24,0x0
    f570:	07 ff fc 18 	l.jal e5d0 <__umodsi3>
    f574:	ab cb 00 00 	l.ori r30,r11,0x0
    f578:	b8 76 00 50 	l.srli r3,r22,0x10
    f57c:	b9 6b 00 10 	l.slli r11,r11,0x10
    f580:	84 c1 00 00 	l.lwz r6,0(r1)
    f584:	e1 63 58 04 	l.or r11,r3,r11
    f588:	e4 a2 58 00 	l.sfleu r2,r11
    f58c:	10 00 00 14 	l.bf f5dc <__divdf3+0x464>
    f590:	84 e1 00 04 	l.lwz r7,4(r1)
    f594:	e1 6b 90 00 	l.add r11,r11,r18
    f598:	e4 42 58 00 	l.sfgtu r2,r11
    f59c:	10 00 00 03 	l.bf f5a8 <__divdf3+0x430>
    f5a0:	9c 60 00 01 	l.addi r3,r0,1
    f5a4:	9c 60 00 00 	l.addi r3,r0,0
    f5a8:	a4 63 00 ff 	l.andi r3,r3,0xff
    f5ac:	bc 03 00 00 	l.sfeqi r3,0
    f5b0:	10 00 01 7c 	l.bf fba0 <__divdf3+0xa28>
    f5b4:	e4 b2 58 00 	l.sfleu r18,r11
    f5b8:	10 00 00 03 	l.bf f5c4 <__divdf3+0x44c>
    f5bc:	9c 60 00 01 	l.addi r3,r0,1
    f5c0:	9c 60 00 00 	l.addi r3,r0,0
    f5c4:	a4 63 00 ff 	l.andi r3,r3,0xff
    f5c8:	bc 23 00 00 	l.sfnei r3,0
    f5cc:	0c 00 01 75 	l.bnf fba0 <__divdf3+0xa28>
    f5d0:	15 00 00 00 	l.nop 0x0
    f5d4:	9f de ff fe 	l.addi r30,r30,-2
    f5d8:	e1 6b 90 00 	l.add r11,r11,r18
    f5dc:	e0 4b 10 02 	l.sub r2,r11,r2
    f5e0:	a8 98 00 00 	l.ori r4,r24,0x0
    f5e4:	a8 62 00 00 	l.ori r3,r2,0x0
    f5e8:	d4 01 30 00 	l.sw 0(r1),r6
    f5ec:	07 ff fb a1 	l.jal e470 <__udivsi3>
    f5f0:	d4 01 38 04 	l.sw 4(r1),r7
    f5f4:	e1 1a 5b 06 	l.mul r8,r26,r11
    f5f8:	a8 98 00 00 	l.ori r4,r24,0x0
    f5fc:	a8 62 00 00 	l.ori r3,r2,0x0
    f600:	d4 01 40 0c 	l.sw 12(r1),r8
    f604:	07 ff fb f3 	l.jal e5d0 <__umodsi3>
    f608:	a9 cb 00 00 	l.ori r14,r11,0x0
    f60c:	b9 6b 00 10 	l.slli r11,r11,0x10
    f610:	a6 d6 ff ff 	l.andi r22,r22,0xffff
    f614:	85 01 00 0c 	l.lwz r8,12(r1)
    f618:	e0 96 58 04 	l.or r4,r22,r11
    f61c:	84 c1 00 00 	l.lwz r6,0(r1)
    f620:	e4 a8 20 00 	l.sfleu r8,r4
    f624:	10 00 00 14 	l.bf f674 <__divdf3+0x4fc>
    f628:	84 e1 00 04 	l.lwz r7,4(r1)
    f62c:	e0 84 90 00 	l.add r4,r4,r18
    f630:	e4 48 20 00 	l.sfgtu r8,r4
    f634:	10 00 00 03 	l.bf f640 <__divdf3+0x4c8>
    f638:	9c 40 00 01 	l.addi r2,r0,1
    f63c:	9c 40 00 00 	l.addi r2,r0,0
    f640:	a4 42 00 ff 	l.andi r2,r2,0xff
    f644:	bc 02 00 00 	l.sfeqi r2,0
    f648:	10 00 01 5a 	l.bf fbb0 <__divdf3+0xa38>
    f64c:	e4 b2 20 00 	l.sfleu r18,r4
    f650:	10 00 00 03 	l.bf f65c <__divdf3+0x4e4>
    f654:	9c 40 00 01 	l.addi r2,r0,1
    f658:	9c 40 00 00 	l.addi r2,r0,0
    f65c:	a4 42 00 ff 	l.andi r2,r2,0xff
    f660:	bc 22 00 00 	l.sfnei r2,0
    f664:	0c 00 01 53 	l.bnf fbb0 <__divdf3+0xa38>
    f668:	15 00 00 00 	l.nop 0x0
    f66c:	9d ce ff fe 	l.addi r14,r14,-2
    f670:	e0 84 90 00 	l.add r4,r4,r18
    f674:	bb de 00 10 	l.slli r30,r30,0x10
    f678:	ba c6 00 50 	l.srli r22,r6,0x10
    f67c:	a4 a6 ff ff 	l.andi r5,r6,0xffff
    f680:	e3 de 70 04 	l.or r30,r30,r14
    f684:	e0 84 40 02 	l.sub r4,r4,r8
    f688:	b9 de 00 50 	l.srli r14,r30,0x10
    f68c:	a4 5e ff ff 	l.andi r2,r30,0xffff
    f690:	e1 02 2b 06 	l.mul r8,r2,r5
    f694:	e0 65 73 06 	l.mul r3,r5,r14
    f698:	e0 42 b3 06 	l.mul r2,r2,r22
    f69c:	b9 68 00 50 	l.srli r11,r8,0x10
    f6a0:	e0 42 18 00 	l.add r2,r2,r3
    f6a4:	e0 4b 10 00 	l.add r2,r11,r2
    f6a8:	e4 a3 10 00 	l.sfleu r3,r2
    f6ac:	10 00 00 04 	l.bf f6bc <__divdf3+0x544>
    f6b0:	e1 ce b3 06 	l.mul r14,r14,r22
    f6b4:	18 60 00 01 	l.movhi r3,0x1
    f6b8:	e1 ce 18 00 	l.add r14,r14,r3
    f6bc:	b8 62 00 50 	l.srli r3,r2,0x10
    f6c0:	b8 42 00 10 	l.slli r2,r2,0x10
    f6c4:	a5 08 ff ff 	l.andi r8,r8,0xffff
    f6c8:	e1 c3 70 00 	l.add r14,r3,r14
    f6cc:	e4 84 70 00 	l.sfltu r4,r14
    f6d0:	10 00 00 0f 	l.bf f70c <__divdf3+0x594>
    f6d4:	e1 02 40 00 	l.add r8,r2,r8
    f6d8:	e0 44 70 05 	l.xor r2,r4,r14
    f6dc:	e0 60 10 02 	l.sub r3,r0,r2
    f6e0:	e0 43 10 04 	l.or r2,r3,r2
    f6e4:	bd 82 00 00 	l.sfltsi r2,0
    f6e8:	10 00 01 30 	l.bf fba8 <__divdf3+0xa30>
    f6ec:	e4 87 40 00 	l.sfltu r7,r8
    f6f0:	10 00 00 03 	l.bf f6fc <__divdf3+0x584>
    f6f4:	9c 40 00 01 	l.addi r2,r0,1
    f6f8:	9c 40 00 00 	l.addi r2,r0,0
    f6fc:	a4 42 00 ff 	l.andi r2,r2,0xff
    f700:	bc 02 00 00 	l.sfeqi r2,0
    f704:	10 00 00 31 	l.bf f7c8 <__divdf3+0x650>
    f708:	a8 5e 00 00 	l.ori r2,r30,0x0
    f70c:	e0 e7 30 00 	l.add r7,r7,r6
    f710:	9c 5e ff ff 	l.addi r2,r30,-1
    f714:	e4 46 38 00 	l.sfgtu r6,r7
    f718:	10 00 00 03 	l.bf f724 <__divdf3+0x5ac>
    f71c:	9c 60 00 01 	l.addi r3,r0,1
    f720:	9c 60 00 00 	l.addi r3,r0,0
    f724:	e0 63 90 00 	l.add r3,r3,r18
    f728:	e0 84 18 00 	l.add r4,r4,r3
    f72c:	e4 92 20 00 	l.sfltu r18,r4
    f730:	10 00 00 0f 	l.bf f76c <__divdf3+0x5f4>
    f734:	e4 4e 20 00 	l.sfgtu r14,r4
    f738:	e0 72 20 05 	l.xor r3,r18,r4
    f73c:	e1 60 18 02 	l.sub r11,r0,r3
    f740:	e0 6b 18 04 	l.or r3,r11,r3
    f744:	bd 83 00 00 	l.sfltsi r3,0
    f748:	10 00 00 20 	l.bf f7c8 <__divdf3+0x650>
    f74c:	e4 a6 38 00 	l.sfleu r6,r7
    f750:	10 00 00 03 	l.bf f75c <__divdf3+0x5e4>
    f754:	9c 60 00 01 	l.addi r3,r0,1
    f758:	9c 60 00 00 	l.addi r3,r0,0
    f75c:	a4 63 00 ff 	l.andi r3,r3,0xff
    f760:	bc 03 00 00 	l.sfeqi r3,0
    f764:	10 00 00 19 	l.bf f7c8 <__divdf3+0x650>
    f768:	e4 4e 20 00 	l.sfgtu r14,r4
    f76c:	10 00 00 0f 	l.bf f7a8 <__divdf3+0x630>
    f770:	15 00 00 00 	l.nop 0x0
    f774:	e0 6e 20 05 	l.xor r3,r14,r4
    f778:	e1 60 18 02 	l.sub r11,r0,r3
    f77c:	e0 6b 18 04 	l.or r3,r11,r3
    f780:	bd 83 00 00 	l.sfltsi r3,0
    f784:	10 00 00 11 	l.bf f7c8 <__divdf3+0x650>
    f788:	e4 48 38 00 	l.sfgtu r8,r7
    f78c:	10 00 00 03 	l.bf f798 <__divdf3+0x620>
    f790:	9c 60 00 01 	l.addi r3,r0,1
    f794:	9c 60 00 00 	l.addi r3,r0,0
    f798:	a4 63 00 ff 	l.andi r3,r3,0xff
    f79c:	bc 03 00 00 	l.sfeqi r3,0
    f7a0:	10 00 00 0a 	l.bf f7c8 <__divdf3+0x650>
    f7a4:	15 00 00 00 	l.nop 0x0
    f7a8:	e0 e7 30 00 	l.add r7,r7,r6
    f7ac:	9c 5e ff fe 	l.addi r2,r30,-2
    f7b0:	e4 46 38 00 	l.sfgtu r6,r7
    f7b4:	10 00 00 03 	l.bf f7c0 <__divdf3+0x648>
    f7b8:	9c 60 00 01 	l.addi r3,r0,1
    f7bc:	9c 60 00 00 	l.addi r3,r0,0
    f7c0:	e0 63 90 00 	l.add r3,r3,r18
    f7c4:	e0 84 18 00 	l.add r4,r4,r3
    f7c8:	e3 c7 40 02 	l.sub r30,r7,r8
    f7cc:	e0 84 70 02 	l.sub r4,r4,r14
    f7d0:	e4 87 f0 00 	l.sfltu r7,r30
    f7d4:	10 00 00 03 	l.bf f7e0 <__divdf3+0x668>
    f7d8:	9d c0 00 01 	l.addi r14,r0,1
    f7dc:	9d c0 00 00 	l.addi r14,r0,0
    f7e0:	e1 c4 70 02 	l.sub r14,r4,r14
    f7e4:	e4 12 70 00 	l.sfeq r18,r14
    f7e8:	10 00 01 00 	l.bf fbe8 <__divdf3+0xa70>
    f7ec:	a8 98 00 00 	l.ori r4,r24,0x0
    f7f0:	a8 6e 00 00 	l.ori r3,r14,0x0
    f7f4:	d4 01 28 08 	l.sw 8(r1),r5
    f7f8:	07 ff fb 1e 	l.jal e470 <__udivsi3>
    f7fc:	d4 01 30 00 	l.sw 0(r1),r6
    f800:	e0 fa 5b 06 	l.mul r7,r26,r11
    f804:	a8 6e 00 00 	l.ori r3,r14,0x0
    f808:	a8 98 00 00 	l.ori r4,r24,0x0
    f80c:	d4 01 38 04 	l.sw 4(r1),r7
    f810:	07 ff fb 70 	l.jal e5d0 <__umodsi3>
    f814:	d4 01 58 10 	l.sw 16(r1),r11
    f818:	b8 7e 00 50 	l.srli r3,r30,0x10
    f81c:	b9 6b 00 10 	l.slli r11,r11,0x10
    f820:	84 e1 00 04 	l.lwz r7,4(r1)
    f824:	84 a1 00 08 	l.lwz r5,8(r1)
    f828:	e1 63 58 04 	l.or r11,r3,r11
    f82c:	e4 a7 58 00 	l.sfleu r7,r11
    f830:	10 00 00 15 	l.bf f884 <__divdf3+0x70c>
    f834:	84 c1 00 00 	l.lwz r6,0(r1)
    f838:	e1 6b 90 00 	l.add r11,r11,r18
    f83c:	e4 47 58 00 	l.sfgtu r7,r11
    f840:	10 00 00 03 	l.bf f84c <__divdf3+0x6d4>
    f844:	9c 60 00 01 	l.addi r3,r0,1
    f848:	9c 60 00 00 	l.addi r3,r0,0
    f84c:	a4 63 00 ff 	l.andi r3,r3,0xff
    f850:	bc 03 00 00 	l.sfeqi r3,0
    f854:	10 00 01 0c 	l.bf fc84 <__divdf3+0xb0c>
    f858:	e4 b2 58 00 	l.sfleu r18,r11
    f85c:	10 00 00 03 	l.bf f868 <__divdf3+0x6f0>
    f860:	9c 60 00 01 	l.addi r3,r0,1
    f864:	9c 60 00 00 	l.addi r3,r0,0
    f868:	a4 63 00 ff 	l.andi r3,r3,0xff
    f86c:	bc 23 00 00 	l.sfnei r3,0
    f870:	0c 00 01 05 	l.bnf fc84 <__divdf3+0xb0c>
    f874:	84 61 00 10 	l.lwz r3,16(r1)
    f878:	e1 6b 90 00 	l.add r11,r11,r18
    f87c:	9c 63 ff fe 	l.addi r3,r3,-2
    f880:	d4 01 18 10 	l.sw 16(r1),r3
    f884:	e1 cb 38 02 	l.sub r14,r11,r7
    f888:	a8 98 00 00 	l.ori r4,r24,0x0
    f88c:	a8 6e 00 00 	l.ori r3,r14,0x0
    f890:	d4 01 28 08 	l.sw 8(r1),r5
    f894:	07 ff fa f7 	l.jal e470 <__udivsi3>
    f898:	d4 01 30 00 	l.sw 0(r1),r6
    f89c:	e3 5a 5b 06 	l.mul r26,r26,r11
    f8a0:	a8 98 00 00 	l.ori r4,r24,0x0
    f8a4:	a8 6e 00 00 	l.ori r3,r14,0x0
    f8a8:	07 ff fb 4a 	l.jal e5d0 <__umodsi3>
    f8ac:	d4 01 58 04 	l.sw 4(r1),r11
    f8b0:	b9 6b 00 10 	l.slli r11,r11,0x10
    f8b4:	a5 1e ff ff 	l.andi r8,r30,0xffff
    f8b8:	84 a1 00 08 	l.lwz r5,8(r1)
    f8bc:	e1 08 58 04 	l.or r8,r8,r11
    f8c0:	84 c1 00 00 	l.lwz r6,0(r1)
    f8c4:	e4 ba 40 00 	l.sfleu r26,r8
    f8c8:	10 00 00 14 	l.bf f918 <__divdf3+0x7a0>
    f8cc:	84 e1 00 04 	l.lwz r7,4(r1)
    f8d0:	e1 08 90 00 	l.add r8,r8,r18
    f8d4:	e4 5a 40 00 	l.sfgtu r26,r8
    f8d8:	10 00 00 03 	l.bf f8e4 <__divdf3+0x76c>
    f8dc:	9c 60 00 01 	l.addi r3,r0,1
    f8e0:	9c 60 00 00 	l.addi r3,r0,0
    f8e4:	a4 63 00 ff 	l.andi r3,r3,0xff
    f8e8:	bc 03 00 00 	l.sfeqi r3,0
    f8ec:	10 00 00 ea 	l.bf fc94 <__divdf3+0xb1c>
    f8f0:	e4 b2 40 00 	l.sfleu r18,r8
    f8f4:	10 00 00 03 	l.bf f900 <__divdf3+0x788>
    f8f8:	9c 60 00 01 	l.addi r3,r0,1
    f8fc:	9c 60 00 00 	l.addi r3,r0,0
    f900:	a4 63 00 ff 	l.andi r3,r3,0xff
    f904:	bc 23 00 00 	l.sfnei r3,0
    f908:	0c 00 00 e3 	l.bnf fc94 <__divdf3+0xb1c>
    f90c:	15 00 00 00 	l.nop 0x0
    f910:	9c e7 ff fe 	l.addi r7,r7,-2
    f914:	e1 08 90 00 	l.add r8,r8,r18
    f918:	84 81 00 10 	l.lwz r4,16(r1)
    f91c:	e3 48 d0 02 	l.sub r26,r8,r26
    f920:	bb c4 00 10 	l.slli r30,r4,0x10
    f924:	e3 de 38 04 	l.or r30,r30,r7
    f928:	b8 fe 00 50 	l.srli r7,r30,0x10
    f92c:	a4 7e ff ff 	l.andi r3,r30,0xffff
    f930:	e0 85 1b 06 	l.mul r4,r5,r3
    f934:	e0 a5 3b 06 	l.mul r5,r5,r7
    f938:	e0 63 b3 06 	l.mul r3,r3,r22
    f93c:	b9 04 00 50 	l.srli r8,r4,0x10
    f940:	e0 63 28 00 	l.add r3,r3,r5
    f944:	e0 68 18 00 	l.add r3,r8,r3
    f948:	e4 a5 18 00 	l.sfleu r5,r3
    f94c:	10 00 00 04 	l.bf f95c <__divdf3+0x7e4>
    f950:	e2 d6 3b 06 	l.mul r22,r22,r7
    f954:	18 a0 00 01 	l.movhi r5,0x1
    f958:	e2 d6 28 00 	l.add r22,r22,r5
    f95c:	b8 a3 00 50 	l.srli r5,r3,0x10
    f960:	b8 63 00 10 	l.slli r3,r3,0x10
    f964:	a4 84 ff ff 	l.andi r4,r4,0xffff
    f968:	e2 c5 b0 00 	l.add r22,r5,r22
    f96c:	e4 9a b0 00 	l.sfltu r26,r22
    f970:	10 00 00 0d 	l.bf f9a4 <__divdf3+0x82c>
    f974:	e0 63 20 00 	l.add r3,r3,r4
    f978:	e0 ba b0 05 	l.xor r5,r26,r22
    f97c:	e0 80 18 02 	l.sub r4,r0,r3
    f980:	e0 e0 28 02 	l.sub r7,r0,r5
    f984:	e0 84 18 04 	l.or r4,r4,r3
    f988:	e0 e7 28 04 	l.or r7,r7,r5
    f98c:	bd 87 00 00 	l.sfltsi r7,0
    f990:	10 00 00 8a 	l.bf fbb8 <__divdf3+0xa40>
    f994:	b8 84 00 5f 	l.srli r4,r4,0x1f
    f998:	bc 04 00 00 	l.sfeqi r4,0
    f99c:	10 00 00 87 	l.bf fbb8 <__divdf3+0xa40>
    f9a0:	15 00 00 00 	l.nop 0x0
    f9a4:	e3 5a 90 00 	l.add r26,r26,r18
    f9a8:	e4 b2 d0 00 	l.sfleu r18,r26
    f9ac:	10 00 00 5f 	l.bf fb28 <__divdf3+0x9b0>
    f9b0:	9d 1e ff ff 	l.addi r8,r30,-1
    f9b4:	e0 66 18 05 	l.xor r3,r6,r3
    f9b8:	e0 ba b0 05 	l.xor r5,r26,r22
    f9bc:	e0 c0 18 02 	l.sub r6,r0,r3
    f9c0:	e0 66 18 04 	l.or r3,r6,r3
    f9c4:	b8 83 00 5f 	l.srli r4,r3,0x1f
    f9c8:	e0 60 28 02 	l.sub r3,r0,r5
    f9cc:	e0 a3 28 04 	l.or r5,r3,r5
    f9d0:	bd 85 00 00 	l.sfltsi r5,0
    f9d4:	10 00 00 04 	l.bf f9e4 <__divdf3+0x86c>
    f9d8:	bc 04 00 00 	l.sfeqi r4,0
    f9dc:	10 00 00 04 	l.bf f9ec <__divdf3+0x874>
    f9e0:	9d d4 03 ff 	l.addi r14,r20,1023
    f9e4:	a9 08 00 01 	l.ori r8,r8,0x1
    f9e8:	9d d4 03 ff 	l.addi r14,r20,1023
    f9ec:	bd ae 00 00 	l.sflesi r14,0
    f9f0:	10 00 00 74 	l.bf fbc0 <__divdf3+0xa48>
    f9f4:	a4 68 00 07 	l.andi r3,r8,0x7
    f9f8:	bc 03 00 00 	l.sfeqi r3,0
    f9fc:	10 00 00 0b 	l.bf fa28 <__divdf3+0x8b0>
    fa00:	a4 68 00 0f 	l.andi r3,r8,0xf
    fa04:	bc 03 00 04 	l.sfeqi r3,4
    fa08:	10 00 00 08 	l.bf fa28 <__divdf3+0x8b0>
    fa0c:	9c 68 00 04 	l.addi r3,r8,4
    fa10:	e4 48 18 00 	l.sfgtu r8,r3
    fa14:	10 00 00 03 	l.bf fa20 <__divdf3+0x8a8>
    fa18:	9c 80 00 01 	l.addi r4,r0,1
    fa1c:	9c 80 00 00 	l.addi r4,r0,0
    fa20:	e0 42 20 00 	l.add r2,r2,r4
    fa24:	a9 03 00 00 	l.ori r8,r3,0x0
    fa28:	18 a0 01 00 	l.movhi r5,0x100
    fa2c:	e0 62 28 03 	l.and r3,r2,r5
    fa30:	bc 03 00 00 	l.sfeqi r3,0
    fa34:	10 00 00 07 	l.bf fa50 <__divdf3+0x8d8>
    fa38:	bd ae 07 fe 	l.sflesi r14,2046
    fa3c:	18 c0 fe ff 	l.movhi r6,0xfeff
    fa40:	9d d4 04 00 	l.addi r14,r20,1024
    fa44:	a8 c6 ff ff 	l.ori r6,r6,0xffff
    fa48:	e0 42 30 03 	l.and r2,r2,r6
    fa4c:	bd ae 07 fe 	l.sflesi r14,2046
    fa50:	0f ff fe 1b 	l.bnf f2bc <__divdf3+0x144>
    fa54:	a5 ce 07 ff 	l.andi r14,r14,0x7ff
    fa58:	b8 62 00 1d 	l.slli r3,r2,0x1d
    fa5c:	b9 08 00 43 	l.srli r8,r8,0x3
    fa60:	b8 42 00 43 	l.srli r2,r2,0x3
    fa64:	e2 c3 40 04 	l.or r22,r3,r8
    fa68:	18 60 00 0f 	l.movhi r3,0xf
    fa6c:	a4 bc 00 01 	l.andi r5,r28,0x1
    fa70:	a8 63 ff ff 	l.ori r3,r3,0xffff
    fa74:	03 ff fe 16 	l.j f2cc <__divdf3+0x154>
    fa78:	e0 42 18 03 	l.and r2,r2,r3
    fa7c:	9d 6b ff d8 	l.addi r11,r11,-40
    fa80:	9e c0 00 00 	l.addi r22,r0,0
    fa84:	03 ff fe 43 	l.j f390 <__divdf3+0x218>
    fa88:	e1 c4 58 08 	l.sll r14,r4,r11
    fa8c:	d4 01 20 0c 	l.sw 12(r1),r4
    fa90:	d4 01 28 08 	l.sw 8(r1),r5
    fa94:	04 00 07 4c 	l.jal 117c4 <__clzsi2>
    fa98:	d4 01 30 00 	l.sw 0(r1),r6
    fa9c:	84 c1 00 00 	l.lwz r6,0(r1)
    faa0:	9d 6b 00 20 	l.addi r11,r11,32
    faa4:	84 a1 00 08 	l.lwz r5,8(r1)
    faa8:	03 ff fe 30 	l.j f368 <__divdf3+0x1f0>
    faac:	84 81 00 0c 	l.lwz r4,12(r1)
    fab0:	9d 6b ff d8 	l.addi r11,r11,-40
    fab4:	9d 00 00 00 	l.addi r8,r0,0
    fab8:	03 ff fe 5b 	l.j f424 <__divdf3+0x2ac>
    fabc:	e0 46 58 08 	l.sll r2,r6,r11
    fac0:	d4 01 30 00 	l.sw 0(r1),r6
    fac4:	04 00 07 40 	l.jal 117c4 <__clzsi2>
    fac8:	d4 01 60 0c 	l.sw 12(r1),r12
    facc:	85 81 00 0c 	l.lwz r12,12(r1)
    fad0:	9d 6b 00 20 	l.addi r11,r11,32
    fad4:	03 ff fe 49 	l.j f3f8 <__divdf3+0x280>
    fad8:	84 c1 00 00 	l.lwz r6,0(r1)
    fadc:	e0 62 20 03 	l.and r3,r2,r4
    fae0:	bc 23 00 00 	l.sfnei r3,0
    fae4:	10 00 00 09 	l.bf fb08 <__divdf3+0x990>
    fae8:	18 c0 00 0f 	l.movhi r6,0xf
    faec:	e0 42 20 04 	l.or r2,r2,r4
    faf0:	a8 c6 ff ff 	l.ori r6,r6,0xffff
    faf4:	a8 ba 00 00 	l.ori r5,r26,0x0
    faf8:	e0 42 30 03 	l.and r2,r2,r6
    fafc:	aa c8 00 00 	l.ori r22,r8,0x0
    fb00:	03 ff fd f3 	l.j f2cc <__divdf3+0x154>
    fb04:	9d c0 07 ff 	l.addi r14,r0,2047
    fb08:	18 60 00 08 	l.movhi r3,0x8
    fb0c:	18 80 00 0f 	l.movhi r4,0xf
    fb10:	e0 4e 18 04 	l.or r2,r14,r3
    fb14:	a8 84 ff ff 	l.ori r4,r4,0xffff
    fb18:	a8 b8 00 00 	l.ori r5,r24,0x0
    fb1c:	e0 42 20 03 	l.and r2,r2,r4
    fb20:	03 ff fd eb 	l.j f2cc <__divdf3+0x154>
    fb24:	9d c0 07 ff 	l.addi r14,r0,2047
    fb28:	e4 56 d0 00 	l.sfgtu r22,r26
    fb2c:	10 00 00 10 	l.bf fb6c <__divdf3+0x9f4>
    fb30:	e0 86 30 00 	l.add r4,r6,r6
    fb34:	e0 b6 d0 05 	l.xor r5,r22,r26
    fb38:	e0 80 28 02 	l.sub r4,r0,r5
    fb3c:	e0 84 28 04 	l.or r4,r4,r5
    fb40:	bd 84 00 00 	l.sfltsi r4,0
    fb44:	10 00 00 76 	l.bf fd1c <__divdf3+0xba4>
    fb48:	e4 86 18 00 	l.sfltu r6,r3
    fb4c:	10 00 00 03 	l.bf fb58 <__divdf3+0x9e0>
    fb50:	9c 80 00 01 	l.addi r4,r0,1
    fb54:	9c 80 00 00 	l.addi r4,r0,0
    fb58:	a4 84 00 ff 	l.andi r4,r4,0xff
    fb5c:	bc 24 00 00 	l.sfnei r4,0
    fb60:	0c 00 00 6f 	l.bnf fd1c <__divdf3+0xba4>
    fb64:	15 00 00 00 	l.nop 0x0
    fb68:	e0 86 30 00 	l.add r4,r6,r6
    fb6c:	9d 1e ff fe 	l.addi r8,r30,-2
    fb70:	e4 46 20 00 	l.sfgtu r6,r4
    fb74:	10 00 00 03 	l.bf fb80 <__divdf3+0xa08>
    fb78:	9c a0 00 01 	l.addi r5,r0,1
    fb7c:	9c a0 00 00 	l.addi r5,r0,0
    fb80:	e0 63 20 05 	l.xor r3,r3,r4
    fb84:	e2 45 90 00 	l.add r18,r5,r18
    fb88:	e0 80 18 02 	l.sub r4,r0,r3
    fb8c:	e3 5a 90 00 	l.add r26,r26,r18
    fb90:	e0 64 18 04 	l.or r3,r4,r3
    fb94:	e0 ba b0 05 	l.xor r5,r26,r22
    fb98:	03 ff ff 8c 	l.j f9c8 <__divdf3+0x850>
    fb9c:	b8 83 00 5f 	l.srli r4,r3,0x1f
    fba0:	03 ff fe 8f 	l.j f5dc <__divdf3+0x464>
    fba4:	9f de ff ff 	l.addi r30,r30,-1
    fba8:	03 ff ff 08 	l.j f7c8 <__divdf3+0x650>
    fbac:	a8 5e 00 00 	l.ori r2,r30,0x0
    fbb0:	03 ff fe b1 	l.j f674 <__divdf3+0x4fc>
    fbb4:	9d ce ff ff 	l.addi r14,r14,-1
    fbb8:	03 ff ff 84 	l.j f9c8 <__divdf3+0x850>
    fbbc:	a9 1e 00 00 	l.ori r8,r30,0x0
    fbc0:	9c 60 00 01 	l.addi r3,r0,1
    fbc4:	e0 63 70 02 	l.sub r3,r3,r14
    fbc8:	bd a3 00 38 	l.sflesi r3,56
    fbcc:	10 00 00 09 	l.bf fbf0 <__divdf3+0xa78>
    fbd0:	bd 43 00 1f 	l.sfgtsi r3,31
    fbd4:	9d c0 00 00 	l.addi r14,r0,0
    fbd8:	a4 bc 00 01 	l.andi r5,r28,0x1
    fbdc:	a8 4e 00 00 	l.ori r2,r14,0x0
    fbe0:	03 ff fd bb 	l.j f2cc <__divdf3+0x154>
    fbe4:	aa ce 00 00 	l.ori r22,r14,0x0
    fbe8:	03 ff ff 80 	l.j f9e8 <__divdf3+0x870>
    fbec:	9d 00 ff ff 	l.addi r8,r0,-1
    fbf0:	10 00 00 2b 	l.bf fc9c <__divdf3+0xb24>
    fbf4:	9c 80 ff e1 	l.addi r4,r0,-31
    fbf8:	9c 80 00 20 	l.addi r4,r0,32
    fbfc:	e0 a8 18 48 	l.srl r5,r8,r3
    fc00:	e0 84 18 02 	l.sub r4,r4,r3
    fc04:	e0 62 18 48 	l.srl r3,r2,r3
    fc08:	e1 08 20 08 	l.sll r8,r8,r4
    fc0c:	e0 82 20 08 	l.sll r4,r2,r4
    fc10:	e0 40 40 02 	l.sub r2,r0,r8
    fc14:	e0 84 28 04 	l.or r4,r4,r5
    fc18:	e1 02 40 04 	l.or r8,r2,r8
    fc1c:	b8 48 00 5f 	l.srli r2,r8,0x1f
    fc20:	e0 a4 10 04 	l.or r5,r4,r2
    fc24:	a4 45 00 07 	l.andi r2,r5,0x7
    fc28:	bc 22 00 00 	l.sfnei r2,0
    fc2c:	0c 00 00 0d 	l.bnf fc60 <__divdf3+0xae8>
    fc30:	18 80 00 80 	l.movhi r4,0x80
    fc34:	a4 45 00 0f 	l.andi r2,r5,0xf
    fc38:	bc 02 00 04 	l.sfeqi r2,4
    fc3c:	10 00 00 08 	l.bf fc5c <__divdf3+0xae4>
    fc40:	a8 85 00 00 	l.ori r4,r5,0x0
    fc44:	9c a4 00 04 	l.addi r5,r4,4
    fc48:	e4 85 20 00 	l.sfltu r5,r4
    fc4c:	10 00 00 03 	l.bf fc58 <__divdf3+0xae0>
    fc50:	9c 40 00 01 	l.addi r2,r0,1
    fc54:	9c 40 00 00 	l.addi r2,r0,0
    fc58:	e0 63 10 00 	l.add r3,r3,r2
    fc5c:	18 80 00 80 	l.movhi r4,0x80
    fc60:	e0 43 20 03 	l.and r2,r3,r4
    fc64:	bc 02 00 00 	l.sfeqi r2,0
    fc68:	10 00 00 23 	l.bf fcf4 <__divdf3+0xb7c>
    fc6c:	a8 85 00 00 	l.ori r4,r5,0x0
    fc70:	9c 40 00 00 	l.addi r2,r0,0
    fc74:	a4 bc 00 01 	l.andi r5,r28,0x1
    fc78:	9d c0 00 01 	l.addi r14,r0,1
    fc7c:	03 ff fd 94 	l.j f2cc <__divdf3+0x154>
    fc80:	aa c2 00 00 	l.ori r22,r2,0x0
    fc84:	84 81 00 10 	l.lwz r4,16(r1)
    fc88:	9c 84 ff ff 	l.addi r4,r4,-1
    fc8c:	03 ff fe fe 	l.j f884 <__divdf3+0x70c>
    fc90:	d4 01 20 10 	l.sw 16(r1),r4
    fc94:	03 ff ff 21 	l.j f918 <__divdf3+0x7a0>
    fc98:	9c e7 ff ff 	l.addi r7,r7,-1
    fc9c:	bc 03 00 20 	l.sfeqi r3,32
    fca0:	e0 84 70 02 	l.sub r4,r4,r14
    fca4:	10 00 00 23 	l.bf fd30 <__divdf3+0xbb8>
    fca8:	e0 82 20 48 	l.srl r4,r2,r4
    fcac:	9c a0 00 40 	l.addi r5,r0,64
    fcb0:	e0 65 18 02 	l.sub r3,r5,r3
    fcb4:	e0 42 18 08 	l.sll r2,r2,r3
    fcb8:	e1 02 40 04 	l.or r8,r2,r8
    fcbc:	e0 40 40 02 	l.sub r2,r0,r8
    fcc0:	e1 02 40 04 	l.or r8,r2,r8
    fcc4:	b8 48 00 5f 	l.srli r2,r8,0x1f
    fcc8:	e0 84 10 04 	l.or r4,r4,r2
    fccc:	a4 64 00 07 	l.andi r3,r4,0x7
    fcd0:	bc 23 00 00 	l.sfnei r3,0
    fcd4:	0c 00 00 0d 	l.bnf fd08 <__divdf3+0xb90>
    fcd8:	a8 43 00 00 	l.ori r2,r3,0x0
    fcdc:	a4 44 00 0f 	l.andi r2,r4,0xf
    fce0:	9c 60 00 00 	l.addi r3,r0,0
    fce4:	bc 22 00 04 	l.sfnei r2,4
    fce8:	13 ff ff d7 	l.bf fc44 <__divdf3+0xacc>
    fcec:	a8 a4 00 00 	l.ori r5,r4,0x0
    fcf0:	a8 85 00 00 	l.ori r4,r5,0x0
    fcf4:	18 a0 00 0f 	l.movhi r5,0xf
    fcf8:	b8 43 00 43 	l.srli r2,r3,0x3
    fcfc:	a8 a5 ff ff 	l.ori r5,r5,0xffff
    fd00:	b8 63 00 1d 	l.slli r3,r3,0x1d
    fd04:	e0 42 28 03 	l.and r2,r2,r5
    fd08:	b8 84 00 43 	l.srli r4,r4,0x3
    fd0c:	a4 bc 00 01 	l.andi r5,r28,0x1
    fd10:	9d c0 00 00 	l.addi r14,r0,0
    fd14:	03 ff fd 6e 	l.j f2cc <__divdf3+0x154>
    fd18:	e2 c4 18 04 	l.or r22,r4,r3
    fd1c:	e0 66 18 05 	l.xor r3,r6,r3
    fd20:	e0 80 18 02 	l.sub r4,r0,r3
    fd24:	e0 64 18 04 	l.or r3,r4,r3
    fd28:	03 ff ff 28 	l.j f9c8 <__divdf3+0x850>
    fd2c:	b8 83 00 5f 	l.srli r4,r3,0x1f
    fd30:	03 ff ff e2 	l.j fcb8 <__divdf3+0xb40>
    fd34:	9c 40 00 00 	l.addi r2,r0,0
    fd38:	18 c0 00 08 	l.movhi r6,0x8
    fd3c:	18 60 00 0f 	l.movhi r3,0xf
    fd40:	e0 42 30 04 	l.or r2,r2,r6
    fd44:	a8 63 ff ff 	l.ori r3,r3,0xffff
    fd48:	a8 be 00 00 	l.ori r5,r30,0x0
    fd4c:	e0 42 18 03 	l.and r2,r2,r3
    fd50:	aa c8 00 00 	l.ori r22,r8,0x0
    fd54:	03 ff fd 5e 	l.j f2cc <__divdf3+0x154>
    fd58:	9d c0 07 ff 	l.addi r14,r0,2047

0000fd5c <__eqdf2>:
    fd5c:	d7 e1 17 fc 	l.sw -4(r1),r2
    fd60:	18 40 00 0f 	l.movhi r2,0xf
    fd64:	b8 e3 00 54 	l.srli r7,r3,0x14
    fd68:	a8 42 ff ff 	l.ori r2,r2,0xffff
    fd6c:	b9 05 00 54 	l.srli r8,r5,0x14
    fd70:	e1 83 10 03 	l.and r12,r3,r2
    fd74:	a4 e7 07 ff 	l.andi r7,r7,0x7ff
    fd78:	18 40 00 0f 	l.movhi r2,0xf
    fd7c:	d7 e1 0f f8 	l.sw -8(r1),r1
    fd80:	a8 42 ff ff 	l.ori r2,r2,0xffff
    fd84:	bc 27 07 ff 	l.sfnei r7,2047
    fd88:	e1 a5 10 03 	l.and r13,r5,r2
    fd8c:	9c 21 ff f8 	l.addi r1,r1,-8
    fd90:	b8 63 00 5f 	l.srli r3,r3,0x1f
    fd94:	a5 08 07 ff 	l.andi r8,r8,0x7ff
    fd98:	0c 00 00 1e 	l.bnf fe10 <__eqdf2+0xb4>
    fd9c:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    fda0:	bc 28 07 ff 	l.sfnei r8,2047
    fda4:	0c 00 00 23 	l.bnf fe30 <__eqdf2+0xd4>
    fda8:	e1 ed 30 04 	l.or r15,r13,r6
    fdac:	e4 27 40 00 	l.sfne r7,r8
    fdb0:	0c 00 00 06 	l.bnf fdc8 <__eqdf2+0x6c>
    fdb4:	9d 60 00 01 	l.addi r11,r0,1
    fdb8:	9c 21 00 08 	l.addi r1,r1,8
    fdbc:	84 21 ff f8 	l.lwz r1,-8(r1)
    fdc0:	44 00 48 00 	l.jr r9
    fdc4:	84 41 ff fc 	l.lwz r2,-4(r1)
    fdc8:	e4 2c 68 00 	l.sfne r12,r13
    fdcc:	10 00 00 20 	l.bf fe4c <__eqdf2+0xf0>
    fdd0:	e0 c6 20 05 	l.xor r6,r6,r4
    fdd4:	e1 00 30 02 	l.sub r8,r0,r6
    fdd8:	e0 c8 30 04 	l.or r6,r8,r6
    fddc:	b8 c6 00 5f 	l.srli r6,r6,0x1f
    fde0:	bc 26 00 00 	l.sfnei r6,0
    fde4:	10 00 00 1a 	l.bf fe4c <__eqdf2+0xf0>
    fde8:	e4 03 28 00 	l.sfeq r3,r5
    fdec:	10 00 00 1d 	l.bf fe60 <__eqdf2+0x104>
    fdf0:	bc 27 00 00 	l.sfnei r7,0
    fdf4:	13 ff ff f1 	l.bf fdb8 <__eqdf2+0x5c>
    fdf8:	15 00 00 00 	l.nop 0x0
    fdfc:	e0 8c 20 04 	l.or r4,r12,r4
    fe00:	e1 60 20 02 	l.sub r11,r0,r4
    fe04:	e0 8b 20 04 	l.or r4,r11,r4
    fe08:	03 ff ff ec 	l.j fdb8 <__eqdf2+0x5c>
    fe0c:	b9 64 00 5f 	l.srli r11,r4,0x1f
    fe10:	e1 ec 20 04 	l.or r15,r12,r4
    fe14:	bc 2f 00 00 	l.sfnei r15,0
    fe18:	0f ff ff e2 	l.bnf fda0 <__eqdf2+0x44>
    fe1c:	9d 60 00 01 	l.addi r11,r0,1
    fe20:	9c 21 00 08 	l.addi r1,r1,8
    fe24:	84 21 ff f8 	l.lwz r1,-8(r1)
    fe28:	44 00 48 00 	l.jr r9
    fe2c:	84 41 ff fc 	l.lwz r2,-4(r1)
    fe30:	bc 2f 00 00 	l.sfnei r15,0
    fe34:	0f ff ff de 	l.bnf fdac <__eqdf2+0x50>
    fe38:	9d 60 00 01 	l.addi r11,r0,1
    fe3c:	9c 21 00 08 	l.addi r1,r1,8
    fe40:	84 21 ff f8 	l.lwz r1,-8(r1)
    fe44:	44 00 48 00 	l.jr r9
    fe48:	84 41 ff fc 	l.lwz r2,-4(r1)
    fe4c:	9c 21 00 08 	l.addi r1,r1,8
    fe50:	9d 60 00 01 	l.addi r11,r0,1
    fe54:	84 21 ff f8 	l.lwz r1,-8(r1)
    fe58:	44 00 48 00 	l.jr r9
    fe5c:	84 41 ff fc 	l.lwz r2,-4(r1)
    fe60:	03 ff ff d6 	l.j fdb8 <__eqdf2+0x5c>
    fe64:	a9 66 00 00 	l.ori r11,r6,0x0

0000fe68 <__gedf2>:
    fe68:	d7 e1 17 fc 	l.sw -4(r1),r2
    fe6c:	18 40 00 0f 	l.movhi r2,0xf
    fe70:	b8 e3 00 54 	l.srli r7,r3,0x14
    fe74:	a8 42 ff ff 	l.ori r2,r2,0xffff
    fe78:	b9 65 00 54 	l.srli r11,r5,0x14
    fe7c:	e1 83 10 03 	l.and r12,r3,r2
    fe80:	a4 e7 07 ff 	l.andi r7,r7,0x7ff
    fe84:	18 40 00 0f 	l.movhi r2,0xf
    fe88:	d7 e1 0f f8 	l.sw -8(r1),r1
    fe8c:	a8 42 ff ff 	l.ori r2,r2,0xffff
    fe90:	bc 27 07 ff 	l.sfnei r7,2047
    fe94:	e1 a5 10 03 	l.and r13,r5,r2
    fe98:	9c 21 ff f8 	l.addi r1,r1,-8
    fe9c:	b8 63 00 5f 	l.srli r3,r3,0x1f
    fea0:	a5 6b 07 ff 	l.andi r11,r11,0x7ff
    fea4:	0c 00 00 25 	l.bnf ff38 <__gedf2+0xd0>
    fea8:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    feac:	bc 2b 07 ff 	l.sfnei r11,2047
    feb0:	0c 00 00 28 	l.bnf ff50 <__gedf2+0xe8>
    feb4:	e1 0d 30 04 	l.or r8,r13,r6
    feb8:	bc 27 00 00 	l.sfnei r7,0
    febc:	10 00 00 12 	l.bf ff04 <__gedf2+0x9c>
    fec0:	bc 2b 00 00 	l.sfnei r11,0
    fec4:	e1 ec 20 04 	l.or r15,r12,r4
    fec8:	e1 00 78 02 	l.sub r8,r0,r15
    fecc:	e1 08 78 04 	l.or r8,r8,r15
    fed0:	ad 08 ff ff 	l.xori r8,r8,-1
    fed4:	0c 00 00 24 	l.bnf ff64 <__gedf2+0xfc>
    fed8:	b9 08 00 5f 	l.srli r8,r8,0x1f
    fedc:	bc 28 00 00 	l.sfnei r8,0
    fee0:	0c 00 00 0e 	l.bnf ff18 <__gedf2+0xb0>
    fee4:	bc 05 00 00 	l.sfeqi r5,0
    fee8:	10 00 00 03 	l.bf fef4 <__gedf2+0x8c>
    feec:	9d 60 ff ff 	l.addi r11,r0,-1
    fef0:	9d 60 00 01 	l.addi r11,r0,1
    fef4:	9c 21 00 08 	l.addi r1,r1,8
    fef8:	84 21 ff f8 	l.lwz r1,-8(r1)
    fefc:	44 00 48 00 	l.jr r9
    ff00:	84 41 ff fc 	l.lwz r2,-4(r1)
    ff04:	10 00 00 05 	l.bf ff18 <__gedf2+0xb0>
    ff08:	e1 0d 30 04 	l.or r8,r13,r6
    ff0c:	bc 08 00 00 	l.sfeqi r8,0
    ff10:	10 00 00 06 	l.bf ff28 <__gedf2+0xc0>
    ff14:	bc 03 00 00 	l.sfeqi r3,0
    ff18:	e4 03 28 00 	l.sfeq r3,r5
    ff1c:	10 00 00 1c 	l.bf ff8c <__gedf2+0x124>
    ff20:	e5 a7 58 00 	l.sfles r7,r11
    ff24:	bc 03 00 00 	l.sfeqi r3,0
    ff28:	13 ff ff f3 	l.bf fef4 <__gedf2+0x8c>
    ff2c:	9d 60 00 01 	l.addi r11,r0,1
    ff30:	03 ff ff f1 	l.j fef4 <__gedf2+0x8c>
    ff34:	9d 60 ff ff 	l.addi r11,r0,-1
    ff38:	e1 0c 20 04 	l.or r8,r12,r4
    ff3c:	bc 28 00 00 	l.sfnei r8,0
    ff40:	0f ff ff dc 	l.bnf feb0 <__gedf2+0x48>
    ff44:	bc 2b 07 ff 	l.sfnei r11,2047
    ff48:	03 ff ff eb 	l.j fef4 <__gedf2+0x8c>
    ff4c:	9d 60 ff fe 	l.addi r11,r0,-2
    ff50:	bc 28 00 00 	l.sfnei r8,0
    ff54:	0f ff ff da 	l.bnf febc <__gedf2+0x54>
    ff58:	bc 27 00 00 	l.sfnei r7,0
    ff5c:	03 ff ff e6 	l.j fef4 <__gedf2+0x8c>
    ff60:	9d 60 ff fe 	l.addi r11,r0,-2
    ff64:	e2 2d 30 04 	l.or r17,r13,r6
    ff68:	bc 31 00 00 	l.sfnei r17,0
    ff6c:	13 ff ff dc 	l.bf fedc <__gedf2+0x74>
    ff70:	bc 0f 00 00 	l.sfeqi r15,0
    ff74:	0f ff ff ec 	l.bnf ff24 <__gedf2+0xbc>
    ff78:	15 00 00 00 	l.nop 0x0
    ff7c:	9c 21 00 08 	l.addi r1,r1,8
    ff80:	84 21 ff f8 	l.lwz r1,-8(r1)
    ff84:	44 00 48 00 	l.jr r9
    ff88:	84 41 ff fc 	l.lwz r2,-4(r1)
    ff8c:	0f ff ff e7 	l.bnf ff28 <__gedf2+0xc0>
    ff90:	bc 03 00 00 	l.sfeqi r3,0
    ff94:	e5 67 58 00 	l.sfges r7,r11
    ff98:	0c 00 00 21 	l.bnf 1001c <__gedf2+0x1b4>
    ff9c:	bc 03 00 00 	l.sfeqi r3,0
    ffa0:	e4 4c 68 00 	l.sfgtu r12,r13
    ffa4:	13 ff ff e1 	l.bf ff28 <__gedf2+0xc0>
    ffa8:	bc 03 00 00 	l.sfeqi r3,0
    ffac:	e0 ac 68 05 	l.xor r5,r12,r13
    ffb0:	e4 44 30 00 	l.sfgtu r4,r6
    ffb4:	e1 00 28 02 	l.sub r8,r0,r5
    ffb8:	9c e0 00 01 	l.addi r7,r0,1
    ffbc:	e0 a8 28 04 	l.or r5,r8,r5
    ffc0:	ac a5 ff ff 	l.xori r5,r5,-1
    ffc4:	10 00 00 03 	l.bf ffd0 <__gedf2+0x168>
    ffc8:	b8 a5 00 5f 	l.srli r5,r5,0x1f
    ffcc:	9c e0 00 00 	l.addi r7,r0,0
    ffd0:	a4 e7 00 ff 	l.andi r7,r7,0xff
    ffd4:	bc 07 00 00 	l.sfeqi r7,0
    ffd8:	10 00 00 04 	l.bf ffe8 <__gedf2+0x180>
    ffdc:	bc 05 00 00 	l.sfeqi r5,0
    ffe0:	0f ff ff d2 	l.bnf ff28 <__gedf2+0xc0>
    ffe4:	bc 03 00 00 	l.sfeqi r3,0
    ffe8:	e4 8c 68 00 	l.sfltu r12,r13
    ffec:	10 00 00 0c 	l.bf 1001c <__gedf2+0x1b4>
    fff0:	bc 03 00 00 	l.sfeqi r3,0
    fff4:	e4 84 30 00 	l.sfltu r4,r6
    fff8:	10 00 00 03 	l.bf 10004 <__gedf2+0x19c>
    fffc:	9c 80 00 01 	l.addi r4,r0,1
   10000:	9c 80 00 00 	l.addi r4,r0,0
   10004:	a4 84 00 ff 	l.andi r4,r4,0xff
   10008:	bc 04 00 00 	l.sfeqi r4,0
   1000c:	10 00 00 08 	l.bf 1002c <__gedf2+0x1c4>
   10010:	bc 05 00 00 	l.sfeqi r5,0
   10014:	10 00 00 06 	l.bf 1002c <__gedf2+0x1c4>
   10018:	bc 03 00 00 	l.sfeqi r3,0
   1001c:	0f ff ff b5 	l.bnf fef0 <__gedf2+0x88>
   10020:	9d 60 ff ff 	l.addi r11,r0,-1
   10024:	03 ff ff b5 	l.j fef8 <__gedf2+0x90>
   10028:	9c 21 00 08 	l.addi r1,r1,8
   1002c:	03 ff ff b2 	l.j fef4 <__gedf2+0x8c>
   10030:	9d 60 00 00 	l.addi r11,r0,0

00010034 <__ledf2>:
   10034:	d7 e1 17 fc 	l.sw -4(r1),r2
   10038:	18 40 00 0f 	l.movhi r2,0xf
   1003c:	b8 e3 00 54 	l.srli r7,r3,0x14
   10040:	a8 42 ff ff 	l.ori r2,r2,0xffff
   10044:	b9 05 00 54 	l.srli r8,r5,0x14
   10048:	e1 83 10 03 	l.and r12,r3,r2
   1004c:	a4 e7 07 ff 	l.andi r7,r7,0x7ff
   10050:	18 40 00 0f 	l.movhi r2,0xf
   10054:	d7 e1 0f f8 	l.sw -8(r1),r1
   10058:	a8 42 ff ff 	l.ori r2,r2,0xffff
   1005c:	bc 27 07 ff 	l.sfnei r7,2047
   10060:	e1 a5 10 03 	l.and r13,r5,r2
   10064:	9c 21 ff f8 	l.addi r1,r1,-8
   10068:	b8 63 00 5f 	l.srli r3,r3,0x1f
   1006c:	a5 08 07 ff 	l.andi r8,r8,0x7ff
   10070:	0c 00 00 25 	l.bnf 10104 <__ledf2+0xd0>
   10074:	b8 a5 00 5f 	l.srli r5,r5,0x1f
   10078:	bc 28 07 ff 	l.sfnei r8,2047
   1007c:	0c 00 00 2a 	l.bnf 10124 <__ledf2+0xf0>
   10080:	e1 ed 30 04 	l.or r15,r13,r6
   10084:	bc 27 00 00 	l.sfnei r7,0
   10088:	10 00 00 12 	l.bf 100d0 <__ledf2+0x9c>
   1008c:	bc 28 00 00 	l.sfnei r8,0
   10090:	e1 ec 20 04 	l.or r15,r12,r4
   10094:	e1 60 78 02 	l.sub r11,r0,r15
   10098:	e1 6b 78 04 	l.or r11,r11,r15
   1009c:	ad 6b ff ff 	l.xori r11,r11,-1
   100a0:	0c 00 00 28 	l.bnf 10140 <__ledf2+0x10c>
   100a4:	b9 6b 00 5f 	l.srli r11,r11,0x1f
   100a8:	bc 2b 00 00 	l.sfnei r11,0
   100ac:	0c 00 00 0e 	l.bnf 100e4 <__ledf2+0xb0>
   100b0:	bc 05 00 00 	l.sfeqi r5,0
   100b4:	10 00 00 03 	l.bf 100c0 <__ledf2+0x8c>
   100b8:	9d 60 ff ff 	l.addi r11,r0,-1
   100bc:	9d 60 00 01 	l.addi r11,r0,1
   100c0:	9c 21 00 08 	l.addi r1,r1,8
   100c4:	84 21 ff f8 	l.lwz r1,-8(r1)
   100c8:	44 00 48 00 	l.jr r9
   100cc:	84 41 ff fc 	l.lwz r2,-4(r1)
   100d0:	10 00 00 05 	l.bf 100e4 <__ledf2+0xb0>
   100d4:	e1 6d 30 04 	l.or r11,r13,r6
   100d8:	bc 0b 00 00 	l.sfeqi r11,0
   100dc:	10 00 00 06 	l.bf 100f4 <__ledf2+0xc0>
   100e0:	bc 03 00 00 	l.sfeqi r3,0
   100e4:	e4 03 28 00 	l.sfeq r3,r5
   100e8:	10 00 00 20 	l.bf 10168 <__ledf2+0x134>
   100ec:	e5 a7 40 00 	l.sfles r7,r8
   100f0:	bc 03 00 00 	l.sfeqi r3,0
   100f4:	13 ff ff f3 	l.bf 100c0 <__ledf2+0x8c>
   100f8:	9d 60 00 01 	l.addi r11,r0,1
   100fc:	03 ff ff f1 	l.j 100c0 <__ledf2+0x8c>
   10100:	9d 60 ff ff 	l.addi r11,r0,-1
   10104:	e1 ec 20 04 	l.or r15,r12,r4
   10108:	bc 2f 00 00 	l.sfnei r15,0
   1010c:	0f ff ff db 	l.bnf 10078 <__ledf2+0x44>
   10110:	9d 60 00 02 	l.addi r11,r0,2
   10114:	9c 21 00 08 	l.addi r1,r1,8
   10118:	84 21 ff f8 	l.lwz r1,-8(r1)
   1011c:	44 00 48 00 	l.jr r9
   10120:	84 41 ff fc 	l.lwz r2,-4(r1)
   10124:	bc 2f 00 00 	l.sfnei r15,0
   10128:	0f ff ff d7 	l.bnf 10084 <__ledf2+0x50>
   1012c:	9d 60 00 02 	l.addi r11,r0,2
   10130:	9c 21 00 08 	l.addi r1,r1,8
   10134:	84 21 ff f8 	l.lwz r1,-8(r1)
   10138:	44 00 48 00 	l.jr r9
   1013c:	84 41 ff fc 	l.lwz r2,-4(r1)
   10140:	e2 2d 30 04 	l.or r17,r13,r6
   10144:	bc 31 00 00 	l.sfnei r17,0
   10148:	13 ff ff d8 	l.bf 100a8 <__ledf2+0x74>
   1014c:	bc 0f 00 00 	l.sfeqi r15,0
   10150:	0f ff ff e8 	l.bnf 100f0 <__ledf2+0xbc>
   10154:	a9 68 00 00 	l.ori r11,r8,0x0
   10158:	9c 21 00 08 	l.addi r1,r1,8
   1015c:	84 21 ff f8 	l.lwz r1,-8(r1)
   10160:	44 00 48 00 	l.jr r9
   10164:	84 41 ff fc 	l.lwz r2,-4(r1)
   10168:	0f ff ff e3 	l.bnf 100f4 <__ledf2+0xc0>
   1016c:	bc 03 00 00 	l.sfeqi r3,0
   10170:	e5 67 40 00 	l.sfges r7,r8
   10174:	0c 00 00 21 	l.bnf 101f8 <__ledf2+0x1c4>
   10178:	bc 03 00 00 	l.sfeqi r3,0
   1017c:	e4 4c 68 00 	l.sfgtu r12,r13
   10180:	13 ff ff dd 	l.bf 100f4 <__ledf2+0xc0>
   10184:	bc 03 00 00 	l.sfeqi r3,0
   10188:	e0 ac 68 05 	l.xor r5,r12,r13
   1018c:	e4 44 30 00 	l.sfgtu r4,r6
   10190:	e1 00 28 02 	l.sub r8,r0,r5
   10194:	9c e0 00 01 	l.addi r7,r0,1
   10198:	e0 a8 28 04 	l.or r5,r8,r5
   1019c:	ac a5 ff ff 	l.xori r5,r5,-1
   101a0:	10 00 00 03 	l.bf 101ac <__ledf2+0x178>
   101a4:	b8 a5 00 5f 	l.srli r5,r5,0x1f
   101a8:	9c e0 00 00 	l.addi r7,r0,0
   101ac:	a4 e7 00 ff 	l.andi r7,r7,0xff
   101b0:	bc 07 00 00 	l.sfeqi r7,0
   101b4:	10 00 00 04 	l.bf 101c4 <__ledf2+0x190>
   101b8:	bc 05 00 00 	l.sfeqi r5,0
   101bc:	0f ff ff ce 	l.bnf 100f4 <__ledf2+0xc0>
   101c0:	bc 03 00 00 	l.sfeqi r3,0
   101c4:	e4 8c 68 00 	l.sfltu r12,r13
   101c8:	10 00 00 0c 	l.bf 101f8 <__ledf2+0x1c4>
   101cc:	bc 03 00 00 	l.sfeqi r3,0
   101d0:	e4 84 30 00 	l.sfltu r4,r6
   101d4:	10 00 00 03 	l.bf 101e0 <__ledf2+0x1ac>
   101d8:	9c 80 00 01 	l.addi r4,r0,1
   101dc:	9c 80 00 00 	l.addi r4,r0,0
   101e0:	a4 84 00 ff 	l.andi r4,r4,0xff
   101e4:	bc 04 00 00 	l.sfeqi r4,0
   101e8:	10 00 00 08 	l.bf 10208 <__ledf2+0x1d4>
   101ec:	bc 05 00 00 	l.sfeqi r5,0
   101f0:	10 00 00 06 	l.bf 10208 <__ledf2+0x1d4>
   101f4:	bc 03 00 00 	l.sfeqi r3,0
   101f8:	0f ff ff b1 	l.bnf 100bc <__ledf2+0x88>
   101fc:	9d 60 ff ff 	l.addi r11,r0,-1
   10200:	03 ff ff b1 	l.j 100c4 <__ledf2+0x90>
   10204:	9c 21 00 08 	l.addi r1,r1,8
   10208:	03 ff ff ae 	l.j 100c0 <__ledf2+0x8c>
   1020c:	9d 60 00 00 	l.addi r11,r0,0

00010210 <__muldf3>:
   10210:	d7 e1 97 e4 	l.sw -28(r1),r18
   10214:	ba 43 00 54 	l.srli r18,r3,0x14
   10218:	d7 e1 17 dc 	l.sw -36(r1),r2
   1021c:	18 40 00 0f 	l.movhi r2,0xf
   10220:	a6 52 07 ff 	l.andi r18,r18,0x7ff
   10224:	d7 e1 a7 e8 	l.sw -24(r1),r20
   10228:	d7 e1 c7 f0 	l.sw -16(r1),r24
   1022c:	d7 e1 d7 f4 	l.sw -12(r1),r26
   10230:	d7 e1 4f fc 	l.sw -4(r1),r9
   10234:	d7 e1 0f d8 	l.sw -40(r1),r1
   10238:	d7 e1 77 e0 	l.sw -32(r1),r14
   1023c:	d7 e1 b7 ec 	l.sw -20(r1),r22
   10240:	d7 e1 e7 f8 	l.sw -8(r1),r28
   10244:	a8 42 ff ff 	l.ori r2,r2,0xffff
   10248:	bc 12 00 00 	l.sfeqi r18,0
   1024c:	9c 21 ff cc 	l.addi r1,r1,-52
   10250:	ab 04 00 00 	l.ori r24,r4,0x0
   10254:	e3 43 10 03 	l.and r26,r3,r2
   10258:	10 00 00 59 	l.bf 103bc <__muldf3+0x1ac>
   1025c:	ba 83 00 5f 	l.srli r20,r3,0x1f
   10260:	bc 12 07 ff 	l.sfeqi r18,2047
   10264:	10 00 00 2a 	l.bf 1030c <__muldf3+0xfc>
   10268:	18 60 00 10 	l.movhi r3,0x10
   1026c:	9d c0 00 00 	l.addi r14,r0,0
   10270:	e0 5a 18 04 	l.or r2,r26,r3
   10274:	bb 44 00 5d 	l.srli r26,r4,0x1d
   10278:	b8 42 00 03 	l.slli r2,r2,0x3
   1027c:	bb 04 00 03 	l.slli r24,r4,0x3
   10280:	9e 52 fc 01 	l.addi r18,r18,-1023
   10284:	e3 5a 10 04 	l.or r26,r26,r2
   10288:	ab 8e 00 00 	l.ori r28,r14,0x0
   1028c:	b8 e5 00 54 	l.srli r7,r5,0x14
   10290:	18 80 00 0f 	l.movhi r4,0xf
   10294:	a9 06 00 00 	l.ori r8,r6,0x0
   10298:	a4 e7 07 ff 	l.andi r7,r7,0x7ff
   1029c:	a8 84 ff ff 	l.ori r4,r4,0xffff
   102a0:	bc 07 00 00 	l.sfeqi r7,0
   102a4:	e0 45 20 03 	l.and r2,r5,r4
   102a8:	10 00 00 6c 	l.bf 10458 <__muldf3+0x248>
   102ac:	ba c5 00 5f 	l.srli r22,r5,0x1f
   102b0:	bc 07 07 ff 	l.sfeqi r7,2047
   102b4:	10 00 00 61 	l.bf 10438 <__muldf3+0x228>
   102b8:	18 a0 00 10 	l.movhi r5,0x10
   102bc:	b9 06 00 03 	l.slli r8,r6,0x3
   102c0:	e1 62 28 04 	l.or r11,r2,r5
   102c4:	b8 46 00 5d 	l.srli r2,r6,0x1d
   102c8:	b9 6b 00 03 	l.slli r11,r11,0x3
   102cc:	9c e7 fc 01 	l.addi r7,r7,-1023
   102d0:	9c 60 00 00 	l.addi r3,r0,0
   102d4:	e0 42 58 04 	l.or r2,r2,r11
   102d8:	e0 83 70 04 	l.or r4,r3,r14
   102dc:	e2 52 38 00 	l.add r18,r18,r7
   102e0:	bc 44 00 0f 	l.sfgtui r4,15
   102e4:	e0 d4 b0 05 	l.xor r6,r20,r22
   102e8:	10 00 00 94 	l.bf 10538 <__muldf3+0x328>
   102ec:	9c f2 00 01 	l.addi r7,r18,1
   102f0:	19 60 00 01 	l.movhi r11,0x1
   102f4:	b8 84 00 02 	l.slli r4,r4,0x2
   102f8:	a9 6b 1e ac 	l.ori r11,r11,0x1eac
   102fc:	e0 84 58 00 	l.add r4,r4,r11
   10300:	84 84 00 00 	l.lwz r4,0(r4)
   10304:	44 00 20 00 	l.jr r4
   10308:	15 00 00 00 	l.nop 0x0
   1030c:	e0 9a 20 04 	l.or r4,r26,r4
   10310:	bc 04 00 00 	l.sfeqi r4,0
   10314:	0c 00 00 77 	l.bnf 104f0 <__muldf3+0x2e0>
   10318:	15 00 00 00 	l.nop 0x0
   1031c:	ab 44 00 00 	l.ori r26,r4,0x0
   10320:	9d c0 00 08 	l.addi r14,r0,8
   10324:	ab 04 00 00 	l.ori r24,r4,0x0
   10328:	03 ff ff d9 	l.j 1028c <__muldf3+0x7c>
   1032c:	9f 80 00 02 	l.addi r28,r0,2
   10330:	a8 d6 00 00 	l.ori r6,r22,0x0
   10334:	bc 03 00 02 	l.sfeqi r3,2
   10338:	10 00 00 62 	l.bf 104c0 <__muldf3+0x2b0>
   1033c:	bc 03 00 03 	l.sfeqi r3,3
   10340:	10 00 01 9e 	l.bf 109b8 <__muldf3+0x7a8>
   10344:	bc 03 00 01 	l.sfeqi r3,1
   10348:	0c 00 00 ff 	l.bnf 10744 <__muldf3+0x534>
   1034c:	aa 47 00 00 	l.ori r18,r7,0x0
   10350:	9c 80 00 00 	l.addi r4,r0,0
   10354:	a6 86 00 01 	l.andi r20,r6,0x1
   10358:	a8 44 00 00 	l.ori r2,r4,0x0
   1035c:	ab 04 00 00 	l.ori r24,r4,0x0
   10360:	18 a0 00 0f 	l.movhi r5,0xf
   10364:	b8 84 00 14 	l.slli r4,r4,0x14
   10368:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   1036c:	b8 74 00 1f 	l.slli r3,r20,0x1f
   10370:	e0 42 28 03 	l.and r2,r2,r5
   10374:	9c 21 00 34 	l.addi r1,r1,52
   10378:	e0 42 20 04 	l.or r2,r2,r4
   1037c:	a8 f8 00 00 	l.ori r7,r24,0x0
   10380:	e0 42 18 04 	l.or r2,r2,r3
   10384:	85 21 ff fc 	l.lwz r9,-4(r1)
   10388:	a8 c2 00 00 	l.ori r6,r2,0x0
   1038c:	84 21 ff d8 	l.lwz r1,-40(r1)
   10390:	e1 66 00 04 	l.or r11,r6,r0
   10394:	e1 87 00 04 	l.or r12,r7,r0
   10398:	84 41 ff dc 	l.lwz r2,-36(r1)
   1039c:	85 c1 ff e0 	l.lwz r14,-32(r1)
   103a0:	86 41 ff e4 	l.lwz r18,-28(r1)
   103a4:	86 81 ff e8 	l.lwz r20,-24(r1)
   103a8:	86 c1 ff ec 	l.lwz r22,-20(r1)
   103ac:	87 01 ff f0 	l.lwz r24,-16(r1)
   103b0:	87 41 ff f4 	l.lwz r26,-12(r1)
   103b4:	44 00 48 00 	l.jr r9
   103b8:	87 81 ff f8 	l.lwz r28,-8(r1)
   103bc:	e0 5a 20 04 	l.or r2,r26,r4
   103c0:	bc 02 00 00 	l.sfeqi r2,0
   103c4:	10 00 00 47 	l.bf 104e0 <__muldf3+0x2d0>
   103c8:	9d c0 00 04 	l.addi r14,r0,4
   103cc:	bc 1a 00 00 	l.sfeqi r26,0
   103d0:	10 00 01 25 	l.bf 10864 <__muldf3+0x654>
   103d4:	a8 64 00 00 	l.ori r3,r4,0x0
   103d8:	a8 7a 00 00 	l.ori r3,r26,0x0
   103dc:	d4 01 20 08 	l.sw 8(r1),r4
   103e0:	d4 01 28 04 	l.sw 4(r1),r5
   103e4:	04 00 04 f8 	l.jal 117c4 <__clzsi2>
   103e8:	d4 01 30 00 	l.sw 0(r1),r6
   103ec:	84 81 00 08 	l.lwz r4,8(r1)
   103f0:	84 a1 00 04 	l.lwz r5,4(r1)
   103f4:	84 c1 00 00 	l.lwz r6,0(r1)
   103f8:	9c 6b ff f5 	l.addi r3,r11,-11
   103fc:	bd 43 00 1c 	l.sfgtsi r3,28
   10400:	10 00 01 16 	l.bf 10858 <__muldf3+0x648>
   10404:	9c 4b ff d8 	l.addi r2,r11,-40
   10408:	9c e0 00 1d 	l.addi r7,r0,29
   1040c:	9f 0b ff f8 	l.addi r24,r11,-8
   10410:	e0 e7 18 02 	l.sub r7,r7,r3
   10414:	e0 5a c0 08 	l.sll r2,r26,r24
   10418:	e0 e4 38 48 	l.srl r7,r4,r7
   1041c:	e3 04 c0 08 	l.sll r24,r4,r24
   10420:	e3 47 10 04 	l.or r26,r7,r2
   10424:	9d c0 00 00 	l.addi r14,r0,0
   10428:	9e 40 fc 02 	l.addi r18,r0,-1022
   1042c:	ab 8e 00 00 	l.ori r28,r14,0x0
   10430:	03 ff ff 97 	l.j 1028c <__muldf3+0x7c>
   10434:	e2 52 18 02 	l.sub r18,r18,r3
   10438:	e0 c2 30 04 	l.or r6,r2,r6
   1043c:	bc 06 00 00 	l.sfeqi r6,0
   10440:	0f ff ff a6 	l.bnf 102d8 <__muldf3+0xc8>
   10444:	9c 60 00 03 	l.addi r3,r0,3
   10448:	a8 46 00 00 	l.ori r2,r6,0x0
   1044c:	9c 60 00 02 	l.addi r3,r0,2
   10450:	03 ff ff a2 	l.j 102d8 <__muldf3+0xc8>
   10454:	a9 06 00 00 	l.ori r8,r6,0x0
   10458:	e0 62 30 04 	l.or r3,r2,r6
   1045c:	bc 03 00 00 	l.sfeqi r3,0
   10460:	10 00 00 1d 	l.bf 104d4 <__muldf3+0x2c4>
   10464:	a9 07 00 00 	l.ori r8,r7,0x0
   10468:	bc 02 00 00 	l.sfeqi r2,0
   1046c:	10 00 00 f6 	l.bf 10844 <__muldf3+0x634>
   10470:	a8 66 00 00 	l.ori r3,r6,0x0
   10474:	a8 62 00 00 	l.ori r3,r2,0x0
   10478:	04 00 04 d3 	l.jal 117c4 <__clzsi2>
   1047c:	d4 01 30 00 	l.sw 0(r1),r6
   10480:	84 c1 00 00 	l.lwz r6,0(r1)
   10484:	9c eb ff f5 	l.addi r7,r11,-11
   10488:	bd 47 00 1c 	l.sfgtsi r7,28
   1048c:	10 00 00 ea 	l.bf 10834 <__muldf3+0x624>
   10490:	15 00 00 00 	l.nop 0x0
   10494:	9c 60 00 1d 	l.addi r3,r0,29
   10498:	9d 0b ff f8 	l.addi r8,r11,-8
   1049c:	e0 63 38 02 	l.sub r3,r3,r7
   104a0:	e0 42 40 08 	l.sll r2,r2,r8
   104a4:	e0 66 18 48 	l.srl r3,r6,r3
   104a8:	e1 06 40 08 	l.sll r8,r6,r8
   104ac:	e0 43 10 04 	l.or r2,r3,r2
   104b0:	9c 80 fc 02 	l.addi r4,r0,-1022
   104b4:	9c 60 00 00 	l.addi r3,r0,0
   104b8:	03 ff ff 88 	l.j 102d8 <__muldf3+0xc8>
   104bc:	e0 e4 38 02 	l.sub r7,r4,r7
   104c0:	9c 40 00 00 	l.addi r2,r0,0
   104c4:	a6 86 00 01 	l.andi r20,r6,0x1
   104c8:	9c 80 07 ff 	l.addi r4,r0,2047
   104cc:	03 ff ff a5 	l.j 10360 <__muldf3+0x150>
   104d0:	ab 02 00 00 	l.ori r24,r2,0x0
   104d4:	a8 47 00 00 	l.ori r2,r7,0x0
   104d8:	03 ff ff 80 	l.j 102d8 <__muldf3+0xc8>
   104dc:	9c 60 00 01 	l.addi r3,r0,1
   104e0:	ab 52 00 00 	l.ori r26,r18,0x0
   104e4:	ab 12 00 00 	l.ori r24,r18,0x0
   104e8:	03 ff ff 69 	l.j 1028c <__muldf3+0x7c>
   104ec:	9f 80 00 01 	l.addi r28,r0,1
   104f0:	9d c0 00 0c 	l.addi r14,r0,12
   104f4:	03 ff ff 66 	l.j 1028c <__muldf3+0x7c>
   104f8:	9f 80 00 03 	l.addi r28,r0,3
   104fc:	18 40 00 0f 	l.movhi r2,0xf
   10500:	9e 80 00 00 	l.addi r20,r0,0
   10504:	a8 42 ff ff 	l.ori r2,r2,0xffff
   10508:	9f 00 ff ff 	l.addi r24,r0,-1
   1050c:	03 ff ff 95 	l.j 10360 <__muldf3+0x150>
   10510:	9c 80 07 ff 	l.addi r4,r0,2047
   10514:	a8 5a 00 00 	l.ori r2,r26,0x0
   10518:	a9 18 00 00 	l.ori r8,r24,0x0
   1051c:	03 ff ff 86 	l.j 10334 <__muldf3+0x124>
   10520:	a8 7c 00 00 	l.ori r3,r28,0x0
   10524:	a8 5a 00 00 	l.ori r2,r26,0x0
   10528:	a9 18 00 00 	l.ori r8,r24,0x0
   1052c:	a8 d4 00 00 	l.ori r6,r20,0x0
   10530:	03 ff ff 81 	l.j 10334 <__muldf3+0x124>
   10534:	a8 7c 00 00 	l.ori r3,r28,0x0
   10538:	ba c8 00 50 	l.srli r22,r8,0x10
   1053c:	ba 38 00 50 	l.srli r17,r24,0x10
   10540:	a4 b8 ff ff 	l.andi r5,r24,0xffff
   10544:	a5 08 ff ff 	l.andi r8,r8,0xffff
   10548:	e1 96 2b 06 	l.mul r12,r22,r5
   1054c:	e2 68 2b 06 	l.mul r19,r8,r5
   10550:	e0 88 8b 06 	l.mul r4,r8,r17
   10554:	b9 d3 00 50 	l.srli r14,r19,0x10
   10558:	e1 8c 20 00 	l.add r12,r12,r4
   1055c:	e1 ce 60 00 	l.add r14,r14,r12
   10560:	e4 a4 70 00 	l.sfleu r4,r14
   10564:	10 00 00 04 	l.bf 10574 <__muldf3+0x364>
   10568:	e0 71 b3 06 	l.mul r3,r17,r22
   1056c:	18 80 00 01 	l.movhi r4,0x1
   10570:	e0 63 20 00 	l.add r3,r3,r4
   10574:	ba 82 00 50 	l.srli r20,r2,0x10
   10578:	a5 82 ff ff 	l.andi r12,r2,0xffff
   1057c:	b8 8e 00 10 	l.slli r4,r14,0x10
   10580:	e2 ec 2b 06 	l.mul r23,r12,r5
   10584:	e0 4c 8b 06 	l.mul r2,r12,r17
   10588:	e0 b4 2b 06 	l.mul r5,r20,r5
   1058c:	b9 77 00 50 	l.srli r11,r23,0x10
   10590:	e0 a5 10 00 	l.add r5,r5,r2
   10594:	a6 73 ff ff 	l.andi r19,r19,0xffff
   10598:	e0 ab 28 00 	l.add r5,r11,r5
   1059c:	b9 ce 00 50 	l.srli r14,r14,0x10
   105a0:	e4 a2 28 00 	l.sfleu r2,r5
   105a4:	e1 e4 98 00 	l.add r15,r4,r19
   105a8:	10 00 00 04 	l.bf 105b8 <__muldf3+0x3a8>
   105ac:	e2 31 a3 06 	l.mul r17,r17,r20
   105b0:	19 60 00 01 	l.movhi r11,0x1
   105b4:	e2 31 58 00 	l.add r17,r17,r11
   105b8:	ba ba 00 50 	l.srli r21,r26,0x10
   105bc:	a7 5a ff ff 	l.andi r26,r26,0xffff
   105c0:	b9 65 00 10 	l.slli r11,r5,0x10
   105c4:	e3 28 d3 06 	l.mul r25,r8,r26
   105c8:	e1 a8 ab 06 	l.mul r13,r8,r21
   105cc:	e0 9a b3 06 	l.mul r4,r26,r22
   105d0:	b8 59 00 50 	l.srli r2,r25,0x10
   105d4:	e0 84 68 00 	l.add r4,r4,r13
   105d8:	a6 f7 ff ff 	l.andi r23,r23,0xffff
   105dc:	e2 62 20 00 	l.add r19,r2,r4
   105e0:	b8 85 00 50 	l.srli r4,r5,0x10
   105e4:	e2 eb b8 00 	l.add r23,r11,r23
   105e8:	e4 ad 98 00 	l.sfleu r13,r19
   105ec:	e2 24 88 00 	l.add r17,r4,r17
   105f0:	e1 ce b8 00 	l.add r14,r14,r23
   105f4:	10 00 00 04 	l.bf 10604 <__muldf3+0x3f4>
   105f8:	e1 b6 ab 06 	l.mul r13,r22,r21
   105fc:	18 40 00 01 	l.movhi r2,0x1
   10600:	e1 ad 10 00 	l.add r13,r13,r2
   10604:	e0 ac d3 06 	l.mul r5,r12,r26
   10608:	e1 8c ab 06 	l.mul r12,r12,r21
   1060c:	e3 5a a3 06 	l.mul r26,r26,r20
   10610:	b9 65 00 50 	l.srli r11,r5,0x10
   10614:	e3 5a 60 00 	l.add r26,r26,r12
   10618:	b8 93 00 50 	l.srli r4,r19,0x10
   1061c:	e1 6b d0 00 	l.add r11,r11,r26
   10620:	b8 53 00 10 	l.slli r2,r19,0x10
   10624:	a5 19 ff ff 	l.andi r8,r25,0xffff
   10628:	e4 ac 58 00 	l.sfleu r12,r11
   1062c:	e1 a4 68 00 	l.add r13,r4,r13
   10630:	e1 02 40 00 	l.add r8,r2,r8
   10634:	10 00 00 04 	l.bf 10644 <__muldf3+0x434>
   10638:	e2 94 ab 06 	l.mul r20,r20,r21
   1063c:	18 80 00 01 	l.movhi r4,0x1
   10640:	e2 94 20 00 	l.add r20,r20,r4
   10644:	e0 63 70 00 	l.add r3,r3,r14
   10648:	e4 57 18 00 	l.sfgtu r23,r3
   1064c:	10 00 00 03 	l.bf 10658 <__muldf3+0x448>
   10650:	9d 80 00 01 	l.addi r12,r0,1
   10654:	9d 80 00 00 	l.addi r12,r0,0
   10658:	b8 8b 00 10 	l.slli r4,r11,0x10
   1065c:	a4 a5 ff ff 	l.andi r5,r5,0xffff
   10660:	e0 68 18 00 	l.add r3,r8,r3
   10664:	e0 84 28 00 	l.add r4,r4,r5
   10668:	e4 48 18 00 	l.sfgtu r8,r3
   1066c:	e0 84 88 00 	l.add r4,r4,r17
   10670:	9c 40 00 01 	l.addi r2,r0,1
   10674:	10 00 00 03 	l.bf 10680 <__muldf3+0x470>
   10678:	e2 6c 20 00 	l.add r19,r12,r4
   1067c:	9c 40 00 00 	l.addi r2,r0,0
   10680:	e1 cd 98 00 	l.add r14,r13,r19
   10684:	e4 51 20 00 	l.sfgtu r17,r4
   10688:	e1 02 70 00 	l.add r8,r2,r14
   1068c:	10 00 00 03 	l.bf 10698 <__muldf3+0x488>
   10690:	9f 40 00 01 	l.addi r26,r0,1
   10694:	9f 40 00 00 	l.addi r26,r0,0
   10698:	e4 4c 98 00 	l.sfgtu r12,r19
   1069c:	10 00 00 03 	l.bf 106a8 <__muldf3+0x498>
   106a0:	9c 80 00 01 	l.addi r4,r0,1
   106a4:	9c 80 00 00 	l.addi r4,r0,0
   106a8:	e0 9a 20 04 	l.or r4,r26,r4
   106ac:	b9 6b 00 50 	l.srli r11,r11,0x10
   106b0:	a7 44 00 ff 	l.andi r26,r4,0xff
   106b4:	e4 4d 70 00 	l.sfgtu r13,r14
   106b8:	e3 5a 58 00 	l.add r26,r26,r11
   106bc:	10 00 00 03 	l.bf 106c8 <__muldf3+0x4b8>
   106c0:	9c 80 00 01 	l.addi r4,r0,1
   106c4:	9c 80 00 00 	l.addi r4,r0,0
   106c8:	e4 42 40 00 	l.sfgtu r2,r8
   106cc:	10 00 00 03 	l.bf 106d8 <__muldf3+0x4c8>
   106d0:	9c a0 00 01 	l.addi r5,r0,1
   106d4:	9c a0 00 00 	l.addi r5,r0,0
   106d8:	e0 a4 28 04 	l.or r5,r4,r5
   106dc:	b8 83 00 09 	l.slli r4,r3,0x9
   106e0:	a4 a5 00 ff 	l.andi r5,r5,0xff
   106e4:	b8 48 00 57 	l.srli r2,r8,0x17
   106e8:	e0 ba 28 00 	l.add r5,r26,r5
   106ec:	e0 84 78 04 	l.or r4,r4,r15
   106f0:	e0 a5 a0 00 	l.add r5,r5,r20
   106f4:	e1 60 20 02 	l.sub r11,r0,r4
   106f8:	b8 a5 00 09 	l.slli r5,r5,0x9
   106fc:	e0 8b 20 04 	l.or r4,r11,r4
   10700:	19 60 01 00 	l.movhi r11,0x100
   10704:	e0 45 10 04 	l.or r2,r5,r2
   10708:	b8 63 00 57 	l.srli r3,r3,0x17
   1070c:	b8 84 00 5f 	l.srli r4,r4,0x1f
   10710:	e0 a2 58 03 	l.and r5,r2,r11
   10714:	b9 08 00 09 	l.slli r8,r8,0x9
   10718:	e0 84 18 04 	l.or r4,r4,r3
   1071c:	bc 05 00 00 	l.sfeqi r5,0
   10720:	10 00 00 09 	l.bf 10744 <__muldf3+0x534>
   10724:	e1 04 40 04 	l.or r8,r4,r8
   10728:	b8 88 00 41 	l.srli r4,r8,0x1
   1072c:	a4 68 00 01 	l.andi r3,r8,0x1
   10730:	b9 02 00 1f 	l.slli r8,r2,0x1f
   10734:	e0 64 18 04 	l.or r3,r4,r3
   10738:	b8 42 00 41 	l.srli r2,r2,0x1
   1073c:	e1 08 18 04 	l.or r8,r8,r3
   10740:	aa 47 00 00 	l.ori r18,r7,0x0
   10744:	9c 92 03 ff 	l.addi r4,r18,1023
   10748:	bd a4 00 00 	l.sflesi r4,0
   1074c:	10 00 00 4f 	l.bf 10888 <__muldf3+0x678>
   10750:	a4 68 00 07 	l.andi r3,r8,0x7
   10754:	bc 03 00 00 	l.sfeqi r3,0
   10758:	10 00 00 0d 	l.bf 1078c <__muldf3+0x57c>
   1075c:	19 60 01 00 	l.movhi r11,0x100
   10760:	a4 68 00 0f 	l.andi r3,r8,0xf
   10764:	bc 03 00 04 	l.sfeqi r3,4
   10768:	10 00 00 09 	l.bf 1078c <__muldf3+0x57c>
   1076c:	9c 68 00 04 	l.addi r3,r8,4
   10770:	e4 48 18 00 	l.sfgtu r8,r3
   10774:	10 00 00 03 	l.bf 10780 <__muldf3+0x570>
   10778:	9c a0 00 01 	l.addi r5,r0,1
   1077c:	9c a0 00 00 	l.addi r5,r0,0
   10780:	e0 42 28 00 	l.add r2,r2,r5
   10784:	a9 03 00 00 	l.ori r8,r3,0x0
   10788:	19 60 01 00 	l.movhi r11,0x100
   1078c:	e0 62 58 03 	l.and r3,r2,r11
   10790:	bc 03 00 00 	l.sfeqi r3,0
   10794:	10 00 00 07 	l.bf 107b0 <__muldf3+0x5a0>
   10798:	bd a4 07 fe 	l.sflesi r4,2046
   1079c:	18 60 fe ff 	l.movhi r3,0xfeff
   107a0:	9c 92 04 00 	l.addi r4,r18,1024
   107a4:	a8 63 ff ff 	l.ori r3,r3,0xffff
   107a8:	e0 42 18 03 	l.and r2,r2,r3
   107ac:	bd a4 07 fe 	l.sflesi r4,2046
   107b0:	0f ff ff 44 	l.bnf 104c0 <__muldf3+0x2b0>
   107b4:	b8 a2 00 1d 	l.slli r5,r2,0x1d
   107b8:	b9 08 00 43 	l.srli r8,r8,0x3
   107bc:	b8 42 00 43 	l.srli r2,r2,0x3
   107c0:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   107c4:	e3 05 40 04 	l.or r24,r5,r8
   107c8:	18 a0 00 0f 	l.movhi r5,0xf
   107cc:	a6 86 00 01 	l.andi r20,r6,0x1
   107d0:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   107d4:	03 ff fe e3 	l.j 10360 <__muldf3+0x150>
   107d8:	e0 42 28 03 	l.and r2,r2,r5
   107dc:	18 80 00 08 	l.movhi r4,0x8
   107e0:	e0 7a 20 03 	l.and r3,r26,r4
   107e4:	bc 23 00 00 	l.sfnei r3,0
   107e8:	0c 00 00 0e 	l.bnf 10820 <__muldf3+0x610>
   107ec:	18 a0 00 0f 	l.movhi r5,0xf
   107f0:	19 60 00 08 	l.movhi r11,0x8
   107f4:	e0 62 58 03 	l.and r3,r2,r11
   107f8:	bc 23 00 00 	l.sfnei r3,0
   107fc:	10 00 00 09 	l.bf 10820 <__muldf3+0x610>
   10800:	18 60 00 0f 	l.movhi r3,0xf
   10804:	e0 42 58 04 	l.or r2,r2,r11
   10808:	a8 63 ff ff 	l.ori r3,r3,0xffff
   1080c:	aa 96 00 00 	l.ori r20,r22,0x0
   10810:	e0 42 18 03 	l.and r2,r2,r3
   10814:	ab 08 00 00 	l.ori r24,r8,0x0
   10818:	03 ff fe d3 	l.j 10364 <__muldf3+0x154>
   1081c:	9c 80 07 ff 	l.addi r4,r0,2047
   10820:	e0 5a 20 04 	l.or r2,r26,r4
   10824:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   10828:	9c 80 07 ff 	l.addi r4,r0,2047
   1082c:	03 ff fe cd 	l.j 10360 <__muldf3+0x150>
   10830:	e0 42 28 03 	l.and r2,r2,r5
   10834:	9d 6b ff d8 	l.addi r11,r11,-40
   10838:	9d 00 00 00 	l.addi r8,r0,0
   1083c:	03 ff ff 1d 	l.j 104b0 <__muldf3+0x2a0>
   10840:	e0 46 58 08 	l.sll r2,r6,r11
   10844:	04 00 03 e0 	l.jal 117c4 <__clzsi2>
   10848:	d4 01 30 00 	l.sw 0(r1),r6
   1084c:	84 c1 00 00 	l.lwz r6,0(r1)
   10850:	03 ff ff 0d 	l.j 10484 <__muldf3+0x274>
   10854:	9d 6b 00 20 	l.addi r11,r11,32
   10858:	9f 00 00 00 	l.addi r24,r0,0
   1085c:	03 ff fe f2 	l.j 10424 <__muldf3+0x214>
   10860:	e3 44 10 08 	l.sll r26,r4,r2
   10864:	d4 01 20 08 	l.sw 8(r1),r4
   10868:	d4 01 28 04 	l.sw 4(r1),r5
   1086c:	04 00 03 d6 	l.jal 117c4 <__clzsi2>
   10870:	d4 01 30 00 	l.sw 0(r1),r6
   10874:	84 c1 00 00 	l.lwz r6,0(r1)
   10878:	9d 6b 00 20 	l.addi r11,r11,32
   1087c:	84 a1 00 04 	l.lwz r5,4(r1)
   10880:	03 ff fe de 	l.j 103f8 <__muldf3+0x1e8>
   10884:	84 81 00 08 	l.lwz r4,8(r1)
   10888:	9c 60 00 01 	l.addi r3,r0,1
   1088c:	e0 63 20 02 	l.sub r3,r3,r4
   10890:	bd a3 00 38 	l.sflesi r3,56
   10894:	0f ff fe af 	l.bnf 10350 <__muldf3+0x140>
   10898:	bd 43 00 1f 	l.sfgtsi r3,31
   1089c:	10 00 00 25 	l.bf 10930 <__muldf3+0x720>
   108a0:	9c a0 ff e1 	l.addi r5,r0,-31
   108a4:	9c 80 00 20 	l.addi r4,r0,32
   108a8:	e0 a8 18 48 	l.srl r5,r8,r3
   108ac:	e0 84 18 02 	l.sub r4,r4,r3
   108b0:	e0 62 18 48 	l.srl r3,r2,r3
   108b4:	e1 08 20 08 	l.sll r8,r8,r4
   108b8:	e0 82 20 08 	l.sll r4,r2,r4
   108bc:	e0 40 40 02 	l.sub r2,r0,r8
   108c0:	e0 84 28 04 	l.or r4,r4,r5
   108c4:	e1 02 40 04 	l.or r8,r2,r8
   108c8:	b8 48 00 5f 	l.srli r2,r8,0x1f
   108cc:	e0 a4 10 04 	l.or r5,r4,r2
   108d0:	a4 45 00 07 	l.andi r2,r5,0x7
   108d4:	bc 22 00 00 	l.sfnei r2,0
   108d8:	0c 00 00 0d 	l.bnf 1090c <__muldf3+0x6fc>
   108dc:	19 60 00 80 	l.movhi r11,0x80
   108e0:	a4 45 00 0f 	l.andi r2,r5,0xf
   108e4:	bc 02 00 04 	l.sfeqi r2,4
   108e8:	10 00 00 09 	l.bf 1090c <__muldf3+0x6fc>
   108ec:	a8 85 00 00 	l.ori r4,r5,0x0
   108f0:	9c a4 00 04 	l.addi r5,r4,4
   108f4:	e4 44 28 00 	l.sfgtu r4,r5
   108f8:	10 00 00 03 	l.bf 10904 <__muldf3+0x6f4>
   108fc:	9c 40 00 01 	l.addi r2,r0,1
   10900:	9c 40 00 00 	l.addi r2,r0,0
   10904:	e0 63 10 00 	l.add r3,r3,r2
   10908:	19 60 00 80 	l.movhi r11,0x80
   1090c:	e0 43 58 03 	l.and r2,r3,r11
   10910:	bc 02 00 00 	l.sfeqi r2,0
   10914:	10 00 00 1c 	l.bf 10984 <__muldf3+0x774>
   10918:	15 00 00 00 	l.nop 0x0
   1091c:	9c 40 00 00 	l.addi r2,r0,0
   10920:	a6 86 00 01 	l.andi r20,r6,0x1
   10924:	9c 80 00 01 	l.addi r4,r0,1
   10928:	03 ff fe 8e 	l.j 10360 <__muldf3+0x150>
   1092c:	ab 02 00 00 	l.ori r24,r2,0x0
   10930:	bc 03 00 20 	l.sfeqi r3,32
   10934:	e0 85 20 02 	l.sub r4,r5,r4
   10938:	10 00 00 1e 	l.bf 109b0 <__muldf3+0x7a0>
   1093c:	e0 82 20 48 	l.srl r4,r2,r4
   10940:	9c a0 00 40 	l.addi r5,r0,64
   10944:	e0 65 18 02 	l.sub r3,r5,r3
   10948:	e0 42 18 08 	l.sll r2,r2,r3
   1094c:	e1 02 40 04 	l.or r8,r2,r8
   10950:	e0 40 40 02 	l.sub r2,r0,r8
   10954:	e1 02 40 04 	l.or r8,r2,r8
   10958:	b8 48 00 5f 	l.srli r2,r8,0x1f
   1095c:	e0 84 10 04 	l.or r4,r4,r2
   10960:	a4 64 00 07 	l.andi r3,r4,0x7
   10964:	bc 23 00 00 	l.sfnei r3,0
   10968:	0c 00 00 0d 	l.bnf 1099c <__muldf3+0x78c>
   1096c:	a8 43 00 00 	l.ori r2,r3,0x0
   10970:	a4 44 00 0f 	l.andi r2,r4,0xf
   10974:	9c 60 00 00 	l.addi r3,r0,0
   10978:	bc 22 00 04 	l.sfnei r2,4
   1097c:	13 ff ff dd 	l.bf 108f0 <__muldf3+0x6e0>
   10980:	a8 a4 00 00 	l.ori r5,r4,0x0
   10984:	a8 85 00 00 	l.ori r4,r5,0x0
   10988:	18 a0 00 0f 	l.movhi r5,0xf
   1098c:	b8 43 00 43 	l.srli r2,r3,0x3
   10990:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   10994:	b8 63 00 1d 	l.slli r3,r3,0x1d
   10998:	e0 42 28 03 	l.and r2,r2,r5
   1099c:	b8 a4 00 43 	l.srli r5,r4,0x3
   109a0:	a6 86 00 01 	l.andi r20,r6,0x1
   109a4:	9c 80 00 00 	l.addi r4,r0,0
   109a8:	03 ff fe 6e 	l.j 10360 <__muldf3+0x150>
   109ac:	e3 05 18 04 	l.or r24,r5,r3
   109b0:	03 ff ff e7 	l.j 1094c <__muldf3+0x73c>
   109b4:	9c 40 00 00 	l.addi r2,r0,0
   109b8:	19 60 00 08 	l.movhi r11,0x8
   109bc:	18 60 00 0f 	l.movhi r3,0xf
   109c0:	e0 42 58 04 	l.or r2,r2,r11
   109c4:	a8 63 ff ff 	l.ori r3,r3,0xffff
   109c8:	a6 86 00 01 	l.andi r20,r6,0x1
   109cc:	e0 42 18 03 	l.and r2,r2,r3
   109d0:	ab 08 00 00 	l.ori r24,r8,0x0
   109d4:	03 ff fe 63 	l.j 10360 <__muldf3+0x150>
   109d8:	9c 80 07 ff 	l.addi r4,r0,2047

000109dc <__subdf3>:
   109dc:	d7 e1 17 ec 	l.sw -20(r1),r2
   109e0:	18 40 00 0f 	l.movhi r2,0xf
   109e4:	b9 a5 00 54 	l.srli r13,r5,0x14
   109e8:	a8 42 ff ff 	l.ori r2,r2,0xffff
   109ec:	d7 e1 77 f0 	l.sw -16(r1),r14
   109f0:	e0 e3 10 03 	l.and r7,r3,r2
   109f4:	e1 05 10 03 	l.and r8,r5,r2
   109f8:	a5 ad 07 ff 	l.andi r13,r13,0x7ff
   109fc:	b9 c3 00 54 	l.srli r14,r3,0x14
   10a00:	b9 87 00 03 	l.slli r12,r7,0x3
   10a04:	b9 68 00 03 	l.slli r11,r8,0x3
   10a08:	b8 e4 00 5d 	l.srli r7,r4,0x1d
   10a0c:	b9 06 00 5d 	l.srli r8,r6,0x1d
   10a10:	d7 e1 97 f4 	l.sw -12(r1),r18
   10a14:	d7 e1 4f fc 	l.sw -4(r1),r9
   10a18:	d7 e1 0f e8 	l.sw -24(r1),r1
   10a1c:	d7 e1 a7 f8 	l.sw -8(r1),r20
   10a20:	bc 2d 07 ff 	l.sfnei r13,2047
   10a24:	ba 43 00 5f 	l.srli r18,r3,0x1f
   10a28:	9c 21 ff e8 	l.addi r1,r1,-24
   10a2c:	a5 ce 07 ff 	l.andi r14,r14,0x7ff
   10a30:	e0 ec 38 04 	l.or r7,r12,r7
   10a34:	b8 44 00 03 	l.slli r2,r4,0x3
   10a38:	b8 65 00 5f 	l.srli r3,r5,0x1f
   10a3c:	e1 0b 40 04 	l.or r8,r11,r8
   10a40:	0c 00 00 43 	l.bnf 10b4c <__subdf3+0x170>
   10a44:	b8 c6 00 03 	l.slli r6,r6,0x3
   10a48:	ac a3 00 01 	l.xori r5,r3,1
   10a4c:	e4 25 90 00 	l.sfne r5,r18
   10a50:	0c 00 00 46 	l.bnf 10b68 <__subdf3+0x18c>
   10a54:	e0 6e 68 02 	l.sub r3,r14,r13
   10a58:	bd a3 00 00 	l.sflesi r3,0
   10a5c:	10 00 00 f2 	l.bf 10e24 <__subdf3+0x448>
   10a60:	bc 2d 00 00 	l.sfnei r13,0
   10a64:	10 00 00 6d 	l.bf 10c18 <__subdf3+0x23c>
   10a68:	bc 0e 07 ff 	l.sfeqi r14,2047
   10a6c:	e0 88 30 04 	l.or r4,r8,r6
   10a70:	bc 04 00 00 	l.sfeqi r4,0
   10a74:	0c 00 00 d2 	l.bnf 10dbc <__subdf3+0x3e0>
   10a78:	9c 63 ff ff 	l.addi r3,r3,-1
   10a7c:	a4 62 00 07 	l.andi r3,r2,0x7
   10a80:	bc 03 00 00 	l.sfeqi r3,0
   10a84:	10 00 00 0c 	l.bf 10ab4 <__subdf3+0xd8>
   10a88:	18 80 00 80 	l.movhi r4,0x80
   10a8c:	a4 62 00 0f 	l.andi r3,r2,0xf
   10a90:	bc 03 00 04 	l.sfeqi r3,4
   10a94:	10 00 00 07 	l.bf 10ab0 <__subdf3+0xd4>
   10a98:	9c 62 00 04 	l.addi r3,r2,4
   10a9c:	e4 42 18 00 	l.sfgtu r2,r3
   10aa0:	0c 00 00 c5 	l.bnf 10db4 <__subdf3+0x3d8>
   10aa4:	9c 80 00 01 	l.addi r4,r0,1
   10aa8:	e0 e7 20 00 	l.add r7,r7,r4
   10aac:	a8 43 00 00 	l.ori r2,r3,0x0
   10ab0:	18 80 00 80 	l.movhi r4,0x80
   10ab4:	e0 67 20 03 	l.and r3,r7,r4
   10ab8:	bc 03 00 00 	l.sfeqi r3,0
   10abc:	10 00 00 a8 	l.bf 10d5c <__subdf3+0x380>
   10ac0:	9c 8e 00 01 	l.addi r4,r14,1
   10ac4:	bc 24 07 ff 	l.sfnei r4,2047
   10ac8:	0c 00 00 f0 	l.bnf 10e88 <__subdf3+0x4ac>
   10acc:	19 60 ff 7f 	l.movhi r11,0xff7f
   10ad0:	19 80 00 0f 	l.movhi r12,0xf
   10ad4:	a9 6b ff ff 	l.ori r11,r11,0xffff
   10ad8:	b8 42 00 43 	l.srli r2,r2,0x3
   10adc:	e0 e7 58 03 	l.and r7,r7,r11
   10ae0:	a9 8c ff ff 	l.ori r12,r12,0xffff
   10ae4:	b8 67 00 1d 	l.slli r3,r7,0x1d
   10ae8:	b8 e7 00 43 	l.srli r7,r7,0x3
   10aec:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   10af0:	e0 43 10 04 	l.or r2,r3,r2
   10af4:	e0 e7 60 03 	l.and r7,r7,r12
   10af8:	a4 72 00 01 	l.andi r3,r18,0x1
   10afc:	18 a0 00 0f 	l.movhi r5,0xf
   10b00:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   10b04:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   10b08:	b8 84 00 14 	l.slli r4,r4,0x14
   10b0c:	e0 e7 28 03 	l.and r7,r7,r5
   10b10:	b8 63 00 1f 	l.slli r3,r3,0x1f
   10b14:	e0 e7 20 04 	l.or r7,r7,r4
   10b18:	9c 21 00 18 	l.addi r1,r1,24
   10b1c:	e0 e7 18 04 	l.or r7,r7,r3
   10b20:	a8 a2 00 00 	l.ori r5,r2,0x0
   10b24:	a8 87 00 00 	l.ori r4,r7,0x0
   10b28:	85 21 ff fc 	l.lwz r9,-4(r1)
   10b2c:	84 21 ff e8 	l.lwz r1,-24(r1)
   10b30:	e1 64 00 04 	l.or r11,r4,r0
   10b34:	e1 85 00 04 	l.or r12,r5,r0
   10b38:	84 41 ff ec 	l.lwz r2,-20(r1)
   10b3c:	85 c1 ff f0 	l.lwz r14,-16(r1)
   10b40:	86 41 ff f4 	l.lwz r18,-12(r1)
   10b44:	44 00 48 00 	l.jr r9
   10b48:	86 81 ff f8 	l.lwz r20,-8(r1)
   10b4c:	e0 88 30 04 	l.or r4,r8,r6
   10b50:	bc 04 00 00 	l.sfeqi r4,0
   10b54:	13 ff ff bd 	l.bf 10a48 <__subdf3+0x6c>
   10b58:	a8 a3 00 00 	l.ori r5,r3,0x0
   10b5c:	e4 25 90 00 	l.sfne r5,r18
   10b60:	13 ff ff be 	l.bf 10a58 <__subdf3+0x7c>
   10b64:	e0 6e 68 02 	l.sub r3,r14,r13
   10b68:	bd a3 00 00 	l.sflesi r3,0
   10b6c:	10 00 00 dc 	l.bf 10edc <__subdf3+0x500>
   10b70:	bc 2d 00 00 	l.sfnei r13,0
   10b74:	0c 00 00 9d 	l.bnf 10de8 <__subdf3+0x40c>
   10b78:	e0 88 30 04 	l.or r4,r8,r6
   10b7c:	bc 0e 07 ff 	l.sfeqi r14,2047
   10b80:	13 ff ff bf 	l.bf 10a7c <__subdf3+0xa0>
   10b84:	19 80 00 80 	l.movhi r12,0x80
   10b88:	e1 08 60 04 	l.or r8,r8,r12
   10b8c:	bd 43 00 38 	l.sfgtsi r3,56
   10b90:	0c 00 01 31 	l.bnf 11054 <__subdf3+0x678>
   10b94:	bd 43 00 1f 	l.sfgtsi r3,31
   10b98:	e0 c8 30 04 	l.or r6,r8,r6
   10b9c:	9c 60 00 00 	l.addi r3,r0,0
   10ba0:	e0 80 30 02 	l.sub r4,r0,r6
   10ba4:	e0 c4 30 04 	l.or r6,r4,r6
   10ba8:	b8 86 00 5f 	l.srli r4,r6,0x1f
   10bac:	e0 84 10 00 	l.add r4,r4,r2
   10bb0:	e0 e3 38 00 	l.add r7,r3,r7
   10bb4:	e4 42 20 00 	l.sfgtu r2,r4
   10bb8:	10 00 00 03 	l.bf 10bc4 <__subdf3+0x1e8>
   10bbc:	9c 40 00 01 	l.addi r2,r0,1
   10bc0:	9c 40 00 00 	l.addi r2,r0,0
   10bc4:	e0 e2 38 00 	l.add r7,r2,r7
   10bc8:	a8 44 00 00 	l.ori r2,r4,0x0
   10bcc:	19 80 00 80 	l.movhi r12,0x80
   10bd0:	e0 67 60 03 	l.and r3,r7,r12
   10bd4:	bc 03 00 00 	l.sfeqi r3,0
   10bd8:	10 00 01 61 	l.bf 1115c <__subdf3+0x780>
   10bdc:	15 00 00 00 	l.nop 0x0
   10be0:	9d ce 00 01 	l.addi r14,r14,1
   10be4:	bc 0e 07 ff 	l.sfeqi r14,2047
   10be8:	10 00 01 9f 	l.bf 11264 <__subdf3+0x888>
   10bec:	aa 45 00 00 	l.ori r18,r5,0x0
   10bf0:	18 60 ff 7f 	l.movhi r3,0xff7f
   10bf4:	a8 63 ff ff 	l.ori r3,r3,0xffff
   10bf8:	e0 e7 18 03 	l.and r7,r7,r3
   10bfc:	b8 62 00 41 	l.srli r3,r2,0x1
   10c00:	a4 42 00 01 	l.andi r2,r2,0x1
   10c04:	b8 87 00 1f 	l.slli r4,r7,0x1f
   10c08:	e0 43 10 04 	l.or r2,r3,r2
   10c0c:	b8 e7 00 41 	l.srli r7,r7,0x1
   10c10:	03 ff ff 9b 	l.j 10a7c <__subdf3+0xa0>
   10c14:	e0 44 10 04 	l.or r2,r4,r2
   10c18:	13 ff ff 99 	l.bf 10a7c <__subdf3+0xa0>
   10c1c:	18 80 00 80 	l.movhi r4,0x80
   10c20:	e1 08 20 04 	l.or r8,r8,r4
   10c24:	bd 43 00 38 	l.sfgtsi r3,56
   10c28:	10 00 00 a7 	l.bf 10ec4 <__subdf3+0x4e8>
   10c2c:	bd 43 00 1f 	l.sfgtsi r3,31
   10c30:	10 00 00 d3 	l.bf 10f7c <__subdf3+0x5a0>
   10c34:	9c 83 ff e0 	l.addi r4,r3,-32
   10c38:	9c a0 00 20 	l.addi r5,r0,32
   10c3c:	e0 86 18 48 	l.srl r4,r6,r3
   10c40:	e0 a5 18 02 	l.sub r5,r5,r3
   10c44:	e0 68 18 48 	l.srl r3,r8,r3
   10c48:	e0 c6 28 08 	l.sll r6,r6,r5
   10c4c:	e1 08 28 08 	l.sll r8,r8,r5
   10c50:	e0 a0 30 02 	l.sub r5,r0,r6
   10c54:	e0 88 20 04 	l.or r4,r8,r4
   10c58:	e0 c5 30 04 	l.or r6,r5,r6
   10c5c:	b8 c6 00 5f 	l.srli r6,r6,0x1f
   10c60:	e0 84 30 04 	l.or r4,r4,r6
   10c64:	e0 82 20 02 	l.sub r4,r2,r4
   10c68:	e0 67 18 02 	l.sub r3,r7,r3
   10c6c:	e4 82 20 00 	l.sfltu r2,r4
   10c70:	10 00 00 03 	l.bf 10c7c <__subdf3+0x2a0>
   10c74:	9c e0 00 01 	l.addi r7,r0,1
   10c78:	9c e0 00 00 	l.addi r7,r0,0
   10c7c:	e0 e3 38 02 	l.sub r7,r3,r7
   10c80:	a8 44 00 00 	l.ori r2,r4,0x0
   10c84:	18 a0 00 80 	l.movhi r5,0x80
   10c88:	e0 67 28 03 	l.and r3,r7,r5
   10c8c:	bc 03 00 00 	l.sfeqi r3,0
   10c90:	10 00 00 30 	l.bf 10d50 <__subdf3+0x374>
   10c94:	a4 62 00 07 	l.andi r3,r2,0x7
   10c98:	19 60 00 7f 	l.movhi r11,0x7f
   10c9c:	a9 6b ff ff 	l.ori r11,r11,0xffff
   10ca0:	e2 87 58 03 	l.and r20,r7,r11
   10ca4:	bc 14 00 00 	l.sfeqi r20,0
   10ca8:	10 00 00 83 	l.bf 10eb4 <__subdf3+0x4d8>
   10cac:	15 00 00 00 	l.nop 0x0
   10cb0:	04 00 02 c5 	l.jal 117c4 <__clzsi2>
   10cb4:	a8 74 00 00 	l.ori r3,r20,0x0
   10cb8:	9c 8b ff f8 	l.addi r4,r11,-8
   10cbc:	bd 44 00 1f 	l.sfgtsi r4,31
   10cc0:	10 00 00 7a 	l.bf 10ea8 <__subdf3+0x4cc>
   10cc4:	9d 6b ff d8 	l.addi r11,r11,-40
   10cc8:	9c 60 00 20 	l.addi r3,r0,32
   10ccc:	e1 74 20 08 	l.sll r11,r20,r4
   10cd0:	e0 63 20 02 	l.sub r3,r3,r4
   10cd4:	e0 62 18 48 	l.srl r3,r2,r3
   10cd8:	e0 42 20 08 	l.sll r2,r2,r4
   10cdc:	e1 63 58 04 	l.or r11,r3,r11
   10ce0:	e5 4e 20 00 	l.sfgts r14,r4
   10ce4:	10 00 00 6d 	l.bf 10e98 <__subdf3+0x4bc>
   10ce8:	19 80 ff 7f 	l.movhi r12,0xff7f
   10cec:	e0 84 70 02 	l.sub r4,r4,r14
   10cf0:	9c e4 00 01 	l.addi r7,r4,1
   10cf4:	bd 47 00 1f 	l.sfgtsi r7,31
   10cf8:	10 00 00 93 	l.bf 10f44 <__subdf3+0x568>
   10cfc:	9c 84 ff e1 	l.addi r4,r4,-31
   10d00:	9c 80 00 20 	l.addi r4,r0,32
   10d04:	e0 a2 38 48 	l.srl r5,r2,r7
   10d08:	e0 84 38 02 	l.sub r4,r4,r7
   10d0c:	e0 eb 38 48 	l.srl r7,r11,r7
   10d10:	e0 62 20 08 	l.sll r3,r2,r4
   10d14:	e1 6b 20 08 	l.sll r11,r11,r4
   10d18:	9d c0 00 00 	l.addi r14,r0,0
   10d1c:	e0 40 18 02 	l.sub r2,r0,r3
   10d20:	e1 6b 28 04 	l.or r11,r11,r5
   10d24:	e0 62 18 04 	l.or r3,r2,r3
   10d28:	b8 63 00 5f 	l.srli r3,r3,0x1f
   10d2c:	03 ff ff 54 	l.j 10a7c <__subdf3+0xa0>
   10d30:	e0 4b 18 04 	l.or r2,r11,r3
   10d34:	e0 e4 18 04 	l.or r7,r4,r3
   10d38:	bc 07 00 00 	l.sfeqi r7,0
   10d3c:	10 00 02 04 	l.bf 1154c <__subdf3+0xb70>
   10d40:	a8 47 00 00 	l.ori r2,r7,0x0
   10d44:	a8 e3 00 00 	l.ori r7,r3,0x0
   10d48:	a8 44 00 00 	l.ori r2,r4,0x0
   10d4c:	a4 62 00 07 	l.andi r3,r2,0x7
   10d50:	bc 23 00 00 	l.sfnei r3,0
   10d54:	13 ff ff 4f 	l.bf 10a90 <__subdf3+0xb4>
   10d58:	a4 62 00 0f 	l.andi r3,r2,0xf
   10d5c:	b8 87 00 1d 	l.slli r4,r7,0x1d
   10d60:	b8 42 00 43 	l.srli r2,r2,0x3
   10d64:	b8 e7 00 43 	l.srli r7,r7,0x3
   10d68:	a4 72 00 01 	l.andi r3,r18,0x1
   10d6c:	e0 44 10 04 	l.or r2,r4,r2
   10d70:	bc 0e 07 ff 	l.sfeqi r14,2047
   10d74:	10 00 00 06 	l.bf 10d8c <__subdf3+0x3b0>
   10d78:	18 a0 00 0f 	l.movhi r5,0xf
   10d7c:	a4 8e 07 ff 	l.andi r4,r14,0x7ff
   10d80:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   10d84:	03 ff ff 5e 	l.j 10afc <__subdf3+0x120>
   10d88:	e0 e7 28 03 	l.and r7,r7,r5
   10d8c:	e0 87 10 04 	l.or r4,r7,r2
   10d90:	bc 04 00 00 	l.sfeqi r4,0
   10d94:	10 00 01 b7 	l.bf 11470 <__subdf3+0xa94>
   10d98:	19 60 00 08 	l.movhi r11,0x8
   10d9c:	19 80 00 0f 	l.movhi r12,0xf
   10da0:	e0 e7 58 04 	l.or r7,r7,r11
   10da4:	a9 8c ff ff 	l.ori r12,r12,0xffff
   10da8:	a8 8e 00 00 	l.ori r4,r14,0x0
   10dac:	03 ff ff 54 	l.j 10afc <__subdf3+0x120>
   10db0:	e0 e7 60 03 	l.and r7,r7,r12
   10db4:	03 ff ff 3d 	l.j 10aa8 <__subdf3+0xcc>
   10db8:	9c 80 00 00 	l.addi r4,r0,0
   10dbc:	bc 23 00 00 	l.sfnei r3,0
   10dc0:	10 00 00 5d 	l.bf 10f34 <__subdf3+0x558>
   10dc4:	bc 0e 07 ff 	l.sfeqi r14,2047
   10dc8:	e0 c2 30 02 	l.sub r6,r2,r6
   10dcc:	e0 e7 40 02 	l.sub r7,r7,r8
   10dd0:	e4 82 30 00 	l.sfltu r2,r6
   10dd4:	0c 00 00 ae 	l.bnf 1108c <__subdf3+0x6b0>
   10dd8:	9c 40 00 01 	l.addi r2,r0,1
   10ddc:	e0 e7 10 02 	l.sub r7,r7,r2
   10de0:	03 ff ff a9 	l.j 10c84 <__subdf3+0x2a8>
   10de4:	a8 46 00 00 	l.ori r2,r6,0x0
   10de8:	bc 04 00 00 	l.sfeqi r4,0
   10dec:	13 ff ff 24 	l.bf 10a7c <__subdf3+0xa0>
   10df0:	9c 63 ff ff 	l.addi r3,r3,-1
   10df4:	bc 23 00 00 	l.sfnei r3,0
   10df8:	10 00 00 b6 	l.bf 110d0 <__subdf3+0x6f4>
   10dfc:	bc 0e 07 ff 	l.sfeqi r14,2047
   10e00:	e0 c2 30 00 	l.add r6,r2,r6
   10e04:	e0 e7 40 00 	l.add r7,r7,r8
   10e08:	e4 42 30 00 	l.sfgtu r2,r6
   10e0c:	10 00 00 03 	l.bf 10e18 <__subdf3+0x43c>
   10e10:	9c 40 00 01 	l.addi r2,r0,1
   10e14:	a8 4d 00 00 	l.ori r2,r13,0x0
   10e18:	e0 e2 38 00 	l.add r7,r2,r7
   10e1c:	03 ff ff 6c 	l.j 10bcc <__subdf3+0x1f0>
   10e20:	a8 46 00 00 	l.ori r2,r6,0x0
   10e24:	bc 03 00 00 	l.sfeqi r3,0
   10e28:	0c 00 00 62 	l.bnf 10fb0 <__subdf3+0x5d4>
   10e2c:	9c 8e 00 01 	l.addi r4,r14,1
   10e30:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   10e34:	bd 44 00 01 	l.sfgtsi r4,1
   10e38:	0c 00 00 cb 	l.bnf 11164 <__subdf3+0x788>
   10e3c:	e1 82 30 02 	l.sub r12,r2,r6
   10e40:	e0 87 40 02 	l.sub r4,r7,r8
   10e44:	e4 82 60 00 	l.sfltu r2,r12
   10e48:	10 00 00 03 	l.bf 10e54 <__subdf3+0x478>
   10e4c:	9e 80 00 01 	l.addi r20,r0,1
   10e50:	aa 83 00 00 	l.ori r20,r3,0x0
   10e54:	e2 84 a0 02 	l.sub r20,r4,r20
   10e58:	18 80 00 80 	l.movhi r4,0x80
   10e5c:	e0 74 20 03 	l.and r3,r20,r4
   10e60:	bc 03 00 00 	l.sfeqi r3,0
   10e64:	10 00 00 74 	l.bf 11034 <__subdf3+0x658>
   10e68:	e0 e8 38 02 	l.sub r7,r8,r7
   10e6c:	e0 46 10 02 	l.sub r2,r6,r2
   10e70:	e4 86 10 00 	l.sfltu r6,r2
   10e74:	0c 00 00 95 	l.bnf 110c8 <__subdf3+0x6ec>
   10e78:	9e 80 00 01 	l.addi r20,r0,1
   10e7c:	e2 87 a0 02 	l.sub r20,r7,r20
   10e80:	03 ff ff 89 	l.j 10ca4 <__subdf3+0x2c8>
   10e84:	aa 45 00 00 	l.ori r18,r5,0x0
   10e88:	9c e0 00 00 	l.addi r7,r0,0
   10e8c:	a4 72 00 01 	l.andi r3,r18,0x1
   10e90:	03 ff ff 1b 	l.j 10afc <__subdf3+0x120>
   10e94:	a8 47 00 00 	l.ori r2,r7,0x0
   10e98:	e1 ce 20 02 	l.sub r14,r14,r4
   10e9c:	a9 8c ff ff 	l.ori r12,r12,0xffff
   10ea0:	03 ff fe f7 	l.j 10a7c <__subdf3+0xa0>
   10ea4:	e0 eb 60 03 	l.and r7,r11,r12
   10ea8:	e1 62 58 08 	l.sll r11,r2,r11
   10eac:	03 ff ff 8d 	l.j 10ce0 <__subdf3+0x304>
   10eb0:	9c 40 00 00 	l.addi r2,r0,0
   10eb4:	04 00 02 44 	l.jal 117c4 <__clzsi2>
   10eb8:	a8 62 00 00 	l.ori r3,r2,0x0
   10ebc:	03 ff ff 7f 	l.j 10cb8 <__subdf3+0x2dc>
   10ec0:	9d 6b 00 20 	l.addi r11,r11,32
   10ec4:	e0 c8 30 04 	l.or r6,r8,r6
   10ec8:	9c 60 00 00 	l.addi r3,r0,0
   10ecc:	e0 80 30 02 	l.sub r4,r0,r6
   10ed0:	e0 c4 30 04 	l.or r6,r4,r6
   10ed4:	03 ff ff 64 	l.j 10c64 <__subdf3+0x288>
   10ed8:	b8 86 00 5f 	l.srli r4,r6,0x1f
   10edc:	bc 03 00 00 	l.sfeqi r3,0
   10ee0:	0c 00 00 c2 	l.bnf 111e8 <__subdf3+0x80c>
   10ee4:	9d 6e 00 01 	l.addi r11,r14,1
   10ee8:	a4 8b 07 ff 	l.andi r4,r11,0x7ff
   10eec:	bd 44 00 01 	l.sfgtsi r4,1
   10ef0:	0c 00 00 80 	l.bnf 110f0 <__subdf3+0x714>
   10ef4:	bc 0b 07 ff 	l.sfeqi r11,2047
   10ef8:	10 00 00 e5 	l.bf 1128c <__subdf3+0x8b0>
   10efc:	e0 c2 30 00 	l.add r6,r2,r6
   10f00:	e0 e7 40 00 	l.add r7,r7,r8
   10f04:	e4 42 30 00 	l.sfgtu r2,r6
   10f08:	10 00 00 03 	l.bf 10f14 <__subdf3+0x538>
   10f0c:	9d 00 00 01 	l.addi r8,r0,1
   10f10:	a9 03 00 00 	l.ori r8,r3,0x0
   10f14:	e0 e8 38 00 	l.add r7,r8,r7
   10f18:	b8 c6 00 41 	l.srli r6,r6,0x1
   10f1c:	b8 47 00 1f 	l.slli r2,r7,0x1f
   10f20:	a9 cb 00 00 	l.ori r14,r11,0x0
   10f24:	b8 e7 00 41 	l.srli r7,r7,0x1
   10f28:	e0 42 30 04 	l.or r2,r2,r6
   10f2c:	03 ff fe d4 	l.j 10a7c <__subdf3+0xa0>
   10f30:	aa 45 00 00 	l.ori r18,r5,0x0
   10f34:	0f ff ff 3d 	l.bnf 10c28 <__subdf3+0x24c>
   10f38:	bd 43 00 38 	l.sfgtsi r3,56
   10f3c:	03 ff fe d1 	l.j 10a80 <__subdf3+0xa4>
   10f40:	a4 62 00 07 	l.andi r3,r2,0x7
   10f44:	bc 07 00 20 	l.sfeqi r7,32
   10f48:	10 00 00 66 	l.bf 110e0 <__subdf3+0x704>
   10f4c:	e0 8b 20 48 	l.srl r4,r11,r4
   10f50:	9c 60 00 40 	l.addi r3,r0,64
   10f54:	e0 e3 38 02 	l.sub r7,r3,r7
   10f58:	e1 6b 38 08 	l.sll r11,r11,r7
   10f5c:	e0 42 58 04 	l.or r2,r2,r11
   10f60:	9c e0 00 00 	l.addi r7,r0,0
   10f64:	e0 60 10 02 	l.sub r3,r0,r2
   10f68:	a9 c7 00 00 	l.ori r14,r7,0x0
   10f6c:	e0 43 10 04 	l.or r2,r3,r2
   10f70:	b8 42 00 5f 	l.srli r2,r2,0x1f
   10f74:	03 ff ff 76 	l.j 10d4c <__subdf3+0x370>
   10f78:	e0 44 10 04 	l.or r2,r4,r2
   10f7c:	bc 03 00 20 	l.sfeqi r3,32
   10f80:	10 00 00 5a 	l.bf 110e8 <__subdf3+0x70c>
   10f84:	e0 88 20 48 	l.srl r4,r8,r4
   10f88:	9c a0 00 40 	l.addi r5,r0,64
   10f8c:	e0 65 18 02 	l.sub r3,r5,r3
   10f90:	e1 08 18 08 	l.sll r8,r8,r3
   10f94:	e0 c8 30 04 	l.or r6,r8,r6
   10f98:	9c 60 00 00 	l.addi r3,r0,0
   10f9c:	e0 a0 30 02 	l.sub r5,r0,r6
   10fa0:	e0 c5 30 04 	l.or r6,r5,r6
   10fa4:	b8 c6 00 5f 	l.srli r6,r6,0x1f
   10fa8:	03 ff ff 2f 	l.j 10c64 <__subdf3+0x288>
   10fac:	e0 84 30 04 	l.or r4,r4,r6
   10fb0:	bc 2e 00 00 	l.sfnei r14,0
   10fb4:	0c 00 00 38 	l.bnf 11094 <__subdf3+0x6b8>
   10fb8:	e0 87 10 04 	l.or r4,r7,r2
   10fbc:	bc 0d 07 ff 	l.sfeqi r13,2047
   10fc0:	10 00 00 85 	l.bf 111d4 <__subdf3+0x7f8>
   10fc4:	19 60 00 80 	l.movhi r11,0x80
   10fc8:	e0 60 18 02 	l.sub r3,r0,r3
   10fcc:	e0 e7 58 04 	l.or r7,r7,r11
   10fd0:	bd 43 00 38 	l.sfgtsi r3,56
   10fd4:	10 00 00 a8 	l.bf 11274 <__subdf3+0x898>
   10fd8:	bd 43 00 1f 	l.sfgtsi r3,31
   10fdc:	10 00 01 2b 	l.bf 11488 <__subdf3+0xaac>
   10fe0:	9d 63 ff e0 	l.addi r11,r3,-32
   10fe4:	9d 60 00 20 	l.addi r11,r0,32
   10fe8:	e1 82 18 48 	l.srl r12,r2,r3
   10fec:	e1 6b 18 02 	l.sub r11,r11,r3
   10ff0:	e0 67 18 48 	l.srl r3,r7,r3
   10ff4:	e0 82 58 08 	l.sll r4,r2,r11
   10ff8:	e0 e7 58 08 	l.sll r7,r7,r11
   10ffc:	e0 40 20 02 	l.sub r2,r0,r4
   11000:	e0 e7 60 04 	l.or r7,r7,r12
   11004:	e0 42 20 04 	l.or r2,r2,r4
   11008:	b8 42 00 5f 	l.srli r2,r2,0x1f
   1100c:	e0 47 10 04 	l.or r2,r7,r2
   11010:	e0 46 10 02 	l.sub r2,r6,r2
   11014:	e0 e8 18 02 	l.sub r7,r8,r3
   11018:	e4 86 10 00 	l.sfltu r6,r2
   1101c:	0c 00 00 29 	l.bnf 110c0 <__subdf3+0x6e4>
   11020:	9c 60 00 01 	l.addi r3,r0,1
   11024:	e0 e7 18 02 	l.sub r7,r7,r3
   11028:	a9 cd 00 00 	l.ori r14,r13,0x0
   1102c:	03 ff ff 16 	l.j 10c84 <__subdf3+0x2a8>
   11030:	aa 45 00 00 	l.ori r18,r5,0x0
   11034:	e0 ec a0 04 	l.or r7,r12,r20
   11038:	bc 07 00 00 	l.sfeqi r7,0
   1103c:	0f ff ff 1a 	l.bnf 10ca4 <__subdf3+0x2c8>
   11040:	a8 4c 00 00 	l.ori r2,r12,0x0
   11044:	a8 47 00 00 	l.ori r2,r7,0x0
   11048:	a8 67 00 00 	l.ori r3,r7,0x0
   1104c:	03 ff ff 49 	l.j 10d70 <__subdf3+0x394>
   11050:	a9 c7 00 00 	l.ori r14,r7,0x0
   11054:	10 00 00 51 	l.bf 11198 <__subdf3+0x7bc>
   11058:	bc 03 00 20 	l.sfeqi r3,32
   1105c:	9d 60 00 20 	l.addi r11,r0,32
   11060:	e0 86 18 48 	l.srl r4,r6,r3
   11064:	e1 6b 18 02 	l.sub r11,r11,r3
   11068:	e0 68 18 48 	l.srl r3,r8,r3
   1106c:	e0 c6 58 08 	l.sll r6,r6,r11
   11070:	e1 08 58 08 	l.sll r8,r8,r11
   11074:	e1 60 30 02 	l.sub r11,r0,r6
   11078:	e0 88 20 04 	l.or r4,r8,r4
   1107c:	e0 cb 30 04 	l.or r6,r11,r6
   11080:	b8 c6 00 5f 	l.srli r6,r6,0x1f
   11084:	03 ff fe ca 	l.j 10bac <__subdf3+0x1d0>
   11088:	e0 84 30 04 	l.or r4,r4,r6
   1108c:	03 ff ff 54 	l.j 10ddc <__subdf3+0x400>
   11090:	a8 4d 00 00 	l.ori r2,r13,0x0
   11094:	bc 04 00 00 	l.sfeqi r4,0
   11098:	10 00 00 4f 	l.bf 111d4 <__subdf3+0x7f8>
   1109c:	ac 63 ff ff 	l.xori r3,r3,-1
   110a0:	bc 23 00 00 	l.sfnei r3,0
   110a4:	10 00 00 4a 	l.bf 111cc <__subdf3+0x7f0>
   110a8:	bc 0d 07 ff 	l.sfeqi r13,2047
   110ac:	e0 46 10 02 	l.sub r2,r6,r2
   110b0:	e0 e8 38 02 	l.sub r7,r8,r7
   110b4:	e4 86 10 00 	l.sfltu r6,r2
   110b8:	13 ff ff db 	l.bf 11024 <__subdf3+0x648>
   110bc:	9c 60 00 01 	l.addi r3,r0,1
   110c0:	03 ff ff d9 	l.j 11024 <__subdf3+0x648>
   110c4:	9c 60 00 00 	l.addi r3,r0,0
   110c8:	03 ff ff 6d 	l.j 10e7c <__subdf3+0x4a0>
   110cc:	9e 80 00 00 	l.addi r20,r0,0
   110d0:	0f ff fe b0 	l.bnf 10b90 <__subdf3+0x1b4>
   110d4:	bd 43 00 38 	l.sfgtsi r3,56
   110d8:	03 ff fe 6a 	l.j 10a80 <__subdf3+0xa4>
   110dc:	a4 62 00 07 	l.andi r3,r2,0x7
   110e0:	03 ff ff 9f 	l.j 10f5c <__subdf3+0x580>
   110e4:	9d 60 00 00 	l.addi r11,r0,0
   110e8:	03 ff ff ab 	l.j 10f94 <__subdf3+0x5b8>
   110ec:	9d 00 00 00 	l.addi r8,r0,0
   110f0:	bc 2e 00 00 	l.sfnei r14,0
   110f4:	10 00 00 c1 	l.bf 113f8 <__subdf3+0xa1c>
   110f8:	e0 67 10 04 	l.or r3,r7,r2
   110fc:	bc 03 00 00 	l.sfeqi r3,0
   11100:	10 00 00 fd 	l.bf 114f4 <__subdf3+0xb18>
   11104:	e0 68 30 04 	l.or r3,r8,r6
   11108:	bc 03 00 00 	l.sfeqi r3,0
   1110c:	13 ff fe 5c 	l.bf 10a7c <__subdf3+0xa0>
   11110:	15 00 00 00 	l.nop 0x0
   11114:	e0 c2 30 00 	l.add r6,r2,r6
   11118:	e0 e7 40 00 	l.add r7,r7,r8
   1111c:	e4 42 30 00 	l.sfgtu r2,r6
   11120:	10 00 00 03 	l.bf 1112c <__subdf3+0x750>
   11124:	9c 40 00 01 	l.addi r2,r0,1
   11128:	a8 4e 00 00 	l.ori r2,r14,0x0
   1112c:	e0 e2 38 00 	l.add r7,r2,r7
   11130:	19 60 00 80 	l.movhi r11,0x80
   11134:	e0 47 58 03 	l.and r2,r7,r11
   11138:	bc 02 00 00 	l.sfeqi r2,0
   1113c:	10 00 01 06 	l.bf 11554 <__subdf3+0xb78>
   11140:	19 80 ff 7f 	l.movhi r12,0xff7f
   11144:	a8 46 00 00 	l.ori r2,r6,0x0
   11148:	a9 8c ff ff 	l.ori r12,r12,0xffff
   1114c:	aa 45 00 00 	l.ori r18,r5,0x0
   11150:	e0 e7 60 03 	l.and r7,r7,r12
   11154:	03 ff fe 4a 	l.j 10a7c <__subdf3+0xa0>
   11158:	9d c0 00 01 	l.addi r14,r0,1
   1115c:	03 ff fe fc 	l.j 10d4c <__subdf3+0x370>
   11160:	aa 45 00 00 	l.ori r18,r5,0x0
   11164:	bc 2e 00 00 	l.sfnei r14,0
   11168:	10 00 00 33 	l.bf 11234 <__subdf3+0x858>
   1116c:	e0 67 10 04 	l.or r3,r7,r2
   11170:	bc 23 00 00 	l.sfnei r3,0
   11174:	10 00 00 68 	l.bf 11314 <__subdf3+0x938>
   11178:	15 00 00 00 	l.nop 0x0
   1117c:	e0 e8 30 04 	l.or r7,r8,r6
   11180:	bc 07 00 00 	l.sfeqi r7,0
   11184:	10 00 00 ce 	l.bf 114bc <__subdf3+0xae0>
   11188:	aa 45 00 00 	l.ori r18,r5,0x0
   1118c:	a8 e8 00 00 	l.ori r7,r8,0x0
   11190:	03 ff fe 3b 	l.j 10a7c <__subdf3+0xa0>
   11194:	a8 46 00 00 	l.ori r2,r6,0x0
   11198:	9c 83 ff e0 	l.addi r4,r3,-32
   1119c:	10 00 00 b9 	l.bf 11480 <__subdf3+0xaa4>
   111a0:	e0 88 20 48 	l.srl r4,r8,r4
   111a4:	9d 60 00 40 	l.addi r11,r0,64
   111a8:	e0 6b 18 02 	l.sub r3,r11,r3
   111ac:	e1 08 18 08 	l.sll r8,r8,r3
   111b0:	e0 c8 30 04 	l.or r6,r8,r6
   111b4:	9c 60 00 00 	l.addi r3,r0,0
   111b8:	e1 00 30 02 	l.sub r8,r0,r6
   111bc:	e0 c8 30 04 	l.or r6,r8,r6
   111c0:	b8 c6 00 5f 	l.srli r6,r6,0x1f
   111c4:	03 ff fe 7a 	l.j 10bac <__subdf3+0x1d0>
   111c8:	e0 84 30 04 	l.or r4,r4,r6
   111cc:	0f ff ff 82 	l.bnf 10fd4 <__subdf3+0x5f8>
   111d0:	bd 43 00 38 	l.sfgtsi r3,56
   111d4:	a8 e8 00 00 	l.ori r7,r8,0x0
   111d8:	a8 46 00 00 	l.ori r2,r6,0x0
   111dc:	a9 cd 00 00 	l.ori r14,r13,0x0
   111e0:	03 ff fe 27 	l.j 10a7c <__subdf3+0xa0>
   111e4:	aa 45 00 00 	l.ori r18,r5,0x0
   111e8:	bc 2e 00 00 	l.sfnei r14,0
   111ec:	10 00 00 2d 	l.bf 112a0 <__subdf3+0x8c4>
   111f0:	bc 0d 07 ff 	l.sfeqi r13,2047
   111f4:	e0 87 10 04 	l.or r4,r7,r2
   111f8:	bc 04 00 00 	l.sfeqi r4,0
   111fc:	10 00 00 7b 	l.bf 113e8 <__subdf3+0xa0c>
   11200:	ac 63 ff ff 	l.xori r3,r3,-1
   11204:	bc 23 00 00 	l.sfnei r3,0
   11208:	10 00 00 76 	l.bf 113e0 <__subdf3+0xa04>
   1120c:	bc 0d 07 ff 	l.sfeqi r13,2047
   11210:	e0 42 30 00 	l.add r2,r2,r6
   11214:	e0 e7 40 00 	l.add r7,r7,r8
   11218:	e4 46 10 00 	l.sfgtu r6,r2
   1121c:	10 00 00 03 	l.bf 11228 <__subdf3+0x84c>
   11220:	9c 60 00 01 	l.addi r3,r0,1
   11224:	a8 6e 00 00 	l.ori r3,r14,0x0
   11228:	e0 e3 38 00 	l.add r7,r3,r7
   1122c:	03 ff fe 68 	l.j 10bcc <__subdf3+0x1f0>
   11230:	a9 cd 00 00 	l.ori r14,r13,0x0
   11234:	bc 23 00 00 	l.sfnei r3,0
   11238:	10 00 00 4f 	l.bf 11374 <__subdf3+0x998>
   1123c:	e0 68 30 04 	l.or r3,r8,r6
   11240:	e0 48 30 04 	l.or r2,r8,r6
   11244:	bc 02 00 00 	l.sfeqi r2,0
   11248:	10 00 00 a0 	l.bf 114c8 <__subdf3+0xaec>
   1124c:	18 80 00 0f 	l.movhi r4,0xf
   11250:	a8 e8 00 00 	l.ori r7,r8,0x0
   11254:	a8 46 00 00 	l.ori r2,r6,0x0
   11258:	aa 45 00 00 	l.ori r18,r5,0x0
   1125c:	03 ff fe 08 	l.j 10a7c <__subdf3+0xa0>
   11260:	9d c0 07 ff 	l.addi r14,r0,2047
   11264:	9c e0 00 00 	l.addi r7,r0,0
   11268:	a8 65 00 00 	l.ori r3,r5,0x0
   1126c:	03 ff fe c1 	l.j 10d70 <__subdf3+0x394>
   11270:	a8 47 00 00 	l.ori r2,r7,0x0
   11274:	e0 47 10 04 	l.or r2,r7,r2
   11278:	9c 60 00 00 	l.addi r3,r0,0
   1127c:	e0 80 10 02 	l.sub r4,r0,r2
   11280:	e0 44 10 04 	l.or r2,r4,r2
   11284:	03 ff ff 63 	l.j 11010 <__subdf3+0x634>
   11288:	b8 42 00 5f 	l.srli r2,r2,0x1f
   1128c:	a8 e3 00 00 	l.ori r7,r3,0x0
   11290:	a9 cb 00 00 	l.ori r14,r11,0x0
   11294:	a8 65 00 00 	l.ori r3,r5,0x0
   11298:	03 ff fe b6 	l.j 10d70 <__subdf3+0x394>
   1129c:	a8 47 00 00 	l.ori r2,r7,0x0
   112a0:	10 00 00 52 	l.bf 113e8 <__subdf3+0xa0c>
   112a4:	18 80 00 80 	l.movhi r4,0x80
   112a8:	e0 60 18 02 	l.sub r3,r0,r3
   112ac:	e0 e7 20 04 	l.or r7,r7,r4
   112b0:	bd 43 00 38 	l.sfgtsi r3,56
   112b4:	10 00 00 8a 	l.bf 114dc <__subdf3+0xb00>
   112b8:	bd 43 00 1f 	l.sfgtsi r3,31
   112bc:	10 00 00 95 	l.bf 11510 <__subdf3+0xb34>
   112c0:	9d 63 ff e0 	l.addi r11,r3,-32
   112c4:	9d 60 00 20 	l.addi r11,r0,32
   112c8:	e1 82 18 48 	l.srl r12,r2,r3
   112cc:	e1 6b 18 02 	l.sub r11,r11,r3
   112d0:	e0 67 18 48 	l.srl r3,r7,r3
   112d4:	e0 82 58 08 	l.sll r4,r2,r11
   112d8:	e0 e7 58 08 	l.sll r7,r7,r11
   112dc:	e0 40 20 02 	l.sub r2,r0,r4
   112e0:	e0 e7 60 04 	l.or r7,r7,r12
   112e4:	e0 42 20 04 	l.or r2,r2,r4
   112e8:	b8 42 00 5f 	l.srli r2,r2,0x1f
   112ec:	e0 47 10 04 	l.or r2,r7,r2
   112f0:	e0 42 30 00 	l.add r2,r2,r6
   112f4:	e1 03 40 00 	l.add r8,r3,r8
   112f8:	e4 46 10 00 	l.sfgtu r6,r2
   112fc:	10 00 00 03 	l.bf 11308 <__subdf3+0x92c>
   11300:	9c e0 00 01 	l.addi r7,r0,1
   11304:	9c e0 00 00 	l.addi r7,r0,0
   11308:	e0 e7 40 00 	l.add r7,r7,r8
   1130c:	03 ff fe 30 	l.j 10bcc <__subdf3+0x1f0>
   11310:	a9 cd 00 00 	l.ori r14,r13,0x0
   11314:	e0 68 30 04 	l.or r3,r8,r6
   11318:	bc 03 00 00 	l.sfeqi r3,0
   1131c:	13 ff fd d9 	l.bf 10a80 <__subdf3+0xa4>
   11320:	a4 62 00 07 	l.andi r3,r2,0x7
   11324:	e0 82 30 02 	l.sub r4,r2,r6
   11328:	e0 67 40 02 	l.sub r3,r7,r8
   1132c:	e4 82 20 00 	l.sfltu r2,r4
   11330:	10 00 00 03 	l.bf 1133c <__subdf3+0x960>
   11334:	9d 60 00 01 	l.addi r11,r0,1
   11338:	a9 6e 00 00 	l.ori r11,r14,0x0
   1133c:	e0 63 58 02 	l.sub r3,r3,r11
   11340:	19 80 00 80 	l.movhi r12,0x80
   11344:	e1 63 60 03 	l.and r11,r3,r12
   11348:	bc 0b 00 00 	l.sfeqi r11,0
   1134c:	13 ff fe 7a 	l.bf 10d34 <__subdf3+0x358>
   11350:	e0 46 10 02 	l.sub r2,r6,r2
   11354:	e0 e8 38 02 	l.sub r7,r8,r7
   11358:	e4 86 10 00 	l.sfltu r6,r2
   1135c:	10 00 00 03 	l.bf 11368 <__subdf3+0x98c>
   11360:	9c 60 00 01 	l.addi r3,r0,1
   11364:	9c 60 00 00 	l.addi r3,r0,0
   11368:	e0 e7 18 02 	l.sub r7,r7,r3
   1136c:	03 ff fd c4 	l.j 10a7c <__subdf3+0xa0>
   11370:	aa 45 00 00 	l.ori r18,r5,0x0
   11374:	bc 03 00 00 	l.sfeqi r3,0
   11378:	13 ff fd c1 	l.bf 10a7c <__subdf3+0xa0>
   1137c:	9d c0 07 ff 	l.addi r14,r0,2047
   11380:	b8 67 00 43 	l.srli r3,r7,0x3
   11384:	19 60 00 08 	l.movhi r11,0x8
   11388:	b8 42 00 43 	l.srli r2,r2,0x3
   1138c:	e0 83 58 03 	l.and r4,r3,r11
   11390:	b8 e7 00 1d 	l.slli r7,r7,0x1d
   11394:	bc 04 00 00 	l.sfeqi r4,0
   11398:	10 00 00 0c 	l.bf 113c8 <__subdf3+0x9ec>
   1139c:	e0 47 10 04 	l.or r2,r7,r2
   113a0:	b8 88 00 43 	l.srli r4,r8,0x3
   113a4:	e0 e4 58 03 	l.and r7,r4,r11
   113a8:	bc 27 00 00 	l.sfnei r7,0
   113ac:	10 00 00 07 	l.bf 113c8 <__subdf3+0x9ec>
   113b0:	15 00 00 00 	l.nop 0x0
   113b4:	b8 c6 00 43 	l.srli r6,r6,0x3
   113b8:	b8 48 00 1d 	l.slli r2,r8,0x1d
   113bc:	a8 64 00 00 	l.ori r3,r4,0x0
   113c0:	aa 45 00 00 	l.ori r18,r5,0x0
   113c4:	e0 42 30 04 	l.or r2,r2,r6
   113c8:	b8 e2 00 5d 	l.srli r7,r2,0x1d
   113cc:	b8 63 00 03 	l.slli r3,r3,0x3
   113d0:	b8 42 00 03 	l.slli r2,r2,0x3
   113d4:	9d c0 07 ff 	l.addi r14,r0,2047
   113d8:	03 ff fd a9 	l.j 10a7c <__subdf3+0xa0>
   113dc:	e0 e7 18 04 	l.or r7,r7,r3
   113e0:	0f ff ff b5 	l.bnf 112b4 <__subdf3+0x8d8>
   113e4:	bd 43 00 38 	l.sfgtsi r3,56
   113e8:	a8 e8 00 00 	l.ori r7,r8,0x0
   113ec:	a8 46 00 00 	l.ori r2,r6,0x0
   113f0:	03 ff fd a3 	l.j 10a7c <__subdf3+0xa0>
   113f4:	a9 cd 00 00 	l.ori r14,r13,0x0
   113f8:	bc 03 00 00 	l.sfeqi r3,0
   113fc:	10 00 00 41 	l.bf 11500 <__subdf3+0xb24>
   11400:	e0 68 30 04 	l.or r3,r8,r6
   11404:	bc 03 00 00 	l.sfeqi r3,0
   11408:	13 ff fd 9d 	l.bf 10a7c <__subdf3+0xa0>
   1140c:	9d c0 07 ff 	l.addi r14,r0,2047
   11410:	b8 67 00 43 	l.srli r3,r7,0x3
   11414:	19 60 00 08 	l.movhi r11,0x8
   11418:	b8 42 00 43 	l.srli r2,r2,0x3
   1141c:	e0 83 58 03 	l.and r4,r3,r11
   11420:	b8 e7 00 1d 	l.slli r7,r7,0x1d
   11424:	bc 04 00 00 	l.sfeqi r4,0
   11428:	10 00 00 0b 	l.bf 11454 <__subdf3+0xa78>
   1142c:	e0 47 10 04 	l.or r2,r7,r2
   11430:	b8 88 00 43 	l.srli r4,r8,0x3
   11434:	e0 e4 58 03 	l.and r7,r4,r11
   11438:	bc 27 00 00 	l.sfnei r7,0
   1143c:	10 00 00 06 	l.bf 11454 <__subdf3+0xa78>
   11440:	15 00 00 00 	l.nop 0x0
   11444:	b8 c6 00 43 	l.srli r6,r6,0x3
   11448:	b8 48 00 1d 	l.slli r2,r8,0x1d
   1144c:	a8 64 00 00 	l.ori r3,r4,0x0
   11450:	e0 42 30 04 	l.or r2,r2,r6
   11454:	b8 e2 00 5d 	l.srli r7,r2,0x1d
   11458:	b8 63 00 03 	l.slli r3,r3,0x3
   1145c:	b8 42 00 03 	l.slli r2,r2,0x3
   11460:	aa 45 00 00 	l.ori r18,r5,0x0
   11464:	e0 e7 18 04 	l.or r7,r7,r3
   11468:	03 ff fd 85 	l.j 10a7c <__subdf3+0xa0>
   1146c:	9d c0 07 ff 	l.addi r14,r0,2047
   11470:	a8 44 00 00 	l.ori r2,r4,0x0
   11474:	a8 8e 00 00 	l.ori r4,r14,0x0
   11478:	03 ff fd a1 	l.j 10afc <__subdf3+0x120>
   1147c:	a8 e2 00 00 	l.ori r7,r2,0x0
   11480:	03 ff ff 4c 	l.j 111b0 <__subdf3+0x7d4>
   11484:	9d 00 00 00 	l.addi r8,r0,0
   11488:	bc 03 00 20 	l.sfeqi r3,32
   1148c:	10 00 00 2e 	l.bf 11544 <__subdf3+0xb68>
   11490:	e1 67 58 48 	l.srl r11,r7,r11
   11494:	9c 80 00 40 	l.addi r4,r0,64
   11498:	e0 64 18 02 	l.sub r3,r4,r3
   1149c:	e0 87 18 08 	l.sll r4,r7,r3
   114a0:	e0 84 10 04 	l.or r4,r4,r2
   114a4:	9c 60 00 00 	l.addi r3,r0,0
   114a8:	e0 40 20 02 	l.sub r2,r0,r4
   114ac:	e0 42 20 04 	l.or r2,r2,r4
   114b0:	b8 42 00 5f 	l.srli r2,r2,0x1f
   114b4:	03 ff fe d7 	l.j 11010 <__subdf3+0x634>
   114b8:	e0 4b 10 04 	l.or r2,r11,r2
   114bc:	a8 4e 00 00 	l.ori r2,r14,0x0
   114c0:	03 ff fe 2c 	l.j 10d70 <__subdf3+0x394>
   114c4:	a8 6e 00 00 	l.ori r3,r14,0x0
   114c8:	a8 62 00 00 	l.ori r3,r2,0x0
   114cc:	a8 e4 ff ff 	l.ori r7,r4,0xffff
   114d0:	9c 40 ff ff 	l.addi r2,r0,-1
   114d4:	03 ff fe 27 	l.j 10d70 <__subdf3+0x394>
   114d8:	9d c0 07 ff 	l.addi r14,r0,2047
   114dc:	e0 47 10 04 	l.or r2,r7,r2
   114e0:	9c 60 00 00 	l.addi r3,r0,0
   114e4:	e0 80 10 02 	l.sub r4,r0,r2
   114e8:	e0 44 10 04 	l.or r2,r4,r2
   114ec:	03 ff ff 81 	l.j 112f0 <__subdf3+0x914>
   114f0:	b8 42 00 5f 	l.srli r2,r2,0x1f
   114f4:	a8 e8 00 00 	l.ori r7,r8,0x0
   114f8:	03 ff fd 61 	l.j 10a7c <__subdf3+0xa0>
   114fc:	a8 46 00 00 	l.ori r2,r6,0x0
   11500:	a8 e8 00 00 	l.ori r7,r8,0x0
   11504:	a8 46 00 00 	l.ori r2,r6,0x0
   11508:	03 ff fd 5d 	l.j 10a7c <__subdf3+0xa0>
   1150c:	9d c0 07 ff 	l.addi r14,r0,2047
   11510:	bc 03 00 20 	l.sfeqi r3,32
   11514:	10 00 00 13 	l.bf 11560 <__subdf3+0xb84>
   11518:	e1 67 58 48 	l.srl r11,r7,r11
   1151c:	9c 80 00 40 	l.addi r4,r0,64
   11520:	e0 64 18 02 	l.sub r3,r4,r3
   11524:	e0 87 18 08 	l.sll r4,r7,r3
   11528:	e0 84 10 04 	l.or r4,r4,r2
   1152c:	9c 60 00 00 	l.addi r3,r0,0
   11530:	e0 40 20 02 	l.sub r2,r0,r4
   11534:	e0 42 20 04 	l.or r2,r2,r4
   11538:	b8 42 00 5f 	l.srli r2,r2,0x1f
   1153c:	03 ff ff 6d 	l.j 112f0 <__subdf3+0x914>
   11540:	e0 4b 10 04 	l.or r2,r11,r2
   11544:	03 ff ff d7 	l.j 114a0 <__subdf3+0xac4>
   11548:	9c 80 00 00 	l.addi r4,r0,0
   1154c:	03 ff fe 09 	l.j 10d70 <__subdf3+0x394>
   11550:	a8 67 00 00 	l.ori r3,r7,0x0
   11554:	a8 46 00 00 	l.ori r2,r6,0x0
   11558:	03 ff fd fd 	l.j 10d4c <__subdf3+0x370>
   1155c:	aa 45 00 00 	l.ori r18,r5,0x0
   11560:	03 ff ff f2 	l.j 11528 <__subdf3+0xb4c>
   11564:	9c 80 00 00 	l.addi r4,r0,0

00011568 <__fixdfsi>:
   11568:	b8 a3 00 54 	l.srli r5,r3,0x14
   1156c:	d7 e1 17 fc 	l.sw -4(r1),r2
   11570:	18 40 00 0f 	l.movhi r2,0xf
   11574:	a4 a5 07 ff 	l.andi r5,r5,0x7ff
   11578:	d7 e1 0f f8 	l.sw -8(r1),r1
   1157c:	a8 42 ff ff 	l.ori r2,r2,0xffff
   11580:	bd a5 03 fe 	l.sflesi r5,1022
   11584:	e0 c3 10 03 	l.and r6,r3,r2
   11588:	9c 21 ff f8 	l.addi r1,r1,-8
   1158c:	b8 63 00 5f 	l.srli r3,r3,0x1f
   11590:	10 00 00 11 	l.bf 115d4 <__fixdfsi+0x6c>
   11594:	9d 60 00 00 	l.addi r11,r0,0
   11598:	bd a5 04 1d 	l.sflesi r5,1053
   1159c:	0c 00 00 12 	l.bnf 115e4 <__fixdfsi+0x7c>
   115a0:	9c e0 04 33 	l.addi r7,r0,1075
   115a4:	18 40 00 10 	l.movhi r2,0x10
   115a8:	e0 e7 28 02 	l.sub r7,r7,r5
   115ac:	bd 47 00 1f 	l.sfgtsi r7,31
   115b0:	0c 00 00 14 	l.bnf 11600 <__fixdfsi+0x98>
   115b4:	e0 c6 10 04 	l.or r6,r6,r2
   115b8:	9c 80 04 13 	l.addi r4,r0,1043
   115bc:	e0 a4 28 02 	l.sub r5,r4,r5
   115c0:	e0 a6 28 48 	l.srl r5,r6,r5
   115c4:	bc 23 00 00 	l.sfnei r3,0
   115c8:	10 00 00 03 	l.bf 115d4 <__fixdfsi+0x6c>
   115cc:	e1 60 28 02 	l.sub r11,r0,r5
   115d0:	a9 65 00 00 	l.ori r11,r5,0x0
   115d4:	9c 21 00 08 	l.addi r1,r1,8
   115d8:	84 21 ff f8 	l.lwz r1,-8(r1)
   115dc:	44 00 48 00 	l.jr r9
   115e0:	84 41 ff fc 	l.lwz r2,-4(r1)
   115e4:	9c 21 00 08 	l.addi r1,r1,8
   115e8:	18 40 7f ff 	l.movhi r2,0x7fff
   115ec:	84 21 ff f8 	l.lwz r1,-8(r1)
   115f0:	a8 42 ff ff 	l.ori r2,r2,0xffff
   115f4:	e1 63 10 00 	l.add r11,r3,r2
   115f8:	44 00 48 00 	l.jr r9
   115fc:	84 41 ff fc 	l.lwz r2,-4(r1)
   11600:	9c a5 fb ed 	l.addi r5,r5,-1043
   11604:	e0 84 38 48 	l.srl r4,r4,r7
   11608:	e0 a6 28 08 	l.sll r5,r6,r5
   1160c:	03 ff ff ee 	l.j 115c4 <__fixdfsi+0x5c>
   11610:	e0 a5 20 04 	l.or r5,r5,r4

00011614 <__floatsidf>:
   11614:	d7 e1 17 f4 	l.sw -12(r1),r2
   11618:	d7 e1 4f fc 	l.sw -4(r1),r9
   1161c:	d7 e1 0f f0 	l.sw -16(r1),r1
   11620:	d7 e1 77 f8 	l.sw -8(r1),r14
   11624:	bc 03 00 00 	l.sfeqi r3,0
   11628:	9c 21 ff f0 	l.addi r1,r1,-16
   1162c:	10 00 00 33 	l.bf 116f8 <__floatsidf+0xe4>
   11630:	a8 43 00 00 	l.ori r2,r3,0x0
   11634:	b8 63 00 9f 	l.srai r3,r3,0x1f
   11638:	b9 c2 00 5f 	l.srli r14,r2,0x1f
   1163c:	e0 42 18 05 	l.xor r2,r2,r3
   11640:	e0 42 18 02 	l.sub r2,r2,r3
   11644:	04 00 00 60 	l.jal 117c4 <__clzsi2>
   11648:	a8 62 00 00 	l.ori r3,r2,0x0
   1164c:	9c 60 04 1e 	l.addi r3,r0,1054
   11650:	9c a0 04 33 	l.addi r5,r0,1075
   11654:	e0 63 58 02 	l.sub r3,r3,r11
   11658:	e0 a5 18 02 	l.sub r5,r5,r3
   1165c:	bd 45 00 1f 	l.sfgtsi r5,31
   11660:	0c 00 00 1d 	l.bnf 116d4 <__floatsidf+0xc0>
   11664:	9c 80 00 0b 	l.addi r4,r0,11
   11668:	9d 60 04 13 	l.addi r11,r0,1043
   1166c:	18 c0 00 0f 	l.movhi r6,0xf
   11670:	e1 6b 18 02 	l.sub r11,r11,r3
   11674:	a8 c6 ff ff 	l.ori r6,r6,0xffff
   11678:	e0 42 58 08 	l.sll r2,r2,r11
   1167c:	a4 83 07 ff 	l.andi r4,r3,0x7ff
   11680:	9c a0 00 00 	l.addi r5,r0,0
   11684:	a8 6e 00 00 	l.ori r3,r14,0x0
   11688:	e0 42 30 03 	l.and r2,r2,r6
   1168c:	18 c0 00 0f 	l.movhi r6,0xf
   11690:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   11694:	a8 c6 ff ff 	l.ori r6,r6,0xffff
   11698:	b8 84 00 14 	l.slli r4,r4,0x14
   1169c:	e0 42 30 03 	l.and r2,r2,r6
   116a0:	b8 63 00 1f 	l.slli r3,r3,0x1f
   116a4:	e0 42 20 04 	l.or r2,r2,r4
   116a8:	9c 21 00 10 	l.addi r1,r1,16
   116ac:	e0 42 18 04 	l.or r2,r2,r3
   116b0:	a8 e5 00 00 	l.ori r7,r5,0x0
   116b4:	a8 c2 00 00 	l.ori r6,r2,0x0
   116b8:	85 21 ff fc 	l.lwz r9,-4(r1)
   116bc:	84 21 ff f0 	l.lwz r1,-16(r1)
   116c0:	e1 66 00 04 	l.or r11,r6,r0
   116c4:	e1 87 00 04 	l.or r12,r7,r0
   116c8:	84 41 ff f4 	l.lwz r2,-12(r1)
   116cc:	44 00 48 00 	l.jr r9
   116d0:	85 c1 ff f8 	l.lwz r14,-8(r1)
   116d4:	18 c0 00 0f 	l.movhi r6,0xf
   116d8:	e1 64 58 02 	l.sub r11,r4,r11
   116dc:	e0 a2 28 08 	l.sll r5,r2,r5
   116e0:	e0 42 58 48 	l.srl r2,r2,r11
   116e4:	a8 c6 ff ff 	l.ori r6,r6,0xffff
   116e8:	a4 83 07 ff 	l.andi r4,r3,0x7ff
   116ec:	e0 42 30 03 	l.and r2,r2,r6
   116f0:	03 ff ff e7 	l.j 1168c <__floatsidf+0x78>
   116f4:	a8 6e 00 00 	l.ori r3,r14,0x0
   116f8:	a8 83 00 00 	l.ori r4,r3,0x0
   116fc:	03 ff ff e4 	l.j 1168c <__floatsidf+0x78>
   11700:	a8 a3 00 00 	l.ori r5,r3,0x0

00011704 <__floatunsidf>:
   11704:	d7 e1 17 f8 	l.sw -8(r1),r2
   11708:	d7 e1 4f fc 	l.sw -4(r1),r9
   1170c:	d7 e1 0f f4 	l.sw -12(r1),r1
   11710:	bc 03 00 00 	l.sfeqi r3,0
   11714:	9c 21 ff f4 	l.addi r1,r1,-12
   11718:	10 00 00 29 	l.bf 117bc <__floatunsidf+0xb8>
   1171c:	a8 43 00 00 	l.ori r2,r3,0x0
   11720:	04 00 00 29 	l.jal 117c4 <__clzsi2>
   11724:	15 00 00 00 	l.nop 0x0
   11728:	9c c0 04 1e 	l.addi r6,r0,1054
   1172c:	9c a0 04 33 	l.addi r5,r0,1075
   11730:	e0 c6 58 02 	l.sub r6,r6,r11
   11734:	e0 a5 30 02 	l.sub r5,r5,r6
   11738:	bd 45 00 1f 	l.sfgtsi r5,31
   1173c:	0c 00 00 18 	l.bnf 1179c <__floatunsidf+0x98>
   11740:	a4 86 07 ff 	l.andi r4,r6,0x7ff
   11744:	9c a0 04 13 	l.addi r5,r0,1043
   11748:	e0 65 30 02 	l.sub r3,r5,r6
   1174c:	18 a0 00 0f 	l.movhi r5,0xf
   11750:	e0 62 18 08 	l.sll r3,r2,r3
   11754:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   11758:	9c 40 00 00 	l.addi r2,r0,0
   1175c:	e0 63 28 03 	l.and r3,r3,r5
   11760:	18 a0 00 0f 	l.movhi r5,0xf
   11764:	a4 84 07 ff 	l.andi r4,r4,0x7ff
   11768:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   1176c:	b8 84 00 14 	l.slli r4,r4,0x14
   11770:	e0 63 28 03 	l.and r3,r3,r5
   11774:	9c 21 00 0c 	l.addi r1,r1,12
   11778:	e0 83 20 04 	l.or r4,r3,r4
   1177c:	a8 e2 00 00 	l.ori r7,r2,0x0
   11780:	a8 c4 00 00 	l.ori r6,r4,0x0
   11784:	85 21 ff fc 	l.lwz r9,-4(r1)
   11788:	84 21 ff f4 	l.lwz r1,-12(r1)
   1178c:	e1 66 00 04 	l.or r11,r6,r0
   11790:	e1 87 00 04 	l.or r12,r7,r0
   11794:	44 00 48 00 	l.jr r9
   11798:	84 41 ff f8 	l.lwz r2,-8(r1)
   1179c:	9c 60 00 0b 	l.addi r3,r0,11
   117a0:	e0 63 58 02 	l.sub r3,r3,r11
   117a4:	e0 62 18 48 	l.srl r3,r2,r3
   117a8:	e0 42 28 08 	l.sll r2,r2,r5
   117ac:	18 a0 00 0f 	l.movhi r5,0xf
   117b0:	a8 a5 ff ff 	l.ori r5,r5,0xffff
   117b4:	03 ff ff eb 	l.j 11760 <__floatunsidf+0x5c>
   117b8:	e0 63 28 03 	l.and r3,r3,r5
   117bc:	03 ff ff e9 	l.j 11760 <__floatunsidf+0x5c>
   117c0:	a8 83 00 00 	l.ori r4,r3,0x0

000117c4 <__clzsi2>:
   117c4:	d7 e1 17 fc 	l.sw -4(r1),r2
   117c8:	a8 40 ff ff 	l.ori r2,r0,0xffff
   117cc:	d7 e1 0f f8 	l.sw -8(r1),r1
   117d0:	e4 43 10 00 	l.sfgtu r3,r2
   117d4:	10 00 00 08 	l.bf 117f4 <__clzsi2+0x30>
   117d8:	9c 21 ff f8 	l.addi r1,r1,-8
   117dc:	bc 43 00 ff 	l.sfgtui r3,255
   117e0:	10 00 00 16 	l.bf 11838 <__clzsi2+0x74>
   117e4:	15 00 00 00 	l.nop 0x0
   117e8:	9c 80 00 20 	l.addi r4,r0,32
   117ec:	00 00 00 09 	l.j 11810 <__clzsi2+0x4c>
   117f0:	9c a0 00 00 	l.addi r5,r0,0
   117f4:	18 40 00 ff 	l.movhi r2,0xff
   117f8:	a8 42 ff ff 	l.ori r2,r2,0xffff
   117fc:	e4 43 10 00 	l.sfgtu r3,r2
   11800:	0c 00 00 11 	l.bnf 11844 <__clzsi2+0x80>
   11804:	9c 80 00 10 	l.addi r4,r0,16
   11808:	9c 80 00 08 	l.addi r4,r0,8
   1180c:	9c a0 00 18 	l.addi r5,r0,24
   11810:	18 40 00 01 	l.movhi r2,0x1
   11814:	e0 63 28 48 	l.srl r3,r3,r5
   11818:	a8 42 1e ec 	l.ori r2,r2,0x1eec
   1181c:	9c 21 00 08 	l.addi r1,r1,8
   11820:	e0 63 10 00 	l.add r3,r3,r2
   11824:	84 21 ff f8 	l.lwz r1,-8(r1)
   11828:	8d 63 00 00 	l.lbz r11,0(r3)
   1182c:	84 41 ff fc 	l.lwz r2,-4(r1)
   11830:	44 00 48 00 	l.jr r9
   11834:	e1 64 58 02 	l.sub r11,r4,r11
   11838:	9c 80 00 18 	l.addi r4,r0,24
   1183c:	03 ff ff f5 	l.j 11810 <__clzsi2+0x4c>
   11840:	9c a0 00 08 	l.addi r5,r0,8
   11844:	03 ff ff f3 	l.j 11810 <__clzsi2+0x4c>
   11848:	a8 a4 00 00 	l.ori r5,r4,0x0

0001184c <__do_global_ctors_aux>:
   1184c:	d7 e1 17 f8 	l.sw -8(r1),r2
   11850:	18 40 00 01 	l.movhi r2,0x1
   11854:	d7 e1 4f fc 	l.sw -4(r1),r9
   11858:	a8 42 20 50 	l.ori r2,r2,0x2050
   1185c:	d7 e1 0f f4 	l.sw -12(r1),r1
   11860:	84 62 ff fc 	l.lwz r3,-4(r2)
   11864:	9c 21 ff f4 	l.addi r1,r1,-12
   11868:	bc 23 ff ff 	l.sfnei r3,-1
   1186c:	0c 00 00 08 	l.bnf 1188c <__do_global_ctors_aux+0x40>
   11870:	9c 42 ff fc 	l.addi r2,r2,-4
   11874:	48 00 18 00 	l.jalr r3
   11878:	9c 42 ff fc 	l.addi r2,r2,-4
   1187c:	84 62 00 00 	l.lwz r3,0(r2)
   11880:	bc 23 ff ff 	l.sfnei r3,-1
   11884:	13 ff ff fc 	l.bf 11874 <__do_global_ctors_aux+0x28>
   11888:	15 00 00 00 	l.nop 0x0
   1188c:	9c 21 00 0c 	l.addi r1,r1,12
   11890:	85 21 ff fc 	l.lwz r9,-4(r1)
   11894:	84 21 ff f4 	l.lwz r1,-12(r1)
   11898:	44 00 48 00 	l.jr r9
   1189c:	84 41 ff f8 	l.lwz r2,-8(r1)

000118a0 <call___do_global_ctors_aux>:
   118a0:	d7 e1 4f fc 	l.sw -4(r1),r9
   118a4:	d7 e1 0f f8 	l.sw -8(r1),r1
   118a8:	9c 21 ff f8 	l.addi r1,r1,-8
   118ac:	9c 21 00 08 	l.addi r1,r1,8
   118b0:	85 21 ff fc 	l.lwz r9,-4(r1)
   118b4:	44 00 48 00 	l.jr r9
   118b8:	84 21 ff f8 	l.lwz r1,-8(r1)

Disassembly of section .fini:

000118bc <_fini>:
   118bc:	9c 21 ff fc 	l.addi r1,r1,-4
   118c0:	d4 01 48 00 	l.sw 0(r1),r9
   118c4:	07 ff c2 51 	l.jal 2208 <__do_global_dtors_aux>
   118c8:	15 00 00 00 	l.nop 0x0
   118cc:	85 21 00 00 	l.lwz r9,0(r1)
   118d0:	44 00 48 00 	l.jr r9
   118d4:	9c 21 00 04 	l.addi r1,r1,4
