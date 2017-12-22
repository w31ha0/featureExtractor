.class public abstract Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;
.super Ljava/lang/Object;
.source "InteractiveTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InteractiveTracker"


# instance fields
.field private hasCompleted:Z

.field private interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

.field private onscreenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isNowInteractive()V

    return-void
.end method

.method private clearImageListeners()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 97
    return-void
.end method

.method private isNowInteractive()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNowInteractive() -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "... but there was no listener attached so tracking has not completed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->hasCompleted:Z

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;->onInteractive()V

    goto :goto_0
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->hasCompleted:Z

    return v0
.end method

.method public onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImageLoaded -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ... type? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    if-ne p2, v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, ".... wasn\'t in onscreenListeners"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    if-eq p2, v0, :cond_0

    .line 111
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "onInteractive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isNowInteractive()V

    goto :goto_0
.end method

.method public registerListener(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;Landroid/widget/ImageView;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "InteractiveTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->onscreenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$1;-><init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    return-object p1
.end method

.method public setListener(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->clearImageListeners()V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->interactiveListener:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;

    .line 35
    const-string/jumbo v0, "InteractiveTracker"

    const-string/jumbo v1, "-------------- Listener set --------------"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v1, "InteractiveTracker"

    const-string/jumbo v2, "-------------- Listener %s -> %s --------------"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, " CLEARED"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    return-void

    .line 36
    :cond_0
    const-string/jumbo v0, "SET"

    goto :goto_0
.end method

.method public shouldTrack(Landroid/view/View;Lcom/android/volley/Request$Priority;)Z
    .locals 1

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
