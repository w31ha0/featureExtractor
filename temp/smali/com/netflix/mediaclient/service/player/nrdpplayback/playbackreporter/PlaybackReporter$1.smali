.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;
.super Ljava/lang/Object;
.source "PlaybackReporter.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

.field final synthetic val$movieTime:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;J)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->val$movieTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderStreamSwitch(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 999
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->val$movieTime:J

    iget-wide v4, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 1000
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/RenderStreamSwitch;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    iget-object v6, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    iget-object v7, p1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v7, v7, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    iget-object v8, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget v8, v8, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    int-to-long v8, v8

    iget-object v10, p1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget v10, v10, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    int-to-long v10, v10

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/RenderStreamSwitch;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJZ)V

    .line 1002
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: renderStreamSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/RenderStreamSwitch;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iget-object v1, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    iget-object v1, p2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$502(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;I)I

    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    invoke-static {v0, v12}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->access$602(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;Z)Z

    .line 1007
    return-void
.end method
