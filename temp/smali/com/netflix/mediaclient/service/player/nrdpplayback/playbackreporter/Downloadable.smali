.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;
.super Ljava/lang/Object;
.source "Downloadable.java"


# instance fields
.field bitrate:I

.field dlid:Ljava/lang/String;

.field type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field vmaf:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->dlid:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->bitrate:I

    .line 21
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 22
    iput p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->vmaf:I

    .line 23
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string/jumbo v0, "dlid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->dlid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "audio"

    .line 39
    :goto_0
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v0, "bitrate"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->bitrate:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v0, "vmaf"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->vmaf:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    return-object v1

    .line 38
    :cond_0
    const-string/jumbo v0, "video"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Downloadable{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dlid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->dlid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vmaf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->vmaf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
