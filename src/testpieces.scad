use <hex-shaft.scad>
use <hex-handle.scad>

translate([20,0,12]) mirror([0,0,1])
difference() {
    shaft();
    translate([0,0,27]) cube(30, center=true);
}

translate([0,0,5]) mirror([0,0,1]) difference() {
    handle();
    translate([0,0,155]) cube(300, center=true);
}