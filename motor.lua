--------------- CLEAR PROJECT ---------------
clearconsole()

mi_selectgroup(0)
mi_selectgroup(1)
mi_selectgroup(2)
mi_deleteselected()
mi_clearselected()

--------------- PROJECT SETTINGS ---------------
mi_probdef(0, "millimeters", "planar", 1e-8, 34)

mi_addnode(0,0)

--------------- STATOR ---------------
zew = 46.6 

mi_addnode(-zew/2,0)
mi_addnode(zew/2,0)

mi_addarc(-zew/2,0,zew/2,0, 180, 1)
mi_addarc(zew/2,0,-zew/2,0,180,1)

wew = 16

mi_addnode(-wew/2,0)
mi_addnode(wew/2,0)

mi_addarc(-wew/2,0,wew/2,0, 180, 1)
mi_addarc(wew/2,0,-wew/2,0,180,1)

wew_zew = (12.5+8)*2

mi_addnode(-wew_zew/2,0)
mi_addnode(wew_zew/2,0)

mi_addarc(-wew_zew/2,0,wew_zew/2,0, 180, 1)
mi_addarc(wew_zew/2,0,-wew_zew/2,0,180,1)

d = (wew/2)*2*PI*(20/360)
delta = 1

mi_addnode(d/2,wew_zew/2+delta)
mi_addnode(-d/2,wew_zew/2+delta)

mi_addnode(d/2,delta)
mi_addnode(-d/2,delta)

mi_addsegment(d/2,wew_zew/2+delta,d/2,delta)
mi_addsegment(-d/2,wew_zew/2+delta,-d/2,delta)

mi_clearselected()
mi_selectnode(d/2,wew_zew/2+delta)
mi_selectnode(-d/2,wew_zew/2+delta)

mi_selectnode(d/2,delta)
mi_selectnode(-d/2,delta)

mi_deleteselected()

mi_clearselected()
mi_selectsegment(delta,wew/2+delta)
mi_selectsegment(-delta,wew/2+delta)

mi_copyrotate(0,0,45,7)

mi_clearselected()
mi_selectnode(-wew_zew/2,0)
mi_selectnode(wew_zew/2,0)

arcs = {-14.5,14.5,0,20.6,14.5,14.5,-14.5,-14.5,0,-20.6,14.5,-14.5}
i = 1
while (i <= 6)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end
arcs = {-7.5,3,-3,7.5,3,7.5,7.5,3,-7.5,-3,-3,-7.5,3,-7.5,7.5,-3}
i = 1
while (i <= 8)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end

mi_deleteselected()
mi_clearselected()

--------------- CIRCUIT ---------------
zew = 16+2.7*2

mi_addnode(-zew/2,0)
mi_addnode(zew/2,0)

mi_addnode(0,10.7)
mi_addnode(0,-10.7)

mi_addarc(-zew/2,0,zew/2,0, 180, 1)
mi_addarc(zew/2,0,-zew/2,0,180,1)

mi_addnode(0,22.5)
mi_addsegment(0,10.7,0,22.5)
mi_selectsegment(0,13.5)
mi_copyrotate(0,0,22.5,1)

mi_clearselected()
mi_selectnode(-zew/2,0)
mi_selectnode(zew/2,0)

mi_selectnode(0,10.7)
mi_selectnode(0,-10.7)

mi_selectnode(0,22.5)
mi_selectnode(-8.7,20.7)

arcs = {-10,4,-5,9,5,9,10,4, -7,7.5, 7,7.5}
i = 1
while (i <= 6)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end

arcs = {-10,-4,-5,-9,5,-9,10,-4, -7,-7.5, 7,-7.5}
i = 1
while (i <= 6)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end

mi_deleteselected()
mi_clearselected()

mi_selectarcsegment(-3,10)
mi_selectsegment(-6,14)
mi_setgroup(2)
mi_clearselected()
mi_selectgroup(2)
mi_mirror(0,0,0,50,4)
mi_clearselected()
mi_selectgroup(2)
mi_mirror(0,0,50,0,4)

--------------- MOTOR ---------------
zew = 15.9

mi_addnode(-zew/2,0)
mi_addnode(zew/2,0)

mi_addarc(-zew/2,0,zew/2,0, 180, 1)
mi_addarc(zew/2,0,-zew/2,0,180,1)

wew = 5

mi_addnode(-wew/2,0)
mi_addnode(wew/2,0)

mi_addarc(-wew/2,0,wew/2,0, 180, 1)
mi_addarc(wew/2,0,-wew/2,0,180,1)

wew_zew = (2.7+2.5)*2

mi_addnode(-wew_zew/2,0)
mi_addnode(wew_zew/2,0)

mi_addarc(-wew_zew/2,0,wew_zew/2,0, 180, 1)
mi_addarc(wew_zew/2,0,-wew_zew/2,0,180,1)

d = (zew/2)*2*PI*(20/360)
delta = 0.5

mi_addnode(d/2,wew_zew/2-delta)
mi_addnode(-d/2,wew_zew/2-delta)

mi_addnode(d/2,zew/2+delta)
mi_addnode(-d/2,zew/2+delta)

