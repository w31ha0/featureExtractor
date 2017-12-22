.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;
.super Ljava/lang/Object;
.source "RenderingStreamInfo.java"


# instance fields
.field mMoffms:J

.field mServer:I

.field mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

.field manifestSwitch:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;JIZ)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    .line 16
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    .line 17
    iput p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    .line 18
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->manifestSwitch:Z

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RenderingStreamInfo{mStreamData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMoffms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
