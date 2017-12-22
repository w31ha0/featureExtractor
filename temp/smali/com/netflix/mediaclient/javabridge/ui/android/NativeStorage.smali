.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeStorage.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Storage;


# instance fields
.field private itemMapsByAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    .line 45
    return-void
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string/jumbo v0, "properties"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string/jumbo v1, "data"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->load(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private load(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 295
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    return-void

    .line 299
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v2, "accounts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string/jumbo v2, "accounts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_0

    move v0, v1

    .line 307
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 308
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 309
    const-string/jumbo v4, "dak"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 311
    iget-object v6, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v4, "items"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    .line 313
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 314
    new-instance v6, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;-><init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private save()V
    .locals 7

    .prologue
    .line 263
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 264
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 265
    const-string/jumbo v0, "accounts"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 271
    const-string/jumbo v5, "dak"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 276
    const-string/jumbo v6, "items"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    .line 278
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed to save data"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :goto_1
    return-void

    .line 283
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v2, "storage"

    const-string/jumbo v3, "data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    if-nez p1, :cond_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 235
    if-nez v0, :cond_1

    .line 236
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Items not found! Nothing to clear!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearAll()V
    .locals 4

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const-string/jumbo v1, "accounts"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, "storage"

    const-string/jumbo v3, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    :try_start_2
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed to save data"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 152
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 167
    :goto_0
    monitor-exit p0

    return-object v0

    .line 156
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    if-nez v0, :cond_2

    move-object v0, v1

    .line 158
    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    .line 162
    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 167
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "storage"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "nrdp.storage"

    return-object v0
.end method

.method public declared-synchronized key(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 137
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 143
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public length(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    if-eqz p1, :cond_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->handlePropertyUpdate(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 195
    monitor-enter p0

    if-nez p1, :cond_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    if-nez v0, :cond_1

    .line 201
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Items not found! We can not remove item!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_1
    const/4 v2, 0x0

    .line 206
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    .line 207
    iget-object v4, v1, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :goto_1
    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public declared-synchronized setItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    if-nez p1, :cond_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->itemMapsByAccount:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;

    invoke-direct {v1, p0, p2, p3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage$KeyValuePair;-><init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
