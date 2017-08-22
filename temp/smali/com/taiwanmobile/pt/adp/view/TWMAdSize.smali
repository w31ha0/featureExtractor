.class public Lcom/taiwanmobile/pt/adp/view/TWMAdSize;
.super Ljava/lang/Object;
.source "TWMAdSize.java"


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field public static final FIELD_BANNER:Ljava/lang/String; = "0"

.field public static final FIELD_IAB_BANNER:Ljava/lang/String; = "2"

.field public static final FIELD_IAB_LEADERBOARD:Ljava/lang/String; = "3"

.field public static final FIELD_IAB_MRECT:Ljava/lang/String; = "1"

.field public static final FULL_WIDTH:I = -0x1

.field public static final IAB_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field public static final IAB_LEADERBOARD:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field public static final IAB_MRECT:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field public static final IAB_WIDE_SKYSCRAPER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field public static final LANDSCAPE_AD_HEIGHT:I = 0x20

.field public static final LARGE_AD_HEIGHT:I = 0x5a

.field public static final PORTRAIT_AD_HEIGHT:I = 0x32

.field public static final SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/4 v1, -0x1

    .line 28
    const/4 v2, -0x2

    const/4 v3, 0x1

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->SMART_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 30
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 32
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_MRECT:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 34
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 36
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_LEADERBOARD:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 39
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_WIDE_SKYSCRAPER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;-><init>(IIZ)V

    .line 44
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    .line 65
    iput p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    .line 67
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->e:Z

    .line 68
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->c:Z

    .line 70
    iput-boolean p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->d:Z

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    instance-of v1, p1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 79
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    iget v2, p1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    if-ne v1, v2, :cond_0

    .line 80
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    iget v2, p1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    if-ne v1, v2, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public findBestSize([Lcom/taiwanmobile/pt/adp/view/TWMAdSize;)Lcom/taiwanmobile/pt/adp/view/TWMAdSize;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 85
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v5

    .line 90
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v6

    .line 91
    array-length v7, p1

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_1
    if-lt v4, v7, :cond_1

    .line 105
    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    goto :goto_0

    .line 91
    :cond_1
    aget-object v3, p1, v4

    .line 93
    invoke-virtual {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v2

    .line 94
    invoke-virtual {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v8

    .line 95
    invoke-virtual {p0, v2, v8}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->isSizeAppropriate(II)Z

    move-result v9

    if-nez v9, :cond_2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 91
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto :goto_1

    .line 97
    :cond_2
    mul-int/2addr v2, v8

    mul-int v8, v5, v6

    div-int/2addr v2, v8

    int-to-float v2, v2

    .line 98
    cmpl-float v8, v2, v10

    if-lez v8, :cond_3

    .line 99
    div-float v2, v10, v2

    .line 100
    :cond_3
    cmpg-float v8, v2, v1

    if-gtz v8, :cond_4

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 101
    goto :goto_2

    :cond_4
    move v0, v2

    move-object v1, v3

    .line 103
    goto :goto_2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 116
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 117
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 128
    :goto_0
    return v0

    .line 119
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 121
    const/16 v2, 0x190

    if-gt v0, v2, :cond_1

    .line 122
    const/16 v0, 0x20

    .line 128
    :goto_1
    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 123
    :cond_1
    const/16 v2, 0x2d0

    if-gt v0, v2, :cond_2

    .line 124
    const/16 v0, 0x32

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const/16 v0, 0x5a

    goto :goto_1
.end method

.method public getTWMAdSizeConstantString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 48
    const-string v0, "0"

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_MRECT:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_MRECT:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 51
    const-string v0, "1"

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_BANNER:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 54
    const-string v0, "2"

    goto :goto_0

    .line 56
    :cond_2
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_LEADERBOARD:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->b:I

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->IAB_LEADERBOARD:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 57
    const-string v0, "3"

    goto :goto_0

    .line 59
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    return v0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 139
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 140
    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->a:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public isAutoHeight()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->c:Z

    return v0
.end method

.method public isCustomAdSize()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->d:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->e:Z

    return v0
.end method

.method public isSizeAppropriate(II)Z
    .locals 6

    .prologue
    const/high16 v5, 0x3fa00000    # 1.25f

    const v4, 0x3f4ccccd    # 0.8f

    .line 166
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    .line 168
    int-to-float v2, p1

    int-to-float v3, v0

    mul-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    int-to-float v2, p1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    int-to-float v0, p2

    int-to-float v2, v1

    mul-float/2addr v2, v5

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

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
    .line 172
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->isAutoHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "smart_banner"

    .line 175
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
