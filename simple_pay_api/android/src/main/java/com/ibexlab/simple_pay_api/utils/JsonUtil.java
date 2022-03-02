package com.ibexlab.simple_pay_api.utils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JsonUtil {
    public static JSONObject json(String data) throws JSONException {
        return "null".equals(data) ? new JSONObject() : new JSONObject(data);
    }

    public static int value(JSONObject json, String key, int defaultValue) throws JSONException {
        return isNull(json, key) ? defaultValue : json.getInt(key);
    }

    public static double value(JSONObject json, String key, double defaultValue) throws JSONException {
        return isNull(json, key) ? defaultValue : json.getDouble(key);
    }

    public static String value(JSONObject json, String key, String defaultValue) throws JSONException {
        return isNull(json, key) ? defaultValue : json.getString(key);
    }

    public static boolean value(JSONObject json, String key, boolean defaultValue) throws JSONException {
        return isNull(json, key) ? defaultValue : json.getBoolean(key);
    }

    public static Boolean booleanValue(JSONObject json, String key) throws JSONException {
        return isNull(json, key) ? null : json.getBoolean(key);
    }

    public static boolean isNull(JSONObject json, String key) throws JSONException {
        return !json.has(key) || JSONObject.NULL.equals(json.get(key));
    }

    public static String toJson(int resCode, String resMessage) {
        return toJson(resCode, resMessage, null);
    }

    public static String toJson(int resCode, String resMessage, Map<String, Object> content) {
        Map<String, Object> common = new HashMap<>();
        common.put("resCode", resCode);
        common.put("resMessage", resMessage);

        Map<String, Object> result = new HashMap<>();
        result.put("common", common);
        result.put("content", content);

        try {
            return toJson(result).toString();
        } catch (JSONException e) {
            return "{\"common\": {\"resCode\": -1, \"resMessage\": \"" + e.getMessage() + "\"}}";
        }
    }

    private static JSONObject toJson(Map<String, Object> data) throws JSONException {
        JSONObject json = new JSONObject();

        for (String k : data.keySet()) {
            if (data.get(k) instanceof List) {
                //noinspection unchecked
                List<Object> l = (List<Object>) data.get(k);

                if (l != null) {
                    json.put(k, toJson(l));
                }
            } else if (data.get(k) instanceof Map) {
                //noinspection unchecked
                Map<String, Object> m = (Map<String, Object>) data.get(k);

                if (m != null) {
                    json.put(k, toJson(m));
                }
            } else {
                json.put(k, data.get(k));
            }
        }

        return json;
    }

    private static JSONArray toJson(List<Object> list) throws JSONException {
        JSONArray json = new JSONArray();

        for (Object i : list) {
            if (i instanceof List) {
                //noinspection unchecked
                json.put(toJson((List<Object>) i));
            } else if (i instanceof Map) {
                //noinspection unchecked
                json.put(toJson((Map<String, Object>) i));
            } else {
                json.put(i);
            }
        }

        return json;
    }
}
