.class final Lcom/netflix/mediaclient/util/MdxUtils$2;
.super Ljava/lang/Object;
.source "MdxUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v1

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 363
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 364
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPreplayOrPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->stop(Z)V

    .line 366
    invoke-interface {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IMdx;->switchPlaybackFromTarget(Ljava/lang/String;I)V

    .line 367
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->notifyPlayingBackLocal()V

    .line 369
    :cond_0
    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    .line 370
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;->disconnectFromCast()V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 378
    :cond_2
    return-void
.end method
