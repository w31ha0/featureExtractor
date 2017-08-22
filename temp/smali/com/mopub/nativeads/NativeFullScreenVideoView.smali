.class public Lcom/mopub/nativeads/NativeFullScreenVideoView;
.super Landroid/widget/RelativeLayout;
.source "NativeFullScreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;,
        Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    }
.end annotation


# instance fields
.field private final mBottomGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCachedVideoFrameView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCloseControl:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCloseControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mClosePaddingPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mCtaButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCtaHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaMarginPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaWidthPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mGradientStripHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mLoadingSpinner:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mOrientation:I

.field private final mOverlay:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlayButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPlayControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mPrivacyInformationIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPrivacyInformationIconSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mTopGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoTexture:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "orientation"    # I
    .param p3, "ctaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/TextureView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Lcom/mopub/nativeads/NativeFullScreenVideoView;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "orientation"    # I
    .param p3, "ctaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "cachedImageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "videoTexture"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "loadingSpinner"    # Landroid/widget/ProgressBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "bottomGradient"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "topGradient"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "videoProgress"    # Lcom/mopub/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "overlay"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "playButton"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "privacyInformationIcon"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "ctaButton"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14, "closeControl"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    invoke-static/range {p4 .. p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-static/range {p5 .. p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static/range {p6 .. p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static/range {p7 .. p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static/range {p8 .. p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static/range {p9 .. p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-static/range {p10 .. p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    invoke-static/range {p11 .. p11}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-static/range {p12 .. p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static/range {p13 .. p13}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static/range {p14 .. p14}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 102
    sget-object v11, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 104
    const/high16 v11, 0x43480000    # 200.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    .line 105
    const/high16 v11, 0x42280000    # 42.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    .line 106
    const/high16 v11, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    .line 107
    const/high16 v11, 0x42480000    # 50.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    .line 108
    const/high16 v11, 0x41000000    # 8.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    .line 109
    const/high16 v11, 0x42300000    # 44.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    .line 110
    const/high16 v11, 0x42480000    # 50.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    .line 111
    const/high16 v11, 0x42340000    # 45.0f

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    .line 114
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v10, "videoTextureLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/TextureView;->setId(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v11, v10}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 124
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 130
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v7, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v7, "spinnerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setId(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    new-instance v12, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 140
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v3, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v3, "bottomGradientParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0x8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getId()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    sget v14, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v14, v12, v13

    const/4 v13, 0x1

    sget v14, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v14, v12, v13

    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 148
    .local v2, "bottomGradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 151
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v9, "topGradientParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    sget v14, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v14, v12, v13

    const/4 v13, 0x1

    sget v14, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v14, v12, v13

    invoke-direct {v8, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 159
    .local v8, "topGradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 162
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v12, 0x3e8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 168
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v5, "overlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    const/high16 v12, -0x78000000

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 177
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v6, "playButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    .line 181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    sget-object v12, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 186
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    sget-object v12, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 188
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v15, v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 192
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 194
    new-instance v4, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    .line 195
    .local v4, "ctaDrawable":Lcom/mopub/mobileads/resource/CtaButtonDrawable;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 196
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 198
    :cond_0
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 203
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    new-instance v12, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v12}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v15, v15, 0x3

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    .line 210
    return-void
.end method

.method private setCachedImageVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    return-void
.end method

.method private setVideoProgressVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 320
    return-void
.end method

.method private updateControlLayouts()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x6

    .line 341
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v6, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 344
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v2, "privacyInformationIconParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v0, "closeParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    return-void

    .line 353
    :pswitch_0
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 363
    :pswitch_1
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 370
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVideoTextureLayout()V
    .locals 6

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 329
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 330
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 331
    .local v3, "newWidth":I
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_0

    .line 332
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    :cond_0
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 335
    .local v2, "newHeight":I
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    .line 336
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    :cond_1
    return-void
.end method

.method private updateViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 277
    sget-object v0, Lcom/mopub/nativeads/NativeFullScreenVideoView$1;->$SwitchMap$com$mopub$nativeads$NativeFullScreenVideoView$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateVideoTextureLayout()V

    .line 307
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateControlLayouts()V

    .line 308
    return-void

    .line 279
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 280
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 281
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 282
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 285
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 286
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 287
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 288
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 292
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 293
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 294
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 298
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 299
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 300
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getCtaButton()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    return-object v0
.end method

.method public resetProgress()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    .line 214
    return-void
.end method

.method public setCachedVideoFrame(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "cachedVideoFrame"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    return-void
.end method

.method public setCloseControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "closeControlListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method

.method public setCtaClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "ctaListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    if-ne v0, p1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 223
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 232
    iget v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 236
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    goto :goto_0
.end method

.method public setPlayControlClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "playControlListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-void
.end method

.method public setPrivacyInformationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "privacyInformationListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 3
    .param p1, "surfaceTextureListener"    # Landroid/view/TextureView$SurfaceTextureListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 241
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 243
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 244
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 246
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    .line 245
    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 248
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .param p1, "progressPercentage"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    .line 270
    return-void
.end method
