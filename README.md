# final_project
Pd6       Final Project       2023-06-09 	Petr Ermishkin
Worked with no one. Group name: Main.

  Ray Simulator

  Description
This program simulates the reflection of light rays with rectangular surfaces. There are three environments which the user can select: sandbox, mirror, and maze. Sandbox is an empty field with only a bounding box preventing rays from leaving the screen. Mirror is the same as sandbox but the field is split in two. Any interaction done on the left half will be mirrored on the right. Maze is a set of rectangles in the shape of a maze. The goal is to set a ray which will enter on one side and leave on the other. Once the user has selected an environment, they can create any number of rays, rectangles, and emitters and see how they interact with each other. Rays travel forward and will bounce when encountering any rectangles. An emitter is a collection of rays starting from the same point and heading in different directions.

  Controls
0 - Title / controls screen
1 - Sandbox
2 - Mirror
3 - Maze
R - Resets the current environment

Mouse left click and drag - Creates a new ray starting from the position of the mouse when pressed and heading towards the position of the mouse when released.

Hold shift + mouse left click and drag - Creates a new object based on the positions of the mouse when it was pressed and released.

Right click - creates a new emitter.
- and + - increase or decrease the number of rays in subsequently created emitters.

  Known Issues
If shift and the left mouse button are pressed too quickly in succession, new rectangles aren’t spawned correctly, instead overriding the last created rectangle.
Rays “wiggle” a bit when moving diagonally. This is because they are redrawn every time the ray is extended by a pixel, causing small changes to the shape of the lines. This doesn’t affect the actual drawing of the ray but it looks annoying with large numbers of rays.

No external libraries were used in the making of this project.

Documentation history is avaliable in the repository.
