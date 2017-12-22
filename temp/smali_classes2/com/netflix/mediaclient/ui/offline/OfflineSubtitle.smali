.class public abstract Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;
.super Ljava/lang/Object;
.source "OfflineSubtitle.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/Subtitle;


# static fields
.field protected static final ATTR_LOCAL_PATH:Ljava/lang/String; = "localPath"

.field protected static final ATTR_PROFILE:Ljava/lang/String; = "profile"

.field protected static final ATTR_SUBTITLE_URL:Ljava/lang/String; = "subtitleUrl"

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_offline"


# instance fields
.field protected mLocalFilePath:Ljava/lang/String;

.field protected mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

.field private mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 46
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 39
    const-string/jumbo v0, "localPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/media/SubtitleUrl;

    const-string/jumbo v1, "subtitleUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/SubtitleUrl;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 41
    return-void
.end method

.method public static newInstance(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    if-nez p2, :cond_0

    .line 153
    const-string/jumbo p2, ""

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_2

    .line 157
    :cond_1
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "OfflineSubtitle::newInstance: image, path %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineImageSubtitle;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_2
    const-string/jumbo v0, "nf_subtitles_offline"

    const-string/jumbo v1, "OfflineSubtitle::newInstance: text, path %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineTextSubtitle;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/SubtitleUrl;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canDeviceRender()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->canDeviceRender()Z

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/netflix/mediaclient/media/Subtitle;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 171
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->compareTo(Lcom/netflix/mediaclient/media/Subtitle;)I

    move-result v0

    return v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDownloadableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImplementation()I
.end method

.method public getLanguageCodeIso639_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCodeIso639_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v0

    return v0
.end method

.method public getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v0

    return v0
.end method

.method public isCC()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->isCC()Z

    move-result v0

    return v0
.end method

.method public isForcedNarrativeOrNone()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "impl"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getImplementation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v1, "localPath"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v1, "subtitleUrl"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/SubtitleUrl;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SubtitleUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mSubtitleUrl:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", LocalFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method
