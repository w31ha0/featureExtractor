.class public abstract Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;
.super Ljava/lang/Object;
.source "BaseInteractiveMomentsManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInteractiveMomentsManager"


# instance fields
.field assetsRequestSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field assetsResponseSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failureCount:I

.field protected fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private optionsWithSubSampling:Landroid/graphics/BitmapFactory$Options;

.field private resourceRequestCounter:I

.field private resourceResponseCounter:I

.field protected resourceToLocalCacheFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field protected urlToMediaPlayerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->options:Landroid/graphics/BitmapFactory$Options;

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->optionsWithSubSampling:Landroid/graphics/BitmapFactory$Options;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsRequestSet:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsResponseSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$008(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceResponseCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceResponseCounter:I

    return v0
.end method

.method static synthetic access$108(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->failureCount:I

    return v0
.end method


# virtual methods
.method protected areResourcesCached()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsResponseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsRequestSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cacheResources(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :cond_0
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Player Fragment is null or activity is not valid."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Invalid request to cache resource for an empty or null url."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsRequestSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;-><init>(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected cachingResourcesComplete()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected fetchImageFromCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 163
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v2, " Empty or null request url to load image from cache"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-object v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    :cond_1
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v2, "Resource not downloaded to disk cache. Ignore request to load image."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v4

    long-to-int v4, v4

    .line 182
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v6

    long-to-int v0, v6

    .line 183
    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3, v4, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 194
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading image from cache for url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    const-string/jumbo v3, "BaseInteractiveMomentsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading image from cache for url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected fetchImageFromCache(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 116
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->optionsWithSubSampling:Landroid/graphics/BitmapFactory$Options;

    .line 118
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fetchImageFromCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLocalCachedFileMetadata(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;
    .locals 2

    .prologue
    .line 299
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Request for a null url from resources map."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    goto :goto_0
.end method

.method protected initMediaPlayer(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
    .locals 7

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    .line 212
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 v3, -0x1

    :goto_0
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;

    invoke-direct {v6, p0, p1, p4}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;-><init>(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;Ljava/lang/String;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    move v2, p3

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-object v0

    .line 212
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected isActivityInvalid()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Fragment is either null or activity is finishing or destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playMediaPlayerAudio(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V
    .locals 6

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Not starting media player for background sound"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-interface {p4, p1}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 278
    if-nez v4, :cond_2

    .line 279
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    const-string/jumbo v1, "Media player audio is cached locally, but metadata information is null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-interface {p4, p1}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->initMediaPlayer(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    .line 286
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v2

    .line 288
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;JJ)V

    .line 289
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->initializeMediaPlayer()V

    goto :goto_0
.end method

.method public varargs releaseBitmaps([Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 355
    :cond_0
    return-void

    .line 348
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 349
    if-nez v2, :cond_2

    .line 348
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method protected resetCounters(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceRequestCounter:I

    .line 323
    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceResponseCounter:I

    .line 324
    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->failureCount:I

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsRequestSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsResponseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 327
    return-void
.end method

.method public setBitmapFactoryOptions(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 127
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0xa0

    if-gt v0, v3, :cond_3

    move v0, v1

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/device/yearclass/YearClass;->get(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 138
    if-eqz v3, :cond_1

    .line 145
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x7dc

    if-le v3, v4, :cond_2

    :goto_2
    mul-int/2addr v0, v2

    .line 150
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->optionsWithSubSampling:Landroid/graphics/BitmapFactory$Options;

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    move v2, v1

    .line 145
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public stopAudioPlayback(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 402
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->clearCallbacks()V

    .line 404
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseMediaPlayer()V

    goto :goto_0
.end method
