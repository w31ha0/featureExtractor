.class Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;I)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->val$size:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 269
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment indexes received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->val$size:I

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseSegmentIndexes([BI)V

    .line 277
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Ready to serve subtitles..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mReady:Z

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    const-string/jumbo v1, "segment.idx"

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    .line 281
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Download segment %d on start"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method
