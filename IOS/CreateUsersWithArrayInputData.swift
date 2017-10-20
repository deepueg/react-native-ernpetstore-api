
public class CreateUsersWithArrayInputData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let body: [User]
    public let testParam: String?
    public let testIntArray: [Int]?

    public init(body: [User], testParam: String, testIntArray: [Int]) {
        self.body = body
        self.testParam = testParam
        self.testIntArray = testIntArray
        super.init()
    }

    public override init() {
        self.body = [User]()
        self.testParam = nil
        self.testIntArray = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let bodyArray = dictionary["body"] as? [AnyHashable: Any] { 
                    self.body = bodyDict.map({ obj in
                    (dictionary: obj as! [AnyHashable : Any])
                    })

        } else {
            assertionFailure("\(CreateUsersWithArrayInputData.tag) missing one or more required properties[body]")
            self.body = dictionary["body"] as! [User]
        }

        self.testParam = dictionary["testParam"] as? String
        self.testIntArray = dictionary["testIntArray"] as? [Int]

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "body": self.body.toDictionary()
        ] as [AnyHashable : Any]

        if let nonNulltestParam = self.testParam {
            dict["testParam"] = nonNulltestParam
        }
        if let nonNulltestIntArray = self.testIntArray {
            dict["testIntArray"] = nonNulltestIntArray
        }
        return dict as NSDictionary
    }

}
