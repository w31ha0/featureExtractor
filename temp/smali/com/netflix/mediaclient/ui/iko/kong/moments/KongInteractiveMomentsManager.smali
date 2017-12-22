.class public Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;
.super Ljava/lang/Object;
.source "KongInteractiveMomentsManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;


# static fields
.field private static final ANIMATOR_PROPERTY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final TAG:Ljava/lang/String; = "KongInteractiveMomentsManager"


# instance fields
.field private bottomPanelVisible:Z

.field private data:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

.field private failureCount:I

.field private hasInteractiveMoments:Z

.field private image:Landroid/widget/ImageView;

.field private imageBackground:Landroid/widget/ImageView;

.field private imageContainer:Landroid/view/ViewGroup;

.field private interactiveMoments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;",
            ">;"
        }
    .end annotation
.end field

.field private isShowingInteractiveMoment:Z

.field private mBottomPanelHeight:I

.field private mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field private mSoundPool:Landroid/media/SoundPool;

.field private momentsDisplayTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resourceRequestCounter:I

.field private resourceResponseCounter:I

.field private resourceToLocalCacheFileMap:Ljava/util/Map;
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

.field private svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceResponseCounter:I

    return v0
.end method

.method static synthetic access$008(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceResponseCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceResponseCounter:I

    return v0
.end method

.method static synthetic access$108(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->failureCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceRequestCounter:I

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->loadViewResources()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->loadSoundPoolVo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private cacheResources(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :cond_0
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Player Fragment is null or activity is not valid."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Invalid request to cache resource for an empty or null url."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v2, " Empty or null request url to load image from cache"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-object v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 329
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    :cond_1
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v2, "Resource not downloaded to disk cache. Ignore request to load image."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    .line 337
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v4

    long-to-int v4, v4

    .line 342
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v6

    long-to-int v0, v6

    .line 343
    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 352
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string/jumbo v0, "KongInteractiveMomentsManager"

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

    .line 347
    :catch_1
    move-exception v0

    .line 348
    const-string/jumbo v3, "KongInteractiveMomentsManager"

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

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private loadSoundPoolVo(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v7, -0x1

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 271
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sound is null. Request to load url failed for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return v7

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    .line 276
    if-eqz v4, :cond_0

    .line 279
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v9

    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const/4 v0, 0x0

    .line 287
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 297
    invoke-static {v8}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    :goto_1
    move v7, v0

    .line 300
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    :goto_2
    :try_start_2
    const-string/jumbo v1, "KongInteractiveMomentsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException while loading resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    invoke-static {v0}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v7

    .line 298
    goto :goto_1

    .line 294
    :catch_1
    move-exception v1

    move-object v8, v0

    .line 295
    :goto_3
    :try_start_3
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IOException while loading resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    invoke-static {v8}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v7

    .line 298
    goto :goto_1

    .line 297
    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_4
    invoke-static {v8}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    .line 294
    :catch_2
    move-exception v0

    goto :goto_3

    .line 292
    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method private loadViewResources()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method private loadViews(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getImageBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    return-void
.end method

.method private releaseBitmapMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    .line 383
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->setImageBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 390
    return-void
.end method

.method private show(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 357
    if-nez p1, :cond_1

    .line 358
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Request to show unlocking animation on an null collection item."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->isManagerReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Resources not available to show moment. Skipping for now..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_3

    .line 367
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Already showing interactive moment. Ignore request."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_3
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    .line 372
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->loadViews(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;)V

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageBackground:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getSfxSoundPoolId()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getUnlockSfxSoundVolume()F

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getUnlockSfxSoundVolume()F

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 374
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private startCachingResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->getPreCacheableResourcesList()Ljava/util/List;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 223
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceRequestCounter:I

    .line 218
    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceResponseCounter:I

    .line 219
    iput v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->failureCount:I

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->getPreCacheableResourcesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->cacheResources(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 147
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    .line 148
    return-void
.end method

.method public init(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Player fragment is null. This should not happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 78
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 79
    const v0, 0x7f1001f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "No interactive moments view container. Exiting the decorator."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->hasInteractiveMoments:Z

    .line 85
    const v0, 0x7f1001fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageBackground:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f100071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->image:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f100075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->title:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mBottomPanelHeight:I

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mBottomPanelHeight:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mBottomPanelHeight:I

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 94
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AudioUtils;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method

.method public isManagerReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceResponseCounter:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->resourceRequestCounter:I

    if-ge v1, v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->failureCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mSoundPool:Landroid/media/SoundPool;

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->releaseBitmapMemory()V

    .line 142
    return-void
.end method

.method public onMomentsFetched(Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V
    .locals 4

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    const-string/jumbo v1, "kong"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Interactive data is null or of wrong type."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    if-nez v1, :cond_3

    .line 185
    :cond_2
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    const-string/jumbo v1, "Interactive data is null or not instance of KongInteractiveMomentsModel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_3
    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->getMoments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->hasInteractiveMoments:Z

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    .line 201
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getDurationMS()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentStartTimeMS()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentEndTimeMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->startCachingResources()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->bottomPanelVisible:Z

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->mBottomPanelHeight:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->imageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void

    .line 122
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setTimelineProgress(IZ)V
    .locals 2

    .prologue
    .line 99
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->hasInteractiveMoments:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 101
    if-ltz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->show(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 105
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->show(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->hide()V

    goto :goto_0
.end method
