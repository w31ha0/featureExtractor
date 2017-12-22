.class Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;
.super Ljava/lang/Object;
.source "ExoPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->access$000(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->access$000(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->cancelNotification()V

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;->access$002(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    .line 331
    :cond_0
    return-void
.end method
