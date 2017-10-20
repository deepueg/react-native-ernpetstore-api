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

import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeHolder;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeRequestHandler;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeResponseListener;
import com.walmartlabs.electrode.reactnative.bridge.None;
import com.walmartlabs.electrode.reactnative.bridge.RequestHandlerProcessor;
import com.walmartlabs.electrode.reactnative.bridge.RequestProcessor;
import java.util.*;
import com.ernpetstore.ern.model.Pet;


final class PetRequests implements PetApi.Requests {
    PetRequests() {}


    @Override
    public void registerAddPetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Pet, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_ADD_PET, Pet.class, None.class, handler).execute();
    }

    @Override
    public void registerDeletePetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<DeletePetData, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_DELETE_PET, DeletePetData.class, None.class, handler).execute();
    }

    @Override
    public void registerFindPetsByStatusRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<List<String>, List<Pet>> handler) {
        new RequestHandlerProcessor<>(REQUEST_FIND_PETS_BY_STATUS, (Class) String.class, (Class) Pet.class, handler).execute();
    }

    @Override
    public void registerFindPetsByTagsRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<List<String>, List<Pet>> handler) {
        new RequestHandlerProcessor<>(REQUEST_FIND_PETS_BY_TAGS, (Class) String.class, (Class) Pet.class, handler).execute();
    }

    @Override
    public void registerGetPetByIdRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Long, Pet> handler) {
        new RequestHandlerProcessor<>(REQUEST_GET_PET_BY_ID, Long.class, Pet.class, handler).execute();
    }

    @Override
    public void registerUpdatePetRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Pet, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_UPDATE_PET, Pet.class, None.class, handler).execute();
    }

    @Override
    public void registerUpdatePetWithFormRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<UpdatePetWithFormData, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_UPDATE_PET_WITH_FORM, UpdatePetWithFormData.class, None.class, handler).execute();
    }

    @Override
    public void registerUploadFileRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<UploadFileData, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_UPLOAD_FILE, UploadFileData.class, None.class, handler).execute();
    }

    //------------------------------------------------------------------------------------------------------------------------------------

    @Override
    public void addPet(Pet body,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_ADD_PET,  body, None.class, responseListener).execute();
    }
    @Override
    public void deletePet(DeletePetData deletePetData,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_DELETE_PET,  deletePetData, None.class, responseListener).execute();
    }
    @Override
    public void findPetsByStatus(List<String> status,@NonNull final ElectrodeBridgeResponseListener<List<Pet>> responseListener) {
        new RequestProcessor<>(REQUEST_FIND_PETS_BY_STATUS,  status, (Class) List.class, Pet.class, responseListener).execute();
    }
    @Override
    public void findPetsByTags(List<String> tags,@NonNull final ElectrodeBridgeResponseListener<List<Pet>> responseListener) {
        new RequestProcessor<>(REQUEST_FIND_PETS_BY_TAGS,  tags, (Class) List.class, Pet.class, responseListener).execute();
    }
    @Override
    public void getPetById(Long petId,@NonNull final ElectrodeBridgeResponseListener<Pet> responseListener) {
        new RequestProcessor<>(REQUEST_GET_PET_BY_ID,  petId, Pet.class, responseListener).execute();
    }
    @Override
    public void updatePet(Pet body,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_UPDATE_PET,  body, None.class, responseListener).execute();
    }
    @Override
    public void updatePetWithForm(UpdatePetWithFormData updatePetWithFormData,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_UPDATE_PET_WITH_FORM,  updatePetWithFormData, None.class, responseListener).execute();
    }
    @Override
    public void uploadFile(UploadFileData uploadFileData,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_UPLOAD_FILE,  uploadFileData, None.class, responseListener).execute();
    }
}