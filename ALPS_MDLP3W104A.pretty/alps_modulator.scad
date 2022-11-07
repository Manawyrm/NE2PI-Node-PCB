circle_segments = 360;

color("silver")
    translate([0, 0, 0])
        linear_extrude(height = 44.4, center = false)
            difference() {
                square([17.2, 44], center = true);
                projection()
                    import("projection.stl");
            }

translate([8.6, 13.4, 7.7])
    rotate([0,90,0])
        cylinder(10.7, d = 10, center = false, $fn=circle_segments);
            
translate([8.6, 13.4, 36])
    rotate([0,90,0])
        cylinder(10.7, d = 10, center = false, $fn=circle_segments);