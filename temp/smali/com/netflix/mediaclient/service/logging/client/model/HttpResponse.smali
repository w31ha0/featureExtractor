.class public Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/JsonSerializer;


# static fields
.field public static final API_SCRIPT_EXECUTION_TIME:Ljava/lang/String; = "apiScriptExecutionTime"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "contentLength"

.field public static final DNS_TIME:Ljava/lang/String; = "dnsTime"

.field public static final ENDPOINT_REVISION:Ljava/lang/String; = "apiScriptRevision"

.field public static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final PARSE_TIME:Ljava/lang/String; = "parseTime"

.field public static final RESPONSE_TIME:Ljava/lang/String; = "responseTime"

.field public static final SERVER_EXECUTION_TIME:Ljava/lang/String; = "serverExecutionTime"

.field public static final SSL_TIME:Ljava/lang/String; = "sslTime"

.field public static final TRANSFER_TIME:Ljava/lang/String; = "transferTime"


# instance fields
.field private apiScriptExecutionTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apiScriptExecutionTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 2.0
    .end annotation
.end field

.field private contentLength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentLength"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private dnsTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dnsTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private endpointRevision:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpointRevision"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 2.0
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mimeType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private parseTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parseTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private responseTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private serverExecutionTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverExecutionTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private sslTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sslTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private transferTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transferTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 346
    if-nez p0, :cond_0

    .line 366
    :goto_0
    return-object v0

    .line 350
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;-><init>()V

    .line 351
    const-string/jumbo v2, "contentLength"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    .line 352
    const-string/jumbo v2, "dnsTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    .line 353
    const-string/jumbo v2, "sslTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    .line 354
    const-string/jumbo v2, "responseTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    .line 355
    const-string/jumbo v2, "transferTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    .line 356
    const-string/jumbo v2, "serverExecutionTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    .line 357
    const-string/jumbo v2, "parseTime"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    .line 358
    const-string/jumbo v2, "mimeType"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    .line 360
    const-string/jumbo v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_1

    .line 362
    const-string/jumbo v3, "apiScriptExecutionTime"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    .line 363
    const-string/jumbo v3, "apiScriptRevision"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    .line 366
    goto :goto_0
.end method


# virtual methods
.method public getApiScriptExecutionTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDnsTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndpointRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParseTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResponseTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerExecutionTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSslTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransferTime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public setApiScriptExecutionTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    .line 276
    return-void
.end method

.method public setContentLength(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    .line 240
    return-void
.end method

.method public setDnsTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    .line 132
    return-void
.end method

.method public setEndpointRevision(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setParseTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    .line 222
    return-void
.end method

.method public setResponseTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public setServerExecutionTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    .line 204
    return-void
.end method

.method public setSslTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public setTransferTime(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    .line 186
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 304
    const-string/jumbo v1, "dnsTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 307
    const-string/jumbo v1, "sslTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 310
    const-string/jumbo v1, "responseTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 313
    const-string/jumbo v1, "transferTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 316
    const-string/jumbo v1, "serverExecutionTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 319
    const-string/jumbo v1, "parseTime"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 322
    const-string/jumbo v1, "contentLength"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 325
    const-string/jumbo v1, "mimeType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 330
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 331
    const-string/jumbo v2, "custom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 334
    const-string/jumbo v2, "apiScriptExecutionTime"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_9
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 337
    const-string/jumbo v2, "apiScriptRevision"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HttpResponse [dnsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->dnsTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sslTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->sslTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->responseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transferTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->transferTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->serverExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->parseTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apiScriptExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->apiScriptExecutionTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endpointRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->endpointRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
