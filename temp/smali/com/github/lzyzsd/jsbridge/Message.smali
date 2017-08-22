.class public Lcom/github/lzyzsd/jsbridge/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final CALLBACK_ID_STR:Ljava/lang/String; = "callbackId"

.field private static final DATA_STR:Ljava/lang/String; = "data"

.field private static final HANDLER_NAME_STR:Ljava/lang/String; = "handlerName"

.field private static final RESPONSE_DATA_STR:Ljava/lang/String; = "responseData"

.field private static final RESPONSE_ID_STR:Ljava/lang/String; = "responseId"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private handlerName:Ljava/lang/String;

.field private responseData:Ljava/lang/String;

.field private responseId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/lzyzsd/jsbridge/Message;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 96
    new-instance v5, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v5}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 97
    .local v5, "m":Lcom/github/lzyzsd/jsbridge/Message;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "handlerName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "handlerName"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Lcom/github/lzyzsd/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    .line 99
    const-string v6, "callbackId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "callbackId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Lcom/github/lzyzsd/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    .line 100
    const-string v6, "responseData"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "responseData"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 101
    const-string v6, "responseId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "responseId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 102
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Lcom/github/lzyzsd/jsbridge/Message;->setData(Ljava/lang/String;)V

    .line 103
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 98
    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 99
    goto :goto_2

    :cond_2
    move-object v6, v7

    .line 100
    goto :goto_3

    :cond_3
    move-object v6, v7

    .line 101
    goto :goto_4

    :cond_4
    move-object v6, v7

    .line 102
    goto :goto_5

    .line 105
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "m":Lcom/github/lzyzsd/jsbridge/Message;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    return-object v4
.end method

.method public static toObject(Ljava/lang/String;)Lcom/github/lzyzsd/jsbridge/Message;
    .locals 5
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v2, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v2}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 78
    .local v2, "m":Lcom/github/lzyzsd/jsbridge/Message;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "handlerName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "handlerName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Lcom/github/lzyzsd/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    .line 80
    const-string v4, "callbackId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "callbackId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Lcom/github/lzyzsd/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    .line 81
    const-string v4, "responseData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "responseData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 82
    const-string v4, "responseId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "responseId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 83
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Lcom/github/lzyzsd/jsbridge/Message;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_4
    return-object v2

    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    move-object v4, v3

    .line 79
    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 80
    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 81
    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 82
    goto :goto_3

    .line 85
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setHandlerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseData"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "callbackId"

    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getCallbackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "data"

    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "handlerName"

    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "responseData"

    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "responseId"

    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    const/4 v2, 0x0

    goto :goto_0
.end method
