.class Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
.source "CryptoErrorManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isListenerDestroyed()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Offline content removed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$100(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$200(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$300(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$300(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$302(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;->this$0:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$100(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    return-void

    .line 202
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Failed to remove offline content!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
