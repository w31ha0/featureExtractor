.class public Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;


# static fields
.field private static final MAX_MANIFEST_TO_CACHE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "nf_offlineManifestMgr"


# instance fields
.field private final mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private final mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mOfflineManifestCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOfflineManifestRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 62
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

    .line 63
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->handleManifestResponse(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    return-object v0
.end method

.method private addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->removeOldestManifest()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method private getManifestFromMemoryOrPersistentStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 251
    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->readManifestFromPersistentStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 257
    :cond_0
    return-object v0
.end method

.method private handleManifestResponse(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V
    .locals 12

    .prologue
    .line 164
    .line 166
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;

    .line 167
    if-nez v8, :cond_0

    .line 168
    const-string/jumbo v2, "nf_offlineManifestMgr"

    const-string/jumbo v3, "onManifestsFetched but no callback"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v2, 0x0

    .line 173
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->parseManifest(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;

    move-result-object v11

    .line 175
    iget-object v2, v11, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 176
    iget-object v10, v11, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 177
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p3

    move-object/from16 v7, p5

    .line 178
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->persistManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    move-object v9, v2

    .line 180
    :goto_1
    invoke-interface {v9}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-static {p3, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "handleManifestResponse manifest gone:"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 187
    :cond_1
    iget-object v2, v11, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-direct {p0, p2, v2}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 188
    if-eqz p4, :cond_2

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mPdsEventHandler:Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;

    iget-object v3, v11, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v7

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;->onDownloadOfFirstTimeOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)V

    :cond_2
    move-object v2, v10

    .line 193
    :goto_2
    invoke-interface {v9}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v3

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {v3, p2, v0, v1, v9}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendBladerunnerError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 196
    :cond_3
    invoke-interface {v8, v2, v9}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;->onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_4
    move-object v9, v2

    goto :goto_1

    :cond_5
    move-object v9, p1

    goto :goto_2
.end method

.method private parseManifest(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;
    .locals 3

    .prologue
    .line 228
    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)V

    .line 229
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 231
    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v2, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 232
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 237
    :goto_0
    return-object v1

    .line 234
    :cond_0
    const-string/jumbo v0, "nf_offlineManifestMgr"

    const-string/jumbo v2, "manifest parse error"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    goto :goto_0
.end method

.method private persistManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 201
    invoke-static {p4, p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string/jumbo v3, "nf_offlineManifestMgr"

    const-string/jumbo v4, "filepath for manifest=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 208
    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    if-nez v1, :cond_0

    .line 214
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_MANIFEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 219
    :goto_1
    return-object v0

    .line 209
    :catch_0
    move-exception v4

    .line 210
    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "persistManifest unsupported encoding"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", inputLen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", fileLength="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, v1}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendManifestSaved(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readManifestFromPersistentStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 279
    .line 280
    new-instance v0, Ljava/io/File;

    invoke-static {p4, p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " readManifestFromPersistentStore file not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 283
    const-string/jumbo v2, "nf_offlineManifestMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readManifestFromPersistentStore file not found="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendManifestNotFound(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-object v1

    .line 288
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 289
    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    :goto_1
    move-object v1, v0

    .line 302
    goto :goto_0

    .line 295
    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "nfManifestList is null"

    .line 296
    :goto_2
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    :goto_3
    move-object v0, v1

    goto :goto_1

    .line 295
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nfManifestList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "readManifestFromPersistentStore Exception:"

    invoke-direct {v2, v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 300
    const-string/jumbo v2, "nf_offlineManifestMgr"

    const-string/jumbo v3, "readManifestFromPersistentStore read error"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private removeOldestManifest()V
    .locals 10

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    const-wide/32 v6, 0x7fffffff

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    if-nez v2, :cond_0

    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 321
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestExpiryInEndPointTime()J

    move-result-wide v4

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestExpiryInEndPointTime()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gez v0, :cond_3

    .line 327
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-wide v0, v4

    :goto_1
    move-wide v6, v0

    .line 329
    goto :goto_0

    .line 330
    :cond_1
    if-eqz v2, :cond_2

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_2
    return-void

    :cond_3
    move-wide v0, v6

    goto :goto_1
.end method


# virtual methods
.method public abortAllRequestsForPlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public notifyDeletingPlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 268
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$3;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_0
    return-void
.end method

.method public requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestFromCache playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->getManifestFromMemoryOrPersistentStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 80
    :cond_0
    if-eqz p5, :cond_1

    .line 81
    invoke-interface {p5, v1, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;->onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 83
    :cond_1
    return-void
.end method

.method public requestOfflineManifestFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 8

    .prologue
    .line 92
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestFromServer playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 111
    return-void
.end method

.method public requestOfflineManifestRefreshFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 8

    .prologue
    .line 121
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestRefreshFromServer playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 159
    return-void
.end method
