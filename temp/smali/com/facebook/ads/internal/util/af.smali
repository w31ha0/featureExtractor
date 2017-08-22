.class public Lcom/facebook/ads/internal/util/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->c:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->d:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->e:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->f:I

    iput-wide v2, p0, Lcom/facebook/ads/internal/util/af;->g:J

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->h:I

    iput-wide v2, p0, Lcom/facebook/ads/internal/util/af;->i:J

    iput-wide v2, p0, Lcom/facebook/ads/internal/util/af;->j:J

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->k:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->l:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->m:I

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->n:I

    iput v1, p0, Lcom/facebook/ads/internal/util/af;->o:F

    iput v1, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iput v1, p0, Lcom/facebook/ads/internal/util/af;->q:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/util/af;->g:J

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/util/af;->b:Z

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/facebook/ads/internal/util/af;->b:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->q:F

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/util/af;->q:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->q:F

    :cond_1
    new-array v0, v2, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v1, v2, [I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget v2, v0, v5

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->c:I

    aget v2, v0, v4

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->f:I

    iput v4, p0, Lcom/facebook/ads/internal/util/af;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/util/af;->i:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v3, v1, v5

    add-int/2addr v2, v3

    aget v3, v0, v5

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v1, v1, v4

    add-int/2addr v1, v2

    aget v0, v0, v4

    sub-int v0, v1, v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->l:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/facebook/ads/internal/util/af;->o:F

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->o:F

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->o:F

    iget v0, p0, Lcom/facebook/ads/internal/util/af;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->o:F

    iget v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iget v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iget v0, p0, Lcom/facebook/ads/internal/util/af;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->h:I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/util/af;->j:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v3, v1, v5

    add-int/2addr v2, v3

    aget v3, v0, v5

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/ads/internal/util/af;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v1, v1, v4

    add-int/2addr v1, v2

    aget v0, v0, v4

    sub-int v0, v1, v0

    iput v0, p0, Lcom/facebook/ads/internal/util/af;->n:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/util/af;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->m:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->n:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->e:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->f:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/facebook/ads/internal/util/af;->f:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->e:I

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/facebook/ads/internal/util/af;->e:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/facebook/ads/internal/util/af;->f:I

    sub-int/2addr v5, v1

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->m:I

    iget v2, p0, Lcom/facebook/ads/internal/util/af;->n:I

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/facebook/ads/internal/util/af;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/util/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/util/af;->g:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/util/af;->b:Z

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/internal/util/af;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/util/af;->p:F

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->q:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/internal/util/af;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/internal/util/af;->j:J

    iget-wide v4, p0, Lcom/facebook/ads/internal/util/af;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/internal/util/af;->j:J

    iget-wide v4, p0, Lcom/facebook/ads/internal/util/af;->g:J

    sub-long/2addr v0, v4

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "adPositionX"

    iget v5, p0, Lcom/facebook/ads/internal/util/af;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adPositionY"

    iget v5, p0, Lcom/facebook/ads/internal/util/af;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "width"

    iget v5, p0, Lcom/facebook/ads/internal/util/af;->e:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "height"

    iget v5, p0, Lcom/facebook/ads/internal/util/af;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "clickDelayTime"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/util/af;->i:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/util/af;->j:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startX"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startY"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clickX"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clickY"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endX"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endY"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "force"

    iget v1, p0, Lcom/facebook/ads/internal/util/af;->o:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "radiusX"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "radiusY"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto/16 :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto/16 :goto_1
.end method
