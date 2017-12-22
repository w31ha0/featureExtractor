.class Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;
.super Ljava/lang/Object;
.source "OfflineStorageVolumeInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineStorageVolInfo"


# instance fields
.field private final mDownloadDir:Ljava/io/File;

.field private mFreeSpace:J

.field private mIsEmulated:Z

.field private mIsRemovable:Z

.field private mNetflixUsedSpace:J

.field private mTotalSpace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageManager;Ljava/io/File;Landroid/os/StatFs;Z)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mDownloadDir:Ljava/io/File;

    .line 44
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->updateSpaceInfo(Landroid/os/StatFs;)V

    .line 46
    if-nez p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsRemovable:Z

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {p3}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsRemovable:Z

    .line 49
    invoke-static {p3}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsEmulated:Z

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->dump()V

    .line 61
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dump()V
    .locals 6

    .prologue
    .line 91
    const-string/jumbo v0, "offlineStorageVolInfo"

    const-string/jumbo v1, "\nmDownloadDirPath=%s mTotalSpace=%d mFreeSpace=%d mNetflixUsedSpace=%d mIsRemovable=%b mIsEmulated=%b"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mDownloadDir:Ljava/io/File;

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mTotalSpace:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mFreeSpace:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mNetflixUsedSpace:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsRemovable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsEmulated:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    return-void
.end method


# virtual methods
.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mDownloadDir:Ljava/io/File;

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mFreeSpace:J

    return-wide v0
.end method

.method public getNetflixUsedSpace()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mNetflixUsedSpace:J

    return-wide v0
.end method

.method public getTotalSpace()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mTotalSpace:J

    return-wide v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mIsRemovable:Z

    return v0
.end method

.method updateSpaceInfo(Landroid/os/StatFs;)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mTotalSpace:J

    .line 86
    invoke-virtual {p1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mFreeSpace:J

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->getDirectorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->mNetflixUsedSpace:J

    .line 88
    return-void
.end method
