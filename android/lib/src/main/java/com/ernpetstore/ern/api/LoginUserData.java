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

public class LoginUserData implements Parcelable, Bridgeable {

    private String username;
    private String password;

    private LoginUserData() {}

    private LoginUserData(Builder builder) {
        this.username = builder.username;
        this.password = builder.password;
    }

    private LoginUserData(Parcel in) {
        this(in.readBundle());
    }

    public LoginUserData(@NonNull Bundle bundle) {
        this.username = bundle.getString("username");
        this.password = bundle.getString("password");
    }

    public static final Creator<LoginUserData> CREATOR = new Creator<LoginUserData>() {
        @Override
        public LoginUserData createFromParcel(Parcel in) {
            return new LoginUserData(in);
        }

        @Override
        public LoginUserData[] newArray(int size) {
            return new LoginUserData[size];
        }
    };

    /**
    * The user name for login
    *
    * @return String
    */
    @Nullable
    public String getusername() {
        return username;
    }

    /**
    * The password for login in clear text
    *
    * @return String
    */
    @Nullable
    public String getpassword() {
        return password;
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
        if(username != null) {
            this.username = bundle.getString("username");
        }
        if(password != null) {
            this.password = bundle.getString("password");
        }
        return bundle;
    }

    public static class Builder {
        private String username;
        private String password;

        public Builder() {
        }

        @NonNull
        public Builder username(@Nullable String username) {
            this.username = username;
            return this;
        }
        @NonNull
        public Builder password(@Nullable String password) {
            this.password = password;
            return this;
        }

        @NonNull
        public LoginUserData build() {
            return new LoginUserData(this);
        }
    }
}