.class final Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmPlayableRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public advisoriesStringIndex:J

.field public bookmarkIndex:J

.field public durationIndex:J

.field public endtimeIndex:J

.field public episodeNumberIndex:J

.field public expTimeIndex:J

.field public isAdvisoryDisabledIndex:J

.field public isAgeProtectedIndex:J

.field public isAutoPlayIndex:J

.field public isAvailableToStreamIndex:J

.field public isEpisodeIndex:J

.field public isExemptFromLimitIndex:J

.field public isNSREIndex:J

.field public isNextPlayableEpisodeIndex:J

.field public isPinProtectedIndex:J

.field public isPreviewProtectedIndex:J

.field public isSupplementalVideoIndex:J

.field public logicalStartIndex:J

.field public maxAutoplayIndex:J

.field public parentIdIndex:J

.field public parentTitleIndex:J

.field public playableIdIndex:J

.field public seasonLabelIndex:J

.field public seasonNumberIndex:J

.field public titleIndex:J

.field public watchedTimeIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "playableId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    .line 67
    const-string/jumbo v1, "playableId"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "parentId"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    .line 69
    const-string/jumbo v1, "parentId"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    .line 71
    const-string/jumbo v1, "title"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "seasonLabel"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    .line 73
    const-string/jumbo v1, "seasonLabel"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "parentTitle"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    .line 75
    const-string/jumbo v1, "parentTitle"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "advisoriesString"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    .line 77
    const-string/jumbo v1, "advisoriesString"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isEpisode"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    .line 79
    const-string/jumbo v1, "isEpisode"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isNSRE"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    .line 81
    const-string/jumbo v1, "isNSRE"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isAutoPlay"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    .line 83
    const-string/jumbo v1, "isAutoPlay"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isExemptFromLimit"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    .line 85
    const-string/jumbo v1, "isExemptFromLimit"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isNextPlayableEpisode"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    .line 87
    const-string/jumbo v1, "isNextPlayableEpisode"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isAgeProtected"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    .line 89
    const-string/jumbo v1, "isAgeProtected"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isPinProtected"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    .line 91
    const-string/jumbo v1, "isPinProtected"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isPreviewProtected"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPreviewProtectedIndex:J

    .line 93
    const-string/jumbo v1, "isPreviewProtected"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPreviewProtectedIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isAdvisoryDisabled"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    .line 95
    const-string/jumbo v1, "isAdvisoryDisabled"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isAvailableToStream"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    .line 97
    const-string/jumbo v1, "isAvailableToStream"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "isSupplementalVideo"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    .line 99
    const-string/jumbo v1, "isSupplementalVideo"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "duration"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    .line 101
    const-string/jumbo v1, "duration"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "seasonNumber"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    .line 103
    const-string/jumbo v1, "seasonNumber"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "episodeNumber"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    .line 105
    const-string/jumbo v1, "episodeNumber"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "logicalStart"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    .line 107
    const-string/jumbo v1, "logicalStart"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "endtime"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    .line 109
    const-string/jumbo v1, "endtime"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "maxAutoplay"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    .line 111
    const-string/jumbo v1, "maxAutoplay"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "expTime"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    .line 113
    const-string/jumbo v1, "expTime"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "watchedTime"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    .line 115
    const-string/jumbo v1, "watchedTime"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v1, "RealmPlayable"

    const-string/jumbo v2, "bookmark"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    .line 117
    const-string/jumbo v1, "bookmark"

    iget-wide v2, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, v0}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 120
    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->clone()Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->clone()Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .prologue
    .line 124
    check-cast p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;

    .line 125
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->playableIdIndex:J

    .line 126
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentIdIndex:J

    .line 127
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->titleIndex:J

    .line 128
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonLabelIndex:J

    .line 129
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->parentTitleIndex:J

    .line 130
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->advisoriesStringIndex:J

    .line 131
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isEpisodeIndex:J

    .line 132
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNSREIndex:J

    .line 133
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAutoPlayIndex:J

    .line 134
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isExemptFromLimitIndex:J

    .line 135
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isNextPlayableEpisodeIndex:J

    .line 136
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAgeProtectedIndex:J

    .line 137
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPinProtectedIndex:J

    .line 138
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPreviewProtectedIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isPreviewProtectedIndex:J

    .line 139
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAdvisoryDisabledIndex:J

    .line 140
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isAvailableToStreamIndex:J

    .line 141
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->isSupplementalVideoIndex:J

    .line 142
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->durationIndex:J

    .line 143
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->seasonNumberIndex:J

    .line 144
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->episodeNumberIndex:J

    .line 145
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->logicalStartIndex:J

    .line 146
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->endtimeIndex:J

    .line 147
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->maxAutoplayIndex:J

    .line 148
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->expTimeIndex:J

    .line 149
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->watchedTimeIndex:J

    .line 150
    iget-wide v0, p1, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    iput-wide v0, p0, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->bookmarkIndex:J

    .line 152
    invoke-virtual {p1}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/RealmPlayableRealmProxy$RealmPlayableColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 153
    return-void
.end method
