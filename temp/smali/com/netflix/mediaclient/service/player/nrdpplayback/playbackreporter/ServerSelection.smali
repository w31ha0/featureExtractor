.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;
.super Ljava/lang/Object;
.source "ServerSelection.java"


# instance fields
.field mBitrate:I

.field mConfidence:J

.field mDuration:J

.field mReason:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

.field mServer:I

.field mThroughput:I

.field mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->SERVER_UNKNOWN:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mReason:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 16
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mTime:J

    .line 17
    return-void
.end method
