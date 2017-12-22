.class public abstract Lcom/netflix/mediaclient/media/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/media/AudioSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSISTIVE_AUDIO:I = 0x2

.field protected static final ATTR_BITRATE:Ljava/lang/String; = "bitrate"

.field protected static final ATTR_DISSALOWED_TIMED_TEXT_TRACK:Ljava/lang/String; = "disallowedSubtitleTracks"

.field protected static final ATTR_DLID:Ljava/lang/String; = "downloadable_id"

.field protected static final ATTR_ID:Ljava/lang/String; = "id"

.field protected static final ATTR_IS_NATIVE:Ljava/lang/String; = "isNative"

.field protected static final ATTR_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final ATTR_LANGUAGE_DESCRIPTION:Ljava/lang/String; = "languageDescription"

.field protected static final ATTR_NUM_CHANNELS:Ljava/lang/String; = "channels"

.field protected static final ATTR_ORDER:Ljava/lang/String; = "order"

.field protected static final ATTR_SELECTED:Ljava/lang/String; = "selected"

.field protected static final ATTR_TRACK_TYPE:Ljava/lang/String; = "trackType"

.field public static final COMMENTARY_AUDIO:I = 0x1

.field public static final DDPLUS_AUDIO:I = 0x4

.field public static final DOLBY_AC3_AUDIO:I = 0x1

.field public static final HEAAC_AUDIO:I = 0x3

.field protected static final IMPL:Ljava/lang/String; = "impl"

.field protected static final NONE:Ljava/lang/String; = "none"

.field public static final OGG_VORBIS_AUDIO:I = 0x2

.field public static final PRIMARY_AUDIO:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "nf_audio_source"

.field public static final UNKNOWN_AUDIO:I = 0x3

.field public static final UNKNOWN_AUDIO_CODEC:I = -0x1

.field public static final WMA_AUDIO:I


# instance fields
.field protected bitrate:I

.field protected codecType:I

.field protected disallowedSubtitles:[Ljava/lang/String;

.field protected dlid:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected isNative:Z

.field protected languageCodeIso639_1:Ljava/lang/String;

.field protected languageCodeIso639_2:Ljava/lang/String;

.field protected languageDescription:Ljava/lang/String;

.field protected nccpOrderNumber:I

.field protected numChannels:I

.field protected streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field protected trackType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->streams:Ljava/util/List;

    return-void
.end method

.method public static dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    if-eqz p0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string/jumbo v0, "Audios are null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static restore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 4

    .prologue
    .line 413
    if-nez p0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    .line 417
    :cond_0
    const-string/jumbo v0, "impl"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 418
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 419
    const-string/jumbo v0, "order"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 420
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 423
    const-string/jumbo v0, "order"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 424
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_2
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Implementation does not support restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/media/AudioSource;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 223
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    iget v3, p1, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    if-le v2, v3, :cond_2

    move v1, v0

    .line 229
    goto :goto_0

    .line 230
    :cond_2
    iget v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    iget v3, p1, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    if-lt v2, v3, :cond_0

    .line 235
    iget-object v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    if-nez v2, :cond_3

    move v1, v0

    .line 240
    goto :goto_0

    .line 243
    :cond_3
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    iget-object v4, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 244
    if-nez v2, :cond_6

    .line 245
    iget-object v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 246
    if-nez v2, :cond_6

    .line 247
    iget v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    iget v3, p1, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    if-ge v2, v3, :cond_4

    :goto_1
    move v1, v0

    .line 256
    goto :goto_0

    .line 249
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    iget v2, p1, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    if-ne v0, v2, :cond_5

    .line 250
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 252
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/AudioSource;->compareTo(Lcom/netflix/mediaclient/media/AudioSource;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    if-ne p0, p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 387
    goto :goto_0

    .line 389
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v2, :cond_3

    move v0, v1

    .line 390
    goto :goto_0

    .line 392
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    .line 393
    iget v2, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    iget v3, p1, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->bitrate:I

    return v0
.end method

.method public getCodecType()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->codecType:I

    return v0
.end method

.method public getDisallowedSubtitles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    return-object v0
.end method

.method public getDlid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->dlid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeIso639_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeIso639_1:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeIso639_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeIso639_2:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescriptionDisplayLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (5.1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    return v0
.end method

.method public getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->streams:Ljava/util/List;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 369
    .line 371
    iget v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    add-int/lit8 v0, v0, 0x1f

    .line 372
    return v0
.end method

.method public isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v0, v0

    if-ge v0, v3, :cond_1

    move v2, v3

    .line 336
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    const-string/jumbo v0, "none"

    .line 323
    if-nez p1, :cond_3

    .line 324
    const-string/jumbo v1, "nf_audio_source"

    const-string/jumbo v4, "Checking if subtitle off is allowed"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v2

    .line 330
    :goto_2
    iget-object v4, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 331
    iget-object v4, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    :cond_3
    const-string/jumbo v0, "nf_audio_source"

    const-string/jumbo v1, "Checking if subtitle is allowed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 336
    goto :goto_0
.end method

.method public isNative()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/AudioSource;->isNative:Z

    return v0
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioSource [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageCodeIso639_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->codecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->isNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->numChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dissalowed subtitles # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dlid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/AudioSource;->dlid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
