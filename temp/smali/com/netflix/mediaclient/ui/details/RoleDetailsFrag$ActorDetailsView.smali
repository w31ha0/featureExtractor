.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;
.super Landroid/widget/RelativeLayout;
.source "RoleDetailsFrag.java"


# instance fields
.field actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

.field actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

.field alias:Landroid/widget/TextView;

.field born:Landroid/widget/TextView;

.field bornLabel:Landroid/widget/TextView;

.field knownFor:Landroid/widget/TextView;

.field knownForLabel:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field onNetFlixLabel:Landroid/view/View;

.field spouse:Landroid/widget/TextView;

.field spouseLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 459
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    .line 461
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 464
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 465
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    .line 466
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 469
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 470
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->init()V

    .line 471
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 484
    const v0, 0x7f100341

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    .line 485
    const v0, 0x7f100342

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/CircleImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    .line 487
    const v0, 0x7f100346

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    .line 488
    const v0, 0x7f100345

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f10034a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    .line 490
    const v0, 0x7f100349

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    .line 491
    const v0, 0x7f100344

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    .line 492
    const v0, 0x7f100348

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f100347

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f100343

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->onNetFlixLabel:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    const v1, 0x7f10034b

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1102(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/view/View;)Landroid/view/View;

    .line 496
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->getlayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 479
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViews()V

    .line 480
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->setupCaret()V

    .line 481
    return-void
.end method

.method private setupCaret()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 502
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 504
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    :cond_0
    return-void
.end method

.method private updateActorHeadshotmage(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getHeadshotImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    iget-object v2, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    .line 579
    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getHeadshotImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFrag.ActorDetailsView.actorHeadshotImg"

    .line 582
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    .line 577
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorHeadshotImg:Lcom/netflix/mediaclient/android/widget/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateActorStillImage(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 529
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->adjustHeight(Landroid/widget/ImageView;)V

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageLoaderInfo(Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;)V

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorActorStill;->getStillXFocus()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCropPointXOffsetPercent(F)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 546
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorActorStill;->getStillUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFrag.ActorDetailsView.actorStillImg"

    .line 549
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 544
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 552
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->clearColorFilter()V

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageResource(I)V

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setColorFilter(I)V

    .line 560
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBorn(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getBorn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getBorn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->born:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->bornLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateKnownFor(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getKnownFor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getKnownFor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownForLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->knownFor:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateName(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    return-void
.end method

.method private updateSpouse(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 618
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getSpouse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getSpouse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouse:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->spouseLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 567
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 568
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 572
    :goto_1
    return-void

    .line 568
    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 474
    const v0, 0x7f0300e8

    return v0
.end method

.method updateDetails(Lcom/netflix/model/branches/FalkorPerson;Z)V
    .locals 0

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateName(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 521
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateSpouse(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateBorn(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 523
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateKnownFor(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateActorStillImage(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 525
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->updateActorHeadshotmage(Lcom/netflix/model/branches/FalkorPerson;)V

    goto :goto_0
.end method
