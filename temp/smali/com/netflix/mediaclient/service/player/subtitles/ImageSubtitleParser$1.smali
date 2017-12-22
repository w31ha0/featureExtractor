.class Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

.field final synthetic val$nameServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 199
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseMasterIndex([B)Z

    move-result v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->access$000(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0
.end method
