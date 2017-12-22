.class Lcom/netflix/mediaclient/service/NetflixService$13;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$13;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1794
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "mNetworkChangeReceiver onReceive"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$13;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$13;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$2600(Lcom/netflix/mediaclient/service/NetflixService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1796
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$13;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2500(Lcom/netflix/mediaclient/service/NetflixService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$13;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$2600(Lcom/netflix/mediaclient/service/NetflixService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1797
    return-void
.end method
