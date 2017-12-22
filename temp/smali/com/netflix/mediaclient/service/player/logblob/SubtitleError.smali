.class public Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "SubtitleError.java"


# static fields
.field private static final PROPERTY_CDN_ID:Ljava/lang/String; = "cdnid"

.field private static final PROPERTY_DETAILS:Ljava/lang/String; = "details"

.field private static final PROPERTY_DNS_SERVERS:Ljava/lang/String; = "nameServers"

.field private static final PROPERTY_DOWNLOADABLE_ID:Ljava/lang/String; = "dlid"

.field private static final PROPERTY_ERROR:Ljava/lang/String; = "error"

.field private static final PROPERTY_ERROR_CAUSE:Ljava/lang/String; = "cause"

.field private static final PROPERTY_ERROR_CODE:Ljava/lang/String; = "statusCode"

.field private static final PROPERTY_ERROR_CODE_DESC:Ljava/lang/String; = "statusCodeDesc"

.field private static final PROPERTY_ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROPERTY_ERROR_RAW_RESP:Ljava/lang/String; = "rawResponse"

.field private static final PROPERTY_ERROR_STACKTRACE:Ljava/lang/String; = "stackTrace"

.field private static final PROPERTY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PROPERTY_LANGUAGE_DESCRIPTION:Ljava/lang/String; = "languagedesc"

.field private static final PROPERTY_MAX_SIZE:I = 0x3e8

.field private static final PROPERTY_REASON:Ljava/lang/String; = "reason"

.field private static final PROPERTY_RETRY:Ljava/lang/String; = "retry"

.field private static final PROPERTY_SUBTITLE_ID:Ljava/lang/String; = "subtitleid"

.field private static final PROPERTY_SUBTITLE_TYPE:Ljava/lang/String; = "subtitleType"

.field private static final PROPERTY_TRACK_TYPE:Ljava/lang/String; = "tracktype"

.field private static final PROPERTY_URL:Ljava/lang/String; = "url"

.field private static final PROPERTY_XID:Ljava/lang/String; = "xid"

.field private static final SUBTITLE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final SUBTITLE_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final TAG:Ljava/lang/String; = "nf_subtitles_logblob"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 77
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method private addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 242
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "message"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, "stackTrace"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string/jumbo v1, "cause"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v1, "cause"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 258
    const-string/jumbo v1, "message"

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    const-string/jumbo v2, "stackTrace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    :cond_3
    return-void
.end method

.method private setArguments(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackoffline"

    if-nez p8, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "details"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "retry"

    invoke-virtual {v1, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    if-eqz p3, :cond_1

    .line 107
    const-string/jumbo v1, "reason"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_1
    if-eqz p2, :cond_3

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "xid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getXid()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getCdnId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "dlid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "subtitleType"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v1

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v5, :cond_5

    const-string/jumbo v1, "text"

    :goto_2
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_3
    if-eqz p7, :cond_a

    array-length v1, p7

    if-lez v1, :cond_a

    .line 123
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 124
    array-length v3, p7

    :goto_3
    if-ge v0, v3, :cond_6

    aget-object v4, p7, v0

    .line 125
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 100
    goto/16 :goto_1

    .line 117
    :cond_5
    const-string/jumbo v1, "image"

    goto :goto_2

    .line 127
    :cond_6
    const-string/jumbo v0, "nameServers"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :goto_4
    if-eqz p5, :cond_9

    .line 134
    const-string/jumbo v0, "tracktype"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 137
    const-string/jumbo v0, "subtitleid"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_7
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 141
    const-string/jumbo v0, "languagedesc"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_8
    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "language"

    invoke-interface {p5}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_9
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toError(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_b

    .line 151
    const-string/jumbo v1, "error"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string/jumbo v1, "nf_subtitles_logblob"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 129
    :cond_a
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_logblob"

    const-string/jumbo v1, "No name servers!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 160
    :catch_1
    move-exception v0

    .line 161
    const-string/jumbo v1, "nf_subtitles_logblob"

    const-string/jumbo v2, "Unable to Log failed subtitle "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 154
    :cond_b
    :try_start_2
    const-string/jumbo v0, "error"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private toError(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromNetworkFailure(Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromNetworkFailure(Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromVolleyError(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromNetworkResponse(Lcom/android/volley/NetworkResponse;Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V

    .line 218
    const-string/jumbo v1, "statusCode"

    iget v2, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v1, "statusCodeDesc"

    const-string/jumbo v2, "HTTP_SC"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v1, "rawResponse"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_0
    return-object v0
.end method

.method private toErrorFromStatus(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    const-string/jumbo v1, "statusCode"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string/jumbo v1, "statusCodeDesc"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    const-string/jumbo v1, "message"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_1
    return-object v0
.end method

.method private toErrorFromVolleyError(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromNetworkResponse(Lcom/android/volley/NetworkResponse;Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->toErrorFromVolleyErrorException(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private toErrorFromVolleyErrorException(Lcom/android/volley/VolleyError;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string/jumbo v1, "statusCode"

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string/jumbo v1, "statusCodeDesc"

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/player/logblob/SubtitleError;->addThrowable(Lcom/android/volley/VolleyError;Lorg/json/JSONObject;)V

    .line 237
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "subtitleerror"

    return-object v0
.end method
