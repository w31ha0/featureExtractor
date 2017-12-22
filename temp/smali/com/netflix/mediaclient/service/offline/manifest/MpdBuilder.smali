.class Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;
.super Ljava/lang/Object;
.source "MpdBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offline_mpd_builder"


# instance fields
.field private final mAudioDownloadables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAudioTrackDownloadableId:Ljava/lang/String;

.field private final mDirPathOfPlayable:Ljava/lang/String;

.field private final mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

.field private final mVideoDownloadables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mDirPathOfPlayable:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 53
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mAudioDownloadables:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mVideoDownloadables:Ljava/util/List;

    .line 55
    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mDefaultAudioTrackDownloadableId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private buildAdaptationSet(ILjava/util/List;Z)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    if-eqz p3, :cond_1

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestUtils;->getAudioSourceStreamForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 126
    if-eqz v9, :cond_0

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "audio/mp4"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/netflix/mediaclient/media/AudioSource;

    .line 131
    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result v6

    const v7, 0xbb80

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v8, v8, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    mul-int/lit16 v8, v8, 0x3e8

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/netflix/mediaclient/media/AudioSource;

    .line 134
    invoke-virtual {v9}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mp4a.40.2"

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    move-object v2, v0

    .line 157
    :goto_1
    if-eqz p3, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    :goto_2
    invoke-direct {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->buildRepresentation(Lcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestUtils;->getVideoTrackStreamForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 143
    if-eqz v8, :cond_0

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v11, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    iget-object v1, v1, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->track_id:Ljava/lang/String;

    const-string/jumbo v2, "video/mp4"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const v7, 0xbb80

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget v8, v8, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x0

    const-string/jumbo v10, "avc3.4d400d"

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    move-object v2, v0

    goto :goto_1

    .line 157
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    goto :goto_2

    .line 160
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    :goto_3
    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v12, v2}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private buildPeriods()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mAudioDownloadables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mAudioDownloadables:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mDefaultAudioTrackDownloadableId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->setDefaultAudio(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 78
    invoke-direct {p0, v3, v1, v4}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->buildAdaptationSet(ILjava/util/List;Z)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mVideoDownloadables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mVideoDownloadables:Ljava/util/List;

    invoke-direct {p0, v4, v1, v3}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->buildAdaptationSet(ILjava/util/List;Z)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private buildRepresentation(Lcom/google/android/exoplayer/chunk/Format;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->getSegmentBase(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3, p1, v0}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method private getSegmentBase(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mDirPathOfPlayable:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathForDownloadable(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-static {v6}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->parseSidxInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;

    move-result-object v7

    .line 180
    if-eqz v7, :cond_0

    .line 181
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    const-wide/16 v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->getSidxOffset()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;->getSidxlength()J

    move-result-wide v10

    add-long v9, v8, v10

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    .line 185
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private setDefaultAudio(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-object p1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    const-string/jumbo v1, "nf_offline_mpd_builder"

    const-string/jumbo v4, "setDefaultAudio:: default audio track found %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    move-object v1, v0

    .line 105
    goto :goto_1

    .line 103
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 107
    :cond_2
    if-eqz v1, :cond_3

    .line 108
    invoke-interface {v2, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    move-object p1, v2

    .line 113
    goto :goto_0

    .line 110
    :cond_3
    const-string/jumbo v0, "nf_offline_mpd_builder"

    const-string/jumbo v1, "setDefaultAudio:: default audio track NOT found for %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method


# virtual methods
.method public buildMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 18

    .prologue
    .line 59
    const/4 v15, 0x0

    .line 60
    const/16 v16, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->buildPeriods()Ljava/util/List;

    move-result-object v17

    .line 62
    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/manifest/MpdBuilder;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 64
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    .line 62
    return-object v3
.end method
