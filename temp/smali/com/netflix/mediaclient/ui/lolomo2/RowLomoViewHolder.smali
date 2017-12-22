.class abstract Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;
.source "RowLomoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->getTrackingOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBind(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Lolomo.Lomo[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setTrackingName(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Lolomo.Lomo[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->setTrackingName(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->onBind(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method