mi_addsegment(d/2,wew_zew/2-delta,d/2,zew/2+delta)
mi_addsegment(-d/2,wew_zew/2-delta,-d/2,zew/2+delta)

mi_clearselected()
mi_selectnode(d/2,wew_zew/2-delta)
mi_selectnode(-d/2,wew_zew/2-delta)

mi_selectnode(d/2,zew/2+delta)
mi_selectnode(-d/2,zew/2+delta)

mi_selectsegment(-1.3840, 7.85)
mi_selectsegment(1.3840, 7.85)

mi_deleteselected()

mi_clearselected()
mi_selectsegment(-1.5,6)
mi_selectsegment(1.5,6)

mi_copyrotate(0,0,60,5)

mi_clearselected()
mi_selectnode(-zew/2,0)
mi_selectnode(zew/2,0)
mi_selectnode(0,0)
arcs = {-3,7,3,7,-3,-7,3,-7}
i = 1
while (i <= 4)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end
arcs = {-4.7,2.7,0,5,4.7,2.7,-4.7,-2.7,0,-5,4.7,-2.7}
i = 1
while (i <= 6)
do
	mi_selectarcsegment(arcs[(i-1)*2+1], arcs[(i-1)*2+2])
	i = i+1
end

mi_deleteselected()
mi_clearselected()

mi_selectcircle(0, 0, 15.9/2, 0)
mi_selectcircle(0, 0, 15.9/2, 1)
mi_selectcircle(0, 0, 15.9/2, 2)
mi_selectcircle(0, 0, 15.9/2, 3)
mi_setgroup(1)
mi_clearselected()

-- boundaries and circuits
mi_addboundprop("Dirichlet", 0, 0, 0, 0, Mu, Sig, c0, c1, 0)

mi_selectarcsegment(0, 23)
mi_selectarcsegment(0, -23)
mi_setarcsegmentprop(maxsegdeg, "Dirichlet", hide, group)
mi_clearselected()

mi_addmaterial("POWIETRZE", 1, 1, H_c, J, Cduct, Lam_d, Phi_hmax, lam_fill, LamType, Phi_hx, Phi_hy,NStrands,WireD)
mi_addmaterial("BLACHA", 1, 1, H_c, 0, 0, Lam_d, Phi_hmax, lam_fill, LamType, Phi_hx, Phi_hy,NStrands,WireD)
mi_getmaterial("10 AWG")

xs = {0, 56.8, 64.9, 73.3, 83.1, 94.8, 109, 128, 154, 189, 244, 332, 510, 977, 1475, 2213, 3271, 4697}
ys = {0, 0.3, 0.4 , 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.55, 1.6, 1.65, 1.7}
i = 1
while (i <= 18)
do
	mi_addbhpoint("BLACHA", xs[i], ys[i])
	i = i + 1
end

mi_addblocklabel(0,1)
mi_selectlabel(0,1)
mi_setblockprop("POWIETRZE", automesh, meshsize, "incircuit", 0, group, turns)
mi_clearselected()

mi_addblocklabel(0,3.6)
mi_selectlabel(0,3.6)
mi_setblockprop("BLACHA", automesh, meshsize, "incircuit", 0, 1, turns)
mi_clearselected()

mi_addblocklabel(3.8,9)
mi_selectlabel(3.8,9)
mi_setblockprop("POWIETRZE", automesh, meshsize, "incircuit", 0, group, turns)
mi_clearselected()

mi_addblocklabel(0,21)
mi_selectlabel(0,21)
mi_setblockprop("BLACHA", automesh, meshsize, "incircuit", 0, group, turns)
mi_clearselected()

mi_addcircprop("dod", 1, 1)
mi_addcircprop("min", -1, 1)

mi_addblocklabel(-4,15)
mi_selectlabel(-4,15)
mi_setblockprop("10 AWG", automesh, meshsize, "dod", 0, group, 220)
mi_clearselected()

mi_addblocklabel(4,15)
mi_selectlabel(4,15)
mi_setblockprop("10 AWG", automesh, meshsize, "min", 0, group, 220)
mi_clearselected()

mi_addblocklabel(-4,-15)
mi_selectlabel(-4,-15)
mi_setblockprop("10 AWG", automesh, meshsize, "min", 0, group, 220)
mi_clearselected()

mi_addblocklabel(4,-15)
mi_selectlabel(4,-15)
mi_setblockprop("10 AWG", automesh, meshsize, "dod", 0, group, 220)
mi_clearselected()

mi_zoomnatural()

save = 0 -- set to 1 to save to \location\ and see results
if save == 1 then
	mi_saveas("location\\name.FEM")
	mi_createmesh()
	mi_analyze()
	mi_loadsolution()

	mo_hidepoints()
	mo_showdensityplot(1, 0, 21364260.460379, 0, "bmag")
end

save_to_movie = 0 -- set to 1 to save \frames\ pngs to \location\, these can be later used to create animation
if save_to_movie == 1 then

    frames = 60
    i = 0
    while (i < frames)
    do
        mi_selectgroup(1)
        mi_moverotate(0,0,5)
		mi_createmesh()
        mi_analyze()
        mi_loadsolution()
        mo_savebitmap("location\\name"..i..".png")
        i = i + 1
    end

end
