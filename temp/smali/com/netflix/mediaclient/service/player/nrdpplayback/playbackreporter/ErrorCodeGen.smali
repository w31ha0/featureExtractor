.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;
.super Ljava/lang/Object;
.source "ErrorCodeGen.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ErrorCodeGen"

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    const-string/jumbo v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :goto_1
    return-object v0

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPlaybackFailureCode(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 75
    .line 77
    const-string/jumbo v0, "NFErr_BR_TransactionFailed"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleBRTransactionFailed(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string/jumbo v0, "NFErr_DRM_NO_SESSION"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleDrmNoSessions(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v0, "NFErr_DRM_SESSION_EXCEPTION"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleDrmSessionException(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v0, "NFErr_MANIFEST_PROCESS"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleManifestProcessErr(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_3
    const-string/jumbo v0, "NFErr_MC_OpenDeviceFailure"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleMCOpenDeviceErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_4
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handlePlaybackDeviceErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_5
    const-string/jumbo v0, "NFErr_MC_DevicePlaybackError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleMCDevicePlaybackErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_6
    const-string/jumbo v0, "NFErr_MP4ParsedData"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleMp4ParseErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_7
    const-string/jumbo v0, "NFErr_Aborted"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleAborted(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_8
    const-string/jumbo v0, "NFErr_MC_StreamSetIncomplete"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleOtherErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_9
    const-string/jumbo v0, "NFErr_MC_StreamingInitFailure"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleStreamingInitFailure(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :cond_a
    const-string/jumbo v0, "NFErr_DRMFailed"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->handleDrmError(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :cond_b
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 103
    const-string/jumbo v1, "10.0"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "NotRegistered"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getStreamingFailureCode(IILjava/lang/String;JIJLorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 257
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 258
    const-string/jumbo v1, "AS_MEDIA_DURATION_ERROR"

    invoke-virtual {p8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 259
    const-string/jumbo v1, "4.1"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "EncodingError.MediaDurationError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 293
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const-string/jumbo v1, "AS_MEDIA_HEADER_ERROR"

    invoke-virtual {p8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 262
    const-string/jumbo v1, "4.2"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "EncodingError.MediaHeaderParseError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_1
    const-string/jumbo v1, "3"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 266
    const-string/jumbo v1, "StreamingFailure"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 270
    if-lt p5, v2, :cond_4

    if-eqz p1, :cond_4

    .line 272
    const/16 v1, 0x1a4

    if-eq p5, v1, :cond_2

    cmp-long v1, p6, p3

    if-lez v1, :cond_3

    .line 273
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Http."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 279
    :cond_4
    if-lt p5, v2, :cond_5

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Http."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 282
    :cond_5
    if-eqz p1, :cond_6

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 285
    :cond_6
    if-eqz p0, :cond_7

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Other"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 289
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Other"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleAborted(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 443
    const-string/jumbo v1, "NFErr_MC_AcquireLicenseFailure"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string/jumbo v1, "2.15"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 445
    const-string/jumbo v1, "NccpLicenseFailed.Aborted"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 450
    :goto_0
    return-object v0

    .line 447
    :cond_0
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 448
    const-string/jumbo v1, "Aborted"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleBRTransactionFailed(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 7

    .prologue
    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 142
    const-string/jumbo v1, "NFErr_BR_TransactionFailed"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    :try_start_0
    const-string/jumbo v2, "transactionname"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string/jumbo v2, "authorization"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "NccpAuthorizationFailed"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 156
    :goto_0
    const-string/jumbo v1, "NFErr_BR_ErrorData"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    const-string/jumbo v1, "NFErr_BR_ErrorData"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 158
    const-string/jumbo v2, "actionid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 159
    const-string/jumbo v3, "nccperr"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 160
    const-string/jumbo v4, "brerror"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    const-string/jumbo v5, "errdisplaymsg"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->brError:Ljava/lang/String;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".50."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".BladeRunnerErrCode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 170
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    .line 248
    :cond_0
    :goto_1
    return-object v0

    .line 149
    :cond_1
    const-string/jumbo v2, "license"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string/jumbo v1, "2"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "NccpLicenseFailed"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleBRTransactionFailed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 153
    :cond_2
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unknown transaction"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 174
    const/16 v1, 0x3f1

    if-ne v3, v1, :cond_4

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".5."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".ProtocolVersionIncorrect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_1

    .line 179
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".NoAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 182
    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".10."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".ErrorMessage."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 185
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    :cond_6
    const/16 v1, 0x8

    if-ne v2, v1, :cond_7

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".11."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".InvalidDeviceCredentials."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 190
    :cond_7
    const/16 v1, 0x9

    if-ne v2, v1, :cond_8

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".12."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".UnsupportedSoftwareVersion."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 193
    :cond_8
    const/4 v1, 0x2

    if-ne v2, v1, :cond_9

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".9."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".RetryExceeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 196
    :cond_9
    const/4 v1, 0x5

    if-ne v2, v1, :cond_a

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".9."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".RetryExceeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 199
    :cond_a
    const/16 v1, 0xe

    if-ne v2, v1, :cond_b

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".17"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".RegistrationRequired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 202
    :cond_b
    if-lez v3, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Nccp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 209
    :cond_c
    const-string/jumbo v1, "NFErr_NetworkError"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 215
    :cond_d
    const-string/jumbo v1, "NFErr_HttpError"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".Http"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 221
    :cond_e
    const-string/jumbo v1, "NFErr_DRMError"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".DrmError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 227
    :cond_f
    const-string/jumbo v1, "NFErr_MslError"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".MslError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :cond_10
    const-string/jumbo v1, "NFErr_Missing_Status"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".MissingStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".UnknownError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static handleDrmError(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 455
    const-string/jumbo v1, "5.6.1"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 456
    const-string/jumbo v1, "DrmFailed"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 457
    return-object v0
.end method

.method private static handleDrmNoSessions(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 127
    const-string/jumbo v1, "2.101"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 128
    const-string/jumbo v1, "NccpLicenseFailed.DrmNoSessions"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 129
    return-object v0
.end method

.method private static handleDrmSessionException(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 134
    const-string/jumbo v1, "2.102"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "NccpLicenseFailed.DrmSessionException"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 136
    return-object v0
.end method

.method private static handleMCDevicePlaybackErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 399
    const-string/jumbo v1, "5"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 400
    const-string/jumbo v1, "DevicePlaybackError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 402
    const-string/jumbo v1, "NFErr_MC_DevicePlaybackSetSpeedTimeout"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".SetSpeedTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 416
    :goto_0
    return-object v0

    .line 405
    :cond_0
    const-string/jumbo v1, "NFErr_MC_DeviceBufferingWaitCountExceeded"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".FalseUnderflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_1
    const-string/jumbo v1, "NFErr_MP4ParsedData"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".FeedHeaderError.MediaHeaderParseError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".UnknownError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleMCOpenDeviceErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 5

    .prologue
    .line 324
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 325
    const-string/jumbo v0, "5.6"

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "DevicePlaybackError.OpenDeviceFailure"

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 327
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificCode:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificString:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "NFErr_DRMFailed"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".DrmFailed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 341
    :try_start_0
    const-string/jumbo v2, "deviceSpecificErrorCode"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificCode:Ljava/lang/String;

    .line 342
    const-string/jumbo v2, "deviceSpecificErrorMsg"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".UnknownError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0

    .line 353
    :cond_2
    const-string/jumbo v0, "NFErr_Bad"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".PlaybackDeviceOpenFailure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 362
    :try_start_1
    const-string/jumbo v2, "iespStatusCode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 363
    const-string/jumbo v3, "deviceSpecificErrorMsg"

    const-string/jumbo v4, ""

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 370
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 379
    :cond_3
    const-string/jumbo v0, "NFErr_MP4ParsedData"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".Mp4HeaderParseError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".UnknownError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleManifestProcessErr(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 111
    const-string/jumbo v1, "NFErr_MANIFEST_PROCESS"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 115
    const-string/jumbo v2, "statuscode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1.300."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 121
    :goto_0
    const-string/jumbo v1, "NccpAuthorizationFailed.ManifestProcessErr"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 122
    return-object v0

    .line 118
    :cond_0
    const-string/jumbo v1, "1.300"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleMp4ParseErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 421
    const-string/jumbo v1, "5.1"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 422
    const-string/jumbo v1, "DevicePlaybackError.FeedHeaderError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 423
    return-object v0
.end method

.method private static handleOtherErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 3

    .prologue
    .line 427
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 428
    const-string/jumbo v1, "6"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 429
    const-string/jumbo v1, "Other"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 431
    const-string/jumbo v1, "NFErr_MC_StreamSetIncomplete"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".StreamSetIncomplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 438
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".UnknownError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handlePlaybackDeviceErrors(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 5

    .prologue
    .line 297
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 298
    const-string/jumbo v0, "5.2"

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "DevicePlaybackError.ErrorReportedViaIESP"

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 301
    const-string/jumbo v0, "NFErr_PlaybackDeviceError"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    const-string/jumbo v2, "iespStatusCode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 305
    const-string/jumbo v3, "deviceSpecificErrorCode"

    const-string/jumbo v4, ""

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificCode:Ljava/lang/String;

    .line 306
    const-string/jumbo v3, "deviceSpecificErrorMsg"

    const-string/jumbo v4, ""

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->deviceSpecificString:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static handleStreamingInitFailure(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 3

    .prologue
    .line 461
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;-><init>()V

    .line 462
    const-string/jumbo v1, "4"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 463
    const-string/jumbo v1, "EncodingError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 464
    const-string/jumbo v1, "NFErr_MC_MediaDurationError"

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 466
    const-string/jumbo v1, ".MediaDurationError"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    .line 471
    :goto_0
    return-object v0

    .line 468
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 469
    const-string/jumbo v1, ".StreamingInitFailure"

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    goto :goto_0
.end method

.method static hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 28
    move v1, v0

    .line 30
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 32
    const-string/jumbo v3, "errorcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "errorcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 39
    :cond_0
    :goto_1
    return v0

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static peekCode(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 44
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v1, v1, -0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "errorcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
