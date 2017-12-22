.class public final Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;
.super Lcom/netflix/mediaclient/media/AudioSource;
.source "MdxAudioSource.java"


# static fields
.field protected static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final IMPL_VALUE:I = 0x2


# instance fields
.field private mAvailable:Z

.field private final mSelected:Z

.field private mSupported:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AudioSource;-><init>()V

    .line 64
    const-string/jumbo v1, "id"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->id:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "label"

    const-string/jumbo v2, "English"

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "selected"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSelected:Z

    .line 67
    iput p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->nccpOrderNumber:I

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->isNative:Z

    .line 69
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->trackType:I

    .line 71
    const-string/jumbo v1, "disallowedSubtitleTracks"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 77
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const-string/jumbo v1, "nf_audio_source"

    const-string/jumbo v2, "No disallowedSubtitleTracks!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 84
    :cond_1
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;-><init>(Lorg/json/JSONObject;I)V

    return-object v0
.end method


# virtual methods
.method public isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z
    .locals 1

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mAvailable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSelected:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSupported:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 165
    const-string/jumbo v0, "impl"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string/jumbo v0, "label"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo v0, "order"

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->nccpOrderNumber:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string/jumbo v0, "selected"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSelected:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 172
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 173
    const-string/jumbo v0, "disallowedSubtitleTracks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MdxAudioSource [mSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->mAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->languageCodeIso639_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->codecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->isNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->numChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", disallowedSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method
