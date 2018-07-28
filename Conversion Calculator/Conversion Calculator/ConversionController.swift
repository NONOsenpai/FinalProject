//
//  ConversionController.swift
//  Conversion Calculator
//
//  Created by Chuyang Lin on 7/27/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

class ConverterController {
    func converterChoice(_ choice: Int, _ value: String) -> Conversion{
        switch choice{
        case 1:
            return fahrenheitToCelecius(Float(value)!)
        case 2:
            return celciusToFahrenheit(Float(value)!)
        case 3:
            return milesToKilometers(Float(value)!)
        case 4:
            return kilometersToMiles(Float(value)!)
        default:
            let convert = Conversion(
                original: "",
                converted: ""
            )
            return convert
        }
    }
    
    func titleChange(_ choice: Int) -> TitleChanger {
        switch choice {
        case 1:
            let changeTitle = TitleChanger(inputTitle: "  F°", outputTitle: "  C°")
            return changeTitle
        case 2:
            let changeTitle = TitleChanger(inputTitle: "  C°", outputTitle: "  F°")
            return changeTitle
        case 3:
            let changeTitle = TitleChanger(inputTitle: "  mi", outputTitle: "  km")
            return changeTitle
        case 4:
            let changeTitle = TitleChanger(inputTitle: "  km", outputTitle: "  mi")
            return changeTitle
        default:
            let changeTitle = TitleChanger(inputTitle: "  F°", outputTitle: "  C°")
            return changeTitle
        }
    }
    func fahrenheitToCelecius(_ fah: Float) -> Conversion {
        let convert = Conversion(
            original: String(fah),
            converted: String((Float(fah) - 32) / 1.8)
        )
        return  convert
    }
    func celciusToFahrenheit(_ cel: Float) -> Conversion {
        let convert = Conversion (
            original: String(cel),
            converted:String((1.8 * Float(cel) + 32.0))
        )
        return convert
    }
    func milesToKilometers(_ miles: Float) -> Conversion {
        let convert = Conversion(
            original: String(miles),
            converted: String(Float(miles)/0.62137)
        )
        return convert
    }
    func kilometersToMiles(_ kilometers: Float) -> Conversion {
        let convert = Conversion(
            original: String(kilometers),
            converted:String(Float(kilometers) * 0.62137)
        )
        return convert
    }
}
