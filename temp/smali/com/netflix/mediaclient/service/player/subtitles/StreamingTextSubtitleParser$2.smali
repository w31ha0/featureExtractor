.class Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;
.super Ljava/lang/Object;
.source "StreamingTextSubtitleParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

.field final synthetic val$nameServers:[Ljava/lang/String;

.field final synthetic val$requestedUrl:Ljava/lang/String;

.field final synthetic val$responseData:[B


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;[BLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$responseData:[B

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$requestedUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$nameServers:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitles metadata update started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$responseData:[B

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->injectContent([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitles metadata updated."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "We failed to parse subtitle metadata"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$requestedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser$2;->val$nameServers:[Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    .line 171
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "We failed to parse subtitle metadata"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
