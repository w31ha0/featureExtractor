.class Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseCryptoManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$1;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 609
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager$PlaybackWatcherReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/BaseCryptoManager;->mPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
