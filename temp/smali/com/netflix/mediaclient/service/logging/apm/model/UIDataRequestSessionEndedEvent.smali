.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UIDataRequestSessionEndedEvent.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field private static final UI_DATA_NAME:Ljava/lang/String; = "uiDataRequest"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private networkConnectionClassData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

.field private reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private requestId:Ljava/lang/String;

.field private response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 97
    const-string/jumbo v0, "uiDataRequest"

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 78
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    const-string/jumbo v0, "reason"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-class v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 84
    :cond_0
    const-string/jumbo v0, "url"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "error"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 86
    const-string/jumbo v0, "response"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    .line 87
    const-string/jumbo v0, "requestId"

    invoke-static {v1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->networkConnectionClassData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->networkConnectionClassData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 202
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_2

    .line 205
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 209
    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_4

    .line 212
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 215
    const-string/jumbo v1, "requestId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_5
    return-object v0
.end method

.method public getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    return-object v0
.end method

.method public getReason()Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionClassCustomData(Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->networkConnectionClassData:Lcom/netflix/mediaclient/service/logging/apm/model/ConnectionClassCustomData;

    .line 228
    return-void
.end method

.method public setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 152
    return-void
.end method

.method public setReason(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 188
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setResponse(Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    .line 170
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UIDataRequestSessionEndedEvent [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->error:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->response:Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;->reason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
