.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;
.super Ljava/lang/Object;
.source "BarkerHelper.java"


# instance fields
.field private mColumnAndGutterWidth:I

.field private mContext:Landroid/content/Context;

.field private mMaxModalWidth:I

.field private mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    .line 196
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getFormatForDevice(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getTotalColumnNum()I

    move-result v1

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->isOversized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 204
    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    .line 205
    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private getColumnsWidth(I)I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBookmarkWidth()I
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getBookmarkColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getColumnPlusGutterWidth()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    return v0
.end method

.method public getColumnWidth()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mColumnAndGutterWidth:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCreditsWidth()I
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getCreditsColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDpArtworkHeight(I)I
    .locals 4

    .prologue
    .line 317
    const/high16 v0, 0x3f100000    # 0.5625f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    .line 319
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    float-to-int v0, v0

    .line 329
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 324
    div-float v2, v0, v1

    .line 325
    sget v3, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->MAX_PERCENT_SCREEN_HEIGHT_OF_DP_ARTWORK:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 327
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    .line 329
    :cond_1
    float-to-int v0, v0

    goto :goto_0
.end method

.method public getEpisodeImageWidth()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getEpisodeImageColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGutterWidth()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getModalWidth()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnsWidth(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfSims()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getNumberOfSims()I

    move-result v0

    return v0
.end method

.method public getPreReleaseContentWidth()I
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getPreReleaseColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSynopsisWidth()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getEpisodeSynopsisColumnSpan()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnPlusGutterWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTotalColumnNum()I
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->isOversized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    .line 210
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    .line 209
    :goto_0
    return v0

    .line 210
    :cond_1
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public isOversized()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->WIDE:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->getModalColumnSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getColumnsWidth(I)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mMaxModalWidth:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynopsisAndCreditsInSameRow()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->mModalFormat:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$ModalFormat;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
