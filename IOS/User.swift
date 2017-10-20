public class User: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    public let id: Int64?
    public let username: String?
    public let firstName: String?
    public let lastName: String?
    public let email: String?
    public let password: String?
    public let phone: String?
    /**
     User Status
     */
    public let userStatus: Int?

    public init(id: Int64?, username: String?, firstName: String?, lastName: String?, email: String?, password: String?, phone: String?, userStatus: Int?) {
        self.id = id
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.phone = phone
        self.userStatus = userStatus
        super.init()
    }

    public override init() {
        self.id = nil
        self.username = nil
        self.firstName = nil
        self.lastName = nil
        self.email = nil
        self.password = nil
        self.phone = nil
        self.userStatus = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {



        if let id = dictionary["id"] as? Int64 {
            self.id = id
        } else {
            self.id = nil
        }
        

        if let username = dictionary["username"] as? String {
            self.username = username
        } else {
            self.username = nil
        }
        

        if let firstName = dictionary["firstName"] as? String {
            self.firstName = firstName
        } else {
            self.firstName = nil
        }
        

        if let lastName = dictionary["lastName"] as? String {
            self.lastName = lastName
        } else {
            self.lastName = nil
        }
        

        if let email = dictionary["email"] as? String {
            self.email = email
        } else {
            self.email = nil
        }
        

        if let password = dictionary["password"] as? String {
            self.password = password
        } else {
            self.password = nil
        }
        

        if let phone = dictionary["phone"] as? String {
            self.phone = phone
        } else {
            self.phone = nil
        }
        

        if let userStatus = dictionary["userStatus"] as? Int {
            self.userStatus = userStatus
        } else {
            self.userStatus = nil
        }
        
        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {

         var dict = [:] as [AnyHashable : Any]

         
        if let nonNullId = self.id {
                dict["id"] = nonNullId
        }
        if let nonNullUsername = self.username {
                dict["username"] = nonNullUsername
        }
        if let nonNullFirstName = self.firstName {
                dict["firstName"] = nonNullFirstName
        }
        if let nonNullLastName = self.lastName {
                dict["lastName"] = nonNullLastName
        }
        if let nonNullEmail = self.email {
                dict["email"] = nonNullEmail
        }
        if let nonNullPassword = self.password {
                dict["password"] = nonNullPassword
        }
        if let nonNullPhone = self.phone {
                dict["phone"] = nonNullPhone
        }
        if let nonNullUserStatus = self.userStatus {
                dict["userStatus"] = nonNullUserStatus
        }
        return dict as NSDictionary
    }
}
