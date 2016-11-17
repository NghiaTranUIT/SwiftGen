//: #### Other pages
//:
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen images`](Images-Demo)
//: * [Demo for `swiftgen storyboards`](Storyboards-Demo)
//: * Demo for `swiftgen colors`
//: * [Demo for `swiftgen fonts`](Fonts-Demo)

//: #### Example of code generated by swiftgen-colors

import UIKit.UIColor

extension UIColor {
    convenience init(rgbaValue: UInt32) {
        let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
        let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

enum ColorName {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#339666"></span>
    /// Alpha: 100% <br/> (0x339666ff)
    case articleBody
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
    /// Alpha: 100% <br/> (0xff66ccff)
    case articleFootnote
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#33fe66"></span>
    /// Alpha: 100% <br/> (0x33fe66ff)
    case articleTitle
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
    /// Alpha: 100% <br/> (0xff66ccff)
    case cyan_Color
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
    /// Alpha: 80% <br/> (0xffffffcc)
    case translucent

    var rgbaValue: UInt32 {
        switch self {
        case .articleBody: return 0x339666ff
        case .articleFootnote: return 0xff66ccff
        case .articleTitle: return 0x33fe66ff
        case .cyan_Color: return 0xff66ccff
        case .translucent: return 0xffffffcc
        }
    }

    var color: UIColor {
        return UIColor(named: self)
    }
}

extension UIColor {
    convenience init(named name: ColorName) {
        self.init(rgbaValue: name.rgbaValue)
    }
}

//: #### Usage Example

UIColor(named: .articleTitle)
ColorName.articleBody.color
UIColor(named: .articleBody)
UIColor(named: .translucent)
/* Only possible if you used `enumBuilder.build(generateStringInit: true)` to generate the enum */
//let orange = UIColor(hexString: "#ffcc88")
let lightGreen = UIColor(rgbaValue: 0x00ff88ff)
