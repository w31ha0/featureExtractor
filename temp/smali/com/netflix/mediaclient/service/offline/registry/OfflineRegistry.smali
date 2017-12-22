.class public Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;
.super Ljava/lang/Object;
.source "OfflineRegistry.java"


# static fields
.field private static final META_REGISTRY_VERSION:I = 0x1

.field public static final OFFLINE_DIRECTORY:Ljava/lang/String; = "/.of"

.field private static final TAG:Ljava/lang/String; = "nf_offline_registry"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

.field private final mOfflineStorageVolumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

.field private final mUiOfflineUiStorageVolumeList:Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mUiOfflineUiStorageVolumeList:Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getOfflineStorageVolumeList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private buildRegistryDataFromFile(Ljava/io/File;)Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 309
    const-string/jumbo v0, ""

    .line 310
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    :try_start_0
    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/registry/RegistryFileWriter;->recoverRegistryDataFileAtStart(Ljava/io/File;)V

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v2

    const-string/jumbo v4, "utf-8"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 318
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v4, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 330
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 332
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 333
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;-><init>(ILjava/lang/String;)V

    .line 355
    :cond_1
    :goto_2
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 323
    goto :goto_2

    .line 324
    :catch_1
    move-exception v2

    :goto_3
    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v4, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->getCheckSumFor(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    iget v2, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mMetaRegistryWriteCounter:I

    if-lt v1, v2, :cond_3

    .line 347
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/ChecksumException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkSumError for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3
    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "ignoring checksum error"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 324
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    :try_start_0
    const-string/jumbo v0, "ES6NBf1k7A4YmhA14ZsZQfmEoE8b7mM"

    .line 361
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOfflineStorageVolumeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    return-object v0
.end method

.method private readMetaRegistry()V
    .locals 3

    .prologue
    .line 246
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForMetaRegistry(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v0, ""

    .line 249
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 267
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    .line 276
    :cond_1
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_1

    .line 260
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private registryDataToJson(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeCreatingOrFailedItemsFromRegistryData(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)V
    .locals 7

    .prologue
    .line 280
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 283
    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getDirectoryPathForViewable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->isOldFatalError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    :cond_1
    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->deletePlayableDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 290
    const-string/jumbo v3, "nf_offline_registry"

    const-string/jumbo v4, "removeCreatingOrFailedItemsFromRegistryData deleting downloads path=%s success=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string/jumbo v0, "nf_offline_registry"

    const-string/jumbo v2, "removeCreatingOrFailedItemsFromRegistryData skip without playable directory"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 297
    :cond_3
    return-void
.end method


# virtual methods
.method public addToCurrentRegistryData(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public areDownloadsPausedByUser()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mDownloadsPausedByUser:Z

    return v0
.end method

.method public deleteDeletedList()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    return-void
.end method

.method public getAllDeletedPlayable()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 451
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 452
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 453
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    return-object v1
.end method

.method public getCurrentOsvDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mGeoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineStorageVolumeListCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrimaryProfileGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mPrimaryProfileGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistryEnumerator()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;-><init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)V

    return-object v0
.end method

.method public getRegistryState()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    return-object v0
.end method

.method public getUiStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mUiOfflineUiStorageVolumeList:Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;

    return-object v0
.end method

.method public hasAtLeastOnePlayable()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 195
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 196
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->readMetaRegistry()V

    .line 86
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->buildOfflineStorageVolumeInfoList()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    .line 88
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->getDownloadDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/.of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    const-string/jumbo v0, "nf_offline_registry"

    const-string/jumbo v3, "OfflineRegistry can\'t create directory %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 98
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->buildRegistryDataFromFile(Ljava/io/File;)Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/offline/registry/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeCreatingOrFailedItemsFromRegistryData(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)V

    .line 105
    new-instance v3, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    invoke-direct {v3, v4, v2, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;-><init>(Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;Lcom/netflix/mediaclient/service/offline/registry/RegistryData;Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->CHECKSUM_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 127
    :goto_1
    return-object v0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mUiOfflineUiStorageVolumeList:Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->update(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 114
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->SUCCESS:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 117
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 118
    iget v2, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v3, v3, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mUserSelectedRegId:I

    if-ne v2, v3, :cond_3

    .line 119
    const-string/jumbo v1, "nf_offline_registry"

    const-string/jumbo v2, "found selected regId=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 127
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    goto :goto_1

    .line 125
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->STORAGE_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mRegistryState:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    goto :goto_2
.end method

.method public persistRegistry()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persistRegistry failed count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 150
    iget-object v6, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mMetaRegistryWriteCounter:I

    .line 152
    invoke-direct {p0, v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->registryDataToJson(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Ljava/lang/String;

    move-result-object v7

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v3, v6, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflineRootStorageDirPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v3, "nf_offline_registry"

    const-string/jumbo v8, "persistRegistry writing registry=%s"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v3, v8, v9}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    invoke-static {v0, v7}, Lcom/netflix/mediaclient/service/offline/registry/RegistryFileWriter;->writeRegistryFileRecoverable(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    .line 160
    const-string/jumbo v8, ", path="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v8, ", exists="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v0, ", saved="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    if-eqz v1, :cond_4

    move v0, v3

    .line 167
    :goto_1
    if-eqz v3, :cond_0

    .line 168
    invoke-direct {p0, v7}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v6, v6, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v3, v6, v1}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->updateCheckSum(ILjava/lang/String;)V

    :cond_0
    move v1, v0

    .line 176
    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v3, v3, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mMetaRegistryWriteCounter:I

    .line 179
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForMetaRegistry(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 186
    const-string/jumbo v3, ", metaRegistrySaved="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 188
    :cond_2
    const-string/jumbo v3, "nf_offline_registry"

    const-string/jumbo v5, "persistRegistry can\'t save, allRegistriesSaved=%b metaRegistrySaved=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v3, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public recalculateOsvSpaceUsage()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 462
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->getDownloadDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getStatFsForExternalStorageDir(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_0

    .line 464
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->updateSpaceInfo(Landroid/os/StatFs;)V

    goto :goto_0

    .line 467
    :cond_1
    return-void
.end method

.method public removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 442
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 443
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public removePlayable(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Z)V
    .locals 6

    .prologue
    .line 396
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 398
    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 399
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 400
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    iget-object v5, p1, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    move-object v2, v0

    .line 405
    goto :goto_0

    .line 406
    :cond_1
    if-eqz v2, :cond_2

    .line 407
    iget-object v0, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mOfflinePlayablePersistentDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 408
    if-eqz p2, :cond_2

    .line 409
    iget-object v0, v2, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mDeletedPlayableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public setCurrentOfflineVolume(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    .line 232
    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 233
    iget v5, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->getVolumeRegId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget v4, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iput v4, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mUserSelectedRegId:I

    .line 236
    const-string/jumbo v0, "nf_offline_registry"

    const-string/jumbo v4, "setCurrentOfflineVolume success mRegId=%d"

    new-array v5, v2, [Ljava/lang/Object;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 242
    :goto_0
    return v0

    .line 241
    :cond_1
    const-string/jumbo v0, "nf_offline_registry"

    const-string/jumbo v1, "setCurrentOfflineVolume invalid selectedVolumeIndex=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    .line 242
    goto :goto_0
.end method

.method public setDownloadsPausedByUser(Z)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mDownloadsPausedByUser:Z

    .line 216
    return-void
.end method

.method public setGeoCountryCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mGeoCountryCode:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setPrimaryProfileGuid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mPrimaryProfileGuid:Ljava/lang/String;

    .line 432
    return-void
.end method
