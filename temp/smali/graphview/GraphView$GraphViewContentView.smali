.class Lgraphview/GraphView$GraphViewContentView;
.super Landroid/view/View;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgraphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphViewContentView"
.end annotation


# instance fields
.field private graphwidth:F

.field private lastTouchEventX:F

.field private scrollingStarted:Z

.field final synthetic this$0:Lgraphview/GraphView;


# direct methods
.method public constructor <init>(Lgraphview/GraphView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 67
    iput-object p1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    .line 68
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lgraphview/GraphView$GraphViewContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method private onMoveGesture(F)V
    .locals 13
    .param p1, "f"    # F

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 153
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    .line 154
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v5

    float-to-double v7, p1

    iget-object v9, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v9}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget v9, p0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    float-to-double v9, v9

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 157
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v4, v11}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v2

    .line 158
    .local v2, "minX":D
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v4, v11}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v0

    .line 159
    .local v0, "maxX":D
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gez v4, :cond_4

    .line 160
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4, v2, v3}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    .line 166
    :cond_0
    :goto_0
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$18(Lgraphview/GraphView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4, v12}, Lgraphview/GraphView;->access$7(Lgraphview/GraphView;[Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$19(Lgraphview/GraphView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4, v12}, Lgraphview/GraphView;->access$10(Lgraphview/GraphView;[Ljava/lang/String;)V

    .line 168
    :cond_2
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$20(Lgraphview/GraphView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 170
    .end local v0    # "maxX":D
    .end local v2    # "minX":D
    :cond_3
    invoke-virtual {p0}, Lgraphview/GraphView$GraphViewContentView;->invalidate()V

    .line 171
    return-void

    .line 161
    .restart local v0    # "maxX":D
    .restart local v2    # "minX":D
    :cond_4
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v4}, Lgraphview/GraphView;->access$16(Lgraphview/GraphView;)D

    move-result-wide v4

    iget-object v6, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v6}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v6

    add-double/2addr v4, v6

    cmpl-double v4, v4, v0

    if-lez v4, :cond_0

    .line 162
    iget-object v4, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v5, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v5}, Lgraphview/GraphView;->access$15(Lgraphview/GraphView;)D

    move-result-wide v5

    sub-double v5, v0, v5

    invoke-static {v4, v5, v6}, Lgraphview/GraphView;->access$17(Lgraphview/GraphView;D)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    const/high16 v8, 0x41a00000    # 20.0f

    .line 84
    .local v8, "border":F
    const/4 v3, 0x0

    .line 85
    .local v3, "horstart":F
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$GraphViewContentView;->getHeight()I

    move-result v2

    int-to-float v10, v2

    .line 86
    .local v10, "height":F
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$GraphViewContentView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    .line 87
    .local v5, "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v2}, Lgraphview/GraphView;->getMaxY()D

    move-result-wide v30

    .line 88
    .local v30, "maxY":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v2}, Lgraphview/GraphView;->getMinY()D

    move-result-wide v19

    .line 89
    .local v19, "minY":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v28

    .line 90
    .local v28, "maxX":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v17

    .line 91
    .local v17, "minX":D
    sub-double v21, v28, v17

    .line 94
    .local v21, "diffX":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$0(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$1(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v6}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v6

    invoke-virtual {v6}, Lgraphview/GraphViewStyle;->getTextSize()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v11

    sub-double/2addr v6, v11

    const-wide v11, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v11

    add-double v33, v6, v11

    .line 97
    .local v33, "testX":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    const/4 v6, 0x1

    move-wide/from16 v0, v33

    invoke-virtual {v2, v0, v1, v6}, Lgraphview/GraphView;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v32

    .line 98
    .local v32, "testLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v9}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v6, v7, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v6}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lgraphview/GraphView;->access$3(Lgraphview/GraphView;Ljava/lang/Integer;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v6}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lgraphview/GraphView;->access$4(Lgraphview/GraphView;Ljava/lang/Integer;)V

    .line 102
    .end local v32    # "testLabel":Ljava/lang/String;
    .end local v33    # "testX":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$0(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    .line 104
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v8

    sub-float v15, v10, v2

    .line 105
    .local v15, "graphheight":F
    move-object/from16 v0, p0

    iput v5, v0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$5(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget v7, v0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    invoke-static {v6, v7}, Lgraphview/GraphView;->access$6(Lgraphview/GraphView;F)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lgraphview/GraphView;->access$7(Lgraphview/GraphView;[Ljava/lang/String;)V

    .line 110
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v6, v15}, Lgraphview/GraphView;->access$9(Lgraphview/GraphView;F)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lgraphview/GraphView;->access$10(Lgraphview/GraphView;[Ljava/lang/String;)V

    .line 115
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v35, v2, -0x1

    .line 117
    .local v35, "vers":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v27

    if-lt v0, v2, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$5(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    move-object/from16 v7, p1

    move v9, v3

    invoke-virtual/range {v6 .. v12}, Lgraphview/GraphView;->drawHorizontalLabels(Landroid/graphics/Canvas;FFF[Ljava/lang/String;F)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v6, v6, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v6}, Lgraphview/GraphViewStyle;->getHorizontalLabelsColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$11(Lgraphview/GraphView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    const/high16 v7, 0x40800000    # 4.0f

    sub-float v7, v8, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v9, v9, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    cmpl-double v2, v30, v19

    if-nez v2, :cond_4

    .line 131
    const-wide/16 v6, 0x0

    cmpl-double v2, v30, v6

    if-nez v2, :cond_7

    .line 133
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 134
    const-wide/16 v19, 0x0

    .line 141
    :cond_4
    :goto_1
    sub-double v23, v30, v19

    .line 142
    .local v23, "diffY":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 144
    const/16 v27, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$12(Lgraphview/GraphView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-lt v0, v2, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$14(Lgraphview/GraphView;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10, v5}, Lgraphview/GraphView;->drawLegend(Landroid/graphics/Canvas;FF)V

    .line 149
    :cond_5
    return-void

    .line 118
    .end local v23    # "diffY":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v2, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v6, v6, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v6}, Lgraphview/GraphViewStyle;->getGridColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    move/from16 v0, v35

    int-to-float v2, v0

    div-float v2, v15, v2

    move/from16 v0, v27

    int-to-float v6, v0

    mul-float/2addr v2, v6

    add-float v4, v2, v8

    .line 120
    .local v4, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    iget-object v7, v2, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 136
    .end local v4    # "y":F
    :cond_7
    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    mul-double v30, v30, v6

    .line 137
    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double v19, v19, v6

    goto :goto_1

    .line 145
    .restart local v23    # "diffY":D
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    move/from16 v0, v27

    invoke-static {v2, v0}, Lgraphview/GraphView;->access$13(Lgraphview/GraphView;I)[Lgraphview/GraphViewDataInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lgraphview/GraphView$GraphViewContentView;->graphwidth:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v2}, Lgraphview/GraphView;->access$12(Lgraphview/GraphView;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, v27

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgraphview/GraphViewSeries;

    iget-object v0, v2, Lgraphview/GraphViewSeries;->style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    move-object/from16 v26, v0

    move-object/from16 v12, p1

    move/from16 v16, v8

    move/from16 v25, v3

    invoke-virtual/range {v11 .. v26}, Lgraphview/GraphView;->drawSeries(Landroid/graphics/Canvas;[Lgraphview/GraphViewDataInterface;FFFDDDDFLgraphview/GraphViewSeries$GraphViewSeriesStyle;)V

    .line 144
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v1}, Lgraphview/GraphView;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v1}, Lgraphview/GraphView;->isDisableTouch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 182
    :cond_2
    const/4 v0, 0x0

    .line 184
    .local v0, "handled":Z
    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v1}, Lgraphview/GraphView;->access$21(Lgraphview/GraphView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v1}, Lgraphview/GraphView;->access$22(Lgraphview/GraphView;)Lgraphview/compatible/ScaleGestureDetector;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v1}, Lgraphview/GraphView;->access$22(Lgraphview/GraphView;)Lgraphview/compatible/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgraphview/compatible/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 186
    iget-object v1, p0, Lgraphview/GraphView$GraphViewContentView;->this$0:Lgraphview/GraphView;

    invoke-static {v1}, Lgraphview/GraphView;->access$22(Lgraphview/GraphView;)Lgraphview/compatible/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lgraphview/compatible/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    .line 188
    :cond_3
    if-nez v0, :cond_8

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 193
    iput-boolean v4, p0, Lgraphview/GraphView$GraphViewContentView;->scrollingStarted:Z

    .line 194
    const/4 v0, 0x1

    .line 196
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_5

    .line 197
    iput-boolean v2, p0, Lgraphview/GraphView$GraphViewContentView;->scrollingStarted:Z

    .line 198
    iput v3, p0, Lgraphview/GraphView$GraphViewContentView;->lastTouchEventX:F

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 202
    iget-boolean v1, p0, Lgraphview/GraphView$GraphViewContentView;->scrollingStarted:Z

    if-eqz v1, :cond_7

    .line 203
    iget v1, p0, Lgraphview/GraphView$GraphViewContentView;->lastTouchEventX:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_6

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lgraphview/GraphView$GraphViewContentView;->lastTouchEventX:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lgraphview/GraphView$GraphViewContentView;->onMoveGesture(F)V

    .line 206
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lgraphview/GraphView$GraphViewContentView;->lastTouchEventX:F

    .line 207
    const/4 v0, 0x1

    .line 210
    :cond_7
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lgraphview/GraphView$GraphViewContentView;->invalidate()V

    goto :goto_0

    .line 214
    :cond_8
    iput-boolean v2, p0, Lgraphview/GraphView$GraphViewContentView;->scrollingStarted:Z

    .line 215
    iput v3, p0, Lgraphview/GraphView$GraphViewContentView;->lastTouchEventX:F

    goto :goto_0
.end method
