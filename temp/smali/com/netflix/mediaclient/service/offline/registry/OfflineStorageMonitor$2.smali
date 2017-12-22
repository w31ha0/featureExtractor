.class Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "OfflineStorageMonitor.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$100(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Lcom/netflix/mediaclient/util/RateLimiter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/RateLimiter;->onNewEvent()Z

    move-result v1

    .line 64
    const-string/jumbo v2, "offlineStorageMonitor"

    const-string/jumbo v3, "mExtStorageMountReceiver tooFast=%b action=%s mData=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$300(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$200(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$300(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$200(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$300(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$200(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->access$500()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
