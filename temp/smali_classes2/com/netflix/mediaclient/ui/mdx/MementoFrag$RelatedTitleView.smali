.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;
.super Landroid/widget/RelativeLayout;
.source "MementoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 686
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->init()V

    .line 688
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->getlayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 696
    return-void
.end method

.method private updateInsetImage(I)V
    .locals 8

    .prologue
    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/model/branches/MementoVideoSwatch;

    .line 759
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 761
    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v2, v7, Lcom/netflix/model/branches/MementoVideoSwatch;->boxArtUrl:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "MementoRelatedTitleView"

    .line 767
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    .line 762
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 770
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->adjustInsetHeight(Landroid/widget/ImageView;)V

    .line 772
    if-eqz v1, :cond_0

    .line 773
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;

    invoke-direct {v0, p0, v7}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;Lcom/netflix/model/branches/MementoVideoSwatch;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    :cond_0
    return-void
.end method

.method private updateMainImage(I)V
    .locals 8

    .prologue
    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/model/branches/MementoVideoSwatch;

    .line 717
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 722
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    .line 723
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v2, v7, Lcom/netflix/model/branches/MementoVideoSwatch;->storyArtUrl:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "MementoRelatedTitleView"

    .line 728
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    .line 723
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 733
    const v0, 0x7f100021

    iget-object v2, v7, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setTag(ILjava/lang/Object;)V

    .line 734
    const v0, 0x7f100020

    iget-object v2, v7, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setTag(ILjava/lang/Object;)V

    .line 735
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    :cond_1
    return-void
.end method


# virtual methods
.method protected adjustInsetHeight(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3fb70a3d    # 1.43f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 790
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 691
    const v0, 0x7f03002e

    return v0
.end method

.method updateDetails(I)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->updateMainImage(I)V

    .line 700
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->updateInsetImage(I)V

    .line 701
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->updateMoreInfo(I)V

    .line 702
    return-void
.end method

.method updateMoreInfo(I)V
    .locals 6

    .prologue
    .line 706
    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 707
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$RelatedTitleView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$400(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/branches/MementoVideoSwatch;

    .line 709
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090131

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionName:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_0
    return-void
.end method
