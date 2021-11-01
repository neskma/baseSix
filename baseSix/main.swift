//
//
//


import Foundation





struct Queue<T> {
    private var store = [T]()
    
    mutating func queueOne(_ item: T) {
        store.append(item)
    }
    
    mutating func queueTwo() -> T? {
        guard store.count > 0 else { return nil }
        return store.removeFirst()
    }
    
    func filter( _ storeFilter: (T) -> Bool ) -> [T] {
        var result = [T]()
        for item in store {
            if storeFilter(item) {
                result.append(item)
            }
        }
        
        return result
    }
    
    func map<U>(_ changeMap: (T) -> U) -> [U] {
        var result = [U]()
        for item in store {
            let changeItem = changeMap(item)
            result.append(changeItem)
        }
        
        return result
    }
}
struct Store {
    var itemOne = "Phone"
    var itemTwo = "Computer"
    var itemThree = "Accessories"
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 1:
                return itemOne
            case 2:
                return itemTwo
            case 3:
                return itemThree
        default:
            return nil
        }
    }
}
}
