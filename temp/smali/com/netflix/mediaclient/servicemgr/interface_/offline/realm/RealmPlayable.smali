.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;
.super Ljava/lang/Object;
.source "RealmPlayable.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lio/realm/RealmModel;
.implements Lio/realm/RealmPlayableRealmProxyInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "RealmPlayable"


# instance fields
.field private advisoriesString:Ljava/lang/String;

.field protected bookmark:I

.field private duration:I

.field private endtime:I

.field private episodeNumber:I

.field private expTime:J

.field private isAdvisoryDisabled:Z

.field private isAgeProtected:Z

.field private isAutoPlay:Z

.field private isAvailableToStream:Z

.field private isEpisode:Z

.field private isExemptFromLimit:Z

.field private isNSRE:Z

.field private isNextPlayableEpisode:Z

.field private isPinProtected:Z

.field private isPreviewProtected:Z

.field private isSupplementalVideo:Z

.field private logicalStart:I

.field private maxAutoplay:I

.field private parentId:Ljava/lang/String;

.field private parentTitle:Ljava/lang/String;

.field private playableId:Ljava/lang/String;

.field private seasonLabel:Ljava/lang/String;

.field private seasonNumber:I

.field private title:Ljava/lang/String;

.field private watchedTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$playableId(Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$parentId(Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNSRE()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isNSRE(Z)V

    .line 56
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isEpisode(Z)V

    .line 57
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$title(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$parentTitle(Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$watchedTime(J)V

    .line 60
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$bookmark(I)V

    .line 61
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$seasonNumber(I)V

    .line 62
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$episodeNumber(I)V

    .line 63
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$duration(I)V

    .line 64
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$endtime(I)V

    .line 65
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getLogicalStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$logicalStart(I)V

    .line 66
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAutoPlayEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isAutoPlay(Z)V

    .line 67
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isNextPlayableEpisode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isNextPlayableEpisode(Z)V

    .line 68
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAgeProtected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isAgeProtected(Z)V

    .line 69
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPinProtected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isPinProtected(Z)V

    .line 70
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPreviewProtected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isPreviewProtected(Z)V

    .line 71
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getExpirationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$expTime(J)V

    .line 72
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAdvisoryDisabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isAdvisoryDisabled(Z)V

    .line 73
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$seasonLabel(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getAutoPlayMaxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$maxAutoplay(I)V

    .line 75
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isExemptFromInterrupterLimit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isExemptFromLimit(Z)V

    .line 76
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableToStream()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isAvailableToStream(Z)V

    .line 77
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isSupplementalVideo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$isSupplementalVideo(Z)V

    .line 78
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getAdvisories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getAdvisories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmSet$advisoriesString(Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public getAdvisories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/Advisory;->asList(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$maxAutoplay()I

    move-result v0

    return v0
.end method

.method public getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndtime()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$endtime()I

    move-result v0

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$episodeNumber()I

    move-result v0

    return v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$expTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogicalStart()I
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$logicalStart()I

    move-result v0

    return v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$bookmark()I

    move-result v0

    return v0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$watchedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$playableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$duration()I

    move-result v0

    return v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$seasonNumber()I

    move-result v0

    return v0
.end method

.method public getTopLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$parentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAdvisoryDisabled()Z

    move-result v0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAgeProtected()Z

    move-result v0

    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAutoPlay()Z

    move-result v0

    return v0
.end method

.method public isAvailableOffline()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAvailableToStream()Z

    move-result v0

    return v0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isExemptFromLimit()Z

    move-result v0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isNSRE()Z

    move-result v0

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isNextPlayableEpisode()Z

    move-result v0

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isPinProtected()Z

    move-result v0

    return v0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isEpisode()Z

    move-result v0

    return v0
.end method

.method public isPreviewProtected()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isPreviewProtected()Z

    move-result v0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isSupplementalVideo()Z

    move-result v0

    return v0
.end method

.method public realmGet$advisoriesString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->advisoriesString:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$bookmark()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->bookmark:I

    return v0
.end method

.method public realmGet$duration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->duration:I

    return v0
.end method

.method public realmGet$endtime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->endtime:I

    return v0
.end method

.method public realmGet$episodeNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->episodeNumber:I

    return v0
.end method

.method public realmGet$expTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->expTime:J

    return-wide v0
.end method

.method public realmGet$isAdvisoryDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAdvisoryDisabled:Z

    return v0
.end method

.method public realmGet$isAgeProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAgeProtected:Z

    return v0
.end method

.method public realmGet$isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAutoPlay:Z

    return v0
.end method

.method public realmGet$isAvailableToStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAvailableToStream:Z

    return v0
.end method

.method public realmGet$isEpisode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isEpisode:Z

    return v0
.end method

.method public realmGet$isExemptFromLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isExemptFromLimit:Z

    return v0
.end method

.method public realmGet$isNSRE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isNSRE:Z

    return v0
.end method

.method public realmGet$isNextPlayableEpisode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isNextPlayableEpisode:Z

    return v0
.end method

.method public realmGet$isPinProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isPinProtected:Z

    return v0
.end method

.method public realmGet$isPreviewProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isPreviewProtected:Z

    return v0
.end method

.method public realmGet$isSupplementalVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isSupplementalVideo:Z

    return v0
.end method

.method public realmGet$logicalStart()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->logicalStart:I

    return v0
.end method

.method public realmGet$maxAutoplay()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->maxAutoplay:I

    return v0
.end method

.method public realmGet$parentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$parentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->parentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$playableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$seasonLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->seasonLabel:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$seasonNumber()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->seasonNumber:I

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$watchedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->watchedTime:J

    return-wide v0
.end method

.method public realmSet$advisoriesString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->advisoriesString:Ljava/lang/String;

    return-void
.end method

.method public realmSet$bookmark(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->bookmark:I

    return-void
.end method

.method public realmSet$duration(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->duration:I

    return-void
.end method

.method public realmSet$endtime(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->endtime:I

    return-void
.end method

.method public realmSet$episodeNumber(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->episodeNumber:I

    return-void
.end method

.method public realmSet$expTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->expTime:J

    return-void
.end method

.method public realmSet$isAdvisoryDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAdvisoryDisabled:Z

    return-void
.end method

.method public realmSet$isAgeProtected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAgeProtected:Z

    return-void
.end method

.method public realmSet$isAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAutoPlay:Z

    return-void
.end method

.method public realmSet$isAvailableToStream(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isAvailableToStream:Z

    return-void
.end method

.method public realmSet$isEpisode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isEpisode:Z

    return-void
.end method

.method public realmSet$isExemptFromLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isExemptFromLimit:Z

    return-void
.end method

.method public realmSet$isNSRE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isNSRE:Z

    return-void
.end method

.method public realmSet$isNextPlayableEpisode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isNextPlayableEpisode:Z

    return-void
.end method

.method public realmSet$isPinProtected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isPinProtected:Z

    return-void
.end method

.method public realmSet$isPreviewProtected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isPreviewProtected:Z

    return-void
.end method

.method public realmSet$isSupplementalVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->isSupplementalVideo:Z

    return-void
.end method

.method public realmSet$logicalStart(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->logicalStart:I

    return-void
.end method

.method public realmSet$maxAutoplay(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->maxAutoplay:I

    return-void
.end method

.method public realmSet$parentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->parentId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$parentTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->parentTitle:Ljava/lang/String;

    return-void
.end method

.method public realmSet$playableId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->playableId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$seasonLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->seasonLabel:Ljava/lang/String;

    return-void
.end method

.method public realmSet$seasonNumber(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->seasonNumber:I

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$watchedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->watchedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RealmPlayable{playableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$playableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$parentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seasonLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$seasonLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parentTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$parentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isEpisode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNSRE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isNSRE()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAutoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAutoPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isExemptFromLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isExemptFromLimit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNextPlayableEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isNextPlayableEpisode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAgeProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAgeProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPinProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isPinProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPreviewProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isPreviewProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAdvisoryDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAdvisoryDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAvailableToStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$isAvailableToStream()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$duration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seasonNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$seasonNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", episodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$episodeNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", logicalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$logicalStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$endtime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxAutoplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$maxAutoplay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$expTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", advisories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$advisoriesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", watchedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$watchedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;->realmGet$bookmark()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
