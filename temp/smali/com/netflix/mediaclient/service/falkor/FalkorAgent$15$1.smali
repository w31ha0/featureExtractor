.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

.field final synthetic val$lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field final synthetic val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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
    .line 1264
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V

    .line 1266
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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
    .line 1258
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V

    .line 1260
    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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
    .line 1252
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15$1;->val$lomoRequestCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V

    .line 1254
    return-void
.end method
