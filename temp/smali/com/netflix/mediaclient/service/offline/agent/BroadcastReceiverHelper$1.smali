.class Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->access$000(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Landroid/content/Intent;)V

    .line 47
    return-void
.end method
