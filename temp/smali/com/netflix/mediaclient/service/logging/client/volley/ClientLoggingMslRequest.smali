.class public abstract Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;
.source "ClientLoggingMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final TAG:Ljava/lang/String; = "nf_client_log_msl_equest"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;-><init>(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLHeaders()Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLPayload()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLQuery()Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    .line 130
    :goto_0
    const-string/jumbo v3, "nf_client_log_msl_equest"

    const-string/jumbo v4, "Executing ichnaea (logging) request..."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/mediaclient/service/msl/client/MslErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 144
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string/jumbo v1, "nf_client_log_msl_equest"

    const-string/jumbo v2, "API request failed with JSON exception"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :catch_1
    move-exception v0

    .line 137
    const-string/jumbo v1, "nf_client_log_msl_equest"

    const-string/jumbo v2, "API request failed with MSL Error exception"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_2
    move-exception v0

    .line 140
    const-string/jumbo v1, "nf_client_log_msl_equest"

    const-string/jumbo v2, "API request failed with MSL exception"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "msl_v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method protected abstract getLoggingPath()Ljava/lang/String;
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected injectUrl()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getMSLClient()Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->getLoggingPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getClientLoggingUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->initUrl(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected abstract logRequest([BLjava/util/Map;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")[B"
        }
    .end annotation
.end method

.method protected abstract parseLogResponse([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 157
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v1, "X-Netflix.api-script-execution-time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v2, "X-Netflix.execution-time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "X-Netflix.api-script-revision"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mEndpointRevision:Ljava/lang/String;

    .line 165
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mServerExecTimeInMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mApiScriptExecTimeInMs:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mResponseSizeInBytes:I

    .line 192
    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->parseResponse([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 209
    :goto_2
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string/jumbo v2, "nf_client_log_msl_equest"

    const-string/jumbo v3, "Failed to parse server execution time!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string/jumbo v1, "nf_client_log_msl_equest"

    const-string/jumbo v2, "Failed to parse api script execution time!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 183
    :cond_3
    const-string/jumbo v0, "nf_client_log_msl_equest"

    const-string/jumbo v1, "execTime not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :catch_2
    move-exception v0

    .line 199
    instance-of v1, v0, Lcom/android/volley/VolleyError;

    if-eqz v1, :cond_4

    .line 200
    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 202
    :cond_4
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2

    .line 209
    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_2
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mParseTimeInMs:J

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->parseLogResponse([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mParseTimeInMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->mParseTimeInMs:J

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/volley/ClientLoggingMslRequest;->parsedResponseCanBeNull()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "Parsing returned null."

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :catch_0
    move-exception v0

    .line 228
    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    check-cast v0, Lcom/android/volley/VolleyError;

    throw v0

    .line 232
    :cond_1
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    :cond_2
    return-object v0
.end method
