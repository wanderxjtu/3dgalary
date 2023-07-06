lenedge=57; // standard size of 3 order rubik's cube
h=1/4*sqrt(2)*lenedge; //height
upper_r= 2/3*sqrt(3)*h; 
lower_r=2*upper_r;

module desk() {
    hull(){
        cylinder(h=h, r=upper_r, $fn=3);
        cylinder(h=0.4, r=lower_r, $fn=6);
    }
}

difference() {
    desk();
    translate([0, 0, -1]) desk();
    cylinder(h=h+1, r1=1, r2=upper_r, $fn=3);


}


