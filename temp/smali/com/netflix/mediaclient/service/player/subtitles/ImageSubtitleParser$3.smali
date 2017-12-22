.class Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

.field final synthetic val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 378
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;)V

    goto :goto_0
.end method
