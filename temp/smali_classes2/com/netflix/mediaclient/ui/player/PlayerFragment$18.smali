.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;
.super Landroid/content/BroadcastReceiver;
.source "PlayerFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2929
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2932
    const-string/jumbo v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    .line 2935
    :cond_0
    return-void
.end method
