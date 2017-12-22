.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;
.super Ljava/lang/Enum;
.source "OpacityMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"

.field public static final enum none:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

.field public static final enum opaque:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

.field public static final enum semiTransparent:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;


# instance fields
.field private mLookupValue:Ljava/lang/String;

.field private mSize:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "NONE"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;-><init>(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->none:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    const-string/jumbo v1, "semiTransparent"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "SEMI_TRANSPARENT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;-><init>(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->semiTransparent:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    const-string/jumbo v1, "opaque"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "OPAQUE"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;-><init>(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->opaque:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->none:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->semiTransparent:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->opaque:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->mSize:Ljava/lang/Float;

    .line 34
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->mLookupValue:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static lookup(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 64
    iget-object v5, v4, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->mLookupValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->getSize()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->opaque:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->getSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->opaque:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->getSize()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->none:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->getSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 76
    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->none:Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->getSize()Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 79
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse opacityt value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static opacityToHex(Ljava/lang/Float;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const-string/jumbo v0, "FF"

    .line 106
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 101
    const-string/jumbo v0, "00"

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 103
    const-string/jumbo v0, "FF"

    goto :goto_0

    .line 105
    :cond_2
    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;

    return-object v0
.end method


# virtual methods
.method public getLookupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->mLookupValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->mSize:Ljava/lang/Float;

    return-object v0
.end method
