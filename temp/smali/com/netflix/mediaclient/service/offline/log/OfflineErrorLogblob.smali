.class public final Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;
.super Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;
.source "OfflineErrorLogblob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineErrorLogBlob"


# instance fields
.field private final mShouldSendNow:Z


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/offline/OfflineBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "level"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_0
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errormsg"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_1
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorcode"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_2
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mShouldSendNow:Z

    .line 57
    return-void
.end method

.method public static logMessage(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 289
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "log"

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 293
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 297
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendBladerunnerError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 95
    if-nez p0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 101
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendDownloadStopError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 112
    if-nez p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$StopReason:[I

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 162
    const-string/jumbo v0, "offlineErrorLogBlob"

    const-string/jumbo v2, " onDownloadStopped stopReason: %s, no-op"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v8

    .line 165
    :goto_1
    if-eqz v0, :cond_0

    .line 166
    invoke-static {p4}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForStoppedDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v5

    .line 167
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    const-string/jumbo v6, "downloadStopError"

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    invoke-direct {v0, p5}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 169
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_0
    move v0, v8

    .line 120
    goto :goto_1

    .line 123
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 124
    goto :goto_1

    :pswitch_2
    move v0, v8

    .line 128
    goto :goto_1

    .line 131
    :pswitch_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 132
    goto :goto_1

    .line 135
    :pswitch_4
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 136
    goto :goto_1

    .line 139
    :pswitch_5
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 140
    goto :goto_1

    .line 143
    :pswitch_6
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 144
    goto :goto_1

    .line 147
    :pswitch_7
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 148
    goto :goto_1

    .line 151
    :pswitch_8
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 152
    goto :goto_1

    .line 155
    :pswitch_9
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move v0, v9

    .line 156
    goto :goto_1

    .line 159
    :pswitch_a
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v9

    .line 160
    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
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

.method public static sendManifestNotFound(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    if-nez p0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v5, "manifestNotFound"

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 265
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendManifestSaved(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 246
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v5, "manifestSaved"

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 250
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendNetflixJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    if-nez p0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NetflixStartJob"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendNotEnoughSpaceLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 181
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {p4}, Lcom/netflix/mediaclient/util/LogUtils;->getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    move-result-object v6

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->warn:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 187
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendOfflineDlRequestStorageInfoLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 214
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    move v2, v0

    .line 220
    :goto_1
    :try_start_1
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v5, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DlRequestStorageInfo removable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    invoke-direct {v0, p4, p5}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setFreeSpace(J)V

    .line 222
    invoke-direct {v0, p7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->setDebugMessage(Ljava/lang/String;)V

    .line 223
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 217
    :catch_1
    move-exception v1

    move v2, v0

    goto :goto_1

    .line 226
    :catch_2
    move-exception v0

    .line 227
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendOfflineNotAvailableLogblob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    if-nez p0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getCodeForLogblob()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "offline feature n/a"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static sendStorageAddedOrRemoved(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 276
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "storageAddedOrRemoved"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "volumeCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;-><init>(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private setDebugMessage(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 75
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "dbgmsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private setFreeSpace(J)V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "freespace"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string/jumbo v1, "offlineErrorLogBlob"

    const-string/jumbo v2, "JSONException:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->mShouldSendNow:Z

    return v0
.end method
