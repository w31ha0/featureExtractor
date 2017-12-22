.class final Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;
.super Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;
.source "LolomoTracking.java"


# instance fields
.field final synthetic val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;)V
    .locals 0

    .prologue
    .line 90
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->originatedFrom:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 101
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$100()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 102
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$100()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    neg-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$100()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    sub-float v3, v5, v3

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 105
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$100()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    neg-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$100()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v2, v2

    sub-float/2addr v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_1

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->basicVideo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking;->access$200(Landroid/content/Context;Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iput-object v7, v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iput-boolean v1, v2, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->videoPresentationReported:Z

    .line 123
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$1;->val$holder:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;

    iput-object v7, v1, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$BoxArtViewHolder;->lastPresentationReportingCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoTracking$PresentationReportingCallback;

    throw v0

    .line 122
    :catchall_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
