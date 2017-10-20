// @flow
export default class PetEvents {
    constructor(bridge) {
        this._bridge = bridge;
    }

            addImageUploadedEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.ernpetstore.ern.api.event.imageUploaded", eventListener);
            }

            removeImageUploadedEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }

//------------------------------------------------------------------------------------------------------------------------------------

            emitImageUploaded(petId: number): void {
                    return this._bridge.emitEvent("com.ernpetstore.ern.api.event.imageUploaded", { data:petId });


            }
}
