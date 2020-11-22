//
//  PersonViewController.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import Foundation
import FirebaseFirestore

class FirebaseService {
    
    init() { }
    
    func firebasestore() -> Firestore {
        return Firestore.firestore()
    }
    
    func add() {
        var ref: DocumentReference? = nil
        ref = firebasestore().collection("person").addDocument(data: [
            "name": "Ada Lovelace",
            "nationality": "",
            "born": "1815",
            "photoURL": "ada"
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    func getList(completion: @escaping ([Person]?) -> ()) {
        firebasestore().collection("person").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                let emiliano = Person(name: "Emiliano", born: "1981", nationality: "Brazil", photoURL: "emiliano")
                let people: [Person] = [emiliano]
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    DispatchQueue.main.async {
                        completion(people)
                    }
                }
            }
        }
    }
}
