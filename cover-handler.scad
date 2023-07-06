use <dotSCAD/path_extrude.scad>
use <dotSCAD/shape_circle.scad>
use <dotSCAD/curve.scad>

$fa = 5;
$fs = 0.5;

a=[-3,0,30];
b=[16.1, -18.3, 27.8];
c=[0,20,0];
module pl() {
    joint_pts = curve(0.1, [
        (b+a)/2,
        b-(b-a)/10, 
        b-(b-c)/10,
        (b+c)/2,
    ], 0.5);
    ppts= [a, for (i=joint_pts) i,  c];
    path_extrude(shape_circle(radius=1, $fn=6), ppts);    
}

//union() { pl();mirror([0,1,0]) pl(); };
for (i=[1:24]) rotate([0, 0, 15*i])   pl(); 
mirror([0,1,0]) for (i=[1:24]) rotate([0, 0, 15*i])   pl(); 
