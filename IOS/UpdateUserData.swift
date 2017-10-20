
public class UpdateUserData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let username: String
    public let body: User?

    public init(username: String, body: User) {
        self.username = username
        self.body = body
        super.init()
    }

    public override init() {
        self.username = String()
        self.body = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if

                let username = dictionary["username"] as? String { 
            self.username = username
        } else {
            assertionFailure("\(UpdateUserData.tag) missing one or more required properties[username]")
            self.username = dictionary["username"] as! String
        }


        if let bodyDict = dictionary["body"] as? [AnyHashable: Any] {
            self.body = User(dictionary: bodyDict)
        } else {
            self.body = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
            "username": self.username
        ] as [AnyHashable : Any]

        if let nonNullbody = self.body {
            dict["body"] = nonNullbody.toDictionary()
        }
        return dict as NSDictionary
    }

}
