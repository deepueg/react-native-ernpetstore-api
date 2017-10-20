public class Order: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let id: Int64?
    public let petId: Int64?
    public let quantity: Int?
    public let shipDate: String?
    public let complete: Bool?

    public init(id: Int64?, petId: Int64?, quantity: Int?, shipDate: String?, status: Status?, complete: Bool?) {
        self.id = id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.complete = complete
        super.init()
    }

    public override init() {
        self.id = nil
        self.petId = nil
        self.quantity = nil
        self.shipDate = nil
        self.status = nil
        self.complete = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {



        if let id = dictionary["id"] as? Int64 {
            self.id = id
        } else {
            self.id = nil
        }
        

        if let petId = dictionary["petId"] as? Int64 {
            self.petId = petId
        } else {
            self.petId = nil
        }
        

        if let quantity = dictionary["quantity"] as? Int {
            self.quantity = quantity
        } else {
            self.quantity = nil
        }
        

        if let shipDate = dictionary["shipDate"] as? String {
            self.shipDate = shipDate
        } else {
            self.shipDate = nil
        }
        

        if let status = dictionary["status"] as? String {
            self.status = status
        } else {
            self.status = nil
        }
        

        if let complete = dictionary["complete"] as? Bool {
            self.complete = complete
        } else {
            self.complete = nil
        }
        
        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {

         var dict = [:] as [AnyHashable : Any]

         
        if let nonNullId = self.id {
                dict["id"] = nonNullId
        }
        if let nonNullPetId = self.petId {
                dict["petId"] = nonNullPetId
        }
        if let nonNullQuantity = self.quantity {
                dict["quantity"] = nonNullQuantity
        }
        if let nonNullShipDate = self.shipDate {
                dict["shipDate"] = nonNullShipDate
        }
        if let nonNullStatus = self.status {
                dict["status"] = nonNullStatus
        }
        if let nonNullComplete = self.complete {
                dict["complete"] = nonNullComplete
        }
        return dict as NSDictionary
    }
}
