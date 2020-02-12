//
//  NetworkingClient.swift
//  HCPTest
//
//  Created by Nazar Petruk on 12/02/2020.
//  Copyright © 2020 Nazar Petruk. All rights reserved.
//

import Foundation


class NetworkingClient {
    
    class func taskForGetRequest<ResponseType: Decodable> (url : URL, response: ResponseType.Type, completion: @escaping (ResponseType?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            let decoder = JSONDecoder()
            do {
                let responseObject = try decoder.decode(ResponseType.self, from: data)
                DispatchQueue.main.async {
                    completion(responseObject, nil)
                }
            }catch{
                print(error)
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
        }
        task.resume()
    }
    
    class func getDoctorList(completion: @escaping ([DoctorListModel], Error?) -> Void) {
        taskForGetRequest(url: url, response: DoctorCallResults.self) { (response, error) in
            if let response = response {
                
                completion(response.results, error)
            }else{
                completion([], error)
            }
        }
    }
    
}
