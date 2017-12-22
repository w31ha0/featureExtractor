.class public Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;
.super Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;
.source "ImageBasedSubtitleManager.java"


# instance fields
.field private mImageWrapper:Landroid/widget/RelativeLayout;

.field protected mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

.field private mPlayerControlsVisible:Z

.field private mVisibleBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->setVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    return-void
.end method

.method private createImage(Ljava/lang/String;IIZ)Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 404
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 405
    if-nez v0, :cond_0

    .line 406
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==> Unable to decode file on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    .line 410
    :cond_0
    if-eqz p4, :cond_1

    .line 414
    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    :goto_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 422
    goto :goto_0

    .line 416
    :cond_1
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Do not scale, use image original width"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private getHorizontalOffset()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getHorizontalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private getScaleFactor()F
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    .line 389
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getScaleFactor()F

    move-result v0

    goto :goto_0
.end method

.method private getVerticalOffset()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getVerticalOffset()I

    move-result v0

    goto :goto_0
.end method

.method private removeAll(Z)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V

    .line 141
    return-void
.end method

.method private removeSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 2

    .prologue
    .line 456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle block can not be null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 462
    if-eqz v0, :cond_1

    .line 466
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setVisibility(Z)V
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "All images invisible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 235
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    .line 237
    :cond_1
    return-void
.end method

.method private showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "No image! Can not show!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->displayed()V

    .line 257
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getScaleFactor()F

    move-result v9

    .line 259
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    move-result-object v11

    .line 260
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v2, v0

    .line 261
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 267
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v9, v3

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->getDeviceHeight()I

    move-result v3

    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_c

    .line 272
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 273
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v3

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    .line 274
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v4

    .line 275
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v3

    move v5, v1

    .line 283
    :goto_1
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getHeight()S

    move-result v7

    if-ne v7, v3, :cond_2

    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getWidth()S

    move-result v7

    if-ne v7, v4, :cond_2

    .line 285
    const-string/jumbo v5, "nf_subtitles_render"

    const-string/jumbo v7, "Source and target resolutions are the same, do not scale!"

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getHorizontalOffset()I

    move-result v7

    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginX()S

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    sub-int v8, v7, v2

    .line 289
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v8

    sub-int v7, v2, v4

    .line 290
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getOriginY()S

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getVerticalOffset()I

    move-result v9

    add-int/2addr v2, v9

    add-int/2addr v2, v0

    .line 291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    .line 294
    iget-boolean v9, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPlayerControlsVisible:Z

    if-eqz v9, :cond_3

    .line 295
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-le v2, v9, :cond_6

    .line 296
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getDisplayAreaMarginBottom()I

    move-result v9

    sub-int/2addr v9, v0

    .line 298
    if-lez v9, :cond_3

    .line 299
    sub-int/2addr v2, v9

    .line 300
    add-int/2addr v0, v9

    .line 317
    :cond_3
    :goto_2
    if-gez v2, :cond_4

    .line 318
    const-string/jumbo v9, "nf_subtitles_render"

    const-string/jumbo v10, "Top was negative!"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sub-int/2addr v0, v2

    move v2, v1

    .line 323
    :cond_4
    if-gez v0, :cond_b

    .line 324
    const-string/jumbo v9, "nf_subtitles_render"

    const-string/jumbo v10, "Bottom was negative!"

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    add-int/2addr v0, v2

    move v9, v1

    move v10, v0

    .line 329
    :goto_3
    if-gez v8, :cond_a

    .line 330
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Left was negative!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sub-int v0, v7, v8

    move v2, v1

    .line 335
    :goto_4
    if-gez v0, :cond_5

    .line 336
    const-string/jumbo v7, "nf_subtitles_render"

    const-string/jumbo v8, "Right was negative!"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 345
    :cond_5
    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4, v3, v5}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->createImage(Ljava/lang/String;IIZ)Landroid/widget/ImageView;

    move-result-object v5

    .line 346
    if-nez v5, :cond_7

    .line 347
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "showSubtitleBlock:: NULL image for desc.getLocalImagePath()!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->getDisplayAreaMarginTop()I

    move-result v9

    sub-int/2addr v9, v2

    .line 305
    if-lez v9, :cond_3

    .line 306
    add-int/2addr v2, v9

    .line 307
    sub-int/2addr v0, v9

    goto :goto_2

    .line 350
    :cond_7
    const-string/jumbo v7, "nf_subtitles_render"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showSubtitleBlock:: Image for "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getLocalImagePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, " exist and it is visible "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_9

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", w/h: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz p2, :cond_8

    .line 354
    new-instance v1, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-direct {v1, v5}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;-><init>(Landroid/view/View;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v11}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    invoke-virtual {v1, v2, v10, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 365
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    move v6, v1

    .line 350
    goto :goto_5

    :cond_a
    move v0, v7

    move v2, v8

    goto/16 :goto_4

    :cond_b
    move v9, v0

    move v10, v2

    goto/16 :goto_3

    :cond_c
    move v3, v0

    move v4, v2

    move v5, v6

    move v2, v1

    move v0, v1

    goto/16 :goto_1
.end method

.method private showSubtitleBlocks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 213
    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlock(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    goto :goto_1

    .line 216
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 217
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->moveBlocksAppartIfNeeded(Ljava/util/List;)V

    .line 221
    :goto_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->makeItVisible(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 227
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Add displayed block to pending queue to be removed at end time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto :goto_0

    .line 219
    :cond_2
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "No need to move blocks"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 495
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne p1, v1, :cond_0

    .line 500
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Clear."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method

.method public clearPendingUpdates()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Clear pending updates:: NOOP."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected createRunnable(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;Z)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 427
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    .line 428
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/subtitles/BaseSubtitleManager;->getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public declared-synchronized onPlayerOverlayVisibiltyChange(Z)V
    .locals 2

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPlayerControlsVisible:Z

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeVisibleSubtitleBlocks(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Display area is null, unable to set margins!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 149
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "ImageBasedSubtitleManager:: update subtitle data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p1, :cond_1

    .line 152
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle data is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    if-nez v0, :cond_2

    .line 157
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Subtitle parser is null. This should never happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Parser is as expected..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getParser()Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mParser:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    if-nez v1, :cond_3

    .line 191
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;->getRootContainerExtentX()S

    move-result v1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleMetadata;->getRootContainerExtentY()S

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mDisplayArea:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayNowBlocks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->showSubtitleBlocks(Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;->getDisplayLaterBlocks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->handleDelayedSubtitleBlocks(Ljava/util/List;Z)V

    goto :goto_0

    .line 185
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mSubtitleParserId:Ljava/lang/Integer;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mMeasureTranslator:Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    goto :goto_1
.end method

.method public onSubtitleRemove()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Remove all subtitles."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->removeAll(Z)V

    .line 72
    return-void
.end method

.method protected declared-synchronized removeVisibleSubtitleBlocks(Z)V
    .locals 3

    .prologue
    .line 118
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mImageWrapper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibleBlocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void
.end method

.method public setSubtitleVisibility(Z)V
    .locals 2

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mVisibilitySetting:Z

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$1;-><init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
