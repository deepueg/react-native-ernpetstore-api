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

import com.ernpetstore.ern.model.User;
import java.util.*;

public final class UserApi {
    private static final Requests REQUESTS;

    static {
        REQUESTS = new UserRequests();
    }

    private UserApi() {
    }

    @NonNull
    public static Requests requests() {
        return REQUESTS;
    }



    public interface Requests {
        String REQUEST_CREATE_USER = "com.ernpetstore.ern.api.request.createUser";
        String REQUEST_CREATE_USERS_WITH_ARRAY_INPUT = "com.ernpetstore.ern.api.request.createUsersWithArrayInput";
        String REQUEST_CREATE_USERS_WITH_LIST_INPUT = "com.ernpetstore.ern.api.request.createUsersWithListInput";
        String REQUEST_DELETE_USER = "com.ernpetstore.ern.api.request.deleteUser";
        String REQUEST_GET_USER_BY_NAME = "com.ernpetstore.ern.api.request.getUserByName";
        String REQUEST_LOGIN_USER = "com.ernpetstore.ern.api.request.loginUser";
        String REQUEST_LOGOUT_USER = "com.ernpetstore.ern.api.request.logoutUser";
        String REQUEST_UPDATE_USER = "com.ernpetstore.ern.api.request.updateUser";


        void registerCreateUserRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<User, None> handler);

        void registerCreateUsersWithArrayInputRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<CreateUsersWithArrayInputData, None> handler);

        void registerCreateUsersWithListInputRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<List<User>, None> handler);

        void registerDeleteUserRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, None> handler);

        void registerGetUserByNameRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, User> handler);

        void registerLoginUserRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<LoginUserData, String> handler);

        void registerLogoutUserRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<None, None> handler);

        void registerUpdateUserRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<UpdateUserData, None> handler);

        void createUser(User body, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void createUsersWithArrayInput(CreateUsersWithArrayInputData createUsersWithArrayInputData, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void createUsersWithListInput(List<User> body, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void deleteUser(String username, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void getUserByName(String username, @NonNull final ElectrodeBridgeResponseListener<User> responseListener);

        void loginUser(LoginUserData loginUserData, @NonNull final ElectrodeBridgeResponseListener<String> responseListener);

        void logoutUser(@NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void updateUser(UpdateUserData updateUserData, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

    }
}