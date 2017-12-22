.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComProfilesHandler;
.super Ljava/lang/Object;
.source "NetflixComProfilesHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixComProfilesHandler"


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
    .line 17
    const/4 v0, 0x1

    return v0
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
    .line 22
    const-string/jumbo v0, "NetflixComProfilesHandler"

    const-string/jumbo v1, "Starting Profiles activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->startProfilesActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
