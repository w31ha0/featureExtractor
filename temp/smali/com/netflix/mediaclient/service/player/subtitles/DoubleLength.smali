.class public Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
.super Ljava/lang/Object;
.source "DoubleLength.java"


# static fields
.field public static final SIMPLE_SDH_EXTENT:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

.field public static final ZERO:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;


# instance fields
.field private mFirst:F

.field private mSecond:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-direct {v0, v1, v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;-><init>(FF)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->ZERO:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-direct {v0, v2, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;-><init>(FF)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->SIMPLE_SDH_EXTENT:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    .line 47
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    .line 48
    return-void
.end method

.method public static canUse(Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;)Z
    .locals 1

    .prologue
    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 123
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string/jumbo v0, " "

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_1

    array-length v0, v3

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    :cond_1
    move-object v0, v2

    .line 101
    goto :goto_0

    .line 109
    :cond_2
    if-eqz p1, :cond_5

    .line 110
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->getWidthCount()I

    move-result v0

    .line 113
    :goto_1
    aget-object v1, v3, v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->parseMargin(Ljava/lang/String;I)Ljava/lang/Float;

    move-result-object v1

    .line 114
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->parseMargin(Ljava/lang/String;I)Ljava/lang/Float;

    move-result-object v3

    .line 116
    if-eqz v1, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v0, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;-><init>(FF)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private valid(F)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    if-nez v2, :cond_3

    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 162
    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public getFirstLength()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    return v0
.end method

.method public getSecondLength()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 140
    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->valid(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->valid(F)Z

    move-result v0

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
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DoubleLength [mFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mFirst:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->mSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
