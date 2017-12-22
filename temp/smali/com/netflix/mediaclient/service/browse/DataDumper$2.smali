.class Lcom/netflix/mediaclient/service/browse/DataDumper$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "DataDumper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/browse/DataDumper;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$2;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8
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
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 79
    const-string/jumbo v0, "DataDumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "genres fetched, count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 82
    const-string/jumbo v0, "DataDumper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fetching videos for lomo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$2;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$000(Lcom/netflix/mediaclient/service/browse/DataDumper;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$2;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/browse/DataDumper;->access$100(Lcom/netflix/mediaclient/service/browse/DataDumper;)Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/16 v3, 0xfa

    new-instance v5, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/browse/DataDumper$2;->this$0:Lcom/netflix/mediaclient/service/browse/DataDumper;

    invoke-direct {v5, v4, v1, v6}, Lcom/netflix/mediaclient/service/browse/DataDumper$VideosCallback;-><init>(Lcom/netflix/mediaclient/service/browse/DataDumper;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/List;)V

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
