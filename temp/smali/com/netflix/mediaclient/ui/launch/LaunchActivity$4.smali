.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "LaunchActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 741
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 742
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Delayed nflx action completed, finish activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->finish()V

    .line 750
    :cond_0
    return-void
.end method
