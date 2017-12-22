.class Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;
.super Landroid/content/BroadcastReceiver;
.source "NrdpPlayback.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 477
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Received intent "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_SUBTITLE_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subtitle configuration is changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    .line 484
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getSubtitleAudioTrackManager()Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    const-string/jumbo v2, "lookupType"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->updateSubtitleSettingsFromQaLocalOverride(I)V

    goto :goto_0

    .line 487
    :cond_0
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_HDR_FORMAT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HDR format has changed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->clearAll()V

    .line 501
    :cond_1
    :goto_1
    return-void

    .line 491
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_AUDIO_SUBTITLE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user audio subtitle preferences have changed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->clearAll()V

    goto :goto_1
.end method
