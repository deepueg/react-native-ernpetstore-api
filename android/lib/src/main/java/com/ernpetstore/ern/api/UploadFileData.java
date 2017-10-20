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

public class UploadFileData implements Parcelable, Bridgeable {

    private Long petId;
    private String additionalMetadata;
    private String file;

    private UploadFileData() {}

    private UploadFileData(Builder builder) {
        this.petId = builder.petId;
        this.additionalMetadata = builder.additionalMetadata;
        this.file = builder.file;
    }

    private UploadFileData(Parcel in) {
        this(in.readBundle());
    }

    public UploadFileData(@NonNull Bundle bundle) {
        if(bundle.get("petId") == null){
            throw new IllegalArgumentException("petId property is required");
        }
        this.petId = getNumberValue(bundle, "petId") == null ? null : getNumberValue(bundle, "petId").longValue();
        this.additionalMetadata = bundle.getString("additionalMetadata");
        this.file = bundle.getString("file");
    }

    public static final Creator<UploadFileData> CREATOR = new Creator<UploadFileData>() {
        @Override
        public UploadFileData createFromParcel(Parcel in) {
            return new UploadFileData(in);
        }

        @Override
        public UploadFileData[] newArray(int size) {
            return new UploadFileData[size];
        }
    };

    /**
    * ID of pet to update
    *
    * @return Long
    */
    @NonNull
    public Long getpetId() {
        return petId;
    }

    /**
    * Additional data to pass to server
    *
    * @return String
    */
    @Nullable
    public String getadditionalMetadata() {
        return additionalMetadata;
    }

    /**
    * file to upload
    *
    * @return String
    */
    @Nullable
    public String getfile() {
        return file;
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
        if(additionalMetadata != null) {
            this.additionalMetadata = bundle.getString("additionalMetadata");
        }
        if(file != null) {
            this.file = bundle.getString("file");
        }
        return bundle;
    }

    public static class Builder {
        private final Long petId;
        private String additionalMetadata;
        private String file;

        public Builder(@NonNull Long petId) {
            this.petId = petId;
        }

        @NonNull
        public Builder additionalMetadata(@Nullable String additionalMetadata) {
            this.additionalMetadata = additionalMetadata;
            return this;
        }
        @NonNull
        public Builder file(@Nullable String file) {
            this.file = file;
            return this;
        }

        @NonNull
        public UploadFileData build() {
            return new UploadFileData(this);
        }
    }
}