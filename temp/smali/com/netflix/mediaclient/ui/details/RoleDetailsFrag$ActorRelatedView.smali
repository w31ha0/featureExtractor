.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;
.super Landroid/widget/RelativeLayout;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# instance fields
.field final EXPANDED:I

.field final UNEXPANDED:I

.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field addToQueue:Landroid/widget/TextView;

.field currentPosition:I

.field duration:Landroid/widget/TextView;

.field expand:Landroid/view/View;

.field expandedGroup:Landroid/view/ViewGroup;

.field flipper:Landroid/widget/ViewFlipper;

.field genre:Landroid/widget/TextView;

.field isChecked:Z

.field private final rdpClose:Landroid/content/BroadcastReceiver;

.field showDP:Landroid/view/View;

.field storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field synopsis:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

.field title:Landroid/widget/TextView;

.field titleExpanded:Landroid/widget/TextView;

.field titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field unExpandedGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 663
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 664
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 693
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 665
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 666
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 668
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 669
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 693
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 670
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 671
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 673
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 674
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 693
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 675
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 676
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 771
    const v0, 0x7f100356

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    .line 772
    const v0, 0x7f100357

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    .line 774
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    .line 776
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    .line 777
    const v0, 0x7f100341

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 778
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 779
    const v0, 0x7f10034e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 782
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    .line 783
    const v0, 0x7f100350

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expand:Landroid/view/View;

    .line 784
    const v0, 0x7f100354

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    .line 786
    const v0, 0x7f100351

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    .line 787
    const v0, 0x7f10034d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    .line 789
    const v0, 0x7f10034c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    .line 790
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getlayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 684
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViews()V

    .line 685
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->setupExpand()V

    .line 686
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->initReceivers()V

    .line 687
    return-void
.end method

.method private initReceivers()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method private setupButtons(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;Lcom/netflix/model/branches/FalkorVideo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    :cond_0
    return-void
.end method

.method private setupExpand()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_1
    return-void
.end method

.method private updateDuration(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :cond_0
    return-void
.end method

.method private updateGenre(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getGenres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    :cond_0
    return-void
.end method

.method private updateImage(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 837
    invoke-virtual {p0, p1, v7}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 838
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 844
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 839
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->adjustHeight(Landroid/widget/ImageView;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 856
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 851
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->adjustHeight(Landroid/widget/ImageView;)V

    .line 860
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0xdc

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setColorFilter(I)V

    .line 862
    :cond_1
    return-void
.end method

.method private updateMyListState(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 813
    :cond_0
    return-void
.end method

.method private updateSynopsis(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    return-void
.end method

.method private updateTitle(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setEnabled(Z)V

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 887
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 890
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    .line 885
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 898
    :cond_2
    :goto_1
    return-void

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 895
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method addToMyListWrapper(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 719
    const-string/jumbo v0, "SPY-8691 - current profile is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    return-object v0

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 722
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_0
.end method

.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 829
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1500(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 831
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 832
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1500(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 834
    return-void
.end method

.method public getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 959
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 964
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 679
    const v0, 0x7f0300e9

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 921
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->isChecked:Z

    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 928
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 930
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 931
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 933
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 934
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 938
    :cond_2
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 940
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 2

    .prologue
    .line 796
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 798
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->currentPosition:I

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToMyListWrapper(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 801
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1400(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 803
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateMyListState(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 804
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateDetails(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 805
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->setupButtons(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 806
    return-void
.end method

.method updateDetails(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 0

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 820
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateGenre(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateSynopsis(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 822
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateDuration(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 823
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateImage(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 824
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateTitle(Lcom/netflix/model/branches/FalkorVideo;)V

    goto :goto_0
.end method
