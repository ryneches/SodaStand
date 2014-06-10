include <2dgraphing.scad>

// reimplementation of 2dgraphing's archimedean spiral
function r(theta) = theta/3*pi;

s = 0.02;
$fn = 100;

module archimedean_spiral()
{
    thickness=0.78 * (1/s);
    smoothness=300;
    scale([s,s,1]) linear_extrude(height=20)
    2dgraph([0,360*5], thickness, steps=smoothness, polar=true);
}

archimedean_spiral();

cylinder( r=5, h=40 );

// measuring stick
//translate([0,-33,0])cube([1,66,10]);