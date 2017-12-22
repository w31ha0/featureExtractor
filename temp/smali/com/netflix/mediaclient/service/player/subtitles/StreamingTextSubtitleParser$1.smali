.class Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "StreamingTextSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

.field final synthetic val$nameServers:[Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 136
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->handleDownloadedSubtitleData([BLjava/lang/String;[Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0
.end method
