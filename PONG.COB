000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. "SHT-MAIN".
000003 ENVIRONMENT DIVISION.
000004 CONFIGURATION SECTION.
000005 SPECIAL-NAMES.
000006 INPUT-OUTPUT SECTION.
000007 FILE-CONTROL.
000008 DATA DIVISION.
000009 BASED-STORAGE SECTION.
000010 FILE SECTION.
000011 WORKING-STORAGE SECTION.
000012 01 POWER--HPOWOBJS-SHT-MAIN IS GLOBAL IS EXTERNAL.
000013   02 POWER--HPOWOBJ--SHT-MAIN.
000013     03 SHT-MAIN PIC S9(9) COMP-5.
000013     03 POW-P001 REDEFINES  SHT-MAIN USAGE POINTER.
000013   02 POWER--HPOWOBJ--RECT-PADL.
000013     03 RECT-PADL PIC S9(9) COMP-5.
000013     03 POW-P002 REDEFINES  RECT-PADL USAGE POINTER.
000013   02 POWER--HPOWOBJ--PF1.
000013     03 PF1 PIC S9(9) COMP-5.
000013     03 POW-P003 REDEFINES  PF1 USAGE POINTER.
000013   02 POWER--HPOWOBJ--PF2.
000013     03 PF2 PIC S9(9) COMP-5.
000013     03 POW-P004 REDEFINES  PF2 USAGE POINTER.
000013   02 POWER--HPOWOBJ--RECT-PADR.
000013     03 RECT-PADR PIC S9(9) COMP-5.
000013     03 POW-P005 REDEFINES  RECT-PADR USAGE POINTER.
000013   02 POWER--HPOWOBJ--PF11.
000013     03 PF11 PIC S9(9) COMP-5.
000013     03 POW-P006 REDEFINES  PF11 USAGE POINTER.
000013   02 POWER--HPOWOBJ--PF12.
000013     03 PF12 PIC S9(9) COMP-5.
000013     03 POW-P007 REDEFINES  PF12 USAGE POINTER.
000013   02 POWER--HPOWOBJ--TMR-BALL-MOVE.
000013     03 TMR-BALL-MOVE PIC S9(9) COMP-5.
000013     03 POW-P008 REDEFINES  TMR-BALL-MOVE USAGE POINTER.
000013   02 POWER--HPOWOBJ--TXT-SCOREL.
000013     03 TXT-SCOREL PIC S9(9) COMP-5.
000013     03 POW-P009 REDEFINES  TXT-SCOREL USAGE POINTER.
000013   02 POWER--HPOWOBJ--TXT-SCORER.
000013     03 TXT-SCORER PIC S9(9) COMP-5.
000013     03 POW-P010 REDEFINES  TXT-SCORER USAGE POINTER.
000013   02 POWER--HPOWOBJ--RECT-BALL.
000013     03 RECT-BALL PIC S9(9) COMP-5.
000013     03 POW-P011 REDEFINES  RECT-BALL USAGE POINTER.
000014 01  REDEFINES POWER--HPOWOBJS-SHT-MAIN.
000015   02  POWER--HPOWOBJS PICTURE IS X(4) OCCURS 11 TIMES.
000016 01  POWER-HPOWOBJIDX PIC S9(9) COMP-5.
000017  01 GWN-BALL-DY GLOBAL PIC S9 COMP-5.
000018  01 GWN-BALL-DX GLOBAL PIC S9 COMP-5.
000019
000020  01 GWX-SHT-MAIN-POS GLOBAL.
000021   02 GWN-SHT-MAIN-X PIC S9(4) COMP-5.
000022   02 GWN-SHT-MAIN-Y PIC S9(4) COMP-5.
000023   02 GWN-SHT-MAIN-W PIC S9(4) COMP-5.
000024   02 GWN-SHT-MAIN-H PIC S9(4) COMP-5.
000025
000026  01 GWX-PADL-POS GLOBAL.
000027   02 GWN-PADL-X PIC S9(4) COMP-5.
000028   02 GWN-PADL-Y PIC S9(4) COMP-5.
000029   02 GWN-PADL-W PIC S9(4) COMP-5.
000030   02 GWN-PADL-H PIC S9(4) COMP-5.
000031
000032  01 GWX-PADR-POS GLOBAL.
000033   02 GWN-PADR-X PIC S9(4) COMP-5.
000034   02 GWN-PADR-Y PIC S9(4) COMP-5.
000035   02 GWN-PADR-W PIC S9(4) COMP-5.
000036   02 GWN-PADR-H PIC S9(4) COMP-5.
000037
000038  01 GWX-BALL-POS GLOBAL.
000039   02 GWN-BALL-X PIC S9(4) COMP-5.
000040   02 GWN-BALL-Y PIC S9(4) COMP-5.
000041   02 GWN-BALL-W PIC S9(4) COMP-5.
000042   02 GWN-BALL-H PIC S9(4) COMP-5.
000043
000044  01 GWX-SCOREL-POS GLOBAL.
000045   02 GWN-SCOREL-X PIC S9(4) COMP-5.
000046   02 GWN-SCOREL-Y PIC S9(4) COMP-5.
000047   02 GWN-SCOREL-W PIC S9(4) COMP-5.
000048   02 GWN-SCOREL-H PIC S9(4) COMP-5.
000049
000050  01 GWX-SCORER-POS GLOBAL.
000051   02 GWN-SCORER-X PIC S9(4) COMP-5.
000052   02 GWN-SCORER-Y PIC S9(4) COMP-5.
000053   02 GWN-SCORER-W PIC S9(4) COMP-5.
000054   02 GWN-SCORER-H PIC S9(4) COMP-5.
000055
000056  01 GWX-SCOREL GLOBAL.
000057   02 GWN-SCOREL PIC 99 VALUE 00.
000058
000059  01 GWX-SCORER GLOBAL.
000060   02 GWN-SCORER PIC 99 VALUE 00.
000061 CONSTANT SECTION.
000062  01 GWN-PAD-WIDTH   GLOBAL PIC 99 COMP-5 VALUE 15.
000063  01 GWN-PAD-HEIGHT  GLOBAL PIC 99 COMP-5 VALUE 80.
000064  01 GWN-PAD-SPEED   GLOBAL PIC 99 COMP-5 VALUE 10.
000065  01 GWN-PAD-MARGIN  GLOBAL PIC 9  COMP-5 VALUE 5.
000066
000067  01 GWN-BALL-SIZE   GLOBAL PIC 99 COMP-5 VALUE 15.
000068  01 GWN-BALL-VSPEED GLOBAL PIC S9 COMP-5 VALUE 2.
000069  01 GWN-BALL-HSPEED GLOBAL PIC S9 COMP-5 VALUE 3.
000070 LINKAGE SECTION.
000071 01  POWER--HPOWOBJ IS GLOBAL PICTURE IS  X(4).
000072 01  POWER--ID      IS GLOBAL PICTURE IS S9(9)
000073                    USAGE IS COMPUTATIONAL-5.
000074 01  POWER--NOTIFY  IS GLOBAL PICTURE IS S9(9)
000075                    USAGE IS COMPUTATIONAL-5.
000076 01  POWER--MESSAGE IS GLOBAL PICTURE IS S9(9)
000077                    USAGE IS COMPUTATIONAL-5.
000078 PROCEDURE DIVISION
000079     USING POWER--HPOWOBJ POWER--ID POWER--MESSAGE POWER--NOTIFY.
000080     EVALUATE POWER--MESSAGE
000081     WHEN 1025
000082         EVALUATE POWER--HPOWOBJ
000083         WHEN POWER--HPOWOBJ--PF1
000084             EVALUATE POWER--NOTIFY
000085             WHEN 1 
000086                CALL "PF1-CLICK"
000087             END-EVALUATE
000088         WHEN POWER--HPOWOBJ--PF2
000089             EVALUATE POWER--NOTIFY
000090             WHEN 1 
000091                CALL "PF2-CLICK"
000092             END-EVALUATE
000093         WHEN POWER--HPOWOBJ--PF11
000094             EVALUATE POWER--NOTIFY
000095             WHEN 1 
000096                CALL "PF11-CLICK"
000097             END-EVALUATE
000098         WHEN POWER--HPOWOBJ--PF12
000099             EVALUATE POWER--NOTIFY
000100             WHEN 1 
000101                CALL "PF12-CLICK"
000102             END-EVALUATE
000103         WHEN POWER--HPOWOBJ--TMR-BALL-MOVE
000104             EVALUATE POWER--NOTIFY
000105             WHEN 12 
000106                CALL "TMR-BALL-MOVE-TIMER"
000107             END-EVALUATE
000108         END-EVALUATE
000109     WHEN 1024
000110         MOVE POWER--HPOWOBJ TO POWER--HPOWOBJS (POWER--ID + 1)
000111     WHEN 1036
000112         CALL "SHT-MAIN-OPENED"
000113     WHEN 1038
000114         CALL "SHT-MAIN-START"
000115     END-EVALUATE
000116     EXIT PROGRAM.
000117 IDENTIFICATION DIVISION.
000118 PROGRAM-ID. "SHT-MAIN-OPENED".
000119 ENVIRONMENT DIVISION.
000120 DATA        DIVISION.
000121 WORKING-STORAGE SECTION.
000122  01 CVAR PIC S9(4).
000122 77 POW-0001 PIC X(8) .
000122 77 POW-0002 PIC X(8) .
000122 77 POW-0003 PIC X(8) .
000122 77 POW-0004 PIC X(8) .
000122 77 POW-0005 PIC X(8) .
000122 77 POW-0006 PIC X(8) .
000122 77 POW-0007 PIC X(8) .
000122 77 POW-0008 PIC X(8) .
000122 77 POW-0009 PIC X(8) .
000122 77 POW-0010 PIC X(8) .
000123
000124 PROCEDURE   DIVISION.
000125 MAIN.
000126     CALL  "XPOWCWGETPOSITION"  USING BY VALUE SHT-MAIN  BY REFERENCE POW-0001 .
000126     MOVE POW-0001 TO GWX-SHT-MAIN-POS.
000127     CALL  "XPOWCWGETPOSITION"  USING BY VALUE RECT-PADL  BY REFERENCE POW-0002 .
000127     MOVE POW-0002 TO GWX-PADL-POS.
000128     CALL  "XPOWCWGETPOSITION"  USING BY VALUE RECT-PADR  BY REFERENCE POW-0003 .
000128     MOVE POW-0003 TO GWX-PADR-POS.
000129     CALL  "XPOWCWGETPOSITION"  USING BY VALUE RECT-BALL  BY REFERENCE POW-0004 .
000129     MOVE POW-0004 TO GWX-BALL-POS.
000130     CALL  "XPOWCWGETPOSITION"  USING BY VALUE TXT-SCOREL  BY REFERENCE POW-0005 .
000130     MOVE POW-0005 TO GWX-SCOREL-POS.
000131     CALL  "XPOWCWGETPOSITION"  USING BY VALUE TXT-SCORER  BY REFERENCE POW-0006 .
000131     MOVE POW-0006 TO GWX-SCORER-POS.
000132
000133     MOVE 10 TO GWN-SCOREL-Y.
000134     MOVE 10 TO GWN-SCORER-Y.
000135
000136     COMPUTE CVAR = GWN-SHT-MAIN-W - GWN-SCORER-W - 230.
000137     MOVE 230 TO GWN-SCOREL-X.
000138     MOVE CVAR TO GWN-SCORER-X.
000139
000140     MOVE  GWX-SCOREL-POS  TO POW-0007.
000140     CALL  "XPOWCWSETPOSITION"  USING BY VALUE TXT-SCOREL  BY REFERENCE POW-0007 .
000141     MOVE  GWX-SCORER-POS  TO POW-0008.
000141     CALL  "XPOWCWSETPOSITION"  USING BY VALUE TXT-SCORER  BY REFERENCE POW-0008 .
000142
000143     COMPUTE CVAR = GWN-SHT-MAIN-W - GWN-PAD-MARGIN - GWN-PAD-WIDTH - 5.
000144     MOVE GWN-PAD-MARGIN TO GWN-PADL-X.
000145     MOVE CVAR TO GWN-PADR-X.
000146
000147     COMPUTE CVAR = (GWN-SHT-MAIN-H / 2) - (GWN-PAD-HEIGHT / 2).
000148     MOVE CVAR TO GWN-PADL-Y.
000149     MOVE CVAR TO GWN-PADR-Y.
000150
000151     MOVE GWN-PAD-WIDTH TO GWN-PADL-W.
000152     MOVE GWN-PAD-WIDTH TO GWN-PADR-W.
000153
000154     MOVE GWN-PAD-HEIGHT TO GWN-PADL-H.
000155     MOVE GWN-PAD-HEIGHT TO GWN-PADR-H.
000156
000157     COMPUTE CVAR = (GWN-SHT-MAIN-W / 2) - (GWN-BALL-SIZE / 2).
000158     MOVE CVAR TO GWN-BALL-X.
000159
000160     COMPUTE CVAR = (GWN-SHT-MAIN-H / 2) - (GWN-BALL-SIZE / 2).
000161     MOVE CVAR TO GWN-BALL-Y.
000162
000163     MOVE GWN-BALL-HSPEED TO GWN-BALL-DX.
000164     MOVE GWN-BALL-VSPEED TO GWN-BALL-DY.
000165
000166     MOVE GWN-BALL-SIZE TO GWN-BALL-H.
000167     MOVE GWN-BALL-SIZE TO GWN-BALL-W.
000168
000169     MOVE  GWX-PADL-POS  TO POW-0009.
000169     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADL  BY REFERENCE POW-0009 .
000170     MOVE  GWX-PADR-POS  TO POW-0010.
000170     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADR  BY REFERENCE POW-0010 .
000171 END PROGRAM "SHT-MAIN-OPENED".
000172 IDENTIFICATION DIVISION.
000173 PROGRAM-ID. "SHT-MAIN-START".
000174 PROCEDURE DIVISION.
000175     EXIT PROGRAM.
000176 END PROGRAM "SHT-MAIN-START".
000177 IDENTIFICATION DIVISION.
000178 PROGRAM-ID. "PF1-CLICK".
000179 ENVIRONMENT DIVISION.
000180 DATA        DIVISION.
000180 WORKING-STORAGE SECTION.
000180 77 POW-0001 PIC X(8) .
000181 PROCEDURE   DIVISION.
000182 MAIN.
000183     IF GWN-PADL-Y > GWN-PAD-SPEED + GWN-PAD-MARGIN
000184         SUBTRACT GWN-PAD-SPEED FROM GWN-PADL-Y GIVING GWN-PADL-Y
000185     END-IF.
000186     MOVE  GWX-PADL-POS  TO POW-0001
000186     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADL  BY REFERENCE POW-0001 .
000187 END PROGRAM "PF1-CLICK".
000188 IDENTIFICATION DIVISION.
000189 PROGRAM-ID. "PF2-CLICK".
000190 ENVIRONMENT DIVISION.
000191 DATA        DIVISION.
000191 WORKING-STORAGE SECTION.
000191 77 POW-0001 PIC X(8) .
000192 PROCEDURE   DIVISION.
000193 MAIN.
000194     IF GWN-PADL-Y < GWN-SHT-MAIN-H - GWN-PADL-H - GWN-PAD-SPEED - GWN-PAD-MARGIN - 20
000195         ADD GWN-PAD-SPEED TO GWN-PADL-Y
000196     END-IF.
000197     MOVE  GWX-PADL-POS  TO POW-0001
000197     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADL  BY REFERENCE POW-0001 .
000198 END PROGRAM "PF2-CLICK".
000199 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. "PF11-CLICK".
000201 ENVIRONMENT DIVISION.
000202 DATA        DIVISION.
000202 WORKING-STORAGE SECTION.
000202 77 POW-0001 PIC X(8) .
000203 PROCEDURE   DIVISION.
000204 MAIN.
000205     IF GWN-PADR-Y > GWN-PAD-SPEED + GWN-PAD-MARGIN
000206         SUBTRACT GWN-PAD-SPEED FROM GWN-PADR-Y GIVING GWN-PADR-Y
000207     END-IF.
000208     MOVE  GWX-PADR-POS  TO POW-0001
000208     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADR  BY REFERENCE POW-0001 .
000209 END PROGRAM "PF11-CLICK".
000210 IDENTIFICATION DIVISION.
000211 PROGRAM-ID. "PF12-CLICK".
000212 ENVIRONMENT DIVISION.
000213 DATA        DIVISION.
000213 WORKING-STORAGE SECTION.
000213 77 POW-0001 PIC X(8) .
000214 PROCEDURE   DIVISION.
000215 MAIN.
000216     IF GWN-PADR-Y < GWN-SHT-MAIN-H - GWN-PADR-H - GWN-PAD-SPEED - GWN-PAD-MARGIN - 20
000217         ADD GWN-PAD-SPEED TO GWN-PADR-Y
000218     END-IF.
000219     MOVE  GWX-PADR-POS  TO POW-0001
000219     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADR  BY REFERENCE POW-0001 .
000220 END PROGRAM "PF12-CLICK".
000221 IDENTIFICATION DIVISION.
000222 PROGRAM-ID. "TMR-BALL-MOVE-TIMER".
000223 ENVIRONMENT DIVISION.
000224 DATA        DIVISION.
000225 WORKING-STORAGE SECTION.
000226  01 CVAR   PIC 999.
000226 77 POW-0001 PIC X(256) .
000226 77 POW-0002 PIC X(256) .
000226 77 POW-0003 PIC X(8) .
000226 77 POW-0004 PIC X(8) .
000226 77 POW-0005 PIC X(8) .
000227 PROCEDURE   DIVISION.
000228 MAIN.
000229     ADD GWN-BALL-DX TO GWN-BALL-X.
000230     ADD GWN-BALL-DY TO GWN-BALL-Y.
000231
000232     IF GWN-BALL-X <= GWN-PAD-MARGIN OR GWN-BALL-X >= GWN-SHT-MAIN-W - GWN-BALL-SIZE - GWN-BALL-DX - GWN-PAD-MARGIN
000233         IF GWN-BALL-X <= GWN-PAD-MARGIN
000234            ADD 01 TO GWN-SCORER
000235            MOVE  GWX-SCORER  TO POW-0001
000235            CALL  "XPOWEDITSETTEXT"  USING BY VALUE TXT-SCORER  BY REFERENCE POW-0001 
000236         ELSE
000237            ADD 01 TO GWN-SCOREL
000238            MOVE  GWX-SCOREL  TO POW-0002
000238            CALL  "XPOWEDITSETTEXT"  USING BY VALUE TXT-SCOREL  BY REFERENCE POW-0002 
000239         END-IF
000240
000241         COMPUTE CVAR = (GWN-SHT-MAIN-H / 2) - (GWN-PAD-HEIGHT / 2)
000242         MOVE CVAR TO GWN-PADL-Y
000243         MOVE CVAR TO GWN-PADR-Y
000244
000245         MOVE  GWX-PADL-POS  TO POW-0003
000245         CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADL  BY REFERENCE POW-0003 
000246         MOVE  GWX-PADR-POS  TO POW-0004
000246         CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-PADR  BY REFERENCE POW-0004 
000247
000248         COMPUTE CVAR = (GWN-SHT-MAIN-W / 2) - (GWN-BALL-SIZE / 2)
000249         MOVE CVAR TO GWN-BALL-X
000250
000251         COMPUTE CVAR = (GWN-SHT-MAIN-H / 2) - (GWN-BALL-SIZE / 2)
000252         MOVE CVAR TO GWN-BALL-Y
000253
000254         COMPUTE GWN-BALL-DX = 0 - GWN-BALL-DX
000255     END-IF.
000256
000257     IF GWN-BALL-Y <= GWN-PAD-MARGIN OR GWN-BALL-Y >= GWN-SHT-MAIN-H - GWN-BALL-SIZE - GWN-BALL-DY - GWN-PAD-MARGIN - 20
000258         COMPUTE GWN-BALL-DY = 0 - GWN-BALL-DY
000259     END-IF.
000260
000261     IF GWN-BALL-X <= GWN-PADL-X + GWN-PAD-WIDTH AND GWN-BALL-Y >= GWN-PADL-Y AND GWN-BALL-Y + GWN-BALL-SIZE <= GWN-PADL-Y + GWN-PAD-HEIGHT
000262         COMPUTE GWN-BALL-DX = 0 - GWN-BALL-DX
000263     END-IF.
000264 
000265     IF GWN-BALL-X + GWN-BALL-SIZE >= GWN-PADR-X AND GWN-BALL-Y >= GWN-PADR-Y AND GWN-BALL-Y + GWN-BALL-SIZE <= GWN-PADR-Y + GWN-PAD-HEIGHT
000266         COMPUTE GWN-BALL-DX = 0 - GWN-BALL-DX
000267     END-IF.
000268
000269     MOVE  GWX-BALL-POS  TO POW-0005
000269     CALL  "XPOWCWSETPOSITION"  USING BY VALUE RECT-BALL  BY REFERENCE POW-0005 .
000270 END PROGRAM "TMR-BALL-MOVE-TIMER".
000271 END PROGRAM "SHT-MAIN".
