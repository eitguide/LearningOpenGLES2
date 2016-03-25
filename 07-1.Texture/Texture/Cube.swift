//
//  Cube.swift
//  AnimateCube
//
//  Created by burt on 2016. 2. 28..
//  Copyright © 2016년 BurtK. All rights reserved.
//

import GLKit

class Cube : Model {
    let vertexList : [Vertex] = [
        
        // Front
        Vertex( 1, -1, 1,  1, 0, 0, 1,  1, 0), // 0
        Vertex( 1,  1, 1,  0, 1, 0, 1,  1, 1), // 1
        Vertex(-1,  1, 1,  0, 0, 1, 1,  0, 1), // 2
        Vertex(-1, -1, 1,  0, 0, 0, 1,  0, 0), // 3
        
        // Back
        Vertex(-1, -1, -1, 0, 0, 1, 1,  1, 0), // 4
        Vertex(-1,  1, -1, 0, 1, 0, 1,  1, 1), // 5
        Vertex( 1,  1, -1, 1, 0, 0, 1,  0, 1), // 6
        Vertex( 1, -1, -1, 0, 0, 0, 1,  0, 0), // 7
        
        // Left
        Vertex(-1, -1,  1, 1, 0, 0, 1,  1, 0), // 8
        Vertex(-1,  1,  1, 0, 1, 0, 1,  1, 1), // 9
        Vertex(-1,  1, -1, 0, 0, 1, 1,  0, 1), // 10
        Vertex(-1, -1, -1, 0, 0, 0, 1,  0, 0), // 11
        
        // Right
        Vertex( 1, -1, -1, 1, 0, 0, 1,  1, 0), // 12
        Vertex( 1,  1, -1, 0, 1, 0, 1,  1, 1), // 13
        Vertex( 1,  1,  1, 0, 0, 1, 1,  0, 1), // 14
        Vertex( 1, -1,  1, 0, 0, 0, 1,  0, 0), // 15
        
        // Top
        Vertex( 1,  1,  1, 1, 0, 0, 1,  1, 0), // 16
        Vertex( 1,  1, -1, 0, 1, 0, 1,  1, 1), // 17
        Vertex(-1,  1, -1, 0, 0, 1, 1,  0, 1), // 18
        Vertex(-1,  1,  1, 0, 0, 0, 1,  0, 0), // 19
        
        // Bottom
        Vertex( 1, -1, -1, 1, 0, 0, 1,  1, 0), // 20
        Vertex( 1, -1,  1, 0, 1, 0, 1,  1, 1), // 21
        Vertex(-1, -1,  1, 0, 0, 1, 1,  0, 1), // 22
        Vertex(-1, -1, -1, 0, 0, 0, 1,  0, 0), // 23
        
    ]
    
    let indexList : [GLubyte] = [
        
        // Front
        0, 1, 2,
        2, 3, 0,
        
        // Back
        4, 5, 6,
        6, 7, 4,
        
        // Left
        8, 9, 10,
        10, 11, 8,
        
        // Right
        12, 13, 14,
        14, 15, 12,
        
        // Top
        16, 17, 18,
        18, 19, 16,
        
        // Bottom
        20, 21, 22,
        22, 23, 20
    ]
    
    init(shader: BaseEffect) {
        super.init(name: "cube", shader: shader, vertices: vertexList, indices: indexList)
        self.loadTexture("razewarelogo_128.png")
    }
    
    override func updateWithDelta(dt: NSTimeInterval) {
        self.rotationZ = self.rotationZ + Float(M_PI*dt)
        self.rotationY = self.rotationY + Float(M_PI*dt)
    }

}

