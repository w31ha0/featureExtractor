.class public Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;
.super Landroid/widget/SeekBar;
.source "SnappableSeekBar.java"


# static fields
.field private static final SNAP_REGION_SIZE_DP:I = 0x30

.field private static final TAG:Ljava/lang/String; = "SnappableSeekBar"


# instance fields
.field private cachedThumb:Landroid/graphics/drawable/Drawable;

.field private dent:Landroid/graphics/Bitmap;

.field private dentVisible:Z

.field private disableTrackTouching:Z

.field private rectDent:Landroid/graphics/Rect;

.field private shouldSnapToTouchStartPosition:Z

.field private snapListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

.field private snapPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->shouldSnapToTouchStartPosition:Z

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->startSnapping()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->finishSnapping()V

    return-void
.end method

.method private computeXOffsetFromProgress(I)F
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getWidth()I

    move-result v0

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 210
    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getMax()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private drawDent(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->rectDent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 144
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->computeXOffsetFromProgress(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getThumbOffset()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 150
    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 151
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->rectDent:Landroid/graphics/Rect;

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->rectDent:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    :cond_1
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->cachedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->cachedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    :cond_0
    return-void
.end method

.method private finishSnapping()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dentVisible:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->rectDent:Landroid/graphics/Rect;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->invalidate()V

    .line 187
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/api/Api21Util;->setSplitTrack(Landroid/widget/SeekBar;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method private startSnapping()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dentVisible:Z

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->invalidate()V

    .line 180
    return-void
.end method

.method private touchEventToProgress(Landroid/view/MotionEvent;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v0, v1

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getMax()I

    move-result v2

    .line 203
    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 204
    float-to-int v0, v0

    return v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-le v3, v0, :cond_1

    .line 198
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCachedThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->cachedThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dentVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->drawDent(Landroid/graphics/Canvas;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->disableTrackTouching:Z

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getCachedThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 104
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getThumbOffset()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 105
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getThumbOffset()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 112
    :goto_0
    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->disableTrackTouching:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_1
    return v1

    .line 119
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 121
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->touchEventToProgress(Landroid/view/MotionEvent;)I

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

    .line 123
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->access$000(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapPosition:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setDisableTrackTouching(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->disableTrackTouching:Z

    .line 85
    return-void
.end method

.method public setScrubberDentBitmap(I)V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    .line 77
    const-string/jumbo v0, "SnappableSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->dent:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public setShouldSnapToTouchStartPosition(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->shouldSnapToTouchStartPosition:Z

    .line 89
    return-void
.end method

.method public setSnappableOnSeekBarChangeListener(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;)V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;-><init>(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->snapListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 94
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->cachedThumb:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method
