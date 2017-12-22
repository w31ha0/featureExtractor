.class Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;
.source "AddToMyListActionHandler.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method protected getActionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "msg_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
