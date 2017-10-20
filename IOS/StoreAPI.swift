public class StoreAPI: NSObject  {

    static let kRequestDeleteOrder = "com.ernpetstore.ern.api.request.deleteOrder";

    static let kRequestGetOrderById = "com.ernpetstore.ern.api.request.getOrderById";

    static let kRequestPlaceOrder = "com.ernpetstore.ern.api.request.placeOrder";


    public lazy var requests: StoreAPIRequests = {
        return StoreRequests()
    }()
}


public class StoreAPIRequests: NSObject {
    public func registerDeleteOrderRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerGetOrderByIdRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerPlaceOrderRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func deleteOrder(orderId: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func getOrderById(orderId: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func placeOrder(body: Order, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

