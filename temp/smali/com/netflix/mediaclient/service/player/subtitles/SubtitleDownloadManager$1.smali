.class Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;
.super Ljava/lang/Object;
.source "SubtitleDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Execute retry..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;->access$000(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager;)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleDownloadManager$DownloadPolicy;

    .line 148
    return-void
.end method
