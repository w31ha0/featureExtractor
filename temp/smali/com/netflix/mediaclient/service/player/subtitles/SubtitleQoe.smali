.class public Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;
.super Ljava/lang/Object;
.source "SubtitleQoe.java"


# static fields
.field private static final PROPERTY_DOWNLOADABLE_ID:Ljava/lang/String; = "dlid"

.field private static final PROPERTY_EXPECTED:Ljava/lang/String; = "expected"

.field private static final PROPERTY_MISSED:Ljava/lang/String; = "missed"


# instance fields
.field private displayed:I

.field private downloadableId:Ljava/lang/String;

.field private expectedToShow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->downloadableId:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    .line 46
    iput p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->displayed:I

    .line 47
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->displayed:I

    sub-int/2addr v0, v1

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string/jumbo v2, "dlid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->downloadableId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "expected"

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v2, "missed"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubtitleQoe{downloadableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->downloadableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expectedToShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->displayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(II)V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->expectedToShow:I

    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->displayed:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoe;->displayed:I

    .line 58
    return-void
.end method
