.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LolomoRecyclerViewAdapter.java"


# instance fields
.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final numItems:I

.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Landroid/content/Context;JI)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    .line 436
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 437
    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->requestId:J

    .line 438
    iput p5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->numItems:I

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 440
    return-void
.end method

.method private update(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$302(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z

    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$002(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$400(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$400(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 465
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$500(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 466
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Ignoring stale onLoMosFetched callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->numItems:I

    if-ge v0, v1, :cond_3

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$302(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z

    .line 474
    :cond_3
    if-eqz p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->access$600(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method


# virtual methods
.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->update(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 453
    return-void
.end method

.method public onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;->update(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 447
    return-void
.end method
