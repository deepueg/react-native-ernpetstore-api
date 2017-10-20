
public class StoreRequests: StoreAPIRequests {

    public override func registerDeleteOrderRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: StoreAPI.kRequestDeleteOrder,
    reqClass: String.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerGetInventoryRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: StoreAPI.kRequestGetInventory,
    reqClass: None.self, 
    respClass: [String:Int].self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerGetOrderByIdRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: StoreAPI.kRequestGetOrderById,
    reqClass: String.self, 
    respClass: Order.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerPlaceOrderRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: StoreAPI.kRequestPlaceOrder,
    reqClass: Order.self, 
    respClass: Order.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func deleteOrder(orderId: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<String, None, Any>(
            requestName: StoreAPI.kRequestDeleteOrder,
            requestPayload: orderId,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func getInventory( responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<None, [String:Int], Any>(
            requestName: StoreAPI.kRequestGetInventory,
            requestPayload: nil, 
            respClass: [String:Int].self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func getOrderById(orderId: String, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<String, Order, Any>(
            requestName: StoreAPI.kRequestGetOrderById,
            requestPayload: orderId,
            respClass: Order.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func placeOrder(body: Order, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Order, Order, Any>(
            requestName: StoreAPI.kRequestPlaceOrder,
            requestPayload: body,
            respClass: Order.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}