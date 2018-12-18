//
//  Util.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 18/12/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import Foundation

func saveToken(token: String){
  UserDefaults.standard.set(token, forKey: "token")
}

func getToken() -> String {
    return UserDefaults.standard.string(forKey: "token") ?? ""
}
