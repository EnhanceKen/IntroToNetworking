//
//  NetworkManager.swift
//  introToNetworkingHW
//
//  Created by Consultant on 11/8/22.
//

import Foundation

class NetworkManager {
    var tempID : String = ""
    func fetchImageData(path: String,  completion: @escaping(Data?) -> Void){
        guard let url = URL(string: path) else{
            completion(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error{
                completion(nil)
                return
            }
            let httpResponse = response as? HTTPURLResponse
            self.tempID = httpResponse?.value(forHTTPHeaderField: "picsum-id") ?? "0"
            
//    
            completion(data)
//
        }
        task.resume()
    }
}
