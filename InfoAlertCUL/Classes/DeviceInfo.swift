//
//  DeviceInfo.swift
//  InfoAlertCUL
//
//  Created by BHJ on 2021/09/13.
//

import UIKit
//import AdSupport

open class DeviceInfo: NSObject {
  
    //MARK: 디바이스 제조사
    public static func makeName() -> String {
        return "Apple"
    }
    
    //MARK: 디바이스 모델명
    public static func modelName() -> String {
        return UIDevice.current.model
    }
    
    //MARK: 디바이스 하드웨어 버전
    public static func hardwareVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    //MARK: OS 이름
    public static func devicOSName() -> String {
        return UIDevice.current.name
    }
    
    //MARK: 단말 OS 버전
    public static func devicOSVer() -> String {
        return UIDevice.current.systemVersion
    }
    
    //MARK: 스크린사이즈
    public static func screenSize() -> String {
        let size = NSStringFromCGRect(UIScreen.main.bounds)
        return size
    }
    
//        //MARK: DPI
//        public static func dpi() -> String {
//        }
//
//        //MARK: Density
//        public static func density() -> String {
//        }
//
    //MARK: 사용언어
    public static func useLanguage() -> String {
        guard let languge = Locale.current.languageCode else {
            return "Unknown"
        }
        return languge
    }
    
    //MARK: App이름
    public static func appName() -> String {
        let appName = Bundle.main.infoDictionary!["CFBundleName"] as! String
        return appName
    }
    
    //MARK: 앱 버전
    public static func appVersion() -> String {
        let appVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
        return appVersion
    }
    
//        //MARK: Appstore ID
//        public static func AppstoreID() -> String {
//        }
//
//        //MARK: IP (https://www.ipify.org 참고)
//        public static func ip() -> String {
//        }
    
//    //MARK: IDFA
//    public static func idfa() -> String {
//        let myIDFA: String?
//        if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
//            myIDFA = ASIdentifierManager.shared().advertisingIdentifier.uuidString
//            return myIDFA!
//        } else {
//            myIDFA = nil
//            return "Unknown"
//        }
//    }
    
//    //MARK: IDFV
//    public static func idfv() -> String {
//    }
//
//    //MARK: WebView 의 User-Agent 정보
//    public static func webViewUserAgent() -> String {
//    }
//
//    //MARK: SKAdNetworkIdentifier 정보 보호 목록
//    public static func skAdNetworkIdentifier() -> String {
//    }
}
