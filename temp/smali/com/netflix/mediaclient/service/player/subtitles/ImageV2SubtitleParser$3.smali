.class Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageV2SubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 400
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$key:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
