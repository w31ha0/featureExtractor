.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    .line 1259
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1260
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1265
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1267
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Error status code fetching data - showing errors view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$5200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    .line 1292
    :goto_0
    return-void

    .line 1273
    :cond_0
    if-nez p1, :cond_1

    .line 1274
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "No details in response!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$5300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    goto :goto_0

    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iput-object p1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->epDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 1280
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->updateSynopsis:Z

    .line 1282
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    .line 1284
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    if-lez v1, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$5402(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Z)Z

    .line 1285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$5400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->access$5500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V

    .line 1291
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showViews()V

    goto :goto_0

    .line 1284
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1288
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails$FetchBookmarkCallback;->this$1:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;->access$5600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;)V

    goto :goto_2
.end method
