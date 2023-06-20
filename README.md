# WazColor


COLORS
------
Contains a number of useful extensions to UIColor and Color. 
Like Conversion to-and-from HexString, adding Brightness (as a color), converting to Greyscale, and checking if it is a Darker or lighter color, and even getting a mid-point color between the active color and another supplied color.

Importing UIKit and SwiftUI, all the functions are as UIColor and then for Color it is just converted between.

Note: It must be used In the RGB ColorSpace (default)


GRADIENTS
---------

There is a set of about 20 pleasing gradients that work wel. These include adjacent, opposite, and complimentary gradients, all in just 2-color. Provided as constants like [ .linearRedOrange ] for a linear gradient from red to Orange. There's also equivalent Diagonal gradients.
To change their direction one could use rotationAngle

There's also an array containing all gradients, for in case one would like to create a dynamic list or grid.

Similarly, There's also Arrays for the individual Colors, named colorOne: [Color] for the first color, and colorTwo for the second color.

ASSETS
------

You may need to import the included Asset catalogue folder 'Gradients' to make finer adjustments.









