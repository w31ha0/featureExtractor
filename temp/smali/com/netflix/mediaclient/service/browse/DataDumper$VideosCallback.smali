.class Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "DataDumper.java"


# instance fields
.field private final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

.field private final todo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/browse/DataDumper;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 96
    iput-object p3, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->todo:Ljava/util/List;

    .line 97
    return-void
.end method

.method private handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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
    .line 122
    const-string/jumbo v0, "DataDumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got videos for lomo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "DataDumper"

    const-string/jumbo v1, "Bummer!  Invalid status code during data dump :("

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo v0, "DataDumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$202(Lcom/netflix/mediaclient/service/browse/DataDumper;Z)Z

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->todo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->todo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string/jumbo v0, "DataDumper"

    const-string/jumbo v1, "--LoMo data collection complete--"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$000(Lcom/netflix/mediaclient/service/browse/DataDumper;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$300(Lcom/netflix/mediaclient/service/browse/DataDumper;Ljava/util/LinkedHashMap;)V

    .line 142
    :goto_1
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$000(Lcom/netflix/mediaclient/service/browse/DataDumper;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->todo:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    const-string/jumbo v0, "DataDumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remaining request count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->todo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$200(Lcom/netflix/mediaclient/service/browse/DataDumper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
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
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$200(Lcom/netflix/mediaclient/service/browse/DataDumper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
