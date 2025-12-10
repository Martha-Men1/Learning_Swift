//
//  ContentView.swift
//  L1 Demo
//
//  Created by Martha Mengesha on 2025-12-07.
//

import SwiftUI

// Parentheses () usually have information related to the code immediately before them. Braces {} are like containers — they usually group multiple lines of code into one chunk.

// You use indentation to reflect the code’s organization and make it more readable. However, code without any indentation still runs.

/**
 
 Order matters for design, why? Assume this code:
 
 1:   Text ("Knock, Knock")
 2:       .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
 3:       .padding()
 
 Let y represent colour being added
 
 This is what is happening
 
        -----------
1:              |         Hello        |
        -----------
        -----------
2:              |    y   Hello   y    |
        -----------
 
        -------------
       |   -----------------    |
3:             |   |  y    Hello  y  |    |
       |   -----------------    |
       --------------
 
 When we colour the back ground before adding padding we end up only colouring the text box rather than the entire padded box. Leading to the backgournd colour looking small and only around the text. To fix this you change the order.
 
 **/


struct ContentView: View { // container
    var body: some View { // container
        VStack {// container
            Text("Knock, knock!") // Allows for text to view into display (code related information)
                .padding() // creates a box around the text
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8)) // fills the box with colour
                .shadow(radius: 10) // Adds a shadow
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
