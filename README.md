# final_project
Pd6       Final Project       2023-06-09 	Petr Ermishkin
Worked with no one. Group name: Main.

  Ray Simulator

  Description
This program simulates the reflection of light rays with rectangular surfaces. There are three environments which the user can select: sandbox, mirror, and maze. Sandbox is an empty field with only a bounding box preventing rays from leaving the screen. Mirror is the same as sandbox but the field is split in two. Any interaction done on the left half will be mirrored on the right. Once the user has selected an environment, they can create any number of rays, rectangles, and emitters and see how they interact with each other. Rays travel forward and will bounce when encountering any rectangles. An emitter is a collection of rays starting from the same point and heading in different directions.

  Controls
0 - Title / controls screen
1 - Sandbox
2 - Mirror
R - Resets the current environment

Mouse left click and drag - Creates a new ray starting from the position of the mouse when pressed and heading towards the position of the mouse when released.

Hold shift + mouse left click and drag - Creates a new object based on the positions of the mouse when it was pressed and released.

Right click - creates a new emitter.
- and = - increase or decrease the number of rays in subsequently created emitters.

  Known Issues
-Making new rectangles with the mouse only works if done starting from the top left corner and moving to the bottom right corner.
-Rays “wiggle” a bit when moving diagonally. This is because they are redrawn every time the ray is extended by a pixel, causing small changes to the shape of the lines. This doesn’t affect the actual drawing of the ray but it looks annoying with large numbers of rays.
-The rays phase through when perfectly hitting a corner.
-If two rectangles share an exact border, reflection on that border doesn’t work.


No external libraries were used in the making of this project.

Documentation history is avaliable in the repository.
