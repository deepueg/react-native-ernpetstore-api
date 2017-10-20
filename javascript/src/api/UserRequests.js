// @flow


export default class UserRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerCreateUserRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.createUser", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerCreateUsersWithArrayInputRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.createUsersWithArrayInput", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerCreateUsersWithListInputRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.createUsersWithListInput", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerDeleteUserRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.deleteUser", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetUserByNameRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.getUserByName", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerLoginUserRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.loginUser", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerLogoutUserRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.logoutUser", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerUpdateUserRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.updateUser", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * Create user
      * This can only be done by the logged in user.
      * @param {Object} opts Optional parameters
      * @param  opts.body Created user object
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     createUser(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.createUser", { data:opts, timeout });

    }

    /**
      * Creates list of users with given input array
      * @param  body List of user object
      * @param {Object} opts Optional parameters
      * @param  opts.testParam dummy variable
      * @param  opts.testIntArray List of integers object
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     createUsersWithArrayInput(body: any, opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
        // verify the required parameter 'body' is set
        if (body  == null) {
        throw "Missing the required parameter 'body' when calling 'UserApi#createUsersWithArrayInput'";
        }
        data['body'] = body;
        data['testParam'] = opts['testParam'];
        data['testIntArray'] = opts['testIntArray'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.createUsersWithArrayInput", { data, timeout })
    }

    /**
      * Creates list of users with given input array
      * @param {Object} opts Optional parameters
      * @param  opts.body List of user object
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     createUsersWithListInput(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.createUsersWithListInput", { data:opts, timeout });

    }

    /**
      * Delete user
      * This can only be done by the logged in user.
      * @param  username The name that needs to be deleted
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     deleteUser(username: string,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.deleteUser", { data:username, timeout });

    }

    /**
      * Get user by user name
      * @param  username The name that needs to be fetched. Use user1 for testing. 
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:com.ernpetstore.ern.model/User }
      */

     getUserByName(username: string,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.getUserByName", { data:username, timeout });

    }

    /**
      * Logs user into the system
      * @param {Object} opts Optional parameters
      * @param  opts.username The user name for login
      * @param  opts.password The password for login in clear text
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link String }
      */

     loginUser(opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
          data['username'] = opts['username'];
          data['password'] = opts['password'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.loginUser", { data, timeout })
    }

    /**
      * Logs out current logged in user session
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     logoutUser(timeout: number): Promise<any> {
            return this._bridge.sendRequest("com.ernpetstore.ern.api.request.logoutUser", {timeout});

    }

    /**
      * Updated user
      * This can only be done by the logged in user.
      * @param  username name that need to be deleted
      * @param {Object} opts Optional parameters
      * @param  opts.body Updated user object
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     updateUser(username: string, opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
        // verify the required parameter 'username' is set
        if (username  == null) {
        throw "Missing the required parameter 'username' when calling 'UserApi#updateUser'";
        }
           data['username'] = username;
        data['body'] = opts['body'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.updateUser", { data, timeout })
    }
}
