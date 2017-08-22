.class Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollingRunnable"
.end annotation


# instance fields
.field private final mRemovedViews:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mopub/nativeads/ImpressionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mopub/nativeads/ImpressionTracker;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 173
    .local v2, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/TimestampWrapper;

    .line 176
    .local v1, "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;"
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$200(Lcom/mopub/nativeads/ImpressionTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v5

    iget-wide v6, v1, Lcom/mopub/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    iget-object v3, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/ImpressionInterface;

    .line 178
    invoke-interface {v3}, Lcom/mopub/nativeads/ImpressionInterface;->getImpressionMinTimeViewed()I

    move-result v3

    .line 176
    invoke-virtual {v5, v6, v7, v3}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->hasRequiredTimeElapsed(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/ImpressionInterface;

    invoke-interface {v3, v2}, Lcom/mopub/nativeads/ImpressionInterface;->recordImpression(Landroid/view/View;)V

    .line 183
    iget-object v3, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v3, Lcom/mopub/nativeads/ImpressionInterface;

    invoke-interface {v3}, Lcom/mopub/nativeads/ImpressionInterface;->setImpressionRecorded()V

    .line 186
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;>;"
    .end local v1    # "timestampWrapper":Lcom/mopub/nativeads/TimestampWrapper;, "Lcom/mopub/nativeads/TimestampWrapper<Lcom/mopub/nativeads/ImpressionInterface;>;"
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 190
    .restart local v2    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v4, v2}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 192
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->mRemovedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v3}, Lcom/mopub/nativeads/ImpressionTracker;->access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;->this$0:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v3}, Lcom/mopub/nativeads/ImpressionTracker;->scheduleNextPoll()V

    .line 197
    :cond_3
    return-void
.end method
