.class Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;
.super Ljava/lang/Object;
.source "OfflineStorageVolumeImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;


# instance fields
.field private final mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

.field final mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

.field final mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;Lcom/netflix/mediaclient/service/offline/registry/RegistryData;Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    .line 73
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    .line 75
    return-void
.end method


# virtual methods
.method getDownloadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetflixUsedSpace()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->getNetflixUsedSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSpace()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method getVolumeRegId()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    return v0
.end method

.method public isCurrentlySelected()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mMetaRegistry:Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->isCurrentlySelected(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Z

    move-result v0

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mOfflineStorageVolumeInfo:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;->isRemovable()Z

    move-result v0

    return v0
.end method
