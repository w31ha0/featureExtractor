.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;
.super Landroid/content/BroadcastReceiver;
.source "PlayerFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    .line 2470
    return-void
.end method
