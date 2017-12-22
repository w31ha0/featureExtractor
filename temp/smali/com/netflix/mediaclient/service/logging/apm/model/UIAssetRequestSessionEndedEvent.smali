.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UIAssetRequestSessionEndedEvent.java"


# static fields
.field public static final ASSET_TYPE:Ljava/lang/String; = "assetType"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field private static final UI_ASSET_NAME:Ljava/lang/String; = "uiAssetRequest"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field private connectionClassCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

.field private error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "uiAssetRequest"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 79
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    const-string/jumbo v0, "assetType"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 85
    :cond_0
    const-string/jumbo v0, "reason"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    const-class v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 89
    :cond_1
    const-string/jumbo v0, "url"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->url:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "error"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 91
    const-string/jumbo v0, "response"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    .line 93
    :cond_2
    return-void
.end method


# virtual methods
.method public getAssetType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    return-object v0
.end method

.method protected getCustomData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->connectionClassCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->connectionClassCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 216
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_2

    .line 219
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    if-eqz v1, :cond_3

    .line 222
    const-string/jumbo v1, "response"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_4

    .line 225
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    if-eqz v1, :cond_5

    .line 228
    const-string/jumbo v1, "assetType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_5
    return-object v0
.end method

.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    return-object v0
.end method

.method public getReason()Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method

.method public getResponse()Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetType(Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->assetType:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 182
    return-void
.end method

.method public setConnectionClassCustomData(Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->connectionClassCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    .line 241
    return-void
.end method

.method public setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 142
    return-void
.end method

.method public setReason(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 162
    return-void
.end method

.method public setResponse(Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    .line 202
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;->url:Ljava/lang/String;

    .line 122
    return-void
.end method
