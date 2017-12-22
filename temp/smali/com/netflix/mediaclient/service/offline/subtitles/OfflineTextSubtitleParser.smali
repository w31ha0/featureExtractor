.class public Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;
.source "OfflineTextSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;


# instance fields
.field protected mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V
    .locals 10

    .prologue
    .line 22
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;

    move-result-object v3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 23
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create text based offline subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    .line 25
    return-void
.end method


# virtual methods
.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    return-object v0
.end method

.method protected handleImport()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Check if cache exist!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "File %s exist"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/FileUtils;->readFileWithUTF8Encoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string/jumbo v4, "nf_subtitles"

    const-string/jumbo v5, "Importing subtitles metadata from offline directory %s :\n%s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->parse(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Imported data from offline directory!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "We failed to parse subtitle metadata from cached file"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Offline text subtitle NOT found at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;->handleImport()Z

    .line 34
    return-void
.end method
