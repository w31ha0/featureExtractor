.class Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LomoLinearSnapHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$000(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0, v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$102(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Z)Z

    .line 48
    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$100(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$200(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 50
    if-eq v0, v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$000(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;->onSnap(I)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0, v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$102(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Z)Z

    .line 56
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$300(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 58
    if-eq v0, v2, :cond_3

    .line 59
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$402(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;I)I

    .line 62
    :cond_3
    return-void
.end method
