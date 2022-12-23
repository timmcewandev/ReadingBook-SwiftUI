//
//  ServiceLayer.swift
//  BookReview
//
//  Created by Tim McEwan on 12/22/22.
//

import Foundation


struct ServiceLayer {
    
   static func getBooks() -> [Book] {
        // get path from Data by accessing the bundle
        
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard let surePath = path else { return  [Book]()}
        // get URL from string path
        let url = URL(fileURLWithPath: surePath)
        
        do {
            // do thing in here to get data safely
            //Now get data
            let data = try Data(contentsOf: url)
            // create decoder
            let decoder = JSONDecoder()
            do {
               let dataArray = try decoder.decode([Book].self, from: data)
                for index in 0..<dataArray.count {
                    dataArray[index].ids = UUID()
                }
                
                return dataArray
            }
            catch {
                print(error.localizedDescription)
            }
            
        }
        catch {
            //catch error safely
            print(error.localizedDescription)
        }
        
        
        
        
        return[Book]()
    }
    
}
