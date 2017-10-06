
let array = ["a", "b", "c"]
array[0]
array[1]
array[2]


struct Family {
    var father = "Father"
    var mather = "Mother"
    var kids = ["kid1", "kid2", "kid3"]
    
    var count: Int {
        get {
            return 2 + kids.count
        }
    }
    subscript(index: Int) -> String? {
        get {
            switch(index) {
            case 0: return father
            case 1: return mather
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        set {
        let value = newValue ?? ""
            
            switch(index) {
            case 0: return father = value
            case 1: return mather = value
            case 2..<(2 + kids.count): kids[index - 2]
            default: break
            }
        }
    }
    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += "  " + suffix
        return name
    
    }
}

var famaly = Family()
famaly.father
famaly.mather
famaly.count

famaly[0]
famaly[1]
famaly[2]
famaly[3]
famaly[6]


famaly[0] = "Daddy"
famaly.father
famaly.kids[0] = "Buddy"
famaly[2]

famaly[2]
famaly[2, "the great"]



struct Field {
    
    var dict = [String: String]()
    
    func keyForColumn(column: String, andRow row: Int) -> String {
        return column + String(row)
    }
    
    subscript(column: String, row: Int) -> String? {
        get{
            return dict[keyForColumn(column, andRow: row)]
        }
        set{
            dict[column + String(row)] = newValue
        }
    }
}

var field = Field()

field["a", 5]
field["a", 5] = "x"
field["a", 5]
field["a", 6]






