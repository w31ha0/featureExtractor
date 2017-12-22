.class public Lcom/netflix/mediaclient/media/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field private static final JSON_AUDIO_ARRAY:Ljava/lang/String; = "audio_array"

.field private static final JSON_CURRENT_NCCP_AUDIO_INDEX:Ljava/lang/String; = "CurrentNccpAudioIndex"

.field private static final JSON_CURRENT_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "CurrentNccpSubtitleIndex"

.field private static final JSON_PREVIOUS_NCCP_AUDIO_INDEX:Ljava/lang/String; = "PreviousNccpAudioIndex"

.field private static final JSON_PREVIOUS_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "PreviousNccpSubtitleIndex"

.field private static final JSON_SUBTITLE_ARRAY:Ljava/lang/String; = "subtitle_array"

.field private static final JSON_SUBTITLE_VISIBLE:Ljava/lang/String; = "subtitle_visible"

.field private static final OFF_SUBTITLE_TRACK_DESC:Ljava/lang/String; = "Off"

.field private static final TAG:Ljava/lang/String; = "nf_language"


# instance fields
.field private mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mCurrentNccpAudioIndex:I

.field private mCurrentNccpSubtitleIndex:I

.field private mPreviousNccpAudioIndex:I

.field private mPreviousNccpSubtitleIndex:I

.field private mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

.field private mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

.field private mSubtitleVisible:Z

.field private mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

.field private final mUsedSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 76
    iput v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    .line 104
    iput p2, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/Language;->dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V

    .line 111
    :goto_0
    if-eqz p3, :cond_1

    .line 112
    iput-object p3, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 117
    :goto_1
    iput-boolean p5, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    .line 118
    iput p4, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 119
    return-void

    .line 108
    :cond_0
    new-array v0, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_0

    .line 114
    :cond_1
    new-array v0, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1
.end method

.method private static countAllowedSubtitles([Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 466
    if-nez p1, :cond_1

    .line 481
    :cond_0
    return v0

    .line 470
    :cond_1
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 475
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 476
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 131
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 135
    array-length v6, p1

    move v2, v3

    move v0, v4

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, p1, v2

    .line 136
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    .line 137
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 138
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    .line 142
    :cond_0
    if-eq v0, v4, :cond_1

    iget v7, v7, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    if-ne v7, p2, :cond_1

    .line 143
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 135
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    new-array v0, v3, [Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 147
    return-void
.end method

.method private static getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 230
    if-nez p0, :cond_1

    .line 231
    const-string/jumbo v1, "nf_language"

    const-string/jumbo v2, "Audios are null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    array-length v3, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 239
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 240
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "Found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 241
    goto :goto_0

    .line 235
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private getAudioSourceByPosition(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .prologue
    .line 283
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 284
    :cond_0
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAudioSourceByIndex: position invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private static getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 300
    if-nez p0, :cond_1

    .line 301
    const-string/jumbo v1, "nf_language"

    const-string/jumbo v2, "Subtitles are null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :cond_1
    array-length v3, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 309
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 310
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "Found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 311
    goto :goto_0

    .line 305
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private isOffSubtitleAvailable(Lcom/netflix/mediaclient/media/AudioSource;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 613
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 614
    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 615
    const/4 v0, 0x1

    .line 618
    :cond_0
    return v0

    .line 613
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 579
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v2, "CurrentNccpSubtitleIndex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 581
    const-string/jumbo v2, "CurrentNccpAudioIndex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 582
    const-string/jumbo v3, "CurrentNccpSubtitleIndex"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 583
    const-string/jumbo v3, "CurrentNccpAudioIndex"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 584
    const-string/jumbo v3, "subtitle_visible"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 585
    const-string/jumbo v3, "audio_array"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 586
    const-string/jumbo v3, "subtitle_array"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 591
    if-eqz v10, :cond_0

    .line 592
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    move v0, v1

    .line 593
    :goto_0
    array-length v11, v3

    if-ge v0, v11, :cond_1

    .line 594
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/netflix/mediaclient/util/SubtitleUtils;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v11

    aput-object v11, v3, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 598
    :cond_1
    if-eqz v9, :cond_3

    .line 599
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 600
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 601
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/media/AudioSource;->restore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v6

    aput-object v6, v0, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 605
    :goto_2
    new-instance v0, Lcom/netflix/mediaclient/media/Language;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    .line 606
    iput v8, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 607
    iput v7, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 609
    return-object v0

    :cond_3
    move-object v1, v6

    goto :goto_2
.end method

.method private updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/Language;->isOffSubtitleAvailable(Lcom/netflix/mediaclient/media/AudioSource;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_6

    .line 373
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 374
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    :cond_2
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/media/Language;->countAllowedSubtitles([Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 364
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_6
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 436
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    goto :goto_0

    .line 445
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 446
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    goto :goto_0
.end method

.method public getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNccpAudioIndex()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    return v0
.end method

.method public getCurrentNccpSubtitleIndex()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    return v0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getUsedSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubtitleVisible()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    return v0
.end method

.method public restorePreviousAudio()V
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    if-gez v0, :cond_0

    .line 507
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v1, "This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 513
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_1

    .line 514
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v1, "Unable to restore to previous audio. Not allowed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    goto :goto_0
.end method

.method public restorePreviousSubtitle()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 489
    const/4 v0, 0x0

    .line 490
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    if-le v1, v2, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 497
    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 498
    iput v2, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 499
    return-void
.end method

.method public setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/Language;->updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 409
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    .line 412
    iput-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    move-object v0, v1

    .line 423
    :goto_1
    return-object v0

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 417
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1

    .line 409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_2
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "We tried to select subtitle that is NOT in list of used subtitles!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 423
    goto :goto_1
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 543
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 545
    const-string/jumbo v0, "CurrentNccpAudioIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v0, "CurrentNccpSubtitleIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v0, "PreviousNccpAudioIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    const-string/jumbo v0, "PreviousNccpSubtitleIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    const-string/jumbo v0, "subtitle_visible"

    iget-boolean v3, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 552
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 553
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 554
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    const-string/jumbo v0, "subtitle_array"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 560
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 561
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 562
    iget-object v3, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    :cond_2
    const-string/jumbo v1, "audio_array"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Language [mSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAltAudios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 524
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubtitleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUsedSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelectedAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelectedSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    return-object v0
.end method
