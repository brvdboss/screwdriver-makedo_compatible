sd=12.75;//shaftdiameter
nd=9.95;//nutdiameter;

shaft();


module shaft() {
    difference() {
        union() {
            cylinder(d1=sd-0.75, d2=sd,h=1.5,$fn=360);
            translate([0,0,1.5]) cylinder(d1=sd, d2=sd-2,h=8.5,$fn=360);
            linear_extrude(30) circle(d=sd,$fn=6);
        }
        linear_extrude(7.5) circle(d=nd,$fn=6);
    }

}