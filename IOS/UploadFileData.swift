
public class UploadFileData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let petId: Int64
    public let additionalMetadata: String?
    public let file: String?

    public init(petId: Int64, additionalMetadata: String, file: String) {
        self.petId = petId
        self.additionalMetadata = additionalMetadata
        self.file = file
        super.init()
    }

    public override init() {
        self.petId = Int64()
        self.additionalMetadata = nil
        self.file = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let petId = dictionary["petId"] as? Int64 { 
            self.petId = petId
        } else {
            assertionFailure("\(UploadFileData.tag) missing one or more required properties[petId]")
            self.petId = dictionary["petId"] as! Int64
        }

        self.additionalMetadata = dictionary["additionalMetadata"] as? String
        self.file = dictionary["file"] as? String

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "petId": self.petId
        ] as [AnyHashable : Any]

        if let nonNulladditionalMetadata = self.additionalMetadata {
            dict["additionalMetadata"] = nonNulladditionalMetadata
        }
        if let nonNullfile = self.file {
            dict["file"] = nonNullfile
        }
        return dict as NSDictionary
    }

}
