//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */



// Clear the canvas
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)

// No borders
canvas.drawShapesWithBorders = false

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)

// Draw pumpkin relative to the origin
canvas.fillColor = Color.orange

// First make an ellipse to form the body
canvas.drawEllipse(centreX: 0, centreY: 0, width: 100, height: 100)
canvas.drawEllipse(centreX: 40, centreY: 0, width: 100, height: 100)

// Make stem black
canvas.fillColor = Color.black

// Draw the stem
canvas.drawEllipse(centreX: 20, centreY: 62, width: 30, height: 30)

// Make stem properly shaped
canvas.fillColor = Color.white

// Make stem properly shaped
canvas.drawEllipse(centreX: 30, centreY: 65, width: 30, height: 30)

// Make the eyes yellow
canvas.fillColor = Color.yellow

// Draw the eyes
canvas.drawRectangle(bottomLeftX: -20, bottomLeftY: 5, width: 20, height: 20)
canvas.drawRectangle(bottomLeftX: 35, bottomLeftY: 5, width: 20, height: 20)

// Draw the mouth
canvas.drawEllipse(centreX: 20, centreY: -25, width: 80, height: 20)

// Make mouth proper size
canvas.fillColor = Color.orange
canvas.drawEllipse(centreX: 20, centreY: -15, width: 80, height: 20)





// Now "cut out" the wings and head by overlapping circles
canvas.fillColor = Color.white



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
