// Playground - noun: a place where people can play

import UIKit

var number = 9

var isItPrime = number == 1 ? false : true

var ii = 2

while ii < number >> 1 {
    if number % ii == 0 {
        isItPrime = false
        break
    }

    ii++
}

println(isItPrime)
