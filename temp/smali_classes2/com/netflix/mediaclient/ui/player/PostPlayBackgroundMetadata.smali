.class public Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;
.super Lcom/netflix/mediaclient/ui/player/PostPlayBackground;
.source "PostPlayBackgroundMetadata.java"


# instance fields
.field private backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

.field private logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f1002db

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    .line 25
    const v0, 0x7f1002e8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    .line 26
    const v0, 0x7f1002e0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 27
    return-void
.end method

.method public startBackgroundAutoPan()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->startBackgroundAutoPan()V

    .line 68
    :cond_0
    return-void
.end method

.method protected startTimer()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->startTimer()V

    .line 55
    :cond_0
    return-void
.end method

.method protected stopTimer()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->stopTimer()V

    .line 62
    :cond_0
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 37
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 40
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 42
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    .line 38
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 48
    :cond_0
    return-void
.end method
