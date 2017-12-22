.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;
.super Ljava/lang/Object;
.source "TransportData.java"


# instance fields
.field mDstIP:Ljava/lang/String;

.field mRtt:I

.field mSrcIP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;->mSrcIP:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;->mDstIP:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;->mRtt:I

    .line 16
    return-void
.end method
