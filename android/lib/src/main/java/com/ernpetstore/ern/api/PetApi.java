/*
* Copyright 2017 WalmartLabs
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* http://www.apache.org/licenses/LICENSE-2.0
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package com.ernpetstore.ern.api;

import android.support.annotation.NonNull;

import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeEventListener;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeEvent;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeRequestHandler;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeResponseListener;
import com.walmartlabs.electrode.reactnative.bridge.None;
import java.util.*;
import java.util.UUID;

import com.ernpetstore.ern.model.Pet;

public final class PetApi {
    private static final Requests REQUESTS;
    private static final Events EVENTS;

    static {
        REQUESTS = new PetRequests();
        EVENTS = new PetEvents();
    }

    private PetApi() {
    }

    @NonNull
    public static Requests requests() {
        return REQUESTS;
    }

    @NonNull
    public static Events events() {
        return EVENTS;
    }

    public interface Events {
        String EVENT_IMAGE_UPLOADED = "com.ernpetstore.ern.api.event.imageUploaded";

        UUID addImageUploadedEventListener(@NonNull final ElectrodeBridgeEventListener<Long> eventListener);

            ElectrodeBridgeEventListener<ElectrodeBridgeEvent> removeImageUploadedEventListener(@NonNull final UUID uuid);

        void emitImageUploaded(@NonNull Long petId);

    }

    public interface Requests {
        String REQUEST_ADD_PET = "com.ernpetstore.ern.api.request.addPet";
        String REQUEST_DELETE_PET = "com.ernpetstore.ern.api.request.deletePet";
        String REQUEST_FIND_PETS_BY_STATUS = "com.ernpetstore.ern.api.request.findPetsByStatus";
        String REQUEST_FIND_PETS_BY_TAGS = "com.ernpetstore.ern.api.request.findPetsByTags";
        String REQUEST_GET_PET_BY_ID = "com.ernpetstore.ern.api.request.getPetById";
        String REQUEST_UPDATE_PET = "com.ernpetstore.ern.api.request.updatePet";
        String REQUEST_UPDATE_PET_WITH_FORM = "com.ernpetstore.ern.api.request.updatePetWithForm";
        String REQUEST_UPLOAD_FILE = "com.ernpetstore.ern.api.request.uploadFile";


        void registerAddPetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Pet, None> handler);

        void registerDeletePetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<DeletePetData, None> handler);

        void registerFindPetsByStatusRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<List<String>, List<Pet>> handler);

        void registerFindPetsByTagsRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<List<String>, List<Pet>> handler);

        void registerGetPetByIdRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Long, Pet> handler);

        void registerUpdatePetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Pet, None> handler);

        void registerUpdatePetWithFormRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<UpdatePetWithFormData, None> handler);

        void registerUploadFileRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<UploadFileData, None> handler);

        void addPet(Pet body, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void deletePet(DeletePetData deletePetData, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void findPetsByStatus(List<String> status, @NonNull final ElectrodeBridgeResponseListener<List<Pet>> responseListener);

        void findPetsByTags(List<String> tags, @NonNull final ElectrodeBridgeResponseListener<List<Pet>> responseListener);

        void getPetById(Long petId, @NonNull final ElectrodeBridgeResponseListener<Pet> responseListener);

        void updatePet(Pet body, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void updatePetWithForm(UpdatePetWithFormData updatePetWithFormData, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void uploadFile(UploadFileData uploadFileData, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

    }
}