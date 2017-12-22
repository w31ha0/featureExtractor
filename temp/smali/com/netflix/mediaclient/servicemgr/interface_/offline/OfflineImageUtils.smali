.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;
.super Ljava/lang/Object;
.source "OfflineImageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "offlineImageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->copyResourceToFilesDir(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheImageLocally(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 83
    return-void
.end method

.method public static cacheProfileImage(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalDirectoryForProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->createDirectoryIfRequired(Ljava/lang/String;)Z

    .line 50
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalFileForProfileImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->cacheImageLocally(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static cacheVideoDetailsImage(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalDirectoryForVideoDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->createDirectoryIfRequired(Ljava/lang/String;)Z

    .line 55
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalFileForVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->cacheImageLocally(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static copyResourceToFilesDir(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$2;

    invoke-direct {v2, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 111
    return-void
.end method

.method public static deleteAllOfflineImages(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/img/of/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->deleteRecursive(Ljava/io/File;)Z

    .line 60
    return-void
.end method

.method public static deleteVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalFileForVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 67
    const-string/jumbo v1, "offlineImageUtils"

    const-string/jumbo v2, "deleteVideoDetailsImage result=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    :cond_0
    return-void
.end method

.method private static getLocalDirectoryForProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/img/of/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalDirectoryForVideoDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/img/of/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalFileForProfileImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalDirectoryForProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalFileForVideoDetailsImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalDirectoryForVideoDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
