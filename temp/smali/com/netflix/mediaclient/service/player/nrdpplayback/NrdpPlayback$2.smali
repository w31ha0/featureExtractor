.class Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;
.super Landroid/content/BroadcastReceiver;
.source "NrdpPlayback.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 533
    if-nez p2, :cond_1

    .line 534
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 539
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "account or profile is now de-activated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->clearAll()V

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll()V

    goto :goto_0
.end method
