sd=13; //shaft diameter, should be slightly bigger than in the shaft file .25 difference works well for me

handle();

module handle() {
    difference() {
        linear_extrude(60) circle(d=26,$fn=6);//outer diameter
        linear_extrude(15) circle(d=sd,$fn=6);

        //round the end of the screwdriver
        translate([0,0,50]) spherecut();
        
        translate([0,0,12]) donut();

        //round the end of the screwdriver
        translate([0,0,8])
          mirror([0,0,1])
          spherecut();

        roundingcylinder();
    }
}

//Used to cut out the "grip"
module donut() {
    rotate_extrude()
    translate([34, 0, 0])
    circle(r = 24, $fn=60);
}

//mold used to cut out the rounded end and start
module spherecut() {
 difference() {
            linear_extrude(15) circle(d=26);
            sphere(d=25,$fn=60);
        }   
}

//rounding the "sharp" edges on the handle just a tiny bit
module roundingcylinder() {
    difference() {
        linear_extrude(60) circle(d=30,$fn=6);//outer shell to create cut-form
        linear_extrude(60) circle(d=24,$fn=24);//what should remain
    }
}