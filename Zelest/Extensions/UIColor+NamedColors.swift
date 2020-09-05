//
// UIColor+NamedColors.swift
//

import UIKit

extension UIColor {
	// MARK: - Document Layer Styles

	static var fill: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "fill") ?? .white
		} else {
			return UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
		}
	}


	// MARK: - Document Colors

	static var distantHorizon: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "distantHorizon") ?? .white
		} else {
			return UIColor(displayP3Red: 0.9529412, green: 0.9764706, blue: 0.9843137, alpha: 1.0)
		}
	}

	static var redstone: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "redstone") ?? .white
		} else {
			return UIColor(displayP3Red: 0.8980392, green: 0.41960785, blue: 0.43529412, alpha: 1.0)
		}
	}

	static var midnightExpress: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "midnightExpress") ?? .white
		} else {
			return UIColor(displayP3Red: 0.13333334, green: 0.14117648, blue: 0.21960784, alpha: 1.0)
		}
	}


	// MARK: - Iteracion 1 - V1

	static var draculaOrchid: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "draculaOrchid") ?? .white
		} else {
			return UIColor(displayP3Red: 0.1734641, green: 0.19451922, blue: 0.21906888, alpha: 1.0)
		}
	}

	static var capeHope: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "capeHope") ?? .white
		} else {
			return UIColor(displayP3Red: 0.847, green: 0.847, blue: 0.847, alpha: 1.0)
		}
	}

	static var sambucus: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "sambucus") ?? .white
		} else {
			return UIColor(displayP3Red: 0.105882354, green: 0.105882354, blue: 0.18431373, alpha: 1.0)
		}
	}

	static var amphystine: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "amphystine") ?? .white
		} else {
			return UIColor(displayP3Red: 0.23921569, green: 0.2509804, blue: 0.35686275, alpha: 1.0)
		}
	}

	static var buster: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "buster") ?? .white
		} else {
			return UIColor(displayP3Red: 0.2509804, green: 0.29411766, blue: 0.4117647, alpha: 1.0)
		}
	}


	// MARK: - Iteracion 2 - V1

	static var caribouHerd: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "caribouHerd") ?? .white
		} else {
			return UIColor(displayP3Red: 0.8116818, green: 0.64044774, blue: 0.38772142, alpha: 1.0)
		}
	}

	static var whiteSmoke: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "whiteSmoke") ?? .white
		} else {
			return UIColor(displayP3Red: 0.96220374, green: 0.96220374, blue: 0.96220374, alpha: 1.0)
		}
	}

	static var caneSugar: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "caneSugar") ?? .white
		} else {
			return UIColor(displayP3Red: 0.90103227, green: 0.74137235, blue: 0.50473315, alpha: 1.0)
		}
	}

	static var brightNavyBlue: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "brightNavyBlue") ?? .white
		} else {
			return UIColor(displayP3Red: 0.13230574, green: 0.5040311, blue: 0.87806106, alpha: 1.0)
		}
	}

	static var black: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "black") ?? .white
		} else {
			return UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
		}
	}

	static var ironbreakerMetalAlpha30: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "ironbreakerMetalAlpha30") ?? .white
		} else {
			return UIColor(displayP3Red: 0.64705884, green: 0.64705884, blue: 0.67058825, alpha: 0.3)
		}
	}

	static var eclipseBlue: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "eclipseBlue") ?? .white
		} else {
			return UIColor(displayP3Red: 0.27175632, green: 0.36711544, blue: 0.45532662, alpha: 1.0)
		}
	}

	static var blackAlpha28: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "blackAlpha28") ?? .white
		} else {
			return UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.28682086)
		}
	}

	static var breadPudding: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "breadPudding") ?? .white
		} else {
			return UIColor(displayP3Red: 0.75349134, green: 0.6303498, blue: 0.44743443, alpha: 1.0)
		}
	}

	static var winterChill: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "winterChill") ?? .white
		} else {
			return UIColor(displayP3Red: 0.5462574, green: 0.8088266, blue: 0.8376517, alpha: 1.0)
		}
	}

	static var eclipseBlueAlpha35: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "eclipseBlueAlpha35") ?? .white
		} else {
			return UIColor(displayP3Red: 0.27058825, green: 0.36862746, blue: 0.45490196, alpha: 0.35)
		}
	}

	static var castaway: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "castaway") ?? .white
		} else {
			return UIColor(displayP3Red: 0.43409044, green: 0.7274071, blue: 0.77500147, alpha: 1.0)
		}
	}

	static var white: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "white") ?? .white
		} else {
			return UIColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		}
	}

	static var integrity: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "integrity") ?? .white
		} else {
			return UIColor(displayP3Red: 0.13475725, green: 0.24173439, blue: 0.34542546, alpha: 1.0)
		}
	}

	static var palomaTan: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "palomaTan") ?? .white
		} else {
			return UIColor(displayP3Red: 0.90716785, green: 0.7299029, blue: 0.47548032, alpha: 1.0)
		}
	}


	// MARK: - Symbols

	static var lucidity: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "lucidity") ?? .white
		} else {
			return UIColor(displayP3Red: 0.11764706, green: 0.2627451, blue: 0.4, alpha: 1.0)
		}
	}

	static var babyPowder: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "babyPowder") ?? .white
		} else {
			return UIColor(displayP3Red: 0.99607843, green: 1.0, blue: 0.972549, alpha: 1.0)
		}
	}

	static var spray: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "spray") ?? .white
		} else {
			return UIColor(displayP3Red: 0.48966312, green: 0.79420716, blue: 0.8746603, alpha: 1.0)
		}
	}

	static var capeHopeAlpha10: UIColor {
		if #available(iOS 11.0, *) {
			return UIColor(named: "capeHopeAlpha10") ?? .white
		} else {
			return UIColor(displayP3Red: 0.847, green: 0.847, blue: 0.847, alpha: 0.1)
		}
	}


}
