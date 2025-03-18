//
//  Zoos.swift
//  problem-solving-swift
//
//  Created by Avijeet Pandey on 18/03/25.
//

func findZoos(with string: String) {
    var zCounter = 0;
    var oCounter = 0;
    
    string.forEach { character in
        if character == "z" {
            zCounter += 1
        } else {
            oCounter += 1
        }
    }
    
    if zCounter*2 == oCounter {
        print("Yes")
    } else {
        print( "No")
    }
}
