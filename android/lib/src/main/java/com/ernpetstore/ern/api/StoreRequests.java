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
import com.ernpetstore.ern.model.Order;
import java.util.Map;


final class StoreRequests implements StoreApi.Requests {
    StoreRequests() {}


    @Override
    public void registerDeleteOrderRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, None> handler) {
        new RequestHandlerProcessor<>(REQUEST_DELETE_ORDER, String.class, None.class, handler).execute();
    }

    @Override
    public void registerGetInventoryRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<None, Map<String, Integer>> handler) {
        new RequestHandlerProcessor<>(REQUEST_GET_INVENTORY, None.class, Map<String, Integer>.class, handler).execute();
    }

    @Override
    public void registerGetOrderByIdRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<String, Order> handler) {
        new RequestHandlerProcessor<>(REQUEST_GET_ORDER_BY_ID, String.class, Order.class, handler).execute();
    }

    @Override
    public void registerPlaceOrderRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Order, Order> handler) {
        new RequestHandlerProcessor<>(REQUEST_PLACE_ORDER, Order.class, Order.class, handler).execute();
    }

    //------------------------------------------------------------------------------------------------------------------------------------

    @Override
    public void deleteOrder(String orderId,@NonNull final ElectrodeBridgeResponseListener<None> responseListener) {
        new RequestProcessor<>(REQUEST_DELETE_ORDER,  orderId, None.class, responseListener).execute();
    }
    @Override
    public void getInventory(@NonNull final ElectrodeBridgeResponseListener<Map<String, Integer>> responseListener) {
        new RequestProcessor<>(REQUEST_GET_INVENTORY, null, Map<String, Integer>.class, responseListener).execute();
    }
    @Override
    public void getOrderById(String orderId,@NonNull final ElectrodeBridgeResponseListener<Order> responseListener) {
        new RequestProcessor<>(REQUEST_GET_ORDER_BY_ID,  orderId, Order.class, responseListener).execute();
    }
    @Override
    public void placeOrder(Order body,@NonNull final ElectrodeBridgeResponseListener<Order> responseListener) {
        new RequestProcessor<>(REQUEST_PLACE_ORDER,  body, Order.class, responseListener).execute();
    }
}