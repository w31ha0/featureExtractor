.class Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;
.source "ProfileGateActionHandler.java"


# instance fields
.field private mStarted:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 29
    iput-wide p3, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mStarted:J

    .line 30
    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .prologue
    .line 38
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Profile gate is required."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mParamsMap:Ljava/util/Map;

    iget-wide v2, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mStarted:J

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportOnProfileGate(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createSwitchFromDeepLinking(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-object v0
.end method
