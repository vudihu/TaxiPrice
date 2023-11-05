//
//  main.swift
//  TaxiPrice
//
//  Created by Hung Vu on 04/11/2023.
//

import Foundation

// 1. Tính tổng các chữ số trong một số
func calculateNumber(_ input: Int) -> Int {
    var sum = 0
    var number = abs(input)
    while number > 0 {
        let sign = number % 10
        sum += sign
        number /= 10
    }
    return sum
}
let inputNumber  = 7887
let sumResult = calculateNumber(inputNumber)
print("Tổng các chữ số của \(inputNumber) là \(sumResult)")


// 2. Giải phương trình bậc 2: ax2 + bx + c = 0
func calculateX2(a: Double, b: Double, c: Double) {
    let delta = b * b - 4 * a * c
    
    if delta < 0 {
        print("Phương trình vô nghiệm")
    } else if delta == 0 {
        let x = -b / (2 * a)
        print("Phương trình có nghiệm kép là: \(x)")
    } else {
        let x1 = (-b + sqrt(delta)) / (2 * a)
        let x2 = (-b - sqrt(delta)) / (2 * a)
        print("Phương trình có 2 nghiệm là: \nx1 = \(x1)\nx2 = \(x2)")
    }
}
calculateX2(a: 4, b: -2, c: 8)

// 3. Viết chương trình tính tiền cước taxi theo lựa chọn hãng và loại xe với bảng giá dịch vụ như sau:
enum CarType {
    case MaiLinh
    case Vinasun
    case Vinataxi
    case Group
    case G7
    case SaoMai
    case GMS
}

enum ServiceType {
    case fourMini
    case fourLarge
    case seven
    case four
    case vios
    case innova
    case eco
    case fourVinFast
}
var price: Double = 0

func taxiPrice(car: CarType, service: ServiceType, km: Double) -> Double {
    switch (car, service) {
    case (.MaiLinh, .fourMini):
        switch km {
        case 0...1.28:
            price = km * 20000
        case 1.29...30:
            price = (1.28 * 20000) + ((km - 1.28) * 14500)
        default:
            price = (1.28 * 20000) + ((30 - 1.28) * 14500) + ((km - 30) * 12000)
        }
    case (.MaiLinh, .fourLarge):
        switch km {
        case 0...1.28:
            price = km * 20000
        case 1.29...30:
            price = (1.28 * 20000) + ((km - 1.28) * 16000)
        default:
            price = (1.28 * 20000) + ((30 - 1.28) * 16000) + ((km - 30) * 12700)
        }
    case (.MaiLinh, .seven):
        switch km {
        case 0...1.28:
            price = km * 20000
        case 1.29...30:
            price = (1.28 * 20000) + ((km - 1.28) * 17000)
        default:
            price = (1.28 * 20000) + ((30 - 1.28) * 17000) + ((km - 30) * 14300)
        }
    case (.Vinasun, .four):
        switch km {
        case 0...0.5:
            price = km * 11000
        case 0.6...30:
            price = (0.5 * 11000) + ((km - 0.5) * 17600)
        default:
            price = (0.5 * 11000) + ((30 - 0.5) * 17600) + ((km - 30) * 14500)
        }
    case (.Vinasun, .seven):
        switch km {
        case 0...0.5:
            price = km * 12000
        case 0.6...30:
            price = (0.5 * 12000) + ((km - 0.5) * 19600)
        default:
            price = (0.5 * 12000) + ((30 - 0.5) * 19600) + ((km - 30) * 17100)
        }
    case (.Vinataxi, .four):
        switch km {
        case 0...0.5:
            price = km * 11000
        case 0.6...30:
            price = (0.5 * 11000) + ((km - 0.5) * 17100)
        default:
            price = (0.5 * 11000) + ((30 - 0.5) * 17100) + ((km - 30) * 13600)
        }
    case (.Vinataxi, .seven):
        switch km {
        case 0...0.5:
            price = km * 12000
        case 0.6...30:
            price = (0.5 * 12000) + ((km - 0.5) * 19100)
        default:
            price = (0.5 * 12000) + ((30 - 0.5) * 19100) + ((km - 30) * 15100)
        }
    case (.Group, .vios):
        switch km {
        case 0...0.9:
            price = km * 20000
        case 1...25:
            price = (0.9 * 20000) + ((km - 0.9) * 17600)
        default:
            price = (0.9 * 20000) + ((25 - 0.9) * 17600) + ((km - 25) * 14400)
        }
    case (.Group, .innova):
        switch km {
        case 0...0.9:
            price = km * 20000
        case 1...25:
            price = (0.9 * 20000) + ((km - 0.9) * 19600)
        default:
            price = (0.9 * 20000) + ((25 - 0.9) * 19600) + ((km - 25) * 16200)
        }
    case (.Group, .eco):
        switch km {
        case 0...1.5:
            price = km * 20000
        case 1.6...25:
            price = (1.5 * 20000) + ((km - 1.5) * 14300)
        default:
            price = (1.5 * 20000) + ((25 - 1.5) * 14300) + ((km - 25) * 12300)
        }
    case (.G7, .fourMini):
        switch km {
        case 0...1.379:
            price = km * 20000
        case 1.380...20:
            price = (1.379 * 20000) + ((km - 1.379) * 12000)
        default:
            price = (1.379 * 20000) + ((20 - 1.379) * 12000) + ((km - 20) * 12000)
        }
    case (.G7, .fourLarge):
        switch km {
        case 0...1.25:
            price = km * 20000
        case 1.26...20:
            price = (1.25 * 20000) + ((km - 1.25) * 13000)
        default:
            price = (1.25 * 20000) + ((20 - 1.25) * 13000) + ((km - 20) * 13000)
        }
    case (.G7, .seven):
        switch km {
        case 0...1.143:
            price = km * 20000
        case 1.144...20:
            price = (1.143 * 20000) + ((km - 1.143) * 14500)
        default:
            price = (1.143 * 20000) + ((20 - 1.143) * 14500) + ((km - 20) * 14500)
        }
    case (.SaoMai, .fourMini):
        switch km {
        case 0...1.5:
            price = km * 20000
        case 1.6...20:
            price = (1.5 * 20000) + ((km - 1.5) * 13500)
        default:
            price = (1.5 * 20000) + ((20 - 1.5) * 13500) + ((km - 20) * 11500)
        }
    case (.SaoMai, .fourLarge):
        switch km {
        case 0...1.4:
            price = km * 20000
        case 1.5...20:
            price = (1.4 * 20000) + ((km - 1.4) * 14500)
        default:
            price = (1.4 * 20000) + ((20 - 1.4) * 14500) + ((km - 20) * 12500)
        }
    case (.GMS, .fourVinFast):
        switch km {
        case 0...1:
            price = km * 20000
        case 1.1...25:
            price = 20000 + ((km - 1) * 15500)
        default:
            price = 20000 + (25 * 15500) + ((km - 25) * 12500)
        }
    default:
        break
    }
    return price
}
taxiPrice(car: .MaiLinh, service: .fourLarge, km: 40)
print("Số tiền phải trả là: \(Int(price))")
