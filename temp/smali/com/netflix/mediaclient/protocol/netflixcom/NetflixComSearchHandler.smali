.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComSearchHandler;
.super Ljava/lang/Object;
.source "NetflixComSearchHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/util/List;)Z
    .locals 1
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
    .line 16
    const/4 v0, 0x1

    return v0
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
    const/4 v2, 0x1

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 33
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    :cond_0
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->search(Landroid/app/Activity;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
