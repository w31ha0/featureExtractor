.class public Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;
.super Ljava/lang/Object;
.source "ScreenMargins.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mHorizontalMargin:F

.field private mHorizontalScale:F

.field private mVerticalMargin:F

.field private mVerticalScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    .line 27
    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    .line 28
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalMargin:F

    .line 29
    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalScale:F

    return-void
.end method

.method public static getScreenMargins(Ljava/lang/String;Ljava/lang/String;F)Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 40
    .line 41
    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;

    invoke-direct {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;-><init>()V

    .line 43
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 49
    if-eqz v5, :cond_6

    .line 50
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    int-to-float v3, v0

    .line 53
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v5

    int-to-float v0, v0

    .line 60
    :goto_0
    cmpl-float v5, v3, v2

    if-lez v5, :cond_2

    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    div-float v0, v3, v0

    .line 61
    :goto_1
    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 62
    :goto_2
    div-float v2, v0, p2

    .line 65
    sub-float v3, p2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 67
    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 78
    sub-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    .line 79
    iput v2, v4, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    .line 102
    :cond_0
    :goto_3
    return-object v4

    .line 55
    :cond_1
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v3, v0

    .line 56
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_1

    :cond_3
    move p2, v1

    .line 61
    goto :goto_2

    .line 94
    :cond_4
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "not implemented when videoAspect < aspect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 99
    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Default AspectDiff"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v2

    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalMargin:F

    return v0
.end method

.method public getHorizontalScale()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mHorizontalScale:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalMargin:F

    return v0
.end method

.method public getVerticalScale()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ScreenMargins;->mVerticalScale:F

    return v0
.end method
