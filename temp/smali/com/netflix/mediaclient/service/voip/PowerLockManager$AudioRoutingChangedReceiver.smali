.class Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerLockManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/PowerLockManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;->this$0:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/voip/PowerLockManager;Lcom/netflix/mediaclient/service/voip/PowerLockManager$1;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;-><init>(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Wired headset state changed..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;->this$0:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->access$100(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :cond_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Bluetooth headset state changed..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;->this$0:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->access$100(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V

    goto :goto_0
.end method
