
public class UpdatePetWithFormData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let petId: String
    public let name: String?
    public let status: String?

    public init(petId: String, name: String, status: String) {
        self.petId = petId
        self.name = name
        self.status = status
        super.init()
    }

    public override init() {
        self.petId = String()
        self.name = nil
        self.status = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let petId = dictionary["petId"] as? String { 
            self.petId = petId
        } else {
            assertionFailure("\(UpdatePetWithFormData.tag) missing one or more required properties[petId]")
            self.petId = dictionary["petId"] as! String
        }

        self.name = dictionary["name"] as? String
        self.status = dictionary["status"] as? String

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "petId": self.petId
        ] as [AnyHashable : Any]

        if let nonNullname = self.name {
            dict["name"] = nonNullname
        }
        if let nonNullstatus = self.status {
            dict["status"] = nonNullstatus
        }
        return dict as NSDictionary
    }

}
