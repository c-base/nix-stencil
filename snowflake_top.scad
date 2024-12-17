scale = 1.2;



difference() {
    translate([-98,-88, 0]) {
        cube([196, 176, 1]);
    }
    translate([-8.85, 0, 0]){
    scale([scale, scale, 1]) {
    linear_extrude(height=12, center=true)
        import(file="snowflake_half.svg", center=true);
    }
}
}