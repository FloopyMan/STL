fn=255;
height = 10;

union() {
    difference(){
        hull(){
            translate([-5.5, 4.5, 0]) cube([11, 10, height]);
            cylinder(d=22.5, h=height, $fn=fn);
        }
        translate([0, 0, 1]) hull(){
            translate([-4.5, 4.5, 0]) cube([9, 9, height]);
            cylinder(d=20.5, h=height, $fn=fn);
        }
        translate([-5, 0, 0]) cylinder(h=2, d=1, center=true, $fn=fn);
        translate([2.6, 0, 0]) hull(){ //type-c
            translate([0, -3, 0]) cylinder(d=3.2, h=5, $fn=fn);
            translate([0, 3, 0]) cylinder(d=3.2, h=5, $fn=fn);
        }
    }
    
    translate([-5, 0, 3.5]) difference(){
        union(){
            translate([0, 3, 0]) cube([4.6, 4.6, 5], center=true);
            cylinder(d=7.6, h=5, center=true, $fn=fn);
        }
        translate([0, 0, 1]) union(){
            translate([0, 3, 0]) cube([3, 3, 5], center=true);
            cylinder(d=6, h=5, center=true, $fn=fn);
        }
        cylinder(h=5, d=1, center=true, $fn=fn);
    }
    translate([-1.2, -8, 1]) cube([1.2, 18, 28]);
    //translate([0, -8, 1]) color("blue") charger();
    translate([-16.5, 13.5, 0])difference(){
        cube([33, 12, 43]);    
        translate([1, 1, 1]) cube([31, 10, 43]);
    }
}

module charger(){
    union(){
        cube([1, 18, 28]);
        translate([2.6, 8, -1]) hull(){ //type-c
            translate([0, -3, 0]) cylinder(d=3.2, h=5, $fn=fn);
            translate([0, 3, 0]) cylinder(d=3.2, h=5, $fn=fn);
        }
    }
}