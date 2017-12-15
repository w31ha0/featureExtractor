.class public final Lcom/creativemobi/engine/w;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:I


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/view/SurfaceHolder;

.field private F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:Lcom/creativemobi/engine/cd;

.field private K:Lcom/creativemobi/engine/bi;

.field private L:Z

.field private M:Ljava/util/ArrayList;

.field private N:I

.field private O:I

.field private P:Ljava/util/Hashtable;

.field private Q:Z

.field private b:Z

.field private c:Lcom/creativemobi/engine/cc;

.field private d:Ljava/lang/Thread;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:Ljava/util/Hashtable;

.field private s:Ljava/util/Hashtable;

.field private t:Ljava/util/Hashtable;

.field private u:Ljava/util/ArrayList;

.field private v:Ljava/util/Hashtable;

.field private w:Ljava/util/ArrayList;

.field private x:I

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/creativemobi/engine/w;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/creativemobi/engine/w;->b:Z

    .line 23
    iput-object v1, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    .line 24
    iput-object v1, p0, Lcom/creativemobi/engine/w;->d:Ljava/lang/Thread;

    .line 25
    iput-boolean v2, p0, Lcom/creativemobi/engine/w;->e:Z

    .line 26
    iput-boolean v3, p0, Lcom/creativemobi/engine/w;->f:Z

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/w;->g:Z

    .line 28
    iput-boolean v3, p0, Lcom/creativemobi/engine/w;->h:Z

    .line 29
    iput-boolean v3, p0, Lcom/creativemobi/engine/w;->i:Z

    .line 33
    iput-wide v5, p0, Lcom/creativemobi/engine/w;->l:J

    .line 34
    iput-wide v5, p0, Lcom/creativemobi/engine/w;->m:J

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->t:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->u:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->w:Ljava/util/ArrayList;

    .line 52
    iput v4, p0, Lcom/creativemobi/engine/w;->x:I

    .line 64
    iput-object v1, p0, Lcom/creativemobi/engine/w;->G:Ljava/lang/String;

    .line 66
    iput v3, p0, Lcom/creativemobi/engine/w;->H:I

    .line 67
    iput v2, p0, Lcom/creativemobi/engine/w;->I:I

    .line 71
    new-instance v0, Lcom/creativemobi/engine/bi;

    invoke-direct {v0, p0}, Lcom/creativemobi/engine/bi;-><init>(Lcom/creativemobi/engine/w;)V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    .line 72
    iput-boolean v3, p0, Lcom/creativemobi/engine/w;->L:Z

    .line 74
    iput-object v1, p0, Lcom/creativemobi/engine/w;->M:Ljava/util/ArrayList;

    .line 75
    const/16 v0, 0x64

    iput v0, p0, Lcom/creativemobi/engine/w;->N:I

    .line 76
    iput v4, p0, Lcom/creativemobi/engine/w;->O:I

    .line 296
    iput-object v1, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    .line 657
    iput-boolean v2, p0, Lcom/creativemobi/engine/w;->Q:Z

    .line 79
    iput-object p1, p0, Lcom/creativemobi/engine/w;->F:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    .line 82
    const/16 v0, 0x320

    iput v0, p0, Lcom/creativemobi/engine/w;->j:I

    .line 83
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/creativemobi/engine/w;->k:I

    .line 85
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/w;->n:I

    .line 86
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/w;->o:I

    .line 88
    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    iget v1, p0, Lcom/creativemobi/engine/w;->o:I

    if-ge v0, v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    .line 90
    iget v1, p0, Lcom/creativemobi/engine/w;->o:I

    iput v1, p0, Lcom/creativemobi/engine/w;->n:I

    .line 91
    iput v0, p0, Lcom/creativemobi/engine/w;->o:I

    .line 95
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 88
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    .line 676
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move v3, v9

    .line 677
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 679
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 680
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v3

    .line 677
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 683
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    int-to-byte v4, v4

    aput v4, v1, v3

    .line 684
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 691
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    sub-int v2, p2, v9

    move v3, v9

    move v4, v9

    move v5, v2

    move v6, v9

    move v2, v9

    .line 700
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_3

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-lez v7, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_2
    return-object v0

    .line 704
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 705
    if-eq v7, v10, :cond_4

    const/16 v8, 0xd

    if-eq v7, v8, :cond_4

    if-ne v7, v10, :cond_7

    .line 706
    :cond_4
    if-ne v4, v2, :cond_6

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_5
    :goto_3
    add-int/lit8 v2, v4, 0x1

    .line 709
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, p2

    move v6, v9

    move v3, v9

    .line 713
    goto :goto_2

    .line 707
    :cond_6
    sub-int v7, v4, v2

    if-lez v7, :cond_5

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 744
    :catch_1
    move-exception v7

    goto :goto_2

    .line 716
    :cond_7
    aget v8, v1, v4

    add-int/2addr v8, v6

    if-ge v8, v5, :cond_9

    .line 717
    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    move v3, v4

    .line 720
    :cond_8
    aget v7, v1, v4

    add-int/2addr v6, v7

    .line 721
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 723
    :cond_9
    if-lez v3, :cond_a

    if-le v3, v2, :cond_a

    .line 725
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v2, v3, 0x1

    move v3, v9

    move v4, v2

    move v5, p2

    move v6, v9

    .line 731
    goto :goto_2

    .line 734
    :cond_a
    const/4 v7, 0x1

    sub-int v7, v4, v7

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 736
    add-int/lit8 v2, v4, -0x1

    move v3, v9

    move v4, v2

    move v5, p2

    move v6, v9

    .line 744
    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 566
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    int-to-float v3, v0

    iget v0, p0, Lcom/creativemobi/engine/w;->o:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/w;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cd;

    .line 569
    iget-object v2, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    iget v3, p0, Lcom/creativemobi/engine/w;->p:F

    iget v4, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/creativemobi/engine/cd;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    :catch_0
    move-exception v0

    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    int-to-float v3, v0

    iget v0, p0, Lcom/creativemobi/engine/w;->o:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Lcom/creativemobi/engine/cd;)V
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 281
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->L:Z

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 285
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    iget v2, p0, Lcom/creativemobi/engine/w;->p:F

    iget v3, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/cd;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 286
    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/creativemobi/engine/w;->o:I

    const/16 v3, 0xd

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/w;->n:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/creativemobi/engine/w;->I:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/creativemobi/engine/w;->H:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/w;->o:I

    const/4 v5, 0x5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    const-string v1, "LOADING..."

    iget v2, p0, Lcom/creativemobi/engine/w;->n:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    const-string v4, "LOADING..."

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/w;->o:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 187
    :try_start_0
    iget v0, p0, Lcom/creativemobi/engine/w;->O:I

    if-ltz v0, :cond_0

    .line 188
    iget v0, p0, Lcom/creativemobi/engine/w;->O:I

    invoke-static {v0, p1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 267
    :goto_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/w;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->f:Z

    if-nez v0, :cond_1

    .line 278
    :goto_1
    return-void

    .line 272
    :cond_1
    new-instance v0, Lcom/creativemobi/engine/l;

    iget-object v1, p0, Lcom/creativemobi/engine/w;->G:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;)V

    .line 273
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 274
    iget-object v1, p0, Lcom/creativemobi/engine/w;->F:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;)V

    .line 275
    iget v1, p0, Lcom/creativemobi/engine/w;->p:F

    iget v2, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/l;->a(FF)V

    .line 276
    new-instance v1, Lcom/creativemobi/engine/cd;

    invoke-direct {v1, v0}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;)V

    iput-object v1, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    .line 277
    iget-object v0, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;)V

    goto :goto_1
