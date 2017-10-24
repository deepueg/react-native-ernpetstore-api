
public class PetRequests: PetAPIRequests {

    public override func registerAddPetRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestAddPet,
    reqClass: Pet.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerDeletePetRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestDeletePet,
    reqClass: DeletePetData.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerFindPetsByStatusRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestFindPetsByStatus,
    reqClass: Array<Any>.self, reqItemType: String.self,
    respClass: [Pet].self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerFindPetsByTagsRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestFindPetsByTags,
    reqClass: Array<Any>.self, reqItemType: String.self,
    respClass: [Pet].self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerFindPetsByTypeRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestFindPetsByType,
    reqClass: Array<Any>.self, reqItemType: String.self,
    respClass: [Pet].self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerGetPetByIdRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestGetPetById,
    reqClass: Int64.self, 
    respClass: Pet.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerUpdatePetRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestUpdatePet,
    reqClass: Pet.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerUpdatePetWithFormRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestUpdatePetWithForm,
    reqClass: UpdatePetWithFormData.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    public override func registerUploadFileRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) {
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: PetAPI.kRequestUploadFile,
    reqClass: UploadFileData.self, 
    respClass: None.self,
    requestCompletionHandler: handler)
        requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func addPet(body: Pet, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Pet, None, Any>(
            requestName: PetAPI.kRequestAddPet,
            requestPayload: body,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func deletePet(deletePetData: DeletePetData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<DeletePetData, None, Any>(
            requestName: PetAPI.kRequestDeletePet,
            requestPayload: deletePetData,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func findPetsByStatus(status: [String], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<[String], [Pet], Any>(
            requestName: PetAPI.kRequestFindPetsByStatus,
            requestPayload: status,
            respClass: [Pet].self,
            responseItemType: Pet.self,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func findPetsByTags(tags: [String], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<[String], [Pet], Any>(
            requestName: PetAPI.kRequestFindPetsByTags,
            requestPayload: tags,
            respClass: [Pet].self,
            responseItemType: Pet.self,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func findPetsByType(name: [String], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<[String], [Pet], Any>(
            requestName: PetAPI.kRequestFindPetsByType,
            requestPayload: name,
            respClass: [Pet].self,
            responseItemType: Pet.self,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func getPetById(petId: Int64, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Int64, Pet, Any>(
            requestName: PetAPI.kRequestGetPetById,
            requestPayload: petId,
            respClass: Pet.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func updatePet(body: Pet, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Pet, None, Any>(
            requestName: PetAPI.kRequestUpdatePet,
            requestPayload: body,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func updatePetWithForm(updatePetWithFormData: UpdatePetWithFormData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<UpdatePetWithFormData, None, Any>(
            requestName: PetAPI.kRequestUpdatePetWithForm,
            requestPayload: updatePetWithFormData,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }

    public override func uploadFile(uploadFileData: UploadFileData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<UploadFileData, None, Any>(
            requestName: PetAPI.kRequestUploadFile,
            requestPayload: uploadFileData,
            respClass: None.self,
            responseItemType: nil,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}