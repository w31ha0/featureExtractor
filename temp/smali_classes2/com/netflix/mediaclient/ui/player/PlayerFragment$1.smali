.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "PlayerFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 442
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "mediaSession onPause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 444
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 436
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "mediaSession  onPlay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 438
    return-void
.end method
