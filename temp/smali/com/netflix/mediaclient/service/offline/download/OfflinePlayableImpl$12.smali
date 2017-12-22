.class final Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;


# instance fields
.field final synthetic val$listener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;

.field final synthetic val$offlinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

.field final synthetic val$playablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$listener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$playablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$offlinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseRequestDone(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$listener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1520
    :goto_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 1521
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$playablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->setDownloadStateDeleteComplete()V

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$listener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;

    if-eqz v0, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$listener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$playablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;->onDeleteCompleted(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 1527
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$offlinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    if-eqz v0, :cond_3

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1528
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$offlinePlayableListener:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$12;->val$playablePersistentData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;->onLicenseDeleteSuccessfully(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 1530
    :cond_3
    return-void

    .line 1517
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
