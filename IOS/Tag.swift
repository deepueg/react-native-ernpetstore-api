public class Tag: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let id: Int64?
    public let name: String?

    public init(id: Int64?, name: String?) {
        self.id = id
        self.name = name
        super.init()
    }

    public override init() {
        self.id = nil
        self.name = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {



        if let id = dictionary["id"] as? Int64 {
            self.id = id
        } else {
            self.id = nil
        }
        

        if let name = dictionary["name"] as? String {
            self.name = name
        } else {
            self.name = nil
        }
        
        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {

         var dict = [:] as [AnyHashable : Any]

         
        if let nonNullId = self.id {
                dict["id"] = nonNullId
        }
        if let nonNullName = self.name {
                dict["name"] = nonNullName
        }
        return dict as NSDictionary
    }
}
