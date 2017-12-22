.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComBrowseHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$genreId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$genreId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 84
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v8, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;->getNumLoMos()I

    move-result v1

    const-string/jumbo v4, ""

    .line 86
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$genreId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->name()Ljava/lang/String;

    move-result-object v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v8, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 92
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->startHomeActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 89
    const-string/jumbo v0, "NetflixComBrowseHandler"

    const-string/jumbo v1, "Couldn\'t fetch genre details, launching HomeActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
