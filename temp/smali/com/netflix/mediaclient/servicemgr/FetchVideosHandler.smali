.class public Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "FetchVideosHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final end:I

.field private final requestId:J

.field private final start:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
            "<TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    .line 40
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->getRequestId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->requestId:J

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->title:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->start:I

    .line 44
    iput p5, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->end:I

    .line 49
    return-void
.end method

.method private handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->getRequestId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring stale onVideosFetched callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->onErrorResponse()V

    goto :goto_0

    .line 81
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "No videos in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->onNoVideosInResponse()V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->title:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->start:I

    iget v3, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->end:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->updateDataSet(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 67
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 61
    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 55
    return-void
.end method
