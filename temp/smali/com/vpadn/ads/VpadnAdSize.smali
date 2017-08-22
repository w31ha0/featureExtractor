.class public Lcom/vpadn/ads/VpadnAdSize;
.super Ljava/lang/Object;
.source "VpadnAdSize.java"


# static fields
.field public static final AUTO_HEIGHT:I = -0x1

.field public static final BANNER:Lcom/vpadn/ads/VpadnAdSize;

.field public static final FULL_WIDTH:I = -0x2

.field public static final IAB_BANNER:Lcom/vpadn/ads/VpadnAdSize;

.field public static final IAB_LEADERBOARD:Lcom/vpadn/ads/VpadnAdSize;

.field public static final IAB_MRECT:Lcom/vpadn/ads/VpadnAdSize;

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/vpadn/ads/VpadnAdSize;

.field public static final LANDSCAPE_AD_HEIGHT:I = -0x3

.field public static final LARGE_AD_HEIGHT:I = -0x4

.field public static final MIX_CUSTOME_HEIGHT:Ljava/lang/String; = "mix_custom_height"

.field public static final MIX_CUSTOME_WIDTH:Ljava/lang/String; = "mix_custom_width"

.field public static final PORTRAIT_AD_HEIGHT:I = -0x5

.field public static final SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1d4

    const/16 v4, 0x3c

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->BANNER:Lcom/vpadn/ads/VpadnAdSize;

    .line 76
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    invoke-direct {v0, v5, v4, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->IAB_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    .line 79
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->IAB_LEADERBOARD:Lcom/vpadn/ads/VpadnAdSize;

    .line 82
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->IAB_MRECT:Lcom/vpadn/ads/VpadnAdSize;

    .line 87
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    invoke-direct {v0, v4, v5, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/vpadn/ads/VpadnAdSize;

    .line 90
    new-instance v0, Lcom/vpadn/ads/VpadnAdSize;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vpadn/ads/VpadnAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/vpadn/ads/VpadnAdSize;->SMART_BANNER:Lcom/vpadn/ads/VpadnAdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    .line 25
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnAdSize;->d:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdSize;->e:Ljava/lang/String;

    .line 102
    if-eq p1, v2, :cond_0

    if-ne p2, v1, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "width == AUTO_HEIGHT || height == FULL_WIDTH"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput p1, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    .line 107
    iput p2, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    .line 108
    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 110
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    if-eq p1, v1, :cond_6

    if-ne p2, v2, :cond_6

    .line 112
    :cond_4
    iput-boolean v3, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    .line 113
    iput-boolean v4, p0, Lcom/vpadn/ads/VpadnAdSize;->d:Z

    .line 114
    if-ne p1, v1, :cond_5

    .line 115
    const-string v0, "mix_custom_height"

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdSize;->e:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_5
    const-string v0, "mix_custom_width"

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdSize;->e:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_6
    iput-boolean v4, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    goto :goto_0
.end method

.method protected constructor <init>(IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    .line 25
    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdSize;->d:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdSize;->e:Ljava/lang/String;

    .line 132
    iput p1, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    .line 133
    iput p2, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    .line 134
    iput-boolean p3, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    .line 135
    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 278
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    .line 279
    return v0
.end method

.method public static convertPixelsToDp(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 293
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    .line 294
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    if-ne p0, p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 337
    :cond_3
    check-cast p1, Lcom/vpadn/ads/VpadnAdSize;

    .line 338
    iget v2, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    iget v3, p1, Lcom/vpadn/ads/VpadnAdSize;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 339
    :cond_4
    iget-boolean v2, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    iget-boolean v3, p1, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 340
    :cond_5
    iget v2, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    iget v3, p1, Lcom/vpadn/ads/VpadnAdSize;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public varargs findBestSize([Lcom/vpadn/ads/VpadnAdSize;)Lcom/vpadn/ads/VpadnAdSize;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    if-gez v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get ad height"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    if-lez v0, :cond_0

    .line 261
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMixModeCustomStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdSize;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    if-gez v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get ad width"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    if-lez v0, :cond_0

    .line 247
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/vpadn/ads/VpadnAdSize;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 321
    .line 323
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 324
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 325
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    add-int/2addr v0, v1

    .line 326
    return v0

    .line 324
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public isAutoHeight()Z
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomAdSize()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMix()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdSize;->d:Z

    return v0
.end method

.method public isSizeAppropriate(II)Z
    .locals 4

    .prologue
    const/16 v3, 0x1d4

    const/16 v2, 0x3c

    const/4 v0, 0x1

    .line 168
    const/16 v1, 0x140

    if-ne p1, v1, :cond_1

    const/16 v1, 0x32

    if-ne p2, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    if-ne p1, v3, :cond_2

    if-eq p2, v2, :cond_0

    .line 170
    :cond_2
    const/16 v1, 0x2d8

    if-ne p1, v1, :cond_3

    const/16 v1, 0x5a

    if-eq p2, v1, :cond_0

    .line 171
    :cond_3
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4

    const/16 v1, 0xfa

    if-eq p2, v1, :cond_0

    .line 172
    :cond_4
    if-ne p1, v2, :cond_5

    if-eq p2, v3, :cond_0

    .line 175
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VponAdSize] width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vpadn/ads/VpadnAdSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vpadn/ads/VpadnAdSize;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCustomSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vpadn/ads/VpadnAdSize;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
