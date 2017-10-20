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

public class CreateUsersWithArrayInputData implements Parcelable, Bridgeable {

    private List<User> body;
    private String testParam;
    private List<Integer> testIntArray;

    private CreateUsersWithArrayInputData() {}

    private CreateUsersWithArrayInputData(Builder builder) {
        this.body = builder.body;
        this.testParam = builder.testParam;
        this.testIntArray = builder.testIntArray;
    }

    private CreateUsersWithArrayInputData(Parcel in) {
        this(in.readBundle());
    }

    public CreateUsersWithArrayInputData(@NonNull Bundle bundle) {
        if(bundle.get("body") == null){
            throw new IllegalArgumentException("body property is required");
        }
        this.body = bundle.containsKey("body") ? getList(bundle.getParcelableArray("body"), User.class) : null;
        this.testParam = bundle.getString("testParam");
        this.testIntArray = bundle.containsKey("testIntArray") ? getList(bundle.getIntArray("testIntArray"), Integer.class) : null;
    }

    public static final Creator<CreateUsersWithArrayInputData> CREATOR = new Creator<CreateUsersWithArrayInputData>() {
        @Override
        public CreateUsersWithArrayInputData createFromParcel(Parcel in) {
            return new CreateUsersWithArrayInputData(in);
        }

        @Override
        public CreateUsersWithArrayInputData[] newArray(int size) {
            return new CreateUsersWithArrayInputData[size];
        }
    };

    /**
    * List of user object
    *
    * @return List<User>
    */
    @NonNull
    public List<User> getbody() {
        return body;
    }

    /**
    * dummy variable
    *
    * @return String
    */
    @Nullable
    public String gettestParam() {
        return testParam;
    }

    /**
    * List of integers object
    *
    * @return List<Integer>
    */
    @Nullable
    public List<Integer> gettestIntArray() {
        return testIntArray;
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
        updateBundleWithList(this.body, bundle, "body");
        if(testParam != null) {
            this.testParam = bundle.getString("testParam");
        }
        if(testIntArray != null) {
            updateBundleWithList(this.testIntArray, bundle, "testIntArray");
        }
        return bundle;
    }

    public static class Builder {
        private final List<User> body;
        private String testParam;
        private List<Integer> testIntArray;

        public Builder(@NonNull List&lt;User&gt; body) {
            this.body = body;
        }

        @NonNull
        public Builder testParam(@Nullable String testParam) {
            this.testParam = testParam;
            return this;
        }
        @NonNull
        public Builder testIntArray(@Nullable List<Integer> testIntArray) {
            this.testIntArray = testIntArray;
            return this;
        }

        @NonNull
        public CreateUsersWithArrayInputData build() {
            return new CreateUsersWithArrayInputData(this);
        }
    }
}