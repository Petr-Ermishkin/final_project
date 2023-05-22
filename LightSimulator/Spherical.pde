// A special type of object that can focus rays to or from a focal point
// If it does so through reflection, it's a spherical mirror
// If it does so through refraction, it's a lens
public class Spherical extends Object{
   // For simplicity, the spherical is represented as if it was a flat line
   Line center;
   Line perpendicular;
   
   // otherwise diverging
   boolean isConverging;
   
   PVector focalPt;
}
