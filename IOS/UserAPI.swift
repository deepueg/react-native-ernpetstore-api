public class UserAPI: NSObject  {

    static let kRequestCreateUser = "com.ernpetstore.ern.api.request.createUser";

    static let kRequestCreateUsersWithArrayInput = "com.ernpetstore.ern.api.request.createUsersWithArrayInput";

    static let kRequestCreateUsersWithListInput = "com.ernpetstore.ern.api.request.createUsersWithListInput";

    static let kRequestDeleteUser = "com.ernpetstore.ern.api.request.deleteUser";

    static let kRequestGetUserByName = "com.ernpetstore.ern.api.request.getUserByName";

    static let kRequestLoginUser = "com.ernpetstore.ern.api.request.loginUser";

    static let kRequestLogoutUser = "com.ernpetstore.ern.api.request.logoutUser";

    static let kRequestUpdateUser = "com.ernpetstore.ern.api.request.updateUser";


    public lazy var requests: UserAPIRequests = {
        return UserRequests()
    }()
}


public class UserAPIRequests: NSObject {
    public func registerCreateUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerCreateUsersWithArrayInputRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerCreateUsersWithListInputRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerDeleteUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerGetUserByNameRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerLoginUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerLogoutUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerUpdateUserRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func createUser(body: User, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func createUsersWithArrayInput(createUsersWithArrayInputData: CreateUsersWithArrayInputData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func createUsersWithListInput(body: [User], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func deleteUser(username: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func getUserByName(username: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func loginUser(loginUserData: LoginUserData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func logoutUser(responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func updateUser(updateUserData: UpdateUserData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

