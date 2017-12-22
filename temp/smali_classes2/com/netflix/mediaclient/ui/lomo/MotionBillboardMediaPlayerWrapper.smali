.class public Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;
.super Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
.source "MotionBillboardMediaPlayerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionBillboardMediaPlayerWrapper"


# direct methods
.method public constructor <init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 31
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->videoSurface:Landroid/view/Surface;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->surfaceReady:Z

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->localUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 53
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 54
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->offset:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->length:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 55
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    const/16 v1, 0x12

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 57
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_0
    if-le p2, p3, :cond_1

    .line 67
    int-to-float v0, p2

    div-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 71
    :goto_1
    div-int/lit8 v1, p2, 0x2

    .line 72
    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 74
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;->initializeMediaPlayer()V

    .line 79
    return-void

    .line 58
    :catch_0
    move-exception v0

    move v1, v7

    move v2, v7

    .line 59
    :goto_2
    const-string/jumbo v3, "SPY-9199 Failed to retrieve MediaMetadata"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    move v1, v7

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move v1, v7

    move v2, v7

    goto :goto_2

    :catch_4
    move-exception v0

    move v1, v7

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v6

    goto :goto_1
.end method
