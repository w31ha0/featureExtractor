.class public Lcom/netflix/mediaclient/media/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# static fields
.field private static final ANCHOR:Ljava/lang/String; = "anchor"

.field public static final DEFAULT_SIZE_DP:I = 0xa

.field private static final ID:Ljava/lang/String; = "id"

.field private static final OPACITY:Ljava/lang/String; = "opacity"

.field public static final SAFE_DISPLAY_AREA_MARGIN:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "nf_watermark"


# instance fields
.field private mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

.field private mIdentifier:Ljava/lang/String;

.field private mOpacity:I


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Watermark json is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const-string/jumbo v0, "id"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mIdentifier:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "opacity"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    .line 54
    const-string/jumbo v0, "anchor"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/media/Watermark$Anchor;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Watermark$Anchor;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "nf_watermark"

    const-string/jumbo v2, "Failed, go to default"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    sget-object v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    goto :goto_0
.end method

.method public static createWatermark(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Watermark;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/media/Watermark;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/Watermark;-><init>(Lorg/json/JSONObject;)V

    .line 102
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Watermark;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 103
    goto :goto_0
.end method


# virtual methods
.method public getAnchor()Lcom/netflix/mediaclient/media/Watermark$Anchor;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    return v0
.end method

.method public getStyle(Landroid/content/Context;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 111
    iget v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v4, v0, v1

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    const-string/jumbo v1, "watermark"

    const-string/jumbo v2, "white"

    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object v4, v3

    move-object v5, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v12, v3

    move-object v13, v3

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Watermark;->mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Watermark{mIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Watermark;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOpacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Watermark;->mOpacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Watermark;->mAnchor:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
