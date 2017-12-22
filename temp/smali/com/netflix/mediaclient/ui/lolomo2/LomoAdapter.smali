.class Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;
.source "LomoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
        "<",
        "Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADING_MORE:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

.field private static final TAG:Ljava/lang/String; = "LomoAdapter"


# instance fields
.field private final mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->LOADING_MORE:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 74
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-direct {v0, p1, p0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    .line 75
    return-void
.end method

.method private doTrackingIfVisibleOnScreen()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_0

    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 202
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;

    .line 203
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->doTrackingIfVisibleOnScreen()V

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method protected getUpdateVideosCallback(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;

    const-string/jumbo v1, "LomoAdapter"

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method protected loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->setLoadingData(Z)V

    .line 93
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getFromIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getFromIndex()I

    move-result v3

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->computeEndIndex(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v5

    new-instance v7, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;

    const-string/jumbo v6, "LomoAdapter"

    invoke-direct {v7, p0, v6, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;IZ)V

    return-void
.end method

.method protected onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;IZ)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->LOADING_MORE:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V

    .line 151
    return-void
.end method

.method protected bridge synthetic onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/Video;IZ)V

    return-void
.end method

.method protected onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/Video;IZ)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V

    .line 146
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;
    .locals 4

    .prologue
    const v3, 0x7f100013

    const/4 v1, -0x2

    .line 125
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 130
    if-nez p2, :cond_0

    .line 131
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/widget/VideoView;->setId(I)V

    .line 133
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/android/widget/VideoView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LoadingMoreViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)V

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 86
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 87
    return-void
.end method

.method public onParentScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->doTrackingIfVisibleOnScreen()V

    .line 196
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 184
    if-nez p2, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->doTrackingIfVisibleOnScreen()V

    .line 188
    :cond_0
    return-void
.end method

.method protected bridge synthetic toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
