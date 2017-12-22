.class Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;
.super Ljava/lang/Object;
.source "CommonCdnLogBlobData.java"


# instance fields
.field final mDownloadableId:Ljava/lang/String;

.field final mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field final mDxId:Ljava/lang/String;

.field final mManifestPlaybackContextId:Ljava/lang/String;

.field final mOxId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mOxId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDxId:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableType:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 24
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableId:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mManifestPlaybackContextId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;
    .locals 6

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDxId:Ljava/lang/String;

    .line 33
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;->getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method
