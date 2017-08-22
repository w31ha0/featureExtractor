.class final Lcom/mopub/nativeads/NativeImageHelper$1;
.super Ljava/lang/Object;
.source "NativeImageHelper.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$imageListener:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageListener:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 69
    const-string v1, "Failed to download a native ads image:"

    invoke-static {v1, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 71
    .local v0, "anyPreviousErrors":Z
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageListener:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "imageContainer"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 61
    .local v0, "count":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$anyFailures:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/mopub/nativeads/NativeImageHelper$1;->val$imageListener:Lcom/mopub/nativeads/NativeImageHelper$ImageListener;

    invoke-interface {v1}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesCached()V

    .line 65
    .end local v0    # "count":I
    :cond_0
    return-void
.end method
