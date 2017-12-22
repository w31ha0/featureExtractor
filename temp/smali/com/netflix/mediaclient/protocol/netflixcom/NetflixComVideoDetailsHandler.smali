.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;
.super Ljava/lang/Object;
.source "NetflixComVideoDetailsHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;


# static fields
.field public static final DEEP_LINK:Ljava/lang/String; = "DeepLink"

.field public static final HANDLER_DETAILS_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetflixComVideoDetailsHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-string/jumbo v0, "%s://%s/%s/"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "http"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "www.netflix.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->HANDLER_DETAILS_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return-void
.end method

.method private fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler$1;-><init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 94
    return-void
.end method

.method private handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
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

    .line 35
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
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public tryHandle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2
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
    .line 47
    const-string/jumbo v0, "NetflixComVideoDetailsHandler"

    const-string/jumbo v1, "Starting Details activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-direct {p0, v0, p1, p3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
