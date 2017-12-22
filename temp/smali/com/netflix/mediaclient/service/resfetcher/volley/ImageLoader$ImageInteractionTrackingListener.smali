.class public abstract Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;


# instance fields
.field private hasRegistered:Z

.field protected final imgUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field protected final view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 374
    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->imgUrl:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInteractiveTrackers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    .line 407
    sget-object v2, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    invoke-virtual {v0, p0, v2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInteractiveTrackers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    .line 398
    invoke-virtual {v0, p0, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public register(Lcom/android/volley/Request$Priority;)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mInteractiveTrackers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;

    .line 387
    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2, p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->shouldTrack(Landroid/view/View;Lcom/android/volley/Request$Priority;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p0, v2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->registerListener(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;Landroid/widget/ImageView;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    .line 392
    return-void
.end method
