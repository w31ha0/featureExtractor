.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;
.super Ljava/lang/Object;
.source "StreamData.java"


# instance fields
.field mBitrate:I

.field mDlId:Ljava/lang/String;

.field mType:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mType:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 16
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    .line 17
    return-void
.end method
