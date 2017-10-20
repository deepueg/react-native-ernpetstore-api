
public class LoginUserData: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let username: String?
    public let password: String?

    public init(username: String, password: String) {
        self.username = username
        self.password = password
        super.init()
    }

    public override init() {
        self.username = nil
        self.password = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        if
        } else {
            assertionFailure("\(LoginUserData.tag) missing one or more required properties[]")
        }

        self.username = dictionary["username"] as? String
        self.password = dictionary["password"] as? String

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict =  [
        ] as [AnyHashable : Any]

        if let nonNullusername = self.username {
            dict["username"] = nonNullusername
        }
        if let nonNullpassword = self.password {
            dict["password"] = nonNullpassword
        }
        return dict as NSDictionary
    }

}
