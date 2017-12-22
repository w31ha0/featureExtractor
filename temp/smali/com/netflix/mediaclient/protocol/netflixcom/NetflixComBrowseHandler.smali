.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;
.super Ljava/lang/Object;
.source "NetflixComBrowseHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;


# static fields
.field private static final GENRE_SUFFIX:Ljava/lang/String; = "genre"

.field private static final TAG:Ljava/lang/String; = "NetflixComBrowseHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler$1FetchLoLoMoSummaryCallback;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method

.method private isGenreLink(Ljava/util/List;)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const-string/jumbo v2, "genre"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canHandle(Ljava/util/List;)Z
    .locals 3
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

    .line 29
    const/4 v1, 0x0

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;->isGenreLink(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public tryHandle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 63
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->startHomeActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;->isGenreLink(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    goto :goto_0
.end method
