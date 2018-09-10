package com.mvvm.javademo.api;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

/**
 *
 * @author james.li
 * @date 2018/8/21
 */
public class NullStringToEmptyAdapterFactory implements TypeAdapterFactory {
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
        Class<T> rawType = (Class<T>)type.getRawType();
        if (rawType != String.class) {
            return null;
        }
        return (TypeAdapter<T>)new StringAdapter();
    }
}