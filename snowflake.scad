scale = 1.2;

rotation = 0;
rotate([0, 0, rotation]) {
    color("green") {
        translate([0 , 0, 1.0]) {
            include <snowflake_top.scad>;
        }
    }
}

union () {
    difference() {
        translate([-100,-90, 0]) {
            cube([200, 180,1]);
        }
        scale([scale, scale, 1]) {
        linear_extrude(height=12, center=true)
            import(file="snowflake.svg", center=true);
        }
    }
    for(i=[0:2]) {
        rotate([0, 0, 90*i]){
            addition = i==1 ? 10 : 0;

            translate([-100+addition, -25, 0]){
                cube([2, 50, 2.5]);   
            }
        }
    }
}