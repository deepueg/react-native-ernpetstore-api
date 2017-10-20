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

import com.ernpetstore.ern.model.Order;

public final class StoreApi {
    private static final Requests REQUESTS;

    static {
        REQUESTS = new StoreRequests();
    }

    private StoreApi() {
    }

    @NonNull
    public static Requests requests() {
        return REQUESTS;
    }



    public interface Requests {
        String REQUEST_DELETE_ORDER = "com.ernpetstore.ern.api.request.deleteOrder";
        String REQUEST_GET_ORDER_BY_ID = "com.ernpetstore.ern.api.request.getOrderById";
        String REQUEST_PLACE_ORDER = "com.ernpetstore.ern.api.request.placeOrder";


        void registerDeleteOrderRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, None> handler);

        void registerGetOrderByIdRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, Order> handler);

        void registerPlaceOrderRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Order, Order> handler);

        void deleteOrder(String orderId, @NonNull final ElectrodeBridgeResponseListener<None> responseListener);

        void getOrderById(String orderId, @NonNull final ElectrodeBridgeResponseListener<Order> responseListener);

        void placeOrder(Order body, @NonNull final ElectrodeBridgeResponseListener<Order> responseListener);

    }
}