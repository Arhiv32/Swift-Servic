//
//  RealmManager.swift
//  VKClient
//

import RealmSwift

class RealmManager {
    
    static let shared = RealmManager()
    private init?() {
        let configuration = Realm.Configuration(schemaVersion: 1, deleteRealmIfMigrationNeeded: true)
        guard let realm = try? Realm(configuration: configuration) else { return nil }
        self.realm = realm
        
        print("Realm database file path:")
        print(realm.configuration.fileURL ?? "")
    }
    
    private let realm: Realm
    
    // MARK: - Major methods
    
    func add<T: Object>(object: T) throws {
        try realm.write {
            realm.add(object, update: .all)
        }
    }
    
    func add<T: Object>(objects: [T]) throws {
        try realm.write {
            realm.add(objects, update: .all)
        }
    }
    
    func getObjects<T: Object>() -> Results<T> {
        return realm.objects(T.self)
    }
    
    func delete<T: Object>(object: T) throws {
        try realm.write {
            realm.delete(object)
        }
    }
    
    func deleteAll() throws {
        try realm.write {
            realm.deleteAll()
        }
    }
}
