.class public Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserFactory;
.super Ljava/lang/Object;
.source "SubtitleParserFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createParser(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FJLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
    .locals 10

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Metadata object is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_1

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_3

    .line 46
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    move-object v0, v1

    goto :goto_0

    .line 47
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_5

    .line 48
    :cond_4
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_5
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_6

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;JLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    goto :goto_0

    .line 52
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not supported profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
