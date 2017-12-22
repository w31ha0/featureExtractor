.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;
.super Landroid/widget/RelativeLayout;
.source "MementoFrag.java"


# instance fields
.field private imageTint:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 544
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 545
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->imageTint:I

    .line 546
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->init()V

    .line 547
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->getlayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 555
    return-void
.end method

.method private updateCharacterRole(Lcom/netflix/model/branches/FalkorPerson;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 579
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 581
    if-eqz v0, :cond_2

    .line 583
    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getCharacterRoles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoCharacterRoles:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoCharacterRoles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v1}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getCharacterRoles()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 586
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->videoCharacterRoles:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 588
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v3

    .line 590
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 591
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_0

    .line 593
    const-string/jumbo v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    :goto_1
    return-void

    .line 604
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateImage(I)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/model/branches/FalkorPerson;

    .line 613
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    .line 614
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 616
    if-eqz v1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-virtual {v3}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getStill(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/model/branches/FalkorActorStill;

    move-result-object v2

    .line 618
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    if-eqz v2, :cond_2

    .line 621
    invoke-virtual {v1, v6}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorActorStill;->getStillXFocus()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCropPointXOffsetPercent(F)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 629
    invoke-virtual {v2}, Lcom/netflix/model/branches/FalkorActorStill;->getStillUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "MementoActorDetailsView"

    .line 632
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 627
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 635
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 636
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->clearColorFilter()V

    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I

    .line 651
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;

    invoke-direct {v0, p0, v7}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;Lcom/netflix/model/branches/FalkorPerson;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    :cond_1
    return-void

    .line 639
    :cond_2
    const v0, 0x7f02005d

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setImageResource(I)V

    .line 640
    invoke-virtual {v1, v9}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setCutomCroppingEnabled(Z)V

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1408(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 644
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0, v9}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1402(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/FocalPointImageView;->setColorFilter(I)V

    .line 647
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->imageTint:I

    .line 648
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getImageTint()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->imageTint:I

    return v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 550
    const v0, 0x7f03002d

    return v0
.end method

.method updateDetails(I)V
    .locals 0

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->updateTitle(I)V

    .line 559
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->updateImage(I)V

    .line 560
    return-void
.end method

.method updateTitle(I)V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorPerson;

    .line 569
    const v1, 0x7f10010c

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    if-eqz v1, :cond_0

    .line 572
    iget-object v2, v0, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    iget-object v2, v2, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->updateCharacterRole(Lcom/netflix/model/branches/FalkorPerson;)V

    .line 576
    return-void
.end method
