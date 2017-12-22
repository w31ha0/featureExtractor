.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;
.super Landroid/os/Handler;
.source "OfflinePlayableImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    .line 1233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 1238
    const-string/jumbo v0, "nf_offlinePlayable"

    const-string/jumbo v1, "handleMessage cmd=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;

    .line 1240
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1257
    :goto_0
    return-void

    .line 1242
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1000(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    goto :goto_0

    .line 1245
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mCdnUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1100(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1248
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1251
    :pswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 1254
    :pswitch_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$BackGroundMessageHandler;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mCdnUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$1400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V

    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
