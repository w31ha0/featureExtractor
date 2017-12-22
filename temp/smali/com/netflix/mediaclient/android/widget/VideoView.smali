.class public Lcom/netflix/mediaclient/android/widget/VideoView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "VideoView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/widget/AdvancedImageView;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = "EMPTY"

.field public static final IMAGE_LOADED:Ljava/lang/String; = "IMAGE"

.field private static final TAG:Ljava/lang/String; = "VideoView"

.field public static final TEXT_PLACEHOLDER_LOADED:Ljava/lang/String; = "TEXT"


# instance fields
.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field private isHorizontal:Z

.field private mCurrentState:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

.field private mVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private useCallbackAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    .line 53
    const-string/jumbo v0, "EMPTY"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string/jumbo v0, "EMPTY"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string/jumbo v0, "EMPTY"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 69
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setFocusable(Z)V

    .line 76
    const v0, 0x7f020256

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setBackgroundResource(I)V

    .line 79
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->useCallbackAnimation:Z

    .line 81
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->useCallbackAnimation:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 82
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->useCallbackAnimation:Z

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setPressedStateHandlerEnabled(Z)V

    .line 83
    return-void
.end method

.method private renderTextOnPlaceholder()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 97
    new-instance v1, Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setMaxLines(I)V

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setTextPadding(IIII)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setTextSize(I)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->getPlaceholderResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setBackground(Landroid/content/Context;I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TitleDrawable;->setVideoTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getBoxArtUIState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->isHorizontal:Z

    if-eqz v1, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-static {v1, p1, v2, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/VideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->onViewRecycled()V

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public onViewRecycled()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->onViewRecycled()V

    .line 117
    invoke-static {p0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->cancelImageDrawableWithCrossFade(Landroid/widget/ImageView;)V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public setClickListener(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 87
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    if-eqz p1, :cond_0

    .line 201
    const-string/jumbo v0, "IMAGE"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 203
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/TitleDrawable;

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "TEXT"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 187
    const-string/jumbo v0, "IMAGE"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "EMPTY"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIsHorizontal(Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->isHorizontal:Z

    .line 91
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 123
    if-eqz p2, :cond_0

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 128
    :cond_0
    const-string/jumbo v0, "EMPTY"

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mCurrentState:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 132
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/android/widget/VideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 138
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_4

    move v7, v6

    :goto_1
    move-object v1, p0

    .line 136
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8388;->shouldShowTextOnPlaceholder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->isImageLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->mTitle:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->renderTextOnPlaceholder()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->setVideoId(Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getTitleFromEasterEggMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iput-boolean v8, v0, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->longClickAnimation:Z

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->onLongClick(Landroid/view/View;)Z

    .line 161
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v8

    .line 133
    goto :goto_0

    :cond_4
    move v7, v8

    .line 138
    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 35
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/VideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
