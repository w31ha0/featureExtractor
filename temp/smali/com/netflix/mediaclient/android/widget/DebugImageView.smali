.class public abstract Lcom/netflix/mediaclient/android/widget/DebugImageView;
.super Landroid/widget/ImageView;
.source "DebugImageView.java"


# static fields
.field private static final BAD_BITMAP_SIZE_SCALE_FACTOR:F = 0.75f

.field private static final BG_ALPHA:I = 0x60

.field private static final DRAW_BITMAP_SIZE_OVERLAY_FOR_GOOD_CASES:Z = false

.field private static final LOGCAT_VERBOSE:Z = false

.field private static final TEXT_SIZE_DP:F = 12.0f

.field private static final X_OFFSET_PX:I = 0xc

.field private static final Y_OFFSET_PX:I = 0x4

.field private static bgPaintAwful:Landroid/graphics/Paint;

.field private static bgPaintBad:Landroid/graphics/Paint;

.field private static bgPaintGood:Landroid/graphics/Paint;

.field private static bgRect:Landroid/graphics/Rect;

.field private static fillPaint:Landroid/graphics/Paint;

.field private static staticInitComplete:Z

.field private static yPosPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/android/widget/DebugImageView;->staticInitComplete:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->init()V

    .line 54
    return-void
.end method

.method private computeBgPaint(II)Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 135
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgPaintAwful:Landroid/graphics/Paint;

    .line 143
    :goto_0
    return-object v0

    .line 137
    :cond_1
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    int-to-float v0, p2

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 139
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgPaintBad:Landroid/graphics/Paint;

    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawBitmapSizeOverlay(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 96
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->computeBgPaint(II)Landroid/graphics/Paint;

    move-result-object v0

    .line 109
    :goto_1
    if-eqz v0, :cond_0

    .line 111
    sget-object v2, Lcom/netflix/mediaclient/android/widget/DebugImageView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 112
    sget-object v2, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgRect:Landroid/graphics/Rect;

    const/16 v3, 0xc

    sget v4, Lcom/netflix/mediaclient/android/widget/DebugImageView;->yPosPx:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 114
    sget-object v2, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgRect:Landroid/graphics/Rect;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MathUtils;->expandRect(Landroid/graphics/Rect;I)V

    .line 116
    sget-object v2, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    const/high16 v0, 0x41400000    # 12.0f

    sget v2, Lcom/netflix/mediaclient/android/widget/DebugImageView;->yPosPx:I

    int-to-float v2, v2

    sget-object v3, Lcom/netflix/mediaclient/android/widget/DebugImageView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "bitmap size: %s, view x: %d, view y: %d, bgRect: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/netflix/mediaclient/android/widget/DebugImageView;->bgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 119
    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 102
    :cond_2
    instance-of v2, v0, Lcom/makeramen/RoundedDrawable;

    if-eqz v2, :cond_3

    .line 103
    check-cast v0, Lcom/makeramen/RoundedDrawable;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/makeramen/RoundedDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/makeramen/RoundedDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/makeramen/RoundedDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/makeramen/RoundedDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/android/widget/DebugImageView;->computeBgPaint(II)Landroid/graphics/Paint;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method


# virtual methods
.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    return-void
.end method
