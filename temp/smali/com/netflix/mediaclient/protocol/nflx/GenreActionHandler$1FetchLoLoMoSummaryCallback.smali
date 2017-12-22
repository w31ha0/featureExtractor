.class Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "GenreActionHandler.java"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final genreId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->this$0:Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->genreId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 56
    return-void
.end method


# virtual methods
.method public onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 60
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v8, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    .line 62
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;->getNumLoMos()I

    move-result v1

    const-string/jumbo v4, ""

    .line 63
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->genreId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->name()Ljava/lang/String;

    move-result-object v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v8, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 66
    return-void
.end method
