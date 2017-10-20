public class PetAPI: NSObject  {

    static let kRequestAddPet = "com.ernpetstore.ern.api.request.addPet";

    static let kRequestDeletePet = "com.ernpetstore.ern.api.request.deletePet";

    static let kRequestFindPetsByStatus = "com.ernpetstore.ern.api.request.findPetsByStatus";

    static let kRequestFindPetsByTags = "com.ernpetstore.ern.api.request.findPetsByTags";

    static let kRequestGetPetById = "com.ernpetstore.ern.api.request.getPetById";
    static let kEventImageUploaded = "com.ernpetstore.ern.api.event.imageUploaded";


    static let kRequestUpdatePet = "com.ernpetstore.ern.api.request.updatePet";

    static let kRequestUpdatePetWithForm = "com.ernpetstore.ern.api.request.updatePetWithForm";

    static let kRequestUploadFile = "com.ernpetstore.ern.api.request.uploadFile";

    public lazy var events: PetAPIEvents = {
        return PetEvents()
    }()


    public lazy var requests: PetAPIRequests = {
        return PetRequests()
    }()
}

public class PetAPIEvents: NSObject {
    public func addImageUploadedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) {
        assertionFailure("should override")
    }

    public func emitEventImageUploaded(petId: Int64) {
        assertionFailure("should override")

    }
}

public class PetAPIRequests: NSObject {
    public func registerAddPetRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerDeletePetRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerFindPetsByStatusRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerFindPetsByTagsRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerGetPetByIdRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerUpdatePetRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerUpdatePetWithFormRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func registerUploadFileRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) {
        assertionFailure("should override")
    }

    public func addPet(body: Pet, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func deletePet(deletePetData: DeletePetData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func findPetsByStatus(status: [String], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func findPetsByTags(tags: [String], responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func getPetById(petId: Int64, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func updatePet(body: Pet, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func updatePetWithForm(updatePetWithFormData: UpdatePetWithFormData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func uploadFile(uploadFileData: UploadFileData, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

