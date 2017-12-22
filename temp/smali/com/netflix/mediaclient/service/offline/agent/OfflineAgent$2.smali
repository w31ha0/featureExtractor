.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompletedSuccess(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 5

    .prologue
    .line 182
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "onDownloadCompletedSuccess playableId=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 185
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 186
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDownloadedSuccessfully(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 188
    return-void
.end method

.method public onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 164
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onInitialized playableId=%s status=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onInitialized no longer available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLicenseDeleteSuccessfully(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->requestSaveToRegistry()V

    .line 227
    return-void
.end method

.method public onNetworkError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 174
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "nf_offlineAgent"

    const-string/jumbo v2, "onNetworkError playableId=%s status=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onNetworkError(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onProgress(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPercentageDownloaded()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    .line 193
    return-void
.end method

.method public onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 202
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onStorageError status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_VIEWABLE_DIRECTORY_MISSING:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;->onStorageAddedOrRemoved()V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onStorageError()V

    goto :goto_0
.end method

.method public onUnRecoverableError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 216
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onUnRecoverableError playableId=%s status=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onUnRecoverableError(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 221
    return-void
.end method

.method public requestSaveToRegistry()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 198
    return-void
.end method
