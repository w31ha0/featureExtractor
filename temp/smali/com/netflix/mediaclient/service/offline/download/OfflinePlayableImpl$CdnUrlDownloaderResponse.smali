.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"


# instance fields
.field final mCdnUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

.field final mStatus:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 1227
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$CdnUrlDownloaderResponse;->mCdnUrlDownloader:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloader;

    .line 1228
    return-void
.end method
