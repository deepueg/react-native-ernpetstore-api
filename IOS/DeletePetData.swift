
public class DeletePetData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let petId: Int64
    public let api_key: String?

    public init(petId: Int64, api_key: String) {
        self.petId = petId
        self.api_key = api_key
        super.init()
    }

    public override init() {
        self.petId = Int64()
        self.api_key = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let petId = dictionary["petId"] as? Int64 { 
            self.petId = petId
        } else {
            assertionFailure("\(DeletePetData.tag) missing one or more required properties[petId]")
            self.petId = dictionary["petId"] as! Int64
        }

        self.api_key = dictionary["api_key"] as? String

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "petId": self.petId
        ] as [AnyHashable : Any]

        if let nonNullapi_key = self.api_key {
            dict["api_key"] = nonNullapi_key
        }
        return dict as NSDictionary
    }

}
