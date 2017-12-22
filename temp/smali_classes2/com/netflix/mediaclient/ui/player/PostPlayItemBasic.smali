.class public Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;
.super Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.source "PostPlayItemBasic.java"


# instance fields
.field private displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

.field private playButton:Landroid/widget/ImageView;

.field private postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f1002e4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 38
    const v0, 0x7f1002e1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    .line 39
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playAction(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recommendations"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->setSelected(Z)V

    .line 84
    return-void

    .line 81
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected startTimer(I)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected stopTimer()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playAction:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    .line 51
    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    .line 49
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 59
    :cond_0
    if-eqz p5, :cond_2

    .line 60
    invoke-virtual {p0, p5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recommendations"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
