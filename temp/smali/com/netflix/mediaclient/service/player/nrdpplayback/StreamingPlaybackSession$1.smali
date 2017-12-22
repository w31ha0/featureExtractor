.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$1;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitlesQoeReport()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$1;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/SubtitleAudioTrackManager;->getSubtitlesQoeReport()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
