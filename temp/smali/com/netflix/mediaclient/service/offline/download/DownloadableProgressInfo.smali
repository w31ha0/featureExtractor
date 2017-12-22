.class Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;
.super Ljava/lang/Object;
.source "PlayableProgressInfo.java"


# instance fields
.field public mBytesOnTheDisk:J

.field public mTotalBytesToDownload:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mBytesOnTheDisk:J

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableProgressInfo;->mTotalBytesToDownload:J

    return-void
.end method
