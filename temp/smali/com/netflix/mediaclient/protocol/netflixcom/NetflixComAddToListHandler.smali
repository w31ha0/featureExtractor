.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComAddToListHandler;
.super Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;
.source "NetflixComAddToListHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method
