.class public Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
.super Landroid/view/SurfaceView;
.source "TappableSurfaceView.java"


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SCALE:I = 0x3

.field public static final MODE_STRETCH:I = 0x2

.field public static final MODE_ZOOM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "@@@"


# instance fields
.field private hasCropInfo:Z

.field private final listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCropScaleX:D

.field private mCropScaleY:D

.field private mCroppedVideoHeight:I

.field private mCroppedVideoWidth:I

.field private mPheight:I

.field private mPreviousMeasureHeight:I

.field private mPreviousMeasureWidth:I

.field private mPwidth:I

.field private mScale:F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mode:I

.field private surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 43
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    .line 44
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    .line 45
    iput-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleX:D

    .line 46
    iput-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleY:D

    .line 47
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 52
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 57
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 71
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private initSurface(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "INIT_SURFACE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method


# virtual methods
.method public addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V
    .locals 1

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->startListening()V

    .line 125
    :cond_1
    return-void
.end method

.method public canVideoBeZoomed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 429
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCroppedVideoHeight()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    return v0
.end method

.method public getCroppedVideoWidth()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 150
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "onMeasure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 162
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 164
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 165
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use default size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 169
    :cond_2
    const/16 v1, 0x780

    .line 170
    const/16 v0, 0x438

    .line 171
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "use hardcode size"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 178
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 185
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-lt v2, v3, :cond_5

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    if-lez v2, :cond_5

    .line 189
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    .line 272
    :cond_4
    :goto_0
    return-void

    .line 192
    :cond_5
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-lez v2, :cond_7

    .line 193
    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    if-eqz v2, :cond_6

    .line 194
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    .line 195
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    iput v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    .line 197
    :cond_6
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_9

    .line 198
    const-string/jumbo v0, "@@@"

    const-string/jumbo v2, "image too tall, correcting"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    div-int/2addr v0, v2

    .line 209
    :cond_7
    :goto_1
    const-string/jumbo v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "aspect ratio corrected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 251
    :pswitch_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Stretch to full screen ..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 253
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 259
    :cond_8
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 260
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLocationOnScreen([I)V

    .line 265
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    .line 266
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 267
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 269
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    if-eqz v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;->onSurfaceMeasureChange(II)V

    goto :goto_0

    .line 200
    :cond_9
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_7

    .line 201
    const-string/jumbo v1, "@@@"

    const-string/jumbo v2, "image too wide, correcting"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_1

    .line 212
    :pswitch_1
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Follow Aspect ration"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    if-eqz v2, :cond_8

    .line 214
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Video image has crop"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleX:D

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 216
    iget-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleY:D

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_2

    .line 220
    :pswitch_2
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Scale surface"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_8

    .line 224
    int-to-float v1, v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 225
    int-to-float v0, v0

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 226
    goto :goto_2

    .line 228
    :pswitch_3
    const-string/jumbo v2, "@@@"

    const-string/jumbo v3, "Zoomin ..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 232
    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 233
    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 235
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_a

    .line 236
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 237
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 243
    :goto_3
    iget-boolean v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    if-eqz v2, :cond_8

    .line 244
    const-string/jumbo v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video image has crop, scalex= mCropScaleX scaley="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleY:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleX:D

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 246
    iget-wide v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleY:D

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto/16 :goto_2

    .line 240
    :cond_a
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 241
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_3

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    const-string/jumbo v0, "TAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 97
    :cond_0
    return v3
.end method

.method processOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 108
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;->onTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z
    .locals 2

    .prologue
    .line 135
    if-nez p1, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->stopListening()V

    goto :goto_0
.end method

.method public setCroppedVideoHeight(I)V
    .locals 4

    .prologue
    .line 362
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    .line 363
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleY:D

    .line 364
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    .line 367
    :cond_0
    return-void
.end method

.method public setCroppedVideoWidth(I)V
    .locals 4

    .prologue
    .line 340
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    .line 341
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCropScaleX:D

    .line 342
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mCroppedVideoHeight:I

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->hasCropInfo:Z

    .line 345
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 385
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 386
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 387
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 402
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 403
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mScale:F

    .line 404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string/jumbo v0, "@@@"

    const-string/jumbo v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .line 418
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    .line 322
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureHeight:I

    .line 323
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    .line 303
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPreviousMeasureWidth:I

    .line 304
    return-void
.end method
