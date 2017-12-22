.class Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;
.super Ljava/lang/Object;
.source "MeasureTranslator.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_render"


# instance fields
.field private mDeviceHeight:I

.field private mDeviceWidth:I

.field private mHorizontalOffset:I

.field private mRootContainerHeight:I

.field private mRootContainerWidth:I

.field private mScaleFactor:F

.field private mVerticalOffset:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->validateRootContainer(II)V

    .line 53
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    .line 54
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    .line 56
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 57
    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 63
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->isAspectRationFourByThree(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Movie gots whole width"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    .line 66
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 67
    int-to-float v0, p2

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 69
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    if-gez v0, :cond_0

    .line 70
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Offset can not be negative!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Movie gots whole height"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 76
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 77
    int-to-float v0, p1

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    .line 78
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    if-gez v0, :cond_0

    .line 79
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Offset can not be negative!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    goto :goto_0
.end method

.method public static createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 103
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    if-gtz p0, :cond_1

    .line 104
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "DisplayView measures not know or master index not parsed yet!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;-><init>(IIII)V

    goto :goto_0
.end method

.method private static isAspectRationFourByThree(II)Z
    .locals 2

    .prologue
    .line 112
    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateRootContainer(II)V
    .locals 2

    .prologue
    .line 87
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 88
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Invalid root container height, default to w/h: 1280/720"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    .line 90
    const/16 v0, 0x500

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_1
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    .line 94
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getDeviceHeight()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    return v0
.end method

.method public getDeviceWidth()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    return v0
.end method

.method public getRootContainerHeight()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    return v0
.end method

.method public getRootContainerWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MeasureTranslator [mScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVerticalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHorizontalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
