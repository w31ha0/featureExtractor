.class public Lcom/mobfox/sdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 148
    .local v0, "decodedBytes":[B
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBundleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const-string v0, ""

    .line 265
    .local v0, "bundle_id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MobFoxBanner"

    const-string v3, "bundle error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    const-string v3, "bundle error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getClickVideoResp(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .param p0, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    :try_start_0
    const-string v6, "vasts"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "VAST"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Ad"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "InLine"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Creatives"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Creative"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 218
    .local v1, "Creative":Lorg/json/JSONObject;
    const-string v6, "Linear"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "VideoClicks"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ClickThrough"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 230
    .end local v1    # "Creative":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 220
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "vasts"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "VAST"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 224
    .local v2, "VAST":Lorg/json/JSONObject;
    const-string v6, "Ad"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "InLine"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Creatives"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Creative"

    .line 225
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Linear"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "VideoClicks"

    .line 226
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ClickThrough"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "ClickThrough":Ljava/lang/String;
    move-object v3, v0

    .line 227
    goto :goto_0

    .line 228
    .end local v0    # "ClickThrough":Ljava/lang/String;
    .end local v2    # "VAST":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 229
    .local v5, "err":Lorg/json/JSONException;
    const-string v6, "MobFoxBanner"

    const-string v7, "get click url from video json exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v3, ""

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 179
    .local v0, "fileSizeInBytes":J
    const-wide/16 v4, 0x400

    div-long v2, v0, v4

    .line 180
    .local v2, "fileSizeInKB":J
    return-wide v2
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 11
    .param p0, "useIPv4"    # Z

    .prologue
    const/4 v7, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 119
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 120
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 122
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "sAddr":Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_2

    const/4 v5, 0x1

    .line 127
    .local v5, "isIPv4":Z
    :goto_0
    if-eqz p0, :cond_3

    .line 128
    if-eqz v5, :cond_1

    .line 143
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :goto_1
    return-object v6

    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v6    # "sAddr":Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 125
    goto :goto_0

    .line 131
    .restart local v5    # "isIPv4":Z
    :cond_3
    if-nez v5, :cond_1

    .line 132
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 133
    .local v2, "delim":I
    if-gez v2, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v6, v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 140
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 143
    :cond_5
    :goto_3
    const-string v6, ""

    goto :goto_1

    .line 139
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public static getMediaUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9
    .param p0, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 153
    const-string v5, ""

    .line 155
    .local v5, "url":Ljava/lang/String;
    :try_start_0
    const-string v7, "vasts"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 156
    .local v6, "vasts":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "VAST"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Ad"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "InLine"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Creatives"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 159
    .local v1, "creatives":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "Creative"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 163
    .local v0, "creative":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v7, "Linear"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "MediaFiles"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "MediaFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 164
    .local v4, "media":Lorg/json/JSONObject;
    const-string v7, "__text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    const-string v7, "__text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .end local v0    # "creative":Lorg/json/JSONObject;
    .end local v1    # "creatives":Lorg/json/JSONObject;
    .end local v4    # "media":Lorg/json/JSONObject;
    .end local v6    # "vasts":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v5

    .line 160
    .restart local v1    # "creatives":Lorg/json/JSONObject;
    .restart local v6    # "vasts":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "err":Ljava/lang/Exception;
    const-string v7, "Creative"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .restart local v0    # "creative":Lorg/json/JSONObject;
    goto :goto_0

    .line 167
    .end local v3    # "err":Ljava/lang/Exception;
    .restart local v4    # "media":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "__cdata"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    const-string v7, "__cdata"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    .line 170
    .end local v0    # "creative":Lorg/json/JSONObject;
    .end local v1    # "creatives":Lorg/json/JSONObject;
    .end local v4    # "media":Lorg/json/JSONObject;
    .end local v6    # "vasts":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "MobFoxBanner"

    const-string v8, "video url json exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static postDMP(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 237
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/mobfox/sdk/utils/Utils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "IPAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "ua":Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lcom/mobfox/sdk/dmp/DMPManager;->updateDMP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Lcom/mobfox/sdk/utils/Utils$1;

    invoke-direct {v3}, Lcom/mobfox/sdk/utils/Utils$1;-><init>()V

    invoke-static {p0, v3}, Lcom/mobfox/sdk/dmp/DMPManager;->postDMP(Landroid/content/Context;Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .end local v0    # "IPAddress":Ljava/lang/String;
    .end local v2    # "ua":Ljava/lang/String;
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MobFoxBanner"

    const-string v4, "post dmp exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "MobFoxBanner"

    const-string v4, "post dmp exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 39
    const/4 v2, 0x0

    .line 42
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 50
    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 53
    .local v3, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v8, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "ls":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 79
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "ls":Ljava/lang/String;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_2
    return-object v7

    .line 43
    :catch_1
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "MobFoxUtils"

    const-string v9, "read setting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 46
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 47
    .local v6, "t":Ljava/lang/Throwable;
    const-string v8, "MobFoxUtils"

    const-string v9, "read setting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "ls":Ljava/lang/String;
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 69
    :catch_3
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 70
    throw v8

    .line 69
    :catch_5
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public static replaceAudioCached(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "replace"    # Ljava/lang/String;
    .param p1, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 205
    :try_start_0
    const-string v1, "vasts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "VAST"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Ad"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InLine"

    .line 206
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Creatives"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Creative"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Linear"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "MediaFiles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "MediaFile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "__text"

    .line 207
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local p1    # "adResp":Lorg/json/JSONObject;
    :goto_0
    return-object p1

    .line 209
    .restart local p1    # "adResp":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxBanner"

    const-string v2, "replace with cached exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static replaceToCached(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "replace"    # Ljava/lang/String;
    .param p1, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 185
    :try_start_0
    const-string v2, "vasts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "VAST"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Ad"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InLine"

    .line 186
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Creatives"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Creative"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Linear"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MediaFiles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MediaFile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "__cdata"

    .line 187
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object p1

    .line 189
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "vasts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "VAST"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Ad"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "InLine"

    .line 193
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Creatives"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Creative"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Linear"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MediaFiles"

    .line 194
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MediaFile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "__cdata"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v1

    .line 197
    .local v1, "err":Lorg/json/JSONException;
    const-string v2, "MobFoxBanner"

    const-string v3, "replace with cached exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 94
    :goto_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 97
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "MobFoxUtils"

    const-string v5, "write setting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 91
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "MobFoxUtils"

    const-string v5, "write setting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "bufWriter":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "MobFoxUtils"

    const-string v5, "write buffer setting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 109
    :catch_4
    move-exception v1

    .line 110
    goto :goto_1

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 103
    .restart local v3    # "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "MobFoxUtils"

    const-string v5, "write buffer setting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_1

    .line 109
    :catch_6
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 108
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 110
    throw v4

    .line 109
    :catch_7
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
