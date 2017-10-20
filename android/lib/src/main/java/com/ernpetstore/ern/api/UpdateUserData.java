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
import com.ernpetstore.ern.model.User;

import static com.walmartlabs.electrode.reactnative.bridge.util.BridgeArguments.*;

public class UpdateUserData implements Parcelable, Bridgeable {

    private String username;
    private User body;

    private UpdateUserData() {}

    private UpdateUserData(Builder builder) {
        this.username = builder.username;
        this.body = builder.body;
    }

    private UpdateUserData(Parcel in) {
        this(in.readBundle());
    }

    public UpdateUserData(@NonNull Bundle bundle) {
        if(bundle.get("username") == null){
            throw new IllegalArgumentException("username property is required");
        }
        this.username = bundle.getString("username");
        this.body = bundle.containsKey("body") ? new User(bundle.getBundle("body")) : null;
    }

    public static final Creator<UpdateUserData> CREATOR = new Creator<UpdateUserData>() {
        @Override
        public UpdateUserData createFromParcel(Parcel in) {
            return new UpdateUserData(in);
        }

        @Override
        public UpdateUserData[] newArray(int size) {
            return new UpdateUserData[size];
        }
    };

    /**
    * name that need to be deleted
    *
    * @return String
    */
    @NonNull
    public String getusername() {
        return username;
    }

    /**
    * Updated user object
    *
    * @return User
    */
    @Nullable
    public User getbody() {
        return body;
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
        this.username = bundle.getString("username");
        if(body != null) {
            this.body = bundle.containsKey("body") ? new User(bundle.getBundle("body")) : null;
        }
        return bundle;
    }

    public static class Builder {
        private final String username;
        private User body;

        public Builder(@NonNull String username) {
            this.username = username;
        }

        @NonNull
        public Builder body(@Nullable User body) {
            this.body = body;
            return this;
        }

        @NonNull
        public UpdateUserData build() {
            return new UpdateUserData(this);
        }
    }
}