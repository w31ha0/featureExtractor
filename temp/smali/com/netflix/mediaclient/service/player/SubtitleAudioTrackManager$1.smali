.class Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;
.super Ljava/lang/Object;
.source "SubtitleAudioTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

.field final synthetic val$subTrack:Lcom/netflix/mediaclient/media/SubtitleTrackData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;Lcom/netflix/mediaclient/media/SubtitleTrackData;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->val$subTrack:Lcom/netflix/mediaclient/media/SubtitleTrackData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$200(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->val$subTrack:Lcom/netflix/mediaclient/media/SubtitleTrackData;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$000(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)F

    move-result v3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$100(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager$1;->this$0:Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->access$100(Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->changeSubtitle(Lcom/netflix/mediaclient/media/SubtitleTrackData;FJJZ)V

    .line 95
    return-void
.end method
