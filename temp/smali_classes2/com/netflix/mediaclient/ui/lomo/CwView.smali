.class public Lcom/netflix/mediaclient/ui/lomo/CwView;
.super Landroid/widget/RelativeLayout;
.source "CwView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CW_IMG_HEIGHT_TO_WIDTH_RATIO:F = 0.5625f

.field private static final TAG:Ljava/lang/String; = "CwView"


# instance fields
.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field protected img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected info:Landroid/view/View;

.field protected final onClickListener:Landroid/view/View$OnClickListener;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field protected progress:Landroid/widget/ProgressBar;

.field protected title:Landroid/widget/TextView;

.field protected video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/CwView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/CwView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/CwView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/CwView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/CwView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/CwView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->init()V

    .line 68
    return-void
.end method

.method public static calculateProgress(II)I
    .locals 1

    .prologue
    .line 130
    if-lez p0, :cond_0

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f03003b

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 101
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setFocusable(Z)V

    .line 76
    const v0, 0x7f020256

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setBackgroundResource(I)V

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 80
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v1, 0x7f100174

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f10016f

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 85
    const v1, 0x7f100173

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->progress:Landroid/widget/ProgressBar;

    .line 86
    const v1, 0x7f100171

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f100170

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setInfoViewId(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 112
    return-void
.end method

.method public setTitle(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900f3

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900f2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 139
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    .line 140
    if-eqz p2, :cond_0

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 144
    :cond_0
    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setTitle(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V

    .line 150
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_2

    move v7, v6

    .line 151
    :goto_0
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getRuntime()I

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->calculateProgress(II)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->ContinueWatching:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;->playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->info:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 167
    :cond_1
    return-void

    :cond_2
    move v7, v8

    .line 152
    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 31
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
