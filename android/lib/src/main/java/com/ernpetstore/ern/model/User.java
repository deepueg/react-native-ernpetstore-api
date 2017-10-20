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

package com.ernpetstore.ern.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;

import com.walmartlabs.electrode.reactnative.bridge.Bridgeable;

import static com.walmartlabs.electrode.reactnative.bridge.util.BridgeArguments.*;

public class User implements Parcelable, Bridgeable {

    private Long id;
    private String username;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String phone;
    private Integer userStatus;

    private User() {}

    private User(Builder builder) {
        this.id = builder.id;
        this.username = builder.username;
        this.firstName = builder.firstName;
        this.lastName = builder.lastName;
        this.email = builder.email;
        this.password = builder.password;
        this.phone = builder.phone;
        this.userStatus = builder.userStatus;
    }

    private User(Parcel in) {
        this(in.readBundle());
    }

    public User(@NonNull Bundle bundle) {
        this.id = getNumberValue(bundle, "id") == null ? null : getNumberValue(bundle, "id").longValue();
        this.username = bundle.getString("username");
        this.firstName = bundle.getString("firstName");
        this.lastName = bundle.getString("lastName");
        this.email = bundle.getString("email");
        this.password = bundle.getString("password");
        this.phone = bundle.getString("phone");
        this.userStatus = getNumberValue(bundle, "userStatus") == null ? null : getNumberValue(bundle, "userStatus").intValue();
    }

    public static final Creator<User> CREATOR = new Creator<User>() {
        @Override
        public User createFromParcel(Parcel in) {
            return new User(in);
        }

        @Override
        public User[] newArray(int size) {
            return new User[size];
        }
    };

    @Nullable
    public Long getId() {
        return id;
    }

    @Nullable
    public String getUsername() {
        return username;
    }

    @Nullable
    public String getFirstName() {
        return firstName;
    }

    @Nullable
    public String getLastName() {
        return lastName;
    }

    @Nullable
    public String getEmail() {
        return email;
    }

    @Nullable
    public String getPassword() {
        return password;
    }

    @Nullable
    public String getPhone() {
        return phone;
    }

    /**
    * User Status
    *
    * @return Integer
    */
    @Nullable
    public Integer getUserStatus() {
        return userStatus;
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
        if(this.id != null) {
            bundle.putLong("id", this.id);
        }
        if(username != null) {
            bundle.putString("username", this.username );
        }
        if(firstName != null) {
            bundle.putString("firstName", this.firstName );
        }
        if(lastName != null) {
            bundle.putString("lastName", this.lastName );
        }
        if(email != null) {
            bundle.putString("email", this.email );
        }
        if(password != null) {
            bundle.putString("password", this.password );
        }
        if(phone != null) {
            bundle.putString("phone", this.phone );
        }
        if(this.userStatus != null) {
            bundle.putInt("userStatus", this.userStatus);
        }
        return bundle;
    }

    public static class Builder {
        private Long id;
        private String username;
        private String firstName;
        private String lastName;
        private String email;
        private String password;
        private String phone;
        private Integer userStatus;

        public Builder() {
        }

        @NonNull
        public Builder id(@Nullable Long id) {
            this.id = id;
            return this;
        }
        @NonNull
        public Builder username(@Nullable String username) {
            this.username = username;
            return this;
        }
        @NonNull
        public Builder firstName(@Nullable String firstName) {
            this.firstName = firstName;
            return this;
        }
        @NonNull
        public Builder lastName(@Nullable String lastName) {
            this.lastName = lastName;
            return this;
        }
        @NonNull
        public Builder email(@Nullable String email) {
            this.email = email;
            return this;
        }
        @NonNull
        public Builder password(@Nullable String password) {
            this.password = password;
            return this;
        }
        @NonNull
        public Builder phone(@Nullable String phone) {
            this.phone = phone;
            return this;
        }
        @NonNull
        public Builder userStatus(@Nullable Integer userStatus) {
            this.userStatus = userStatus;
            return this;
        }

        @NonNull
        public User build() {
            return new User(this);
        }
    }
}
