.class public Lcom/netflix/mediaclient/service/offline/subtitles/SubtitleParserFactory;
.super Ljava/lang/Object;
.source "SubtitleParserFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static createParser(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJ)Lcom/netflix/mediaclient/service/offline/subtitles/OfflineSubtitleParser;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Metadata object is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v1

    .line 38
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_1

    .line 39
    new-instance v1, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    move-object v2, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 45
    :goto_0
    return-object v1

    .line 40
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_3

    .line 41
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    goto :goto_0

    .line 42
    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_5

    .line 43
    :cond_4
    new-instance v1, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    goto :goto_0

    .line 44
    :cond_5
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_6

    .line 45
    new-instance v1, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    move-object v2, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineImageV2SubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    goto :goto_0

    .line 47
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
