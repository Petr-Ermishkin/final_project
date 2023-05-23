// A special type of object that can focus rays to or from a focal point
// If it does so through reflection, it's a spherical mirror
// If it does so through refraction, it's a lens
// It is NOT a sphere, just an abstract representation of one

// For now, all sphericals are vertical (the main is vertical, the perpendicular is horizontal)
// For a spherical, pos represents the center (intersection of main and perpendicular)
// Height represents the length of the main
// Width represents the length of of the perpendicular
public class Spherical extends Object{
   
   // otherwise diverging
   boolean isConverging;
   
   PVector focalPt;
}
