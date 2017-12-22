.class Lcom/netflix/mediaclient/service/NetflixService$12;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$12;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1772
    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1773
    :cond_0
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Invalid intent: "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1788
    :goto_0
    return-void

    .line 1778
    :cond_1
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "Sending show app intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$12;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$12;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/NetflixApplication;->createShowApplicationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->startActivity(Landroid/content/Intent;)V

    .line 1781
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$12;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/NetflixService$12$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/NetflixService$12$1;-><init>(Lcom/netflix/mediaclient/service/NetflixService$12;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
