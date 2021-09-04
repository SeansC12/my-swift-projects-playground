//: [Previous](@previous)

import Foundation

import UIKit

func rng(startno : Int, endno : Int) -> Int{
    let randomno = Int.random(in: startno...endno)
 return randomno
}

print(rng(startno: 1, endno: 10))
