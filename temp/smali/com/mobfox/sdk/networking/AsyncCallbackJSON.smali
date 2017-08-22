.class public interface abstract Lcom/mobfox/sdk/networking/AsyncCallbackJSON;
.super Ljava/lang/Object;
.source "AsyncCallbackJSON.java"


# virtual methods
.method public abstract onComplete(ILorg/json/JSONObject;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
