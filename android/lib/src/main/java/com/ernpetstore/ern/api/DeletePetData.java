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

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;
import com.walmartlabs.electrode.reactnative.bridge.Bridgeable;

import static com.walmartlabs.electrode.reactnative.bridge.util.BridgeArguments.*;

public class DeletePetData implements Parcelable, Bridgeable {

    private Long petId;
    private String api_key;

    private DeletePetData() {}

    private DeletePetData(Builder builder) {
        this.petId = builder.petId;
        this.api_key = builder.api_key;
    }

    private DeletePetData(Parcel in) {
        this(in.readBundle());
    }

    public DeletePetData(@NonNull Bundle bundle) {
        if(bundle.get("petId") == null){
            throw new IllegalArgumentException("petId property is required");
        }
        this.petId = getNumberValue(bundle, "petId") == null ? null : getNumberValue(bundle, "petId").longValue();
        this.api_key = bundle.getString("api_key");
    }

    public static final Creator<DeletePetData> CREATOR = new Creator<DeletePetData>() {
        @Override
        public DeletePetData createFromParcel(Parcel in) {
            return new DeletePetData(in);
        }

        @Override
        public DeletePetData[] newArray(int size) {
            return new DeletePetData[size];
        }
    };

    /**
    * Pet id to delete
    *
    * @return Long
    */
    @NonNull
    public Long getpetId() {
        return petId;
    }

    @Nullable
    public String getapi_key() {
        return api_key;
    }


    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(toBundle());
    }

    @NonNull
    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if(api_key != null) {
            this.api_key = bundle.getString("api_key");
        }
        return bundle;
    }

    public static class Builder {
        private final Long petId;
        private String api_key;

        public Builder(@NonNull Long petId) {
            this.petId = petId;
        }

        @NonNull
        public Builder api_key(@Nullable String api_key) {
            this.api_key = api_key;
            return this;
        }

        @NonNull
        public DeletePetData build() {
            return new DeletePetData(this);
        }
    }
}