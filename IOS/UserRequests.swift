
public class UserRequests: UserAPIRequests {

    public override func registerCreateUserRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestCreateUser,
    reqClass: User.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerCreateUsersWithArrayInputRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestCreateUsersWithArrayInput,
    reqClass: CreateUsersWithArrayInputData.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerCreateUsersWithListInputRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestCreateUsersWithListInput,
    reqClass: Array<Any>.self, reqItemType: User.self,
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerDeleteUserRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestDeleteUser,
    reqClass: String.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerGetUserByNameRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestGetUserByName,
    reqClass: String.self, 
    respClass: User.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerLoginUserRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestLoginUser,
    reqClass: LoginUserData.self, 
    respClass: String.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerLogoutUserRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestLogoutUser,
    reqClass: None.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerUpdateUserRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: UserAPI.kRequestUpdateUser,
    reqClass: UpdateUserData.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func createUser(body: User, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<User, None, Any>(
            requestName: UserAPI.kRequestCreateUser,
            requestPayload: body,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func createUsersWithArrayInput(createUsersWithArrayInputData: CreateUsersWithArrayInputData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<CreateUsersWithArrayInputData, None, Any>(
            requestName: UserAPI.kRequestCreateUsersWithArrayInput,
            requestPayload: createUsersWithArrayInputData,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func createUsersWithListInput(body: [User], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<[User], None, Any>(
            requestName: UserAPI.kRequestCreateUsersWithListInput,
            requestPayload: body,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func deleteUser(username: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<String, None, Any>(
            requestName: UserAPI.kRequestDeleteUser,
            requestPayload: username,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func getUserByName(username: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<String, User, Any>(
            requestName: UserAPI.kRequestGetUserByName,
            requestPayload: username,
            respClass: User.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func loginUser(loginUserData: LoginUserData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<LoginUserData, String, Any>(
            requestName: UserAPI.kRequestLoginUser,
            requestPayload: loginUserData,
            respClass: String.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func logoutUser( responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<None, None, Any>(
            requestName: UserAPI.kRequestLogoutUser,
            requestPayload: nil, 
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func updateUser(updateUserData: UpdateUserData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<UpdateUserData, None, Any>(
            requestName: UserAPI.kRequestUpdateUser,
            requestPayload: updateUserData,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}