.class Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisibilityRunnable"
.end annotation


# instance fields
.field private final mInvisibleViews:Ljava/util/ArrayList;
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

.field private final mVisibleViews:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/mopub/nativeads/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/VisibilityTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mopub/nativeads/VisibilityTracker;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 238
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mopub/nativeads/VisibilityTracker;->access$002(Lcom/mopub/nativeads/VisibilityTracker;Z)Z

    .line 239
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v5}, Lcom/mopub/nativeads/VisibilityTracker;->access$100(Lcom/mopub/nativeads/VisibilityTracker;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 241
    .local v4, "view":Landroid/view/View;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;

    iget v2, v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;->mMinViewablePercent:I

    .line 242
    .local v2, "minPercentageViewed":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;

    iget v1, v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;->mMaxInvisiblePercent:I

    .line 243
    .local v1, "maxInvisiblePercent":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;

    iget-object v3, v5, Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;->mRootView:Landroid/view/View;

    .line 245
    .local v3, "rootView":Landroid/view/View;
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v5}, Lcom/mopub/nativeads/VisibilityTracker;->access$200(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v2}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v5}, Lcom/mopub/nativeads/VisibilityTracker;->access$200(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 248
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/mopub/nativeads/VisibilityTracker$TrackingInfo;>;"
    .end local v1    # "maxInvisiblePercent":I
    .end local v2    # "minPercentageViewed":I
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v5}, Lcom/mopub/nativeads/VisibilityTracker;->access$300(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 253
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-static {v5}, Lcom/mopub/nativeads/VisibilityTracker;->access$300(Lcom/mopub/nativeads/VisibilityTracker;)Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 257
    :cond_3
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v5, p0, Lcom/mopub/nativeads/VisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 259
    return-void
.end method
