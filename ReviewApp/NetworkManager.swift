//
//  NetworkManager.swift
//  ReviewApp
//
//  Created by Nayan Pawar on 02/03/23.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    private init(){}
    
    
    func getReviews(completion: @escaping (Json4Swift_Base) -> Void){
        
        //        Get url of the server
        guard let url = URL(string: "http://52.76.221.73/demo/get_ratings.json")
        else{
            fatalError()
        }
        // fetching data from JSON
            URLSession.shared.dataTask(with: url) { data, response, error in
             
            guard let data, error == nil
            else{
                fatalError()
            }
            do{
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(Json4Swift_Base.self, from: data)
                print("Data is decoded from JSON")
                completion(decodedData)
            }catch let error{
                print(error.localizedDescription)
            }

        }.resume()
    }
    
    func getReviewsAlomofire(completion: @escaping (Json4Swift_Base)-> Void){
//        guard let url = URL(string: "http://52.76.221.73/demo/get_ratings.json")
//        else{fatalError()}
        
        AF.request("http://52.76.221.73/demo/get_ratings.json").response {  response in
            guard let data = response.data
            else{
                fatalError()
            }
            do{
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(Json4Swift_Base.self, from: data)
                print("Data is decoded from JSON")
                completion(decodedData)
            }catch let error{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