.end method

.method private p()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 299
    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    move v0, v9

    .line 301
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cd;

    .line 306
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->d()V

    goto :goto_1

    .line 312
    :cond_2
    const/4 v0, 0x0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 315
    if-nez v3, :cond_4

    .line 349
    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 351
    :cond_3
    :goto_2
    return-void

    .line 316
    :cond_4
    :try_start_1
    invoke-direct {p0, v3}, Lcom/creativemobi/engine/w;->a(Landroid/graphics/Canvas;)V

    move v4, v9

    .line 318
    :goto_3
    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v5, v9

    .line 320
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 321
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/creativemobi/engine/cd;

    .line 322
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->b()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_6

    .line 324
    :try_start_2
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    .line 325
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v2

    iget-object v6, p0, Lcom/creativemobi/engine/w;->F:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;)V

    .line 326
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v2

    iget v6, p0, Lcom/creativemobi/engine/w;->p:F

    iget v7, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v2, v6, v7}, Lcom/creativemobi/engine/l;->a(FF)V

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    iget v6, p0, Lcom/creativemobi/engine/w;->p:F

    iget v7, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v1, v3, v2, v6, v7}, Lcom/creativemobi/engine/cd;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    :cond_6
    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 329
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 330
    :try_start_3
    iget-object v2, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 331
    :cond_7
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 332
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    iget-object v8, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_7

    .line 334
    const-string v1, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error drawing sprite "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 346
    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 349
    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 318
    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    :cond_a
    move v1, v9

    .line 343
    :goto_7
    :try_start_5
    iget-object v0, p0, Lcom/creativemobi/engine/w;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 344
    iget-object v0, p0, Lcom/creativemobi/engine/w;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/x;

    iget v2, p0, Lcom/creativemobi/engine/w;->p:F

    iget v4, p0, Lcom/creativemobi/engine/w;->q:F

    iget-object v5, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/creativemobi/engine/x;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 343
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 349
    :cond_b
    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_8
    iget-object v2, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/creativemobi/engine/w;->E:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_c
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 346
    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6
