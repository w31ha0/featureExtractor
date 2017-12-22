.class Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageV2SubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;I)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->val$size:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 282
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Segment indexes received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->val$size:I

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseSegmentIndexes([BI)Z

    .line 290
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "Ready to serve subtitles..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->mReady:Z

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    const-string/jumbo v1, "segment.idx"

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->access$100(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method
