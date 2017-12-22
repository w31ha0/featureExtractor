.class public final Lcom/netflix/mediaclient/util/l10n/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# static fields
.field private static final PROPERTY_AUDIO_LANGUAGE_CODE_ISO639_1:Ljava/lang/String; = "audioLanguageCodeIso639_1"

.field private static final PROPERTY_AUDIO_TRACK_TYPE:Ljava/lang/String; = "audioTrackType"

.field private static final PROPERTY_SUBTITLE_LANGUAGE_CODE_ISO639_1:Ljava/lang/String; = "subtitleLanguageCodeIso639_1"

.field private static final PROPERTY_SUBTITLE_TRACK_TYPE:Ljava/lang/String; = "subtitleTrackType"

.field private static final PROPERTY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TAG:Ljava/lang/String; = "nf_loc"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static findAudioById([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 4

    .prologue
    .line 289
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p0, v1

    .line 291
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 289
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findAudioByOrderInfo([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    .prologue
    .line 279
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 280
    :cond_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Default order info in manifest does not found, this should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findAudioById([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    goto :goto_0
.end method

.method private static findAudioForUserOverride(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;J)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 6

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Audio was not selected, use manifest override..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findAudioByOrderInfo([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    const/4 v1, 0x0

    .line 215
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p1, v2

    .line 217
    iget-object v4, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v4

    iget v5, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    if-eq v4, v5, :cond_0

    .line 229
    if-nez v1, :cond_2

    .line 230
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v4, "No default audio before, save this one."

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v4

    if-nez v4, :cond_5

    .line 233
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v4, "Default audio track found, save this one."

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    :cond_3
    if-nez v1, :cond_4

    .line 242
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Same audio as one for user override is not found, use one supplied by manifest."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findAudioByOrderInfo([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 249
    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private static findSubtitleById([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    .prologue
    .line 265
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p0, v1

    .line 267
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 265
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findSubtitleByOrderInfo([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 256
    :cond_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Default order info in manifest does not found, this should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findSubtitleById([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    goto :goto_0
.end method

.method private static findSubtitleForUserOverride(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;J)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v2, "Subtitle is off..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v2, "findSubtitleForUserOverride:: off subtitle is allowed, use it."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-object v1

    .line 140
    :cond_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "findSubtitleForUserOverride:: off subtitle is NOT allowed, use manifest default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findSubtitleByOrderInfo([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_1
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v1, p1, v2

    .line 148
    iget-object v4, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v4

    iget v5, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    if-ne v4, v5, :cond_4

    .line 155
    const-string/jumbo v4, "nf_loc"

    const-string/jumbo v5, "findSubtitleForUserOverride:: exact match, use it if it is allowed!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v2, "findSubtitleForUserOverride:: exact match, it is allowed, use it!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v4, "findSubtitleForUserOverride:: exact match, it is NOT allowed, skip it!"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 165
    :cond_4
    if-nez v0, :cond_5

    .line 166
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v4, "No default subtitle before, save this one."

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 169
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v4, "Default subtitle track found, save this one."

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 170
    goto :goto_2

    .line 176
    :cond_6
    if-eqz v0, :cond_8

    .line 181
    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v2, "findSubtitleForUserOverride:: default subtitle match, it is allowed, use it!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_7
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "findSubtitleForUserOverride:: default subtitle match, it is NOT allowed, skip it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_8
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Same subtitle as one for user override is not found, use one supplied by manifest."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p1, p3}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findSubtitleByOrderInfo([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getSelectedLanguage(Landroid/content/Context;)Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    const-string/jumbo v1, "prefs_user_selected_language"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string/jumbo v2, "nf_loc"

    const-string/jumbo v3, "Unable to load used selection!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static saveUserChoice(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V
    .locals 4

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;-><init>(Lcom/netflix/mediaclient/media/Language;)V

    .line 47
    :try_start_0
    const-string/jumbo v1, "prefs_user_selected_language"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v2, "Unable to save use selection!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static toLanguageChoice(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/util/LanguageChoice;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 113
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-wide/16 v4, 0x0

    .line 96
    iget-wide v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    .line 98
    if-eqz p3, :cond_1

    array-length v1, p3

    if-ge v1, v10, :cond_2

    .line 99
    :cond_1
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v6, "No defaults! User override"

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v6, "Last user override %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 107
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v2, "Manifest defaults are newer than last user selection, use them..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    aget-object v1, p3, v9

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getCreationTimeInMs()J

    move-result-wide v4

    .line 102
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v6, "Manifest creation date %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 111
    :cond_3
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Manifest defaults are older than last user selection, use user overrides..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p0, p2, p3, v4, v5}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findAudioForUserOverride(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;J)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    .line 113
    new-instance v6, Lcom/netflix/mediaclient/util/LanguageChoice;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->findSubtitleForUserOverride(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;J)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    invoke-direct {v6, v0, v2}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    move-object v0, v6

    goto :goto_0
.end method
