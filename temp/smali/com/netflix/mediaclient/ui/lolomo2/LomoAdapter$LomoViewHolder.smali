.class abstract Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
.source "LomoAdapter.java"


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 212
    return-void
.end method


# virtual methods
.method abstract bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
.end method

.method abstract doTrackingIfVisibleOnScreen()V
.end method

.method public onViewAttachedToWindow()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onViewAttachedToWindow()V

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$LomoViewHolder;->doTrackingIfVisibleOnScreen()V

    .line 218
    return-void
.end method
