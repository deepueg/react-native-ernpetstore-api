// @flow


export default class PetRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerAddPetRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.addPet", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerDeletePetRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.deletePet", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerFindPetsByStatusRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.findPetsByStatus", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerFindPetsByTagsRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.findPetsByTags", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerFindPetsByTypeRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.findPetsByType", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetPetByIdRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.getPetById", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerUpdatePetRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.updatePet", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerUpdatePetWithFormRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.updatePetWithForm", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerUploadFileRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.ernpetstore.ern.api.request.uploadFile", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * Add a new pet to the store
      * @param {Object} opts Optional parameters
      * @param  opts.body Pet object that needs to be added to the store
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     addPet(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.addPet", { data:opts, timeout });

    }

    /**
      * Deletes a pet
      * @param  petId Pet id to delete
      * @param {Object} opts Optional parameters
      * @param  opts.apiKey 
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     deletePet(petId: number, opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
        // verify the required parameter 'petId' is set
        if (petId  == null) {
        throw "Missing the required parameter 'petId' when calling 'PetApi#deletePet'";
        }
           data['petId'] = petId;
          data['api_key'] = opts['apiKey'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.deletePet", { data, timeout })
    }

    /**
      * Finds Pets by status
      * Multiple status values can be provided with comma seperated strings
      * @param {Object} opts Optional parameters
      * @param  opts.status Status values that need to be considered for filter (default to available)
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ernpetstore.ern.model/Pet> }
      */

     findPetsByStatus(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.findPetsByStatus", { data:opts, timeout });

    }

    /**
      * Finds Pets by tags
      * Muliple tags can be provided with comma seperated strings. Use tag1, tag2, tag3 for testing.
      * @param {Object} opts Optional parameters
      * @param  opts.tags Tags to filter by
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ernpetstore.ern.model/Pet> }
      */

     findPetsByTags(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.findPetsByTags", { data:opts, timeout });

    }

    /**
      * Finds Pets by type
      * Multiple type values can be provided with comma seperated strings
      * @param {Object} opts Optional parameters
      * @param  opts.name Type values that need to be considered for filter (default to available)
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ernpetstore.ern.model/Pet> }
      */

     findPetsByType(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.findPetsByType", { data:opts, timeout });

    }

    /**
      * Find pet by ID
      * Returns a pet when ID &lt; 10.  ID &gt; 10 or nonintegers will simulate API error conditions
      * @param  petId ID of pet that needs to be fetched
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:com.ernpetstore.ern.model/Pet }
      */

     getPetById(petId: number,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.getPetById", { data:petId, timeout });

    }

    /**
      * Update an existing pet
      * @param {Object} opts Optional parameters
      * @param  opts.body Pet object that needs to be added to the store
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     updatePet(opts: any,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.ernpetstore.ern.api.request.updatePet", { data:opts, timeout });

    }

    /**
      * Updates a pet in the store with form data
      * @param  petId ID of pet that needs to be updated
      * @param {Object} opts Optional parameters
      * @param  opts.name Updated name of the pet
      * @param  opts.status Updated status of the pet
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     updatePetWithForm(petId: string, opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
        // verify the required parameter 'petId' is set
        if (petId  == null) {
        throw "Missing the required parameter 'petId' when calling 'PetApi#updatePetWithForm'";
        }
           data['petId'] = petId;
           data['name'] = opts['name'];
           data['status'] = opts['status'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.updatePetWithForm", { data, timeout })
    }

    /**
      * uploads an image
      * @param  petId ID of pet to update
      * @param {Object} opts Optional parameters
      * @param  opts.additionalMetadata Additional data to pass to server
      * @param  opts.file file to upload
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}
      */

     uploadFile(petId: number, opts: any,timeout: number): Promise<any> {
        opts = opts || {};
     const data =  {}
        // verify the required parameter 'petId' is set
        if (petId  == null) {
        throw "Missing the required parameter 'petId' when calling 'PetApi#uploadFile'";
        }
           data['petId'] = petId;
           data['additionalMetadata'] = opts['additionalMetadata'];
           data['file'] = opts['file'];
        return this._bridge.sendRequest("com.ernpetstore.ern.api.request.uploadFile", { data, timeout })
    }
}
