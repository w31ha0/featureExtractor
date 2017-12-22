.class final Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LolomoTracking.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 161
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->access$300(Landroid/support/v7/widget/RecyclerView;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-nez p2, :cond_0

    .line 163
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 169
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$ScrollTrackingHelper;->access$500(Landroid/support/v7/widget/RecyclerView;II)V

    .line 170
    return-void
.end method
