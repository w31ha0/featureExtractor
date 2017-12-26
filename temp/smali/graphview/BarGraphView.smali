.class public Lgraphview/BarGraphView;
.super Lgraphview/GraphView;
.source "BarGraphView.java"


# instance fields
.field private drawValuesOnTop:Z

.field private valuesOnTopColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lgraphview/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lgraphview/BarGraphView;->valuesOnTopColor:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lgraphview/GraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lgraphview/BarGraphView;->valuesOnTopColor:I

    .line 49
    return-void
.end method


# virtual methods
.method protected drawHorizontalLabels(Landroid/graphics/Canvas;FFF[Ljava/lang/String;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "border"    # F
    .param p3, "horstart"    # F
    .param p4, "height"    # F
    .param p5, "horlabels"    # [Ljava/lang/String;
    .param p6, "graphwidth"    # F

    .prologue
    .line 55
    iget-object v0, p0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    array-length v7, p5

    .line 58
    .local v7, "hors":I
    array-length v0, p5

    int-to-float v0, v0

    div-float v6, p6, v0

    .line 59
    .local v6, "barwidth":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v9, v6, v0

    .line 60
    .local v9, "textOffset":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p5

    if-lt v8, v0, :cond_0

    .line 73
    return-void

    .line 62
    :cond_0
    int-to-float v0, v7

    div-float v0, p6, v0

    int-to-float v2, v8

    mul-float/2addr v0, v2

    add-float v1, v0, p3

    .line 63
    .local v1, "x":F
    iget-object v0, p0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lgraphview/BarGraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v2}, Lgraphview/GraphViewStyle;->getGridColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sub-float v2, p4, p2

    iget-object v5, p0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p0}, Lgraphview/BarGraphView;->getShowHorizontalLabels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    int-to-float v0, v8

    mul-float/2addr v0, v6

    add-float/2addr v0, v9

    add-float v1, v0, p3

    .line 69
    iget-object v0, p0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lgraphview/BarGraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v2}, Lgraphview/GraphViewStyle;->getHorizontalLabelsColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    aget-object v0, p5, v8

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v2, p4, v2

    iget-object v3, p0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public drawSeries(Landroid/graphics/Canvas;[Lgraphview/GraphViewDataInterface;FFFDDDDFLgraphview/GraphViewSeries$GraphViewSeriesStyle;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "values"    # [Lgraphview/GraphViewDataInterface;
    .param p3, "graphwidth"    # F
    .param p4, "graphheight"    # F
    .param p5, "border"    # F
    .param p6, "minX"    # D
    .param p8, "minY"    # D
    .param p10, "diffX"    # D
    .param p12, "diffY"    # D
    .param p14, "horstart"    # F
    .param p15, "style"    # Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    .prologue
    .line 80
    move-object/from16 v0, p2

    array-length v2, v0

    int-to-float v2, v2

    div-float v11, p3, v2

    .line 82
    .local v11, "colwidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p15

    iget v3, v0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    const/4 v15, 0x0

    .line 89
    .local v15, "offset":F
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v16, "paintBackground":Landroid/graphics/Paint;
    const/16 v2, 0xff

    const/16 v3, 0x14

    const/16 v4, 0x28

    const/16 v5, 0x3c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 91
    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lgraphview/BarGraphView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, -0x23000000

    const v8, -0x22d850d1    # -7.55183E17f

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lgraphview/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    .line 99
    .local v12, "dateFormat":Ljava/text/DateFormat;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v13, v2, :cond_0

    .line 157
    return-void

    .line 100
    :cond_0
    aget-object v2, p2, v13

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v2

    sub-double v2, v2, p8

    double-to-float v0, v2

    move/from16 v22, v0

    .line 101
    .local v22, "valY":F
    move/from16 v0, v22

    float-to-double v2, v0

    div-double v2, v2, p12

    double-to-float v0, v2

    move/from16 v17, v0

    .line 102
    .local v17, "ratY":F
    mul-float v23, p4, v17

    .line 105
    .local v23, "y":F
    invoke-virtual/range {p15 .. p15}, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->getValueDependentColor()Lgraphview/ValueDependentColor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p15 .. p15}, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->getValueDependentColor()Lgraphview/ValueDependentColor;

    move-result-object v3

    aget-object v4, p2, v13

    invoke-interface {v3, v4}, Lgraphview/ValueDependentColor;->get(Lgraphview/GraphViewDataInterface;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    :goto_1
    int-to-float v2, v13

    mul-float/2addr v2, v11

    add-float v2, v2, p14

    sub-float v14, v2, v15

    .line 112
    .local v14, "left":F
    sub-float v2, p5, v23

    add-float v21, v2, p4

    .line 113
    .local v21, "top":F
    int-to-float v2, v13

    mul-float/2addr v2, v11

    add-float v2, v2, p14

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v11, v3

    add-float/2addr v2, v3

    sub-float v18, v2, v15

    .line 116
    .local v18, "right":F
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v13

    mul-float/2addr v3, v11

    add-float v3, v3, p14

    sub-float v4, p5, v23

    add-float v4, v4, p4

    int-to-float v5, v13

    mul-float/2addr v5, v11

    add-float v5, v5, p14

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    add-float/2addr v5, v6

    add-float v6, p4, p5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    aget-object v2, p2, v13

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    aget-object v2, p2, v13

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v19, v2, v4

    .line 126
    .local v19, "temp_time":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1ee62800

    sub-long v3, v19, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v13

    invoke-interface {v3}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "TimeText":Ljava/lang/String;
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float v3, v14, v18

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v4, v18, v14

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3fa66666    # 1.3f

    div-float v4, p4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    add-float v2, v14, v18

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, v18, v14

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x3fa66666    # 1.3f

    div-float v3, p4, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    .end local v10    # "TimeText":Ljava/lang/String;
    .end local v19    # "temp_time":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgraphview/BarGraphView;->drawValuesOnTop:Z

    if-eqz v2, :cond_3

    .line 150
    const/high16 v2, 0x40800000    # 4.0f

    sub-float v21, v21, v2

    .line 151
    cmpg-float v2, v21, p5

    if-gtz v2, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    add-float v2, v2, p5

    add-float v21, v21, v2

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lgraphview/BarGraphView;->valuesOnTopColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    aget-object v2, p2, v13

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lgraphview/BarGraphView;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v2

    add-float v3, v14, v18

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 108
    .end local v14    # "left":F
    .end local v18    # "right":F
    .end local v21    # "top":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/BarGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p15

    iget v3, v0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1
.end method

.method public getDrawValuesOnTop()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lgraphview/BarGraphView;->drawValuesOnTop:Z

    return v0
.end method

.method public getValuesOnTopColor()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lgraphview/BarGraphView;->valuesOnTopColor:I

    return v0
.end method

.method public setDrawValuesOnTop(Z)V
    .locals 0
    .param p1, "drawValuesOnTop"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lgraphview/BarGraphView;->drawValuesOnTop:Z

    .line 173
    return-void
.end method

.method public setValuesOnTopColor(I)V
    .locals 0
    .param p1, "valuesOnTopColor"    # I

    .prologue
    .line 176
    iput p1, p0, Lgraphview/BarGraphView;->valuesOnTopColor:I

    .line 177
    return-void
.end method
