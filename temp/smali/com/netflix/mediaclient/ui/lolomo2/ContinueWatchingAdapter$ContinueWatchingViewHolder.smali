.class Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;
.source "ContinueWatchingAdapter.java"


# instance fields
.field private final container:Landroid/widget/FrameLayout;

.field private final cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

.field private loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/lomo/CwView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 166
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->container:Landroid/widget/FrameLayout;

    .line 168
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

    .line 169
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    return-void
.end method


# virtual methods
.method bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

    move-object v1, p2

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 180
    return-void
.end method

.method doTrackingIfVisibleOnScreen()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public loading(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;IZ)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->cwView:Lcom/netflix/mediaclient/ui/lomo/CwView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loadingIndicator:Lcom/netflix/mediaclient/android/fragment/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;->setVisibility(I)V

    .line 185
    return-void
.end method
