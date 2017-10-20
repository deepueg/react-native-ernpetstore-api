// @flow


export default class StoreRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerDeleteOrderRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.deleteOrder", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetOrderByIdRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.getOrderById", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerPlaceOrderRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.placeOrder", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * Delete purchase order by ID
      * For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
      * @param  orderId ID of the order that needs to be deleted
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     deleteOrder(orderId: string,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.deleteOrder", { data:orderId, timeout });

    }

    /**
      * Find purchase order by ID
      * For valid response try integer IDs with value &lt;&#61; 5 or &gt; 10. Other values will generated exceptions
      * @param  orderId ID of pet that needs to be fetched
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:com.ernpetstore.ern.model/Order }
      */

     getOrderById(orderId: string,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.getOrderById", { data:orderId, timeout });

    }

    /**
      * Place an order for a pet
      * @param {Object} opts Optional parameters
      * @param  opts.body order placed for purchasing the pet
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:com.ernpetstore.ern.model/Order }
      */

     placeOrder(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.placeOrder", { data:opts, timeout });

    }
}