.end method

.method private q()V
    .locals 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/creativemobi/engine/cd;

    .line 358
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 359
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v3

    iget-object v4, p0, Lcom/creativemobi/engine/w;->F:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;)V

    .line 360
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v3

    iget v4, p0, Lcom/creativemobi/engine/w;->p:F

    iget v5, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v3, v4, v5}, Lcom/creativemobi/engine/l;->a(FF)V

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 367
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/w;->H:I

    .line 517
    const/4 v0, 0x0

    .line 518
    :goto_0
    if-nez v0, :cond_2

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cd;

    .line 523
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/creativemobi/engine/w;->F:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;)V

    .line 527
    iget v2, p0, Lcom/creativemobi/engine/w;->p:F

    iget v3, p0, Lcom/creativemobi/engine/w;->q:F

    invoke-virtual {v0, v2, v3}, Lcom/creativemobi/engine/l;->a(FF)V

    .line 528
    iget v0, p0, Lcom/creativemobi/engine/w;->I:I

    iget v2, p0, Lcom/creativemobi/engine/w;->H:I

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;)V

    .line 529
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/w;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/w;->I:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    invoke-virtual {p0}, Lcom/creativemobi/engine/w;->j()V

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    iput-object v4, p0, Lcom/creativemobi/engine/w;->J:Lcom/creativemobi/engine/cd;

    .line 542
    iput-object v4, p0, Lcom/creativemobi/engine/w;->G:Ljava/lang/String;

    .line 544
    :cond_3
    return-void

    .line 531
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;
    .locals 2

    .prologue
    .line 398
    float-to-int v0, p3

    float-to-int v1, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;
    .locals 2

    .prologue
    .line 377
    new-instance v1, Lcom/creativemobi/engine/cd;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/l;

    invoke-direct {v1, v0, p3, p4}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 378
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;
    .locals 2

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->h:Z

    if-eqz v0, :cond_0

    .line 389
    new-instance v1, Lcom/creativemobi/engine/cd;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/l;

    invoke-direct {v1, v0, p3, p4}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 390
    invoke-virtual {v1, p5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 391
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 394
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/creativemobi/engine/cd;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/l;

    invoke-direct {v1, v0, p3, p4}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    invoke-virtual {v1, p5}, Lcom/creativemobi/engine/cd;->a(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;
    .locals 2

    .prologue
    .line 458
    new-instance v0, Lcom/creativemobi/engine/l;

    invoke-direct {v0, p2}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    move-result-object v0

    .line 511
    iput-object p5, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 512
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Lcom/creativemobi/engine/l;

    invoke-direct {v0, p2}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iput-object p3, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 467
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;
    .locals 6

    .prologue
    .line 471
    new-instance v0, Lcom/creativemobi/engine/l;

    const v2, 0x3f0ccccd    # 0.55f

    move-object v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;FFFF)V

    .line 472
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iput-object p3, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 474
    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/creativemobi/engine/w;->t:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 125
    return-void
.end method

.method public final a(FF)V
    .locals 5

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->b:Z

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/w;->p:F

    div-float v0, p1, v0

    .line 625
    iget v1, p0, Lcom/creativemobi/engine/w;->q:F

    div-float v1, p2, v1

    .line 626
    iget-object v2, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    new-instance v3, Lcom/creativemobi/engine/bq;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/creativemobi/engine/bq;-><init>(Lcom/creativemobi/engine/w;IFF)V

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/bi;->a(Lcom/creativemobi/engine/bq;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    new-instance v1, Lcom/creativemobi/engine/bq;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, p1}, Lcom/creativemobi/engine/bq;-><init>(Lcom/creativemobi/engine/w;II)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bi;->a(Lcom/creativemobi/engine/bq;)V

    .line 639
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/cc;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    .line 179
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/x;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/creativemobi/engine/w;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cd;

    .line 435
    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;FFFF)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/creativemobi/engine/w;->t:Ljava/util/Hashtable;

    new-instance v1, Lcom/creativemobi/engine/z;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/creativemobi/engine/z;-><init>(FFFF)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/creativemobi/engine/w;->L:Z

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/String;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/creativemobi/engine/w;->t:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/z;

    .line 119
    if-nez p0, :cond_0

    move v0, v2

    .line 120
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/z;->a:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/z;->b:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/z;->a:F

    iget v1, p0, Lcom/creativemobi/engine/z;->c:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/z;->b:F

    iget v1, p0, Lcom/creativemobi/engine/z;->d:F

    add-float/2addr v0, v1

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;FFF)Z
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/creativemobi/engine/cd;->a(FFF)Z

    move-result v0

    .line 765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->h:Z

    if-eqz v0, :cond_0

    .line 403
    new-instance v1, Lcom/creativemobi/engine/cd;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/l;

    invoke-direct {v1, v0, p3, p4}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 404
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 407
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lcom/creativemobi/engine/l;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, p2, v1}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;F)V

    .line 479
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iput-object p3, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 481
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lcom/creativemobi/engine/l;

    invoke-direct {v0, p2, p4, p5, p6}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;FFF)V

    .line 486
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iput-object p3, v0, Lcom/creativemobi/engine/l;->a:Landroid/graphics/Bitmap$Config;

    .line 488
    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 132
    const v0, -0x777778

    iput v0, p0, Lcom/creativemobi/engine/w;->x:I

    .line 133
    iget-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/creativemobi/engine/w;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public final b(FF)V
    .locals 5

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->b:Z

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/w;->p:F

    div-float v0, p1, v0

    .line 633
    iget v1, p0, Lcom/creativemobi/engine/w;->q:F

    div-float v1, p2, v1

    .line 634
    iget-object v2, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    new-instance v3, Lcom/creativemobi/engine/bq;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/creativemobi/engine/bq;-><init>(Lcom/creativemobi/engine/w;IFF)V

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/bi;->a(Lcom/creativemobi/engine/bq;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    new-instance v1, Lcom/creativemobi/engine/bq;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, p1}, Lcom/creativemobi/engine/bq;-><init>(Lcom/creativemobi/engine/w;II)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bi;->a(Lcom/creativemobi/engine/bq;)V

    .line 643
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public final b(Ljava/lang/String;FF)Z
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/creativemobi/engine/cd;->a(FF)Z

    move-result v0

    .line 771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;
    .locals 2

    .prologue
    .line 498
    new-instance v0, Lcom/creativemobi/engine/l;

    invoke-direct {v0, p2, p3, p4}, Lcom/creativemobi/engine/l;-><init>(Ljava/lang/String;II)V

    .line 499
    iget-object v1, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/creativemobi/engine/w;->G:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/creativemobi/engine/l;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/l;

    return-object p0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->f:Z

    .line 150
    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cd;

    move-object v0, p0

    .line 751
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cd;

    move-object v0, p0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->d:Ljava/lang/Thread;

    .line 158
    iget-object v0, p0, Lcom/creativemobi/engine/w;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->g:Z

    .line 164
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->e()V

    .line 166
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/w;->c(I)V

    .line 167
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 755
    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 756
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->g:Z

    .line 172
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->f()V

    .line 174
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/w;->c(I)V

    .line 175
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 760
    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/creativemobi/engine/w;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 430
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 431
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/l;

    .line 550
    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    :goto_1
    return-void

    .line 551
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/creativemobi/engine/w;->r:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 552
    iget-object v0, p0, Lcom/creativemobi/engine/w;->s:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 553
    iget-object v0, p0, Lcom/creativemobi/engine/w;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 554
    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 555
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/w;->P:Ljava/util/Hashtable;

    .line 556
    iget-object v0, p0, Lcom/creativemobi/engine/w;->v:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->Q:Z

    .line 655
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/creativemobi/engine/w;->j:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/creativemobi/engine/w;->k:I

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->i:Z

    .line 861
    return-void
