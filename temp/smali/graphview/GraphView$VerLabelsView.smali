.class Lgraphview/GraphView$VerLabelsView;
.super Landroid/view/View;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgraphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerLabelsView"
.end annotation


# instance fields
.field final synthetic this$0:Lgraphview/GraphView;


# direct methods
.method public constructor <init>(Lgraphview/GraphView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    .line 251
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    invoke-virtual {p1}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v0

    invoke-virtual {v0}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 254
    :goto_0
    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    invoke-virtual {p0, v1}, Lgraphview/GraphView$VerLabelsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void

    .line 253
    :cond_0
    invoke-virtual {p1}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v0

    invoke-virtual {v0}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$0(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$23(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_1

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v13}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v13

    invoke-virtual {v13}, Lgraphview/GraphViewStyle;->getTextSize()F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getMaxY()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v14}, Lgraphview/GraphView;->getMinY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    const-wide v14, 0x3fe90e5604189375L    # 0.783

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v14}, Lgraphview/GraphView;->getMinY()D

    move-result-wide v14

    add-double v8, v12, v14

    .line 269
    .local v8, "testY":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v9, v13}, Lgraphview/GraphView;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "testLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v15}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v12, v7, v13, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v13}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lgraphview/GraphView;->access$3(Lgraphview/GraphView;Ljava/lang/Integer;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v13}, Lgraphview/GraphView;->access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lgraphview/GraphView;->access$24(Lgraphview/GraphView;Ljava/lang/Integer;)V

    .line 274
    .end local v7    # "testLabel":Ljava/lang/String;
    .end local v8    # "testY":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$VerLabelsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v13}, Lgraphview/GraphView;->access$23(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5

    .line 275
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v13}, Lgraphview/GraphView;->access$23(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v13, v14

    float-to-int v13, v13

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgraphview/GraphView$VerLabelsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    :cond_2
    :goto_0
    const/high16 v1, 0x41a00000    # 20.0f

    .line 283
    .local v1, "border":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$0(Lgraphview/GraphView;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v1, v12

    .line 284
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$VerLabelsView;->getHeight()I

    move-result v12

    int-to-float v3, v12

    .line 285
    .local v3, "height":F
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v1

    sub-float v2, v3, v12

    .line 287
    .local v2, "graphheight":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v13, v2}, Lgraphview/GraphView;->access$9(Lgraphview/GraphView;F)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lgraphview/GraphView;->access$10(Lgraphview/GraphView;[Ljava/lang/String;)V

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v13}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v13

    invoke-virtual {v13}, Lgraphview/GraphViewStyle;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$VerLabelsView;->getWidth()I

    move-result v6

    .line 294
    .local v6, "labelsWidth":I
    const/4 v5, 0x0

    .line 295
    .local v5, "labelsOffset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    sget-object v13, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v12, v13, :cond_6

    .line 296
    move v5, v6

    .line 300
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v10, v12, -0x1

    .line 301
    .local v10, "vers":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-lt v4, v12, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 309
    return-void

    .line 277
    .end local v1    # "border":F
    .end local v2    # "graphheight":F
    .end local v3    # "height":F
    .end local v4    # "i":I
    .end local v5    # "labelsOffset":I
    .end local v6    # "labelsWidth":I
    .end local v10    # "vers":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView$VerLabelsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v12, v13, :cond_2

    .line 278
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v13}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v13

    invoke-virtual {v13}, Lgraphview/GraphViewStyle;->getVerticalLabelsWidth()I

    move-result v13

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgraphview/GraphView$VerLabelsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 297
    .restart local v1    # "border":F
    .restart local v2    # "graphheight":F
    .restart local v3    # "height":F
    .restart local v5    # "labelsOffset":I
    .restart local v6    # "labelsWidth":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-virtual {v12}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getVerticalLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v12, v13, :cond_4

    .line 298
    div-int/lit8 v5, v6, 0x2

    goto :goto_1

    .line 302
    .restart local v4    # "i":I
    .restart local v10    # "vers":I
    :cond_7
    int-to-float v12, v10

    div-float v12, v2, v12

    int-to-float v13, v4

    mul-float/2addr v12, v13

    add-float v11, v12, v1

    .line 303
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v12, v12, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v13, v13, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v13}, Lgraphview/GraphViewStyle;->getVerticalLabelsColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    invoke-static {v12}, Lgraphview/GraphView;->access$8(Lgraphview/GraphView;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lgraphview/GraphView$VerLabelsView;->this$0:Lgraphview/GraphView;

    iget-object v14, v14, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method
