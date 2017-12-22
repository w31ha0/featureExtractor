.class public Lcom/netflix/mediaclient/ui/lomo/CwTestView;
.super Lcom/netflix/mediaclient/ui/lomo/CwView;
.source "CwTestView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/CwView;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CwTestView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f03003a

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public setInfoViewId(I)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 53
    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 60
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_1

    move v7, v6

    .line 59
    :goto_0
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 63
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getRuntime()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getRuntime()I

    move-result v1

    div-int v8, v0, v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isDirectToPlayback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/CwTestView;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_1
    return-void

    :cond_1
    move v7, v8

    .line 60
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 21
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
