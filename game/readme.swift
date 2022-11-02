//
//  readme.swift
//  game
//
//  Created by Anubhav Rawat on 06/10/22.
//

import Foundation
// in init init a matrix of 10 10 dimension.
// for each word, check the boxes where it can be started and the directions.
// for random postion and direction, check if the word will fit. if yes, add the word in matrix. if not, check the next position.
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9
// 0 1 2 3 4 5 6 7 8 9

// six is allowed anywhere
//seven not on 4 and 5
//eight not on 3,4,5,6


//            if w.count == 6{
//
//
//
//            }else if w.count == 7{
//                i = [0,1,2,3,6,7,8,9].randomElement()!
//                j = [0,1,2,3,6,7,8,9].randomElement()!
//            }else{
//                i = [0,1,2,7,8,9].randomElement()!
//                j = [0,1,2,7,8,9].randomElement()!
//            }
//            print(i, j)
