.class Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;
.super Ljava/lang/Object;
.source "PulseAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$000(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ContextUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v2, "Row#%s run at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v4}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$000(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v4}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$100(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$100(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$108(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    goto :goto_0

    .line 79
    :cond_0
    instance-of v2, v0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;

    if-eqz v2, :cond_1

    .line 80
    check-cast v0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;

    .line 81
    invoke-interface {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;->getImageView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;->getPulseDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-interface {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$AnimatedLoadingViewHolder;->getPulseDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$100(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0, v5}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$102(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;I)I

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$200(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$500(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$300(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v2}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$400(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_3
    :goto_1
    return-void

    .line 93
    :cond_4
    const-string/jumbo v0, "PulseAnimator"

    const-string/jumbo v1, "Row#%s run... wait, no RecyclerView or valid activity detected, stopping..."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v3}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$000(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getRowPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator$1;->this$0:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-static {v0, v5}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->access$202(Lcom/netflix/android/widgetry/lolomo/PulseAnimator;Z)Z

    goto :goto_1
.end method
