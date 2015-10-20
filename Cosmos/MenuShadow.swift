// Copyright © 2015 C4
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.


import UIKit

public class MenuShadow : C4CanvasController {
    //MARK: -
    //MARK: Properties
    var reveal : C4ViewAnimation?
    var hide : C4ViewAnimation?

    //The "shadow" is simply a styled canvas with methods for hiding and revealing it
    public override func setup() {
        canvas.frame = C4Rect(UIScreen.mainScreen().bounds)
        canvas.backgroundColor = black
        canvas.opacity = 0.0
        createShadowAnimations()
    }
    
    func createShadowAnimations() {
        reveal = C4ViewAnimation(duration:0.25) {
            self.canvas.opacity = 0.44
        }
        reveal?.curve = .EaseOut
        
        hide = C4ViewAnimation(duration:0.25) {
            self.canvas.opacity = 0.0
        }
        hide?.curve = .EaseOut
    }
}
