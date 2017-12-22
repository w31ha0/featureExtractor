.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2853
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2856
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playback canceled when not longer on WiFi"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 2858
    return-void
.end method
