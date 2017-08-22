.class Lcom/mopub/nativeads/ImpressionTracker$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/ImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/nativeads/VisibilityTracker;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/ImpressionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/ImpressionTracker;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "invisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 75
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/mopub/nativeads/ImpressionTracker;->access$000(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/ImpressionInterface;

    .line 76
    .local v0, "impressionInterface":Lcom/mopub/nativeads/ImpressionInterface;
    if-nez v0, :cond_1

    .line 77
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v4, v2}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/TimestampWrapper;

    .line 83
    .local v1, "polling":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;"
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/mopub/nativeads/TimestampWrapper;

    invoke-direct {v5, v0}, Lcom/mopub/nativeads/TimestampWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v0    # "impressionInterface":Lcom/mopub/nativeads/ImpressionInterface;
    .end local v1    # "polling":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;"
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 92
    .restart local v2    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v4}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$1;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v3}, Lcom/mopub/nativeads/ImpressionTracker;->scheduleNextPoll()V

    .line 95
    return-void
.end method
