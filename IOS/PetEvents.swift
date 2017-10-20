
public class PetEvents:  PetAPIEvents {
    public override func addImageUploadedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) {
        let listenerProcessor = EventListenerProcessor(
                                eventName: PetAPI.kEventImageUploaded,
                                eventPayloadClass: Int64.self,
                                eventListener: eventListener)

        listenerProcessor.execute()
    }

    public override func emitEventImageUploaded(petId: Int64) {
        let eventProcessor = EventProcessor(
                                eventName: PetAPI.kEventImageUploaded,
                                eventPayload: petId)

        eventProcessor.execute()
    }
}
