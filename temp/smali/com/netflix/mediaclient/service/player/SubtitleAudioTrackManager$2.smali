.class Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;
.super Ljava/lang/Object;
.source "SubtitleAudioTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

.field final synthetic val$pts:J

.field final synthetic val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

.field final synthetic val$userChanged:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;JZ)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$pts:J

    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$userChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$300(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$300(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$302(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$400(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$500(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    move-result-object v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$200(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$000(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)F

    move-result v3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$100(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$pts:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$subtitleTrack:Lcom/netflix/mediaclient/media/Subtitle;

    iget-boolean v9, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->val$userChanged:Z

    invoke-static {v0, v8, v9}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$600(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->changeSubtitle(Lcom/netflix/mediaclient/media/SubtitleTrackData;FJJZ)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$2;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$500(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
