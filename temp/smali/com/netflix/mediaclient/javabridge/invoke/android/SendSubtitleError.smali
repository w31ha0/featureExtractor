.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SendSubtitleError.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "sendSubtitleError"

.field private static final PROPERTY_CDN_ID:Ljava/lang/String; = "cdnid"

.field private static final PROPERTY_DNS_SERVERS:Ljava/lang/String; = "nameServers"

.field private static final PROPERTY_DOWNLOADABLE_ID:Ljava/lang/String; = "did"

.field private static final PROPERTY_ERROR:Ljava/lang/String; = "error"

.field private static final PROPERTY_ERROR_CAUSE:Ljava/lang/String; = "cause"

.field private static final PROPERTY_ERROR_CODE:Ljava/lang/String; = "statusCode"

.field private static final PROPERTY_ERROR_CODE_DESC:Ljava/lang/String; = "statusCodeDesc"

.field private static final PROPERTY_ERROR_DEEP:Ljava/lang/String; = "errorDeep"

.field private static final PROPERTY_ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROPERTY_ERROR_RAW_RESP:Ljava/lang/String; = "rawResponse"

.field private static final PROPERTY_ERROR_STACKTRACE:Ljava/lang/String; = "stackTrace"

.field private static final PROPERTY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PROPERTY_LANG_ISO_CODE_639_1:Ljava/lang/String; = "iso639_1"

.field private static final PROPERTY_MAX_SIZE:I = 0x3e8

.field private static final PROPERTY_REASON:Ljava/lang/String; = "reason"

.field private static final PROPERTY_RETRY:Ljava/lang/String; = "retry"

.field private static final PROPERTY_SUBTITLE_ID:Ljava/lang/String; = "subtitleId"

.field private static final PROPERTY_SUBTITLE_TYPE:Ljava/lang/String; = "subtitleType"

.field private static final PROPERTY_TRACK_TYPE:Ljava/lang/String; = "trackType"

.field private static final PROPERTY_URL:Ljava/lang/String; = "url"

.field private static final PROPERTY_XID:Ljava/lang/String; = "xid"

.field private static final SUBTITLE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final SUBTITLE_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "android"

    const-string/jumbo v1, "sendSubtitleError"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct/range {p0 .. p7}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 236
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "message"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string/jumbo v1, "stackTrace"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    const-string/jumbo v1, "cause"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v1, "cause"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 252
    const-string/jumbo v1, "message"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 255
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    const-string/jumbo v2, "stackTrace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_3
    return-void
.end method

.method private setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v0, "retry"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    if-eqz p3, :cond_1

    .line 96
    const-string/jumbo v0, "reason"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_1
    if-eqz p2, :cond_3

    .line 99
    const-string/jumbo v0, "xid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getXid()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "cdnid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    const-string/jumbo v0, "did"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 106
    const-string/jumbo v2, "subtitleType"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v0, v3, :cond_4

    const-string/jumbo v0, "text"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_3
    if-eqz p7, :cond_9

    array-length v0, p7

    if-lez v0, :cond_9

    .line 112
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 113
    array-length v3, p7

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v4, p7, v0

    .line 114
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_4
    const-string/jumbo v0, "image"

    goto :goto_1

    .line 116
    :cond_5
    const-string/jumbo v0, "nameServers"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :goto_3
    if-eqz p5, :cond_8

    .line 123
    const-string/jumbo v0, "trackType"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 126
    const-string/jumbo v0, "subtitleId"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_6
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 130
    const-string/jumbo v0, "language"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_7
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 134
    const-string/jumbo v0, "iso639_1"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_8
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toError(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 118
    :cond_9
    :try_start_1
    const-string/jumbo v0, "nf_invoke"

    const-string/jumbo v2, "No name servers!!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Unable to Log failed subtitle "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 143
    :cond_a
    :try_start_2
    const-string/jumbo v0, "error"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private toError(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    if-eqz v0, :cond_1

    .line 166
    check-cast p1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromNetworkFailure(Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromNetworkFailure(Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromVolleyError(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromNetworkResponse(Lcom/android/volley/NetworkResponse;Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V

    .line 212
    const-string/jumbo v1, "statusCode"

    iget v2, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v1, "statusCodeDesc"

    const-string/jumbo v2, "HTTP_SC"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v1, :cond_0

    .line 216
    const-string/jumbo v1, "rawResponse"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_0
    return-object v0
.end method

.method private toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    const-string/jumbo v1, "statusCode"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v1, "statusCodeDesc"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    const-string/jumbo v1, "message"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_1
    return-object v0
.end method

.method private toErrorFromVolleyError(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromNetworkResponse(Lcom/android/volley/NetworkResponse;Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->toErrorFromVolleyErrorException(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromVolleyErrorException(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    const-string/jumbo v1, "statusCode"

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v1, "statusCodeDesc"

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SendSubtitleError;->addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V

    .line 231
    return-object v0
.end method
