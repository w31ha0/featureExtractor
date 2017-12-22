.class public Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;
.super Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;
.source "LolomoRecyclerViewFrag_Ab7814.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;


# instance fields
.field private mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mBillboardArtGradient:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;
    .locals 4

    .prologue
    .line 43
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;-><init>()V

    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string/jumbo v0, "genre_id"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v3, "is_genre_list"

    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    :cond_0
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030092

    return v0
.end method

.method public hideBillBoard()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 93
    return-void
.end method

.method public onBillboardReceived(Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 112
    mul-int/2addr v1, p4

    div-int/2addr v1, p5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 114
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-object v2, p2

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 121
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mContent:Landroid/widget/FrameLayout;

    const v1, 0x7f1000db

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mContent:Landroid/widget/FrameLayout;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public scrollBillBoard(F)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTranslationY(F)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mUserMessageAreaView:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->setTranslationY(F)V

    .line 83
    :cond_2
    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->setupMainView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper;->getBillboardOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mLolomoRecyclerView:Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->setPadding(IIII)V

    .line 71
    :cond_0
    return-void
.end method

.method public showBillBoard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814;->mBillboardArtGradient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    return-void
.end method
