.class public Lgraphview/LineGraphView;
.super Lgraphview/GraphView;
.source "LineGraphView.java"


# instance fields
.field private dataPointsRadius:F

.field private drawBackground:Z

.field private drawDataPoints:Z

.field private final paintBackground:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lgraphview/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lgraphview/LineGraphView;->dataPointsRadius:F

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/16 v1, 0x14

    const/16 v2, 0x28

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lgraphview/GraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lgraphview/LineGraphView;->dataPointsRadius:F

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/16 v1, 0x14

    const/16 v2, 0x28

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public drawSeries(Landroid/graphics/Canvas;[Lgraphview/GraphViewDataInterface;FFFDDDDFLgraphview/GraphViewSeries$GraphViewSeriesStyle;)V
    .locals 33
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
    .line 61
    const-wide/16 v15, 0x0

    .line 62
    .local v15, "lastEndY":D
    const-wide/16 v13, 0x0

    .line 65
    .local v13, "lastEndX":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p15

    iget v7, v0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->thickness:I

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p15

    iget v7, v0, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, "bgPath":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgraphview/LineGraphView;->drawBackground:Z

    if-eqz v2, :cond_0

    .line 71
    new-instance v8, Landroid/graphics/Path;

    .end local v8    # "bgPath":Landroid/graphics/Path;
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 74
    .restart local v8    # "bgPath":Landroid/graphics/Path;
    :cond_0
    const-wide/16 v15, 0x0

    .line 75
    const-wide/16 v13, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    .local v9, "firstX":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v12, v2, :cond_2

    .line 119
    if-eqz v8, :cond_1

    .line 121
    double-to-float v2, v13

    add-float v7, p4, p5

    invoke-virtual {v8, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    add-float v2, p4, p5

    invoke-virtual {v8, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    :cond_1
    return-void

    .line 78
    :cond_2
    aget-object v2, p2, v12

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v2, v29, v31

    if-lez v2, :cond_7

    .line 79
    aget-object v2, p2, v12

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v29

    sub-double v23, v29, p8

    .line 80
    .local v23, "valY":D
    div-double v19, v23, p12

    .line 81
    .local v19, "ratY":D
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v29, v19

    .line 83
    .local v27, "y":D
    aget-object v2, p2, v12

    invoke-interface {v2}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v29

    sub-double v21, v29, p6

    .line 84
    .local v21, "valX":D
    div-double v17, v21, p10

    .line 85
    .local v17, "ratX":D
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v25, v29, v17

    .line 87
    .local v25, "x":D
    if-lez v12, :cond_8

    .line 88
    double-to-float v2, v13

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v7, v7, p14

    add-float v3, v2, v7

    .line 89
    .local v3, "startX":F
    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double v29, v29, v15

    move-wide/from16 v0, v29

    double-to-float v2, v0

    add-float v4, v2, p4

    .line 90
    .local v4, "startY":F
    move-wide/from16 v0, v25

    double-to-float v2, v0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v7, v7, p14

    add-float v5, v2, v7

    .line 91
    .local v5, "endX":F
    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double v29, v29, v27

    move-wide/from16 v0, v29

    double-to-float v2, v0

    add-float v6, v2, p4

    .line 94
    .local v6, "endY":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgraphview/LineGraphView;->drawDataPoints:Z

    if-eqz v2, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget v2, v0, Lgraphview/LineGraphView;->dataPointsRadius:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lgraphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    :cond_3
    const-wide/16 v29, 0x0

    cmpl-double v2, v15, v29

    if-lez v2, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v7, v0, Lgraphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    :cond_4
    if-eqz v8, :cond_6

    .line 102
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 103
    move v9, v3

    .line 104
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    :cond_5
    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "endX":F
    .end local v6    # "endY":F
    :cond_6
    :goto_1
    move-wide/from16 v15, v27

    .line 115
    move-wide/from16 v13, v25

    .line 77
    .end local v17    # "ratX":D
    .end local v19    # "ratY":D
    .end local v21    # "valX":D
    .end local v23    # "valY":D
    .end local v25    # "x":D
    .end local v27    # "y":D
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v17    # "ratX":D
    .restart local v19    # "ratY":D
    .restart local v21    # "valX":D
    .restart local v23    # "valY":D
    .restart local v25    # "x":D
    .restart local v27    # "y":D
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgraphview/LineGraphView;->drawDataPoints:Z

    if-eqz v2, :cond_6

    .line 110
    move-wide/from16 v0, v25

    double-to-float v2, v0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v7, v7, p14

    add-float v10, v2, v7

    .line 111
    .local v10, "first_X":F
    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double v29, v29, v27

    move-wide/from16 v0, v29

    double-to-float v2, v0

    add-float v11, v2, p4

    .line 112
    .local v11, "first_Y":F
    move-object/from16 v0, p0

    iget v2, v0, Lgraphview/LineGraphView;->dataPointsRadius:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lgraphview/LineGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDataPointsRadius()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lgraphview/LineGraphView;->dataPointsRadius:F

    return v0
.end method

.method public getDrawBackground()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lgraphview/LineGraphView;->drawBackground:Z

    return v0
.end method

.method public getDrawDataPoints()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lgraphview/LineGraphView;->drawDataPoints:Z

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lgraphview/LineGraphView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    return-void
.end method

.method public setDataPointsRadius(F)V
    .locals 0
    .param p1, "dataPointsRadius"    # F

    .prologue
    .line 160
    iput p1, p0, Lgraphview/LineGraphView;->dataPointsRadius:F

    .line 161
    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0
    .param p1, "drawBackground"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lgraphview/LineGraphView;->drawBackground:Z

    .line 169
    return-void
.end method

.method public setDrawDataPoints(Z)V
    .locals 0
    .param p1, "drawDataPoints"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lgraphview/LineGraphView;->drawDataPoints:Z

    .line 178
    return-void
.end method
