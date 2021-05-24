//
//  Nonogram.swift
//  Nonogram Creator
//
//  Created by Maciej Sienkiewicz on 23/05/2021.
//

import UIKit

struct Nonogram {
    
    enum FieldState {
        case unknown, empty, filled
    }
    
    struct Description {
        var rows: [[Int]]
        var cols: [[Int]]
    }
    
    var name: String
    
    var size: CGSize {
        didSet {
            let widthDiff = Int(size.width - oldValue.width)
            let heightDiff = Int(size.height - oldValue.height)
            
            guard widthDiff != 0, heightDiff != 0 else { return }

            if widthDiff > 0 {
                description.rows.append(contentsOf: [[Int]].init(repeating: [], count: widthDiff))
                for i in 0..<fields.count {
                    fields[i].append(contentsOf: [FieldState].init(repeating: .unknown, count: widthDiff))
                }
            } else {
                description.rows.removeLast(widthDiff)
                for i in 0..<fields.count {
                    fields[i].removeLast(widthDiff)
                }
            }
            
            if heightDiff > 0 {
                description.cols.append(contentsOf: [[Int]].init(repeating: [], count: heightDiff))
                fields.append(contentsOf: [[FieldState]].init(repeating: [FieldState].init(repeating: .unknown, count: width), count: heightDiff))
            } else {
                description.cols.removeLast(heightDiff)
                fields.removeLast(heightDiff)
            }
        }
    }
    
    var description: Description
    
    var fields: [[FieldState]]

    var width: Int { Int(size.width) }
    
    var height: Int { Int(size.height) }
    
    init(name: String, size: CGSize) {
        self.name = name
        self.size = size
        self.description = Description(rows: [[Int]].init(repeating: [], count: Int(size.width)),
                                       cols: [[Int]].init(repeating: [], count: Int(size.height)))
        self.fields = [[FieldState]].init(repeating: [FieldState].init(repeating: .unknown, count: Int(size.width)), count: Int(size.height))
    }

    init(name: String, size: CGSize, description: Description) {
        guard description.rows.count == Int(size.width), description.cols.count == Int(size.height) else {
            fatalError("Description size must match nonogram size")
        }
        
        self.init(name: name, size: size)
        self.description = description
    }
    
    init(name: String, size: CGSize, description: Description, fields: [[FieldState]]) {
        guard fields.count == Int(size.height) else {
            fatalError("Fields array must match nonogram size")
        }
        
        self.init(name: name, size: size, description: description)
        self.fields = fields
    }

    func row(index: Int) -> [FieldState] {
        return fields[index]
    }
    
    func col(index: Int) -> [FieldState] {
        return fields.compactMap({ $0[index] })
    }
    
    func fieldStateAt(row: Int, col: Int) -> FieldState {
        return fields[row][col]
    }
    
    mutating func setFieldState(state: FieldState, row: Int, col: Int) {
        fields[row][col] = state
    }

}
