# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 18
property maxzoom 7.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 18
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new logic_gates work:logic_gates:NOFILE -nosplit
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load port a input -pg 1 -lvl 0 -x 0 -y 40
load port b input -pg 1 -lvl 0 -x 0 -y 110
load port y1 output -pg 1 -lvl 4 -x 480 -y 40
load port y2 output -pg 1 -lvl 4 -x 480 -y 130
load inst a_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 40
load inst b_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 110
load inst y1_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 3 -x 350 -y 40
load inst y1_OBUF_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 220 -y 30
load inst y2_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 3 -x 350 -y 130
load inst y2_OBUF_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 220 -y 120
load net a -port a -pin a_IBUF_inst I
netloc a 1 0 1 NJ 40
load net a_IBUF -pin a_IBUF_inst O -pin y1_OBUF_inst_i_1 I0 -pin y2_OBUF_inst_i_1 I0
netloc a_IBUF 1 1 1 150 40n
load net b -port b -pin b_IBUF_inst I
netloc b 1 0 1 NJ 110
load net b_IBUF -pin b_IBUF_inst O -pin y1_OBUF_inst_i_1 I1 -pin y2_OBUF_inst_i_1 I1
netloc b_IBUF 1 1 1 170 60n
load net y1 -port y1 -pin y1_OBUF_inst O
netloc y1 1 3 1 NJ 40
load net y1_OBUF -pin y1_OBUF_inst I -pin y1_OBUF_inst_i_1 O
netloc y1_OBUF 1 2 1 N 40
load net y2 -port y2 -pin y2_OBUF_inst O
netloc y2 1 3 1 NJ 130
load net y2_OBUF -pin y2_OBUF_inst I -pin y2_OBUF_inst_i_1 O
netloc y2_OBUF 1 2 1 N 130
levelinfo -pg 1 0 40 220 350 480
pagesize -pg 1 -db -bbox -sgen -60 0 550 190
show
fullfit
#
# initialize ictrl to current module logic_gates work:logic_gates:NOFILE
ictrl init topinfo |
