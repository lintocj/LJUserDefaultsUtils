//
//  PreferenceUtils.swift
//  LJUserDefaultsUtils
//
//  Created by linto jacob on 17/07/20.
//  Copyright © 2020 linto. All rights reserved.
//

import UIKit

public  class UserDefaultsUtils {
    
    
    private var userDefaults: UserDefaults
     
     /// Shared instance of `Defaults`, used for ad-hoc access to the user's
     /// defaults database throughout the app.
     public static let shared = UserDefaultsUtils()
     
     /// An instance of `Defaults` with the specified `UserDefaults` instance.
     ///
     /// - Parameter userDefaults: The UserDefaults.
     public init(userDefaults: UserDefaults = UserDefaults.standard) {
         self.userDefaults = userDefaults
     }
    
    
    
     public func setBoolData(boolValue: Bool, dataName: String) {
        userDefaults.set(boolValue, forKey: dataName)
    }
    
    public  func getBoolData(dataName: String)-> Bool{
        if(userDefaults.value(forKey: dataName) != nil) {
            return userDefaults.value(forKey: dataName)! as! Bool
            
        } else {
            return false
        }
    }
    
    public  func saveStringData(data: String, dataName: String){
        userDefaults.set(data, forKey: dataName)
        let didSave = userDefaults.synchronize()
        if !didSave {
            debugPrint("Not saved yet")
        }
    }
    
    public func getSavedStringData(dataName: String)-> String{
        if(userDefaults.value(forKey: dataName) != nil){
            return userDefaults.value(forKey: dataName) as! String
        } else {
            return ""
        }
    }
    
    public func saveArrayData(data: NSArray, dataName: String)
    {
        userDefaults.set(data, forKey: dataName)
        let didSave = userDefaults.synchronize()
        if !didSave{
            debugPrint("Not saved yet")
        }
        
    }
    
    public func getSavedArrayData(dataName: String) -> NSArray{
        if (userDefaults.value(forKey: dataName) != nil) {
            return userDefaults.value(forKey: dataName) as! NSArray
        }else{
            return [""]
        }
        
    }
    
    
    public func saveIntData(data : Int, dataName: String){
        userDefaults.set(data, forKey: dataName)
        let didSave = userDefaults.synchronize()
        if !didSave {
            debugPrint("Not saved yet")
        }
    }
    
    public  func getSavedIntData(dataName: String) -> Int {
        if(userDefaults.value(forKey: dataName) != nil){
            return userDefaults.value(forKey: dataName) as! Int
        }else{
            return 0
        }
    }
    
    
    /// Checks if there is a value associated with the specified key.
       ///
       /// - Parameter key: The key to look for.
       /// - Returns: A boolean value indicating if a value exists for the specified key.
       public func has(dataName: String) -> Bool {
           return userDefaults.value(forKey: dataName) != nil
       }
    
}

//MARK: - userDefaults all keys are manging from here
public class userDefaultKey {
    
    private init() {
    }
    
    private static let userDefault = UserDefaults.standard
    
    static let token: String = "token"
    static let loginSuccess: String = "loginSuccess"
    static let chatId: String = "chatId"
    static let adminChatCheck: String = "adminChat"
    
    static func clearAllUserData(){
        userDefault.removeObject(forKey: token)
        userDefault.removeObject(forKey: loginSuccess)
        userDefault.removeObject(forKey: chatId)
        userDefault.removeObject(forKey: adminChatCheck)
    }
    
    static func clearSingleUserData(key: String){
        userDefault.removeObject(forKey: key)
    }
    /// Removes given bundle's persistent domain
    ///
    /// - Parameter type: Bundle.
    static func removeAll(bundle : Bundle = Bundle.main) {
        guard let name = bundle.bundleIdentifier else { return }
        userDefault.removePersistentDomain(forName: name)
    }
}


