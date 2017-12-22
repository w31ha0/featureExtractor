.class public final Lcom/netflix/mediaclient/util/VolleyUtils;
.super Ljava/lang/Object;
.source "VolleyUtils.java"


# static fields
.field public static HTTP_STATUS_REQUEST_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "nf_volley"

.field public static final TIMEOUT_ERROR:Lcom/android/volley/VolleyError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    const/16 v0, 0x198

    sput v0, Lcom/netflix/mediaclient/util/VolleyUtils;->HTTP_STATUS_REQUEST_TIMEOUT:I

    .line 62
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Lcom/android/volley/NetworkResponse;

    sget v2, Lcom/netflix/mediaclient/util/VolleyUtils;->HTTP_STATUS_REQUEST_TIMEOUT:I

    new-array v3, v5, [B

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    sput-object v0, Lcom/netflix/mediaclient/util/VolleyUtils;->TIMEOUT_ERROR:Lcom/android/volley/VolleyError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getStatus(Lcom/android/volley/VolleyError;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/android/app/NetflixStatus;
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 120
    instance-of v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->getErrorCode(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 137
    :goto_0
    if-nez v0, :cond_5

    .line 140
    :goto_1
    const-string/jumbo v0, "nf_volley"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStatus statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 143
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 144
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setVolleyError(Lcom/android/volley/VolleyError;)V

    .line 145
    return-object v0

    .line 123
    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/ParseException;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 126
    :cond_1
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 129
    :cond_2
    instance-of v0, p0, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_3

    .line 130
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 132
    :cond_3
    instance-of v0, p0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 133
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_4
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeOrNullFromVolleyError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method

.method private static getStatusCodeForCronet(Lorg/chromium/net/CronetException;)Lcom/netflix/mediaclient/StatusCode;
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    instance-of v1, p0, Lorg/chromium/net/NetworkException;

    if-eqz v1, :cond_0

    .line 263
    check-cast p0, Lorg/chromium/net/NetworkException;

    .line 264
    invoke-virtual {p0}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_HOSTNAME_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 269
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_INTERNET_DISCONNECTED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 272
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_NETWORK_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 275
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 278
    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_CLOSED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 281
    :pswitch_5
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_TIMED_OUT:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 284
    :pswitch_6
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_REFUSED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 287
    :pswitch_7
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_CONNECTION_RESET:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 290
    :pswitch_8
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ADDRESS_UNREACHABLE:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 293
    :pswitch_9
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_QUIC_PROTOCOL_FAILED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 296
    :pswitch_a
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CRONET_ERROR_OTHER:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getStatusCodeOrNullFromVolleyError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/StatusCode;
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_6

    .line 237
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_0

    .line 238
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_UNKNOWN_HOST_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    .line 256
    :goto_0
    return-object v0

    .line 239
    :cond_0
    instance-of v2, v0, Ljava/net/ConnectException;

    if-eqz v2, :cond_1

    .line 240
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_CONNECTION_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 241
    :cond_1
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    .line 242
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_SOCKET_TIMEOUT_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MSLUtils;->isUserAuthEntityMismatch(Lcom/android/volley/VolleyError;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_USERAUTH_ENTITY_MISMATCH:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 245
    :cond_3
    instance-of v2, v0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    if-eqz v2, :cond_4

    .line 246
    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isMslException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MSL_GENERIC_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 249
    :cond_5
    instance-of v2, v0, Lorg/chromium/net/CronetException;

    if-eqz v2, :cond_6

    .line 252
    check-cast v0, Lorg/chromium/net/CronetException;

    .line 253
    invoke-static {v0}, Lcom/netflix/mediaclient/util/VolleyUtils;->getStatusCodeForCronet(Lorg/chromium/net/CronetException;)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static isMslException(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 309
    if-nez p0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isMslExceptionInternal(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 314
    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/VolleyUtils;->isMslExceptionInternal(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 318
    goto :goto_0

    .line 320
    :cond_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 321
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 322
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "com.netflix.msl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-class v3, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;

    .line 324
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    .line 325
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static isMslExceptionInternal(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 329
    instance-of v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/netflix/msl/MslInternalException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/netflix/msl/MslException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z
    .locals 1

    .prologue
    .line 180
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public static logResponseHeaders(Lcom/android/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public static parseCronetNetworkErrors(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-object v0

    .line 219
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string/jumbo v0, "REQUEST_ERROR_CONNECTION_TIMED_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_TIMEOUT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v0, "ERR_NAME_NOT_RESOLVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_NOT_RESOLVED:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v0, "ERR_INVALID_URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ERR_DISALLOWED_URL_SCHEME"

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ERR_UNKNOWN_URL_SCHEME"

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERR_MALFORMED_URL:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->HTTP_ERROR_UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toError(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 7

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 152
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 156
    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V

    .line 163
    const-string/jumbo v3, "statusCode"

    iget-object v4, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    iget-object v3, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_0

    .line 165
    const-string/jumbo v3, "response"

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v5, v5, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setStackTrace(Ljava/lang/String;)V

    .line 176
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->toRootCause(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    return-object v1

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toRootCause(Lcom/android/volley/VolleyError;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 185
    invoke-static {p0}, Lcom/netflix/mediaclient/util/VolleyUtils;->isNetworkResponseExist(Lcom/android/volley/VolleyError;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 209
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 191
    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http4xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 194
    :cond_1
    if-lt v0, v2, :cond_2

    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    .line 195
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->http5xx:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "sslhandshakeexception"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslHandshakeFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 203
    :cond_3
    const-string/jumbo v1, "current time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "validation time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslExpiredCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 205
    :cond_4
    const-string/jumbo v1, "no trusted certificate found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->sslUntrustedCert:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0

    .line 209
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    goto :goto_0
.end method
