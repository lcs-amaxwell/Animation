import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Position of circle
    var y : Int
   
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        x = 0
        
        // Set starting vertical position
        y = 0
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Move from left to right
        x += 1
        
        // Determine the vertical position using the sine function
        let xInRadians = Double(x)*Double(Double.pi)/180.0
        y = Int(100*sin(xInRadians)+300)
        
        // Clear the canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        
        // Clear the canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        
        // No borders
        canvas.drawShapesWithBorders = false
        
        // Move the origin to the middle of the canvasand
        canvas.translate(byX: x, byY: y)
        
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
        
        

    }
    
}


