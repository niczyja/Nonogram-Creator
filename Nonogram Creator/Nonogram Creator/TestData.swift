//
//  TestData.swift
//  Nonogram Creator (iOS)
//
//  Created by Maciej Sienkiewicz on 23/05/2021.
//

import UIKit

let emptyNonogram: Nonogram = Nonogram(name: "Empty", size: CGSize(width: 10, height: 15))

let unsolvedNonogram: Nonogram = Nonogram(name: "An Elephant", size: CGSize(width: 20, height: 15), description: Nonogram.Description(rows: [
    [2], [2], [2], [2], [9],
    [2, 2, 3], [2, 1, 8], [3, 1, 7], [1, 1, 2, 4], [2, 2, 5],
    [2, 7], [1, 10], [12], [11], [11],
    [10], [5, 4], [4, 4], [4, 4], [1, 2, 1, 2]
], cols: [
    [2, 8], [2, 2, 7], [3, 9], [8], [6, 2],
    [5, 5, 1], [2, 9], [1, 3, 9], [1, 3, 10], [4, 10],
    [11, 2], [1, 7, 1], [7], [10], [7]
]))

let solvedNonogram: Nonogram = Nonogram(name: "Kettle", size: CGSize(width: 15, height: 15), description: Nonogram.Description(rows: [
    [1], [5], [2, 4], [2, 6], [2, 11],
    [3, 1, 1, 1], [3, 10], [2, 2, 7], [9, 2, 1], [14],
    [2, 10], [5, 3, 2], [12], [10], [6]
], cols: [
    [3], [7], [8], [2, 3], [11],
    [3, 9], [2, 1, 1, 7], [1, 2, 5, 3], [5, 9], [4, 9],
    [4, 2, 6], [3, 5, 2], [11], [1, 2, 4], [2, 2]
]), fields: [
    [.empty, .empty, .empty, .empty, .empty, .empty, .empty, .empty, .filled, .empty, .empty, .empty, .empty, .empty, .empty],
    [.empty, .empty, .empty, .empty, .empty, .empty, .filled, .filled, .filled, .filled, .filled, .empty, .empty, .empty, .empty],
    [.empty, .empty, .empty, .empty, .empty, .filled, .filled, .empty, .filled, .filled, .filled, .filled, .empty, .empty, .empty],
    [.empty, .empty, .empty, .empty, .filled, .filled, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .empty, .empty],
    [.filled, .filled, .empty, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled],
    [.filled, .filled, .filled, .empty, .filled, .empty, .empty, .empty, .empty, .empty, .empty, .empty, .filled, .empty, .filled],
    [.filled, .filled, .filled, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty],
    [.empty, .filled, .filled, .empty, .filled, .filled, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty],
    [.empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty, .filled, .filled, .empty, .filled],
    [.empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled],
    [.empty, .filled, .filled, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty],
    [.empty, .empty, .filled, .filled, .filled, .filled, .filled, .empty, .filled, .filled, .filled, .empty, .filled, .filled, .empty],
    [.empty, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty],
    [.empty, .empty, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .filled, .empty, .empty],
    [.empty, .empty, .empty, .empty, .empty, .filled, .filled, .filled, .filled, .filled, .filled, .empty, .empty, .empty, .empty]
])
