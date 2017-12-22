.class public abstract Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseNrdObject;
.source "NativeNrdObject.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_object"


# instance fields
.field protected callbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected nextCallbackId:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    .line 49
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/netflix/mediaclient/javabridge/ui/Callback;)I
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 60
    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->nextCallbackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->nextCallbackId:I

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->nextCallbackId:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->nextCallbackId:I

    return v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 3

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 98
    :cond_0
    if-nez p1, :cond_1

    .line 99
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Event type is null. Do not add event listener! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleCallback(Lcom/netflix/mediaclient/event/CallbackEvent;)I
    .locals 2

    .prologue
    .line 213
    invoke-interface {p1}, Lcom/netflix/mediaclient/event/CallbackEvent;->getCallerId()I

    move-result v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->removeCallback(I)Lcom/netflix/mediaclient/javabridge/ui/Callback;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Callback;->done(Lcom/netflix/mediaclient/event/CallbackEvent;)V

    .line 220
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Callback executed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 169
    if-nez v0, :cond_0

    .line 173
    monitor-exit v1

    .line 181
    :goto_0
    return v3

    .line 176
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/EventListener;

    .line 177
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/javabridge/ui/EventListener;->received(Lcom/netflix/mediaclient/event/UIEvent;)V

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected handleNccpEvent(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 2

    .prologue
    .line 247
    const-string/jumbo v0, "origin"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "origin"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "NCCP event with origin equal complete. Ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    .line 252
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "NCCP event: handle by implementation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    .prologue
    .line 194
    if-nez p3, :cond_0

    .line 195
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 197
    :cond_0
    const-string/jumbo v0, "idx"

    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->addCallback(Lcom/netflix/mediaclient/javabridge/ui/Callback;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Create device account failed because of "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallback(I)Lcom/netflix/mediaclient/javabridge/ui/Callback;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/Callback;

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->callbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 79
    monitor-exit v1

    .line 80
    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
    .locals 2

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Event type is null. Can not remove event listener! It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    if-nez v0, :cond_2

    .line 146
    monitor-exit v1

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_2
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
