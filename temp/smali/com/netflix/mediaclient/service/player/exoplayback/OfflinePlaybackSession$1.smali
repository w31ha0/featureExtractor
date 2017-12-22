.class Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 144
    invoke-interface {p5}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0, p3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "OfflinePlayback_Session"

    const-string/jumbo v1, "onManifestResponse error=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0, p4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$102(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-interface {p5}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " dbgmsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OfflinePlayback.ManifestRequestFailure"

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MANIFEST_FAILURE:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onManifestResponse failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    .line 157
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V

    goto :goto_0

    .line 150
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
