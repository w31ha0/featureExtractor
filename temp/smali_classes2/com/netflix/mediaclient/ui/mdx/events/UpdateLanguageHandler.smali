.class public Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateLanguageHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private getAudioSources(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 145
    :cond_0
    const-string/jumbo v1, "mdxui"

    const-string/jumbo v2, "Empty audio list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-array v0, v0, [Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    .line 157
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    .line 150
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method private getCurrentAudioIndex([Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 116
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :goto_1
    return v0

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v2, "None is selected, default to 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 121
    goto :goto_1
.end method

.method private getCurrentSubtitleIndex([Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 105
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :goto_1
    return v0

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v2, "None is selected, default to 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 110
    goto :goto_1
.end method

.method private getSubtitles(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v1, "mdxui"

    const-string/jumbo v2, "Empty subtitle list"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-array v0, v0, [Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    .line 139
    :goto_0
    return-object v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    .line 132
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 139
    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 50
    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Update audio/subtitles..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v0, "stringBlob"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "timed_text_tracks"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 63
    const-string/jumbo v0, "timed_text_track"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    .line 65
    :goto_0
    const-string/jumbo v0, "audio_tracks"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "audio_track"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 84
    :cond_0
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;->getSubtitles(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;

    move-result-object v3

    .line 85
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;->getAudioSources(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    move-result-object v1

    .line 87
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;->getCurrentAudioIndex([Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;)I

    move-result v2

    .line 88
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;->getCurrentSubtitleIndex([Lcom/netflix/mediaclient/ui/mdx/MdxSubtitle;)I

    move-result v4

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/media/Language;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    .line 92
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "mdxui"

    const-string/jumbo v2, "Failed to extract capability data "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