.end method

.method public final run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x32

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->e:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/w;->O:I

    .line 201
    iput-boolean v5, p0, Lcom/creativemobi/engine/w;->e:Z

    .line 203
    iget v0, p0, Lcom/creativemobi/engine/w;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/w;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/w;->p:F

    iget v0, p0, Lcom/creativemobi/engine/w;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/w;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/w;->q:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/creativemobi/engine/w;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->D:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->D:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->D:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x42

    const/16 v3, 0x4e

    const/16 v4, 0x82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->C:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    const v1, -0x112555

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/creativemobi/engine/w;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    :try_start_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/w;->L:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/creativemobi/engine/w;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/creativemobi/engine/w;->r()V

    .line 213
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/creativemobi/engine/w;->h:Z

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/engine/w;->m:J

    .line 216
    iget-object v0, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    iget v1, v0, Lcom/creativemobi/engine/bi;->b:I

    iget v0, v0, Lcom/creativemobi/engine/bi;->c:I

    if-eq v1, v0, :cond_5

    move v0, v5

    .line 217
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v1, :cond_4

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/creativemobi/engine/w;->m:J

    sub-long/2addr v1, v3

    .line 219
    iget-wide v3, p0, Lcom/creativemobi/engine/w;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/creativemobi/engine/w;->m:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/creativemobi/engine/w;->l:J

    .line 221
    iget-boolean v3, p0, Lcom/creativemobi/engine/w;->i:Z

    if-eqz v3, :cond_3

    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 222
    :cond_3
    :goto_3
    iget-boolean v3, p0, Lcom/creativemobi/engine/w;->g:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v3, :cond_6

    .line 223
    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 255
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/creativemobi/engine/w;->j()V

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v0, v9

    .line 216
    goto :goto_2

    .line 225
    :cond_6
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/creativemobi/engine/w;->m:J

    .line 226
    iget-boolean v3, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v3, :cond_2

    .line 228
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/creativemobi/engine/w;->K:Lcom/creativemobi/engine/bi;

    iget v4, v3, Lcom/creativemobi/engine/bi;->b:I

    iget v5, v3, Lcom/creativemobi/engine/bi;->c:I

    if-ne v4, v5, :cond_8

    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 230
    iget-boolean v4, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v4, :cond_7

    .line 231
    iget v4, v3, Lcom/creativemobi/engine/bq;->a:I

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 233
    :pswitch_0
    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    iget v5, v3, Lcom/creativemobi/engine/bq;->c:F

    iget v3, v3, Lcom/creativemobi/engine/bq;->d:F

    invoke-interface {v4, v5, v3}, Lcom/creativemobi/engine/cc;->b(FF)V

    goto :goto_4

    .line 228
    :cond_8
    iget-object v4, v3, Lcom/creativemobi/engine/bi;->a:[Lcom/creativemobi/engine/bq;

    iget v5, v3, Lcom/creativemobi/engine/bi;->c:I

    aget-object v4, v4, v5

    iget v5, v3, Lcom/creativemobi/engine/bi;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/creativemobi/engine/bi;->c:I

    iget v5, v3, Lcom/creativemobi/engine/bi;->c:I

    iget-object v6, v3, Lcom/creativemobi/engine/bi;->a:[Lcom/creativemobi/engine/bq;

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, v3, Lcom/creativemobi/engine/bi;->c:I

    move-object v3, v4

    goto :goto_5

    .line 236
    :pswitch_1
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    iget v4, v3, Lcom/creativemobi/engine/bq;->c:F

    iget v3, v3, Lcom/creativemobi/engine/bq;->d:F

    invoke-interface {v0, v4, v3}, Lcom/creativemobi/engine/cc;->a(FF)V

    :cond_9
    move v0, v9

    .line 238
    goto :goto_4

    .line 240
    :pswitch_2
    iget-object v4, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    iget v3, v3, Lcom/creativemobi/engine/bq;->b:I

    invoke-interface {v4, v3}, Lcom/creativemobi/engine/cc;->a(I)V

    goto :goto_4

    .line 243
    :pswitch_3
    iget-object v4, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    iget v3, v3, Lcom/creativemobi/engine/bq;->b:I

    invoke-interface {v4, v3}, Lcom/creativemobi/engine/cc;->b(I)V

    goto :goto_4

    .line 248
    :cond_a
    iget-boolean v3, p0, Lcom/creativemobi/engine/w;->Q:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/creativemobi/engine/w;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/creativemobi/engine/w;->Q:Z

    .line 249
    :cond_b
    cmp-long v3, v1, v10

    if-lez v3, :cond_c

    move-wide v1, v10

    .line 250
    :cond_c
    iget-object v3, p0, Lcom/creativemobi/engine/w;->c:Lcom/creativemobi/engine/cc;

    invoke-interface {v3, v1, v2}, Lcom/creativemobi/engine/cc;->a(J)V

    .line 251
    invoke-direct {p0}, Lcom/creativemobi/engine/w;->q()V

    .line 252
    iget-boolean v1, p0, Lcom/creativemobi/engine/w;->f:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/creativemobi/engine/w;->p()V

    .line 253
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/creativemobi/engine/w;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
