//
//  File.swift
//  
//
//  Created by Mark Robberts on 2023/06/16.
//

import SwiftUI

@available(macOS 13.0, *)
@available(iOS 16.0, *)

public final class Gradient: NSObject {
    
   public let colorOne: [Color] = [
    Color(.clear),       Color("GradRedHi"),  Color("GradOrangeHi"), Color("GradYellowHi"), Color("GradLimeHi"),   Color("GradGreenHi"),
    Color("GradTealHi"), Color("GradBlueHi"), Color("GradPurpleHi"), Color("GradPinkHi"),   Color("GradRedHi"),    Color("GradRedLo"),
    Color("GradBlueHi"), Color("GradBlueHi"), Color("GradYellowHi"), Color("GradYellowLo"), Color("GradPurpleHi"), Color("GradWhite"),
    Color("GradBlack"),  Color(.clear)
    ]

   public let colorTwo: [Color] = [
    Color(.clear),        Color("GradOrangeLo"), Color("GradYellowLo"), Color("GradLimeLo"), Color("GradGreenLo"),  Color("GradTealLo"),
    Color("GradBlueLo"),  Color("GradPurpleLo"), Color("GradPinkLo"),   Color("GradRedLo"),  Color("GradPurpleHi"), Color("GradGreenHi"),
    Color("GradGreenHi"), Color("GradOrangeHi"), Color("GradOrangeHi"), Color("GradTealLo"), Color("GradTealLo"),   Color("GradYellowLo"),
    Color("GradBlack"),   Color("GradWhite"),    Color(.clear)
    ]
    
    
   public let linearRedOrange    = LinearGradient(colors: [Color("GradRedHi"),    Color("GradOrangeLo") ], startPoint: .leading, endPoint: .trailing)
   public let linearOrangeYellow = LinearGradient(colors: [Color("GradOrangeHi"), Color("GradYellowLo") ], startPoint: .leading, endPoint: .trailing)
   public let linearYellowLime   = LinearGradient(colors: [Color("GradYellowHi"), Color("GradLimeLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearLimeGreen    = LinearGradient(colors: [Color("GradLimeHi"),   Color("GradGreenLo")  ], startPoint: .leading, endPoint: .trailing)
   public let linearGreenTeal    = LinearGradient(colors: [Color("GradGreenHi"),  Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearTealBlue     = LinearGradient(colors: [Color("GradTealHi"),   Color("GradBlueLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearBluePurple   = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradPurpleLo") ], startPoint: .leading, endPoint: .trailing)
   public let linearPurplePink   = LinearGradient(colors: [Color("GradPurpleHi"), Color("GradPinkLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearPinkRed      = LinearGradient(colors: [Color("GradPinkHi"),   Color("GradRedLo")    ], startPoint: .leading, endPoint: .trailing)
   public let linearRedPurple    = LinearGradient(colors: [Color("GradRedHi"),    Color("GradPurpleHi") ], startPoint: .leading, endPoint: .trailing)
   public let linearRedGreen     = LinearGradient(colors: [Color("GradRedLo"),    Color("GradGreenHi")  ], startPoint: .leading, endPoint: .trailing)
   public let linearBlueGreen    = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradGreenHi")  ], startPoint: .leading, endPoint: .trailing)
   public let linearBlueOrange   = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradOrangeHi") ], startPoint: .leading, endPoint: .trailing)
   public let linearYellowOrange = LinearGradient(colors: [Color("GradYellowHi"), Color("GradOrangeHi") ], startPoint: .leading, endPoint: .trailing)
   public let linearYellowTeal   = LinearGradient(colors: [Color("GradYellowLo"), Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearPurpleTeal   = LinearGradient(colors: [Color("GradPurpleHi"), Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing)
   public let linearPurpleYellow = LinearGradient(colors: [Color("GradPurpleLo"), Color("GradYellowLo") ], startPoint: .leading, endPoint: .trailing)
   public let linearWhiteBlack   = LinearGradient(colors: [Color("GradWhite"),    Color("GradBlack")    ], startPoint: .leading, endPoint: .trailing)
   public let linearBlackWhite   = LinearGradient(colors: [Color("GradBlack"),    Color("GradWhite")    ], startPoint: .leading, endPoint: .trailing)
    
   public let linears: [LinearGradient] = [
        LinearGradient(colors: [Color(.clear),         Color(.clear)         ], startPoint: .leading, endPoint: .trailing),//0
        LinearGradient(colors: [Color("GradRedHi"),    Color("GradOrangeLo") ], startPoint: .leading, endPoint: .trailing),//1
        LinearGradient(colors: [Color("GradOrangeHi"), Color("GradYellowLo") ], startPoint: .leading, endPoint: .trailing),//2
        LinearGradient(colors: [Color("GradYellowHi"), Color("GradLimeLo")   ], startPoint: .leading, endPoint: .trailing),//3
        LinearGradient(colors: [Color("GradLimeHi"),   Color("GradGreenLo")  ], startPoint: .leading, endPoint: .trailing),//4
        LinearGradient(colors: [Color("GradGreenHi"),  Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing),//5
        LinearGradient(colors: [Color("GradTealHi"),   Color("GradBlueLo")   ], startPoint: .leading, endPoint: .trailing),//6
        LinearGradient(colors: [Color("GradBlueHi"),   Color("GradPurpleLo") ], startPoint: .leading, endPoint: .trailing),//7
        LinearGradient(colors: [Color("GradPurpleHi"), Color("GradPinkLo")   ], startPoint: .leading, endPoint: .trailing),//8
        LinearGradient(colors: [Color("GradPinkHi"),   Color("GradRedLo")    ], startPoint: .leading, endPoint: .trailing),//9
        LinearGradient(colors: [Color("GradRedHi"),    Color("GradPurpleHi") ], startPoint: .leading, endPoint: .trailing),//10
        LinearGradient(colors: [Color("GradRedLo"),    Color("GradGreenHi")  ], startPoint: .leading, endPoint: .trailing),//11
        LinearGradient(colors: [Color("GradBlueHi"),   Color("GradGreenHi")  ], startPoint: .leading, endPoint: .trailing),//12
        LinearGradient(colors: [Color("GradBlueHi"),   Color("GradOrangeHi") ], startPoint: .leading, endPoint: .trailing),//13
        LinearGradient(colors: [Color("GradYellowHi"), Color("GradOrangeHi") ], startPoint: .leading, endPoint: .trailing),//14
        LinearGradient(colors: [Color("GradYellowLo"), Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing),//15
        LinearGradient(colors: [Color("GradPurpleHi"), Color("GradTealLo")   ], startPoint: .leading, endPoint: .trailing),//16
        LinearGradient(colors: [Color("GradPurpleLo"), Color("GradYellowLo") ], startPoint: .leading, endPoint: .trailing),//17
        LinearGradient(colors: [Color("GradWhite"),    Color("GradBlack")    ], startPoint: .leading, endPoint: .trailing),//18
        LinearGradient(colors: [Color("GradBlack"),    Color("GradWhite")    ], startPoint: .leading, endPoint: .trailing),//19
        LinearGradient(colors: [Color(.clear),         Color(.clear)         ], startPoint: .leading, endPoint: .trailing),//20
    ]
    
   public let diagonalRedOrange    = LinearGradient(colors: [Color("GradRedHi"),    Color("GradOrangeLo") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalOrangeYellow = LinearGradient(colors: [Color("GradOrangeHi"), Color("GradYellowLo") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalYellowLime   = LinearGradient(colors: [Color("GradYellowHi"), Color("GradLimeLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalLimeGreen    = LinearGradient(colors: [Color("GradLimeHi"),   Color("GradGreenLo")  ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalGreenTeal    = LinearGradient(colors: [Color("GradGreenHi"),  Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalTealBlue     = LinearGradient(colors: [Color("GradTealHi"),   Color("GradBlueLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalBluePurple   = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradPurpleLo") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalPurplePink   = LinearGradient(colors: [Color("GradPurpleHi"), Color("GradPinkLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalPinkRed      = LinearGradient(colors: [Color("GradPinkHi"),   Color("GradRedLo")    ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalRedPurple    = LinearGradient(colors: [Color("GradRedHi"),    Color("GradPurpleHi") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalRedGreen     = LinearGradient(colors: [Color("GradRedLo"),    Color("GradGreenHi")  ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalBlueGreen    = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradGreenHi")  ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalBlueOrange   = LinearGradient(colors: [Color("GradBlueHi"),   Color("GradOrangeHi") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalYellowOrange = LinearGradient(colors: [Color("GradYellowHi"), Color("GradOrangeHi") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalYellowTeal   = LinearGradient(colors: [Color("GradYellowLo"), Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalPurpleTeal   = LinearGradient(colors: [Color("GradPurpleHi"), Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalPurpleYellow = LinearGradient(colors: [Color("GradPurpleLo"), Color("GradYellowLo") ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalWhiteBlack   = LinearGradient(colors: [Color("GradWhite"),    Color("GradBlack")    ], startPoint: .topLeading, endPoint: .bottomTrailing)
   public let diagonalBlackWhite   = LinearGradient(colors: [Color("GradBlack"),    Color("GradWhite")    ], startPoint: .topLeading, endPoint: .bottomTrailing)
    
   public let diagonals: [LinearGradient] = [
    LinearGradient(colors: [Color(.clear),         Color(.clear)         ], startPoint: .leading, endPoint: .trailing),//0
    LinearGradient(colors: [Color("GradRedHi"),    Color("GradOrangeLo") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradOrangeHi"), Color("GradYellowLo") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradYellowHi"), Color("GradLimeLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradLimeHi"),   Color("GradGreenLo")  ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradGreenHi"),  Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradTealHi"),   Color("GradBlueLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradBlueHi"),   Color("GradPurpleLo") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradPurpleHi"), Color("GradPinkLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradPinkHi"),   Color("GradRedLo")    ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradRedHi"),    Color("GradPurpleHi") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradRedLo"),    Color("GradGreenHi")  ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradBlueHi"),   Color("GradGreenHi")  ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradBlueHi"),   Color("GradOrangeHi") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradYellowHi"), Color("GradOrangeHi") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradYellowLo"), Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradPurpleHi"), Color("GradTealLo")   ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradPurpleLo"), Color("GradYellowLo") ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradWhite"),    Color("GradBlack")    ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color("GradBlack"),    Color("GradWhite")    ], startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(colors: [Color(.clear),         Color(.clear)         ], startPoint: .leading, endPoint: .trailing),//0
    ]
}
