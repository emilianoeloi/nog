//
//  PersonViewController.swift
//  nog
//
//  Created by Emiliano Barbosa on 21/11/20.
//

import Foundation
import FirebaseFirestore

class PersonViewController {
    init() {
        let db = Firestore.firestore()
        var ref: DocumentReference? = nil
        ref = db.collection("person").addDocument(data: [
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
        
        db.collection("person").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
}
