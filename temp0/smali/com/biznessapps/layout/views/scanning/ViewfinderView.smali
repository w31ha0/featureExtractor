.class public final Lcom/biznessapps/layout/views/scanning/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final frameColor:I

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/biznessapps/layout/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->maskColor:I

    .line 81
    sget v1, Lcom/biznessapps/layout/R$color;->result_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultColor:I

    .line 82
    sget v1, Lcom/biznessapps/layout/R$color;->viewfinder_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->frameColor:I

    .line 83
    sget v1, Lcom/biznessapps/layout/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->laserColor:I

    .line 84
    sget v1, Lcom/biznessapps/layout/R$color;->possible_result_points:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultPointColor:I

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->scannerAlpha:I

    .line 86
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 87
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->invalidate()V

    .line 171
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->invalidate()V

    .line 161
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/layout/views/scanning/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 95
    .local v10, "frame":Landroid/graphics/Rect;
    if-nez v10, :cond_0

    .line 153
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    .line 99
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 102
    .local v11, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v15

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    const/4 v2, 0x0

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    int-to-float v4, v15

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    const/4 v2, 0x0

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v3, v1

    int-to-float v4, v15

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 115
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->frameColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->laserColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v2, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->scannerAlpha:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->scannerAlpha:I

    .line 125
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int v13, v1, v2

    .line 126
    .local v13, "middle":I
    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    add-int/lit8 v1, v13, -0x1

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    add-int/lit8 v1, v13, 0x2

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 129
    .local v9, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 130
    .local v8, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 141
    :cond_3
    if-eqz v8, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/ResultPoint;

    .line 145
    .local v14, "point":Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 133
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "point":Lcom/google/zxing/ResultPoint;
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 134
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->resultPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/ResultPoint;

    .line 138
    .restart local v14    # "point":Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 151
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "point":Lcom/google/zxing/ResultPoint;
    :cond_5
    const-wide/16 v2, 0x64

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
