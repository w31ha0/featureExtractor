.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;
.source "EpisodesFrag.java"


# instance fields
.field delayedClickListener:Landroid/view/View$OnClickListener;

.field private episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private episodeDate:Landroid/widget/TextView;

.field private episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V

    .line 305
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->onClickListener:Landroid/view/View$OnClickListener;

    .line 316
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    return-object v0
.end method


# virtual methods
.method protected createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 367
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method protected findViews()V
    .locals 4

    .prologue
    .line 320
    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDate:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 324
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x3

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v1, v1

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 330
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->findViews()V

    .line 331
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->setChecked(Z)V

    .line 358
    return-void
.end method

.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->playButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->playButton:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->delayedClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->delayedClickListener:Landroid/view/View$OnClickListener;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->delayedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->playButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 379
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/lomo/EpisodeCwView;

    invoke-static {v0, p1, v1, v8}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeBif:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 394
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move v7, v6

    .line 392
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDate:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDate:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeDate:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :cond_3
    :goto_0
    return-void

    .line 402
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->createEpisodeDuration(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
