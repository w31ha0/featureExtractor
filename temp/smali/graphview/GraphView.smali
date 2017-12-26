.class public abstract Lgraphview/GraphView;
.super Landroid/widget/LinearLayout;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgraphview/GraphView$GraphViewConfig;,
        Lgraphview/GraphView$GraphViewContentView;,
        Lgraphview/GraphView$GraphViewData;,
        Lgraphview/GraphView$LegendAlign;,
        Lgraphview/GraphView$VerLabelsView;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$graphview$GraphView$LegendAlign:[I


# instance fields
.field private customLabelFormatter:Lgraphview/CustomLabelFormatter;

.field private disableTouch:Z

.field private final graphSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgraphview/GraphViewSeries;",
            ">;"
        }
    .end annotation
.end field

.field private final graphViewContentView:Lgraphview/GraphView$GraphViewContentView;

.field protected graphViewStyle:Lgraphview/GraphViewStyle;

.field private horLabelTextWidth:Ljava/lang/Integer;

.field private horlabels:[Ljava/lang/String;

.field private labelTextHeight:Ljava/lang/Integer;

.field private legendAlign:Lgraphview/GraphView$LegendAlign;

.field private manualMaxY:Z

.field private manualMaxYValue:D

.field private manualMinY:Z

.field private manualMinYValue:D

.field private manualYAxis:Z

.field private final numberformatter:[Ljava/text/NumberFormat;

.field protected final paint:Landroid/graphics/Paint;

.field private scalable:Z

.field private scaleDetector:Lgraphview/compatible/ScaleGestureDetector;

.field private scrollable:Z

.field private showHorizontalLabels:Z

.field private showLegend:Z

.field private showVerticalLabels:Z

.field private staticHorizontalLabels:Z

.field private staticVerticalLabels:Z

.field private final textBounds:Landroid/graphics/Rect;

.field private title:Ljava/lang/String;

.field private verLabelTextWidth:Ljava/lang/Integer;

.field private verlabels:[Ljava/lang/String;

.field private final viewVerLabels:Landroid/view/View;

.field private viewportSize:D

.field private viewportStart:D


# direct methods
.method static synthetic $SWITCH_TABLE$graphview$GraphView$LegendAlign()[I
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lgraphview/GraphView;->$SWITCH_TABLE$graphview$GraphView$LegendAlign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgraphview/GraphView$LegendAlign;->values()[Lgraphview/GraphView$LegendAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lgraphview/GraphView$LegendAlign;->BOTTOM:Lgraphview/GraphView$LegendAlign;

    invoke-virtual {v1}, Lgraphview/GraphView$LegendAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lgraphview/GraphView$LegendAlign;->MIDDLE:Lgraphview/GraphView$LegendAlign;

    invoke-virtual {v1}, Lgraphview/GraphView$LegendAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lgraphview/GraphView$LegendAlign;->TOP:Lgraphview/GraphView$LegendAlign;

    invoke-virtual {v1}, Lgraphview/GraphView$LegendAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lgraphview/GraphView;->$SWITCH_TABLE$graphview$GraphView$LegendAlign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 345
    const/4 v2, 0x0

    const-string v3, "title"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lgraphview/GraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    const-string v2, "android"

    const-string v3, "layout_width"

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 348
    .local v1, "width":I
    const-string v2, "android"

    const-string v3, "layout_height"

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, "height":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lgraphview/GraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 357
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/NumberFormat;

    iput-object v0, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgraphview/GraphView;->showLegend:Z

    .line 326
    sget-object v0, Lgraphview/GraphView$LegendAlign;->MIDDLE:Lgraphview/GraphView$LegendAlign;

    iput-object v0, p0, Lgraphview/GraphView;->legendAlign:Lgraphview/GraphView$LegendAlign;

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lgraphview/GraphView;->textBounds:Landroid/graphics/Rect;

    .line 341
    iput-boolean v1, p0, Lgraphview/GraphView;->showHorizontalLabels:Z

    .line 342
    iput-boolean v1, p0, Lgraphview/GraphView;->showVerticalLabels:Z

    .line 358
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lgraphview/GraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    if-nez p2, :cond_0

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lgraphview/GraphView;->title:Ljava/lang/String;

    .line 365
    :goto_0
    new-instance v0, Lgraphview/GraphViewStyle;

    invoke-direct {v0}, Lgraphview/GraphViewStyle;-><init>()V

    iput-object v0, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    .line 366
    iget-object v0, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v0, p1}, Lgraphview/GraphViewStyle;->useTextColorFromTheme(Landroid/content/Context;)V

    .line 368
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    .line 371
    new-instance v0, Lgraphview/GraphView$VerLabelsView;

    invoke-direct {v0, p0, p1}, Lgraphview/GraphView$VerLabelsView;-><init>(Lgraphview/GraphView;Landroid/content/Context;)V

    iput-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    .line 372
    iget-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    invoke-virtual {p0, v0}, Lgraphview/GraphView;->addView(Landroid/view/View;)V

    .line 373
    new-instance v0, Lgraphview/GraphView$GraphViewContentView;

    invoke-direct {v0, p0, p1}, Lgraphview/GraphView$GraphViewContentView;-><init>(Lgraphview/GraphView;Landroid/content/Context;)V

    iput-object v0, p0, Lgraphview/GraphView;->graphViewContentView:Lgraphview/GraphView$GraphViewContentView;

    .line 374
    iget-object v0, p0, Lgraphview/GraphView;->graphViewContentView:Lgraphview/GraphView$GraphViewContentView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lgraphview/GraphView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    return-void

    .line 363
    :cond_0
    iput-object p2, p0, Lgraphview/GraphView;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private _values(I)[Lgraphview/GraphViewDataInterface;
    .locals 9
    .param p1, "idxSeries"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 378
    iget-object v3, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgraphview/GraphViewSeries;

    iget-object v2, v3, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 379
    .local v2, "values":[Lgraphview/GraphViewDataInterface;
    monitor-enter v2

    .line 380
    :try_start_0
    iget-wide v3, p0, Lgraphview/GraphView;->viewportStart:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p0, Lgraphview/GraphView;->viewportSize:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    .line 382
    monitor-exit v2

    .line 401
    .end local v2    # "values":[Lgraphview/GraphViewDataInterface;
    :goto_0
    return-object v2

    .line 385
    .restart local v2    # "values":[Lgraphview/GraphViewDataInterface;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v1, "listData":Ljava/util/List;, "Ljava/util/List<Lgraphview/GraphViewDataInterface;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 401
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lgraphview/GraphViewDataInterface;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lgraphview/GraphViewDataInterface;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 387
    :cond_1
    aget-object v3, v2, v0

    invoke-interface {v3}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lgraphview/GraphView;->viewportStart:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 388
    aget-object v3, v2, v0

    invoke-interface {v3}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lgraphview/GraphView;->viewportStart:D

    iget-wide v7, p0, Lgraphview/GraphView;->viewportSize:D

    add-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 389
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 379
    .end local v0    # "i":I
    .end local v1    # "listData":Ljava/util/List;, "Ljava/util/List<Lgraphview/GraphViewDataInterface;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 392
    .restart local v0    # "i":I
    .restart local v1    # "listData":Ljava/util/List;, "Ljava/util/List<Lgraphview/GraphViewDataInterface;>;"
    :cond_2
    :try_start_1
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_4
    const/4 v3, 0x0

    aget-object v4, v2, v0

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method static synthetic access$0(Lgraphview/GraphView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lgraphview/GraphView;->labelTextHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lgraphview/GraphView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lgraphview/GraphView;->horLabelTextWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$10(Lgraphview/GraphView;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lgraphview/GraphView;->verlabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lgraphview/GraphView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lgraphview/GraphView;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lgraphview/GraphView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lgraphview/GraphView;I)[Lgraphview/GraphViewDataInterface;
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lgraphview/GraphView;->_values(I)[Lgraphview/GraphViewDataInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lgraphview/GraphView;)Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lgraphview/GraphView;->showLegend:Z

    return v0
.end method

.method static synthetic access$15(Lgraphview/GraphView;)D
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lgraphview/GraphView;->viewportSize:D

    return-wide v0
.end method

.method static synthetic access$16(Lgraphview/GraphView;)D
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lgraphview/GraphView;->viewportStart:D

    return-wide v0
.end method

.method static synthetic access$17(Lgraphview/GraphView;D)V
    .locals 0

    .prologue
    .line 318
    iput-wide p1, p0, Lgraphview/GraphView;->viewportStart:D

    return-void
.end method

.method static synthetic access$18(Lgraphview/GraphView;)Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lgraphview/GraphView;->staticHorizontalLabels:Z

    return v0
.end method

.method static synthetic access$19(Lgraphview/GraphView;)Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lgraphview/GraphView;->staticVerticalLabels:Z

    return v0
.end method

.method static synthetic access$2(Lgraphview/GraphView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lgraphview/GraphView;->textBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$20(Lgraphview/GraphView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$21(Lgraphview/GraphView;)Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lgraphview/GraphView;->scalable:Z

    return v0
.end method

.method static synthetic access$22(Lgraphview/GraphView;)Lgraphview/compatible/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lgraphview/GraphView;->scaleDetector:Lgraphview/compatible/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$23(Lgraphview/GraphView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lgraphview/GraphView;->verLabelTextWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$24(Lgraphview/GraphView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lgraphview/GraphView;->verLabelTextWidth:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$26(Lgraphview/GraphView;D)V
    .locals 0

    .prologue
    .line 319
    iput-wide p1, p0, Lgraphview/GraphView;->viewportSize:D

    return-void
.end method

.method static synthetic access$3(Lgraphview/GraphView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lgraphview/GraphView;->labelTextHeight:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$4(Lgraphview/GraphView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lgraphview/GraphView;->horLabelTextWidth:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$5(Lgraphview/GraphView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lgraphview/GraphView;->horlabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lgraphview/GraphView;F)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lgraphview/GraphView;->generateHorlabels(F)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lgraphview/GraphView;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lgraphview/GraphView;->horlabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lgraphview/GraphView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lgraphview/GraphView;->verlabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lgraphview/GraphView;F)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lgraphview/GraphView;->generateVerlabels(F)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateHorlabels(F)[Ljava/lang/String;
    .locals 14
    .param p1, "graphwidth"    # F

    .prologue
    const/4 v11, 0x0

    .line 534
    invoke-virtual {p0}, Lgraphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 536
    .local v0, "dateFormat":Ljava/text/DateFormat;
    const/4 v7, 0x2

    .line 538
    .local v7, "numLabels":I
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    .line 539
    .local v2, "labels":[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v5

    .line 540
    .local v5, "min":D
    invoke-virtual {p0, v11}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v3

    .line 542
    .local v3, "max":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v1, v7, :cond_0

    .line 559
    return-object v2

    .line 543
    :cond_0
    sub-double v10, v3, v5

    int-to-double v12, v1

    mul-double/2addr v10, v12

    int-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v10, v5

    double-to-int v10, v10

    int-to-long v8, v10

    .line 544
    .local v8, "temp_time":J
    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    .line 545
    const-wide v10, 0x119a1c74000L

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    .line 546
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v1

    .line 542
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_1
    const-string v10, "0"

    aput-object v10, v2, v1

    goto :goto_1
.end method

.method private declared-synchronized generateVerlabels(F)[Ljava/lang/String;
    .locals 12
    .param p1, "graphheight"    # F

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v7

    invoke-virtual {v7}, Lgraphview/GraphViewStyle;->getNumVerticalLabels()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 564
    .local v6, "numLabels":I
    if-gez v6, :cond_0

    .line 565
    iget-object v7, p0, Lgraphview/GraphView;->labelTextHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    div-float v7, p1, v7

    float-to-int v6, v7

    .line 566
    if-nez v6, :cond_0

    .line 567
    const-string v7, "GraphView"

    const-string v8, "Height of Graph is smaller than the label text height, so no vertical labels were shown!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    add-int/lit8 v7, v6, 0x1

    new-array v1, v7, [Ljava/lang/String;

    .line 571
    .local v1, "labels":[Ljava/lang/String;
    invoke-virtual {p0}, Lgraphview/GraphView;->getMinY()D

    move-result-wide v4

    .line 572
    .local v4, "min":D
    invoke-virtual {p0}, Lgraphview/GraphView;->getMaxY()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 573
    .local v2, "max":D
    cmpl-double v7, v2, v4

    if-nez v7, :cond_1

    .line 575
    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-nez v7, :cond_2

    .line 577
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 578
    const-wide/16 v4, 0x0

    .line 585
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-le v0, v6, :cond_3

    .line 588
    monitor-exit p0

    return-object v1

    .line 580
    .end local v0    # "i":I
    :cond_2
    const-wide v7, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v2, v7

    .line 581
    const-wide v7, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v7

    goto :goto_0

    .line 586
    .restart local v0    # "i":I
    :cond_3
    sub-int v7, v6, v0

    sub-double v8, v2, v4

    int-to-double v10, v0

    mul-double/2addr v8, v10

    int-to-double v10, v6

    div-double/2addr v8, v10

    add-double/2addr v8, v4

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0, v8, v9, v10}, Lgraphview/GraphView;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    .end local v1    # "labels":[Ljava/lang/String;
    .end local v2    # "max":D
    .end local v4    # "min":D
    .end local v6    # "numLabels":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public addSeries(Lgraphview/GraphViewSeries;)V
    .locals 1
    .param p1, "series"    # Lgraphview/GraphViewSeries;

    .prologue
    .line 411
    invoke-virtual {p1, p0}, Lgraphview/GraphViewSeries;->addGraphView(Lgraphview/GraphView;)V

    .line 412
    iget-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0}, Lgraphview/GraphView;->redrawAll()V

    .line 414
    return-void
.end method

.method protected drawHorizontalLabels(Landroid/graphics/Canvas;FFF[Ljava/lang/String;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "border"    # F
    .param p3, "horstart"    # F
    .param p4, "height"    # F
    .param p5, "horlabels"    # [Ljava/lang/String;
    .param p6, "graphwidth"    # F

    .prologue
    .line 419
    array-length v0, p5

    add-int/lit8 v6, v0, -0x1

    .line 420
    .local v6, "hors":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p5

    if-lt v7, v0, :cond_0

    .line 434
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v2}, Lgraphview/GraphViewStyle;->getGridColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    int-to-float v0, v6

    div-float v0, p6, v0

    int-to-float v2, v7

    mul-float/2addr v0, v2

    add-float v1, v0, p3

    .line 423
    .local v1, "x":F
    sub-float v2, p4, p2

    iget-object v5, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 424
    iget-boolean v0, p0, Lgraphview/GraphView;->showHorizontalLabels:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 426
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    .line 427
    iget-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 428
    :cond_1
    if-nez v7, :cond_2

    .line 429
    iget-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 430
    :cond_2
    iget-object v0, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    invoke-virtual {v2}, Lgraphview/GraphViewStyle;->getHorizontalLabelsColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    aget-object v0, p5, v7

    const/high16 v2, 0x40800000    # 4.0f

    sub-float v2, p4, v2

    iget-object v3, p0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected drawLegend(Landroid/graphics/Canvas;FF)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "height"    # F
    .param p3, "width"    # F

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 438
    .local v11, "textSize":F
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getLegendSpacing()I

    move-result v10

    .line 439
    .local v10, "spacing":I
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getLegendBorder()I

    move-result v1

    .line 440
    .local v1, "border":I
    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v12

    invoke-virtual {v12}, Lgraphview/GraphViewStyle;->getLegendWidth()I

    move-result v8

    .line 442
    .local v8, "legendWidth":I
    float-to-double v12, v11

    const-wide v14, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 443
    .local v9, "shapeSize":I
    const-string v12, "GraphView"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "draw legend size: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/16 v13, 0xb4

    const/16 v14, 0x64

    const/16 v15, 0x64

    const/16 v16, 0x64

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 447
    add-int v12, v9, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v13, v1, 0x2

    add-int/2addr v12, v13

    sub-int/2addr v12, v10

    int-to-float v7, v12

    .line 448
    .local v7, "legendHeight":F
    int-to-float v12, v8

    sub-float v12, p3, v12

    mul-int/lit8 v13, v1, 0x2

    int-to-float v13, v13

    sub-float v4, v12, v13

    .line 450
    .local v4, "lLeft":F
    invoke-static {}, Lgraphview/GraphView;->$SWITCH_TABLE$graphview$GraphView$LegendAlign()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView;->legendAlign:Lgraphview/GraphView$LegendAlign;

    invoke-virtual {v13}, Lgraphview/GraphView$LegendAlign;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 458
    const/high16 v12, 0x41a00000    # 20.0f

    sub-float v12, p2, v12

    sub-float/2addr v12, v7

    invoke-virtual/range {p0 .. p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v13

    invoke-virtual {v13}, Lgraphview/GraphViewStyle;->getLegendMarginBottom()I

    move-result v13

    int-to-float v13, v13

    sub-float v6, v12, v13

    .line 460
    .local v6, "lTop":F
    :goto_0
    int-to-float v12, v8

    add-float v5, v4, v12

    .line 461
    .local v5, "lRight":F
    add-float v3, v6, v7

    .line 462
    .local v3, "lBottom":F
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v4, v6, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 464
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v2, v12, :cond_0

    .line 473
    return-void

    .line 452
    .end local v2    # "i":I
    .end local v3    # "lBottom":F
    .end local v5    # "lRight":F
    .end local v6    # "lTop":F
    :pswitch_0
    const/4 v6, 0x0

    .line 453
    .restart local v6    # "lTop":F
    goto :goto_0

    .line 455
    .end local v6    # "lTop":F
    :pswitch_1
    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, p2, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v7, v13

    sub-float v6, v12, v13

    .line 456
    .restart local v6    # "lTop":F
    goto :goto_0

    .line 465
    .restart local v2    # "i":I
    .restart local v3    # "lBottom":F
    .restart local v5    # "lRight":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgraphview/GraphViewSeries;

    iget-object v12, v12, Lgraphview/GraphViewSeries;->style:Lgraphview/GraphViewSeries$GraphViewSeriesStyle;

    iget v12, v12, Lgraphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    new-instance v12, Landroid/graphics/RectF;

    int-to-float v13, v1

    add-float/2addr v13, v4

    int-to-float v14, v1

    add-float/2addr v14, v6

    add-int v15, v9, v10

    mul-int/2addr v15, v2

    int-to-float v15, v15

    add-float/2addr v14, v15

    int-to-float v15, v1

    add-float/2addr v15, v4

    int-to-float v0, v9

    move/from16 v16, v0

    add-float v15, v15, v16

    int-to-float v0, v1

    move/from16 v16, v0

    add-float v16, v16, v6

    add-int v17, v9, v10

    mul-int v17, v17, v2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    int-to-float v0, v9

    move/from16 v17, v0

    add-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgraphview/GraphViewSeries;

    iget-object v12, v12, Lgraphview/GraphViewSeries;->description:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgraphview/GraphViewSeries;

    iget-object v12, v12, Lgraphview/GraphViewSeries;->description:Ljava/lang/String;

    int-to-float v13, v1

    add-float/2addr v13, v4

    int-to-float v14, v9

    add-float/2addr v13, v14

    int-to-float v14, v10

    add-float/2addr v13, v14

    int-to-float v14, v1

    add-float/2addr v14, v6

    int-to-float v15, v9

    add-float/2addr v14, v15

    add-int v15, v9, v10

    mul-int/2addr v15, v2

    int-to-float v15, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lgraphview/GraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract drawSeries(Landroid/graphics/Canvas;[Lgraphview/GraphViewDataInterface;FFFDDDDFLgraphview/GraphViewSeries$GraphViewSeriesStyle;)V
.end method

.method protected formatLabel(DZ)Ljava/lang/String;
    .locals 12
    .param p1, "value"    # D
    .param p3, "isValueX"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 488
    iget-object v8, p0, Lgraphview/GraphView;->customLabelFormatter:Lgraphview/CustomLabelFormatter;

    if-eqz v8, :cond_0

    .line 489
    iget-object v8, p0, Lgraphview/GraphView;->customLabelFormatter:Lgraphview/CustomLabelFormatter;

    invoke-interface {v8, p1, p2, p3}, Lgraphview/CustomLabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 511
    .end local v3    # "label":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 494
    :cond_0
    if-eqz p3, :cond_2

    move v2, v6

    .line 495
    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v8, v8, v2

    if-nez v8, :cond_1

    .line 496
    iget-object v8, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v9

    aput-object v9, v8, v2

    .line 497
    if-eqz p3, :cond_3

    invoke-virtual {p0, v7}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v0

    .line 498
    .local v0, "highestvalue":D
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p0, v7}, Lgraphview/GraphView;->getMinX(Z)D

    move-result-wide v4

    .line 499
    .local v4, "lowestvalue":D
    :goto_3
    sub-double v8, v0, v4

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 500
    iget-object v6, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 511
    .end local v0    # "highestvalue":D
    .end local v4    # "lowestvalue":D
    :cond_1
    :goto_4
    iget-object v6, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    move v2, v7

    .line 494
    goto :goto_1

    .line 497
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lgraphview/GraphView;->getMaxY()D

    move-result-wide v0

    goto :goto_2

    .line 498
    .restart local v0    # "highestvalue":D
    :cond_4
    invoke-virtual {p0}, Lgraphview/GraphView;->getMinY()D

    move-result-wide v4

    goto :goto_3

    .line 501
    .restart local v4    # "lowestvalue":D
    :cond_5
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 502
    iget-object v6, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 503
    :cond_6
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_7

    .line 504
    iget-object v6, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 505
    :cond_7
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    .line 506
    iget-object v7, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 508
    :cond_8
    iget-object v6, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4
.end method

.method public getCustomLabelFormatter()Lgraphview/CustomLabelFormatter;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lgraphview/GraphView;->customLabelFormatter:Lgraphview/CustomLabelFormatter;

    return-object v0
.end method

.method public getGraphViewStyle()Lgraphview/GraphViewStyle;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    return-object v0
.end method

.method public getLegendAlign()Lgraphview/GraphView$LegendAlign;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lgraphview/GraphView;->legendAlign:Lgraphview/GraphView$LegendAlign;

    return-object v0
.end method

.method public getLegendWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v0

    invoke-virtual {v0}, Lgraphview/GraphViewStyle;->getLegendWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getMaxX(Z)D
    .locals 8
    .param p1, "ignoreViewport"    # Z

    .prologue
    .line 631
    if-nez p1, :cond_1

    iget-wide v4, p0, Lgraphview/GraphView;->viewportSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 632
    iget-wide v4, p0, Lgraphview/GraphView;->viewportStart:D

    iget-wide v6, p0, Lgraphview/GraphView;->viewportSize:D

    add-double v0, v4, v6

    .line 651
    :cond_0
    return-wide v0

    .line 636
    :cond_1
    const-wide/16 v0, 0x0

    .line 637
    .local v0, "highest":D
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 638
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgraphview/GraphViewSeries;

    iget-object v3, v4, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 639
    .local v3, "values":[Lgraphview/GraphViewDataInterface;
    array-length v4, v3

    if-nez v4, :cond_3

    .line 640
    const-wide/16 v0, 0x0

    .line 644
    :goto_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 645
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgraphview/GraphViewSeries;

    iget-object v3, v4, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 646
    array-length v4, v3

    if-lez v4, :cond_2

    .line 647
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 644
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 642
    .end local v2    # "i":I
    :cond_3
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v0

    goto :goto_0
.end method

.method protected getMaxY()D
    .locals 7

    .prologue
    .line 662
    iget-boolean v5, p0, Lgraphview/GraphView;->manualYAxis:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lgraphview/GraphView;->manualMaxY:Z

    if-eqz v5, :cond_2

    .line 663
    :cond_0
    iget-wide v2, p0, Lgraphview/GraphView;->manualMaxYValue:D

    .line 673
    .local v2, "largest":D
    :cond_1
    return-wide v2

    .line 665
    .end local v2    # "largest":D
    :cond_2
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    .line 666
    .restart local v2    # "largest":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 667
    invoke-direct {p0, v0}, Lgraphview/GraphView;->_values(I)[Lgraphview/GraphViewDataInterface;

    move-result-object v4

    .line 668
    .local v4, "values":[Lgraphview/GraphViewDataInterface;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_3

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_3
    aget-object v5, v4, v1

    invoke-interface {v5}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v5

    cmpl-double v5, v5, v2

    if-lez v5, :cond_4

    .line 670
    aget-object v5, v4, v1

    invoke-interface {v5}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v2

    .line 668
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getMinX(Z)D
    .locals 9
    .param p1, "ignoreViewport"    # Z

    .prologue
    const/4 v8, 0x0

    .line 685
    if-nez p1, :cond_1

    iget-wide v4, p0, Lgraphview/GraphView;->viewportSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 686
    iget-wide v1, p0, Lgraphview/GraphView;->viewportStart:D

    .line 705
    :cond_0
    return-wide v1

    .line 690
    :cond_1
    const-wide/16 v1, 0x0

    .line 691
    .local v1, "lowest":D
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 692
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgraphview/GraphViewSeries;

    iget-object v3, v4, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 693
    .local v3, "values":[Lgraphview/GraphViewDataInterface;
    array-length v4, v3

    if-nez v4, :cond_3

    .line 694
    const-wide/16 v1, 0x0

    .line 698
    :goto_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 699
    iget-object v4, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgraphview/GraphViewSeries;

    iget-object v3, v4, Lgraphview/GraphViewSeries;->values:[Lgraphview/GraphViewDataInterface;

    .line 700
    array-length v4, v3

    if-lez v4, :cond_2

    .line 701
    aget-object v4, v3, v8

    invoke-interface {v4}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 698
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    .end local v0    # "i":I
    :cond_3
    aget-object v4, v3, v8

    invoke-interface {v4}, Lgraphview/GraphViewDataInterface;->getX()D

    move-result-wide v1

    goto :goto_0
.end method

.method protected getMinY()D
    .locals 7

    .prologue
    .line 716
    iget-boolean v5, p0, Lgraphview/GraphView;->manualYAxis:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lgraphview/GraphView;->manualMinY:Z

    if-eqz v5, :cond_2

    .line 717
    :cond_0
    iget-wide v2, p0, Lgraphview/GraphView;->manualMinYValue:D

    .line 727
    .local v2, "smallest":D
    :cond_1
    return-wide v2

    .line 719
    .end local v2    # "smallest":D
    :cond_2
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 720
    .restart local v2    # "smallest":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 721
    invoke-direct {p0, v0}, Lgraphview/GraphView;->_values(I)[Lgraphview/GraphViewDataInterface;

    move-result-object v4

    .line 722
    .local v4, "values":[Lgraphview/GraphViewDataInterface;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_3

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_3
    aget-object v5, v4, v1

    invoke-interface {v5}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_4

    .line 724
    aget-object v5, v4, v1

    invoke-interface {v5}, Lgraphview/GraphViewDataInterface;->getY()D

    move-result-wide v2

    .line 722
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getShowHorizontalLabels()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lgraphview/GraphView;->showHorizontalLabels:Z

    return v0
.end method

.method public getShowVerticalLabels()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lgraphview/GraphView;->showVerticalLabels:Z

    return v0
.end method

.method public getViewportSize()D
    .locals 2

    .prologue
    .line 735
    iget-wide v0, p0, Lgraphview/GraphView;->viewportSize:D

    return-wide v0
.end method

.method public isDisableTouch()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lgraphview/GraphView;->disableTouch:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lgraphview/GraphView;->scrollable:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lgraphview/GraphView;->showLegend:Z

    return v0
.end method

.method public redrawAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-boolean v0, p0, Lgraphview/GraphView;->staticVerticalLabels:Z

    if-nez v0, :cond_0

    iput-object v2, p0, Lgraphview/GraphView;->verlabels:[Ljava/lang/String;

    .line 756
    :cond_0
    iget-boolean v0, p0, Lgraphview/GraphView;->staticHorizontalLabels:Z

    if-nez v0, :cond_1

    iput-object v2, p0, Lgraphview/GraphView;->horlabels:[Ljava/lang/String;

    .line 757
    :cond_1
    iget-object v0, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 758
    iget-object v0, p0, Lgraphview/GraphView;->numberformatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 759
    iput-object v2, p0, Lgraphview/GraphView;->labelTextHeight:Ljava/lang/Integer;

    .line 760
    iput-object v2, p0, Lgraphview/GraphView;->horLabelTextWidth:Ljava/lang/Integer;

    .line 761
    iput-object v2, p0, Lgraphview/GraphView;->verLabelTextWidth:Ljava/lang/Integer;

    .line 763
    invoke-virtual {p0}, Lgraphview/GraphView;->invalidate()V

    .line 764
    iget-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 765
    iget-object v0, p0, Lgraphview/GraphView;->graphViewContentView:Lgraphview/GraphView$GraphViewContentView;

    invoke-virtual {v0}, Lgraphview/GraphView$GraphViewContentView;->invalidate()V

    .line 766
    return-void
.end method

.method public removeAllSeries()V
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 775
    :goto_1
    iget-object v1, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    invoke-virtual {p0}, Lgraphview/GraphView;->redrawAll()V

    .line 779
    return-void

    .line 772
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgraphview/GraphViewSeries;

    .line 773
    .local v0, "s":Lgraphview/GraphViewSeries;
    invoke-virtual {v0, p0}, Lgraphview/GraphViewSeries;->removeGraphView(Lgraphview/GraphView;)V

    goto :goto_0

    .line 776
    .end local v0    # "s":Lgraphview/GraphViewSeries;
    :cond_1
    iget-object v1, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public removeSeries(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 796
    if-ltz p1, :cond_0

    iget-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No series at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    iget-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgraphview/GraphViewSeries;

    invoke-virtual {p0, v0}, Lgraphview/GraphView;->removeSeries(Lgraphview/GraphViewSeries;)V

    .line 801
    return-void
.end method

.method public removeSeries(Lgraphview/GraphViewSeries;)V
    .locals 1
    .param p1, "series"    # Lgraphview/GraphViewSeries;

    .prologue
    .line 786
    invoke-virtual {p1, p0}, Lgraphview/GraphViewSeries;->removeGraphView(Lgraphview/GraphView;)V

    .line 787
    iget-object v0, p0, Lgraphview/GraphView;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {p0}, Lgraphview/GraphView;->redrawAll()V

    .line 789
    return-void
.end method

.method public scrollToEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 808
    iget-boolean v2, p0, Lgraphview/GraphView;->scrollable:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This GraphView is not scrollable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgraphview/GraphView;->getMaxX(Z)D

    move-result-wide v0

    .line 810
    .local v0, "max":D
    iget-wide v2, p0, Lgraphview/GraphView;->viewportSize:D

    sub-double v2, v0, v2

    iput-wide v2, p0, Lgraphview/GraphView;->viewportStart:D

    .line 814
    iget-boolean v2, p0, Lgraphview/GraphView;->staticVerticalLabels:Z

    if-nez v2, :cond_1

    iput-object v4, p0, Lgraphview/GraphView;->verlabels:[Ljava/lang/String;

    .line 815
    :cond_1
    iget-boolean v2, p0, Lgraphview/GraphView;->staticHorizontalLabels:Z

    if-nez v2, :cond_2

    iput-object v4, p0, Lgraphview/GraphView;->horlabels:[Ljava/lang/String;

    .line 817
    :cond_2
    invoke-virtual {p0}, Lgraphview/GraphView;->invalidate()V

    .line 818
    iget-object v2, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 819
    iget-object v2, p0, Lgraphview/GraphView;->graphViewContentView:Lgraphview/GraphView$GraphViewContentView;

    invoke-virtual {v2}, Lgraphview/GraphView$GraphViewContentView;->invalidate()V

    .line 820
    return-void
.end method

.method public setCustomLabelFormatter(Lgraphview/CustomLabelFormatter;)V
    .locals 0
    .param p1, "customLabelFormatter"    # Lgraphview/CustomLabelFormatter;

    .prologue
    .line 827
    iput-object p1, p0, Lgraphview/GraphView;->customLabelFormatter:Lgraphview/CustomLabelFormatter;

    .line 828
    return-void
.end method

.method public setDisableTouch(Z)V
    .locals 0
    .param p1, "disableTouch"    # Z

    .prologue
    .line 835
    iput-boolean p1, p0, Lgraphview/GraphView;->disableTouch:Z

    .line 836
    return-void
.end method

.method public setGraphViewStyle(Lgraphview/GraphViewStyle;)V
    .locals 1
    .param p1, "style"    # Lgraphview/GraphViewStyle;

    .prologue
    .line 843
    iput-object p1, p0, Lgraphview/GraphView;->graphViewStyle:Lgraphview/GraphViewStyle;

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lgraphview/GraphView;->labelTextHeight:Ljava/lang/Integer;

    .line 845
    return-void
.end method

.method public setHorizontalLabels([Ljava/lang/String;)V
    .locals 1
    .param p1, "horlabels"    # [Ljava/lang/String;

    .prologue
    .line 852
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgraphview/GraphView;->staticHorizontalLabels:Z

    .line 853
    iput-object p1, p0, Lgraphview/GraphView;->horlabels:[Ljava/lang/String;

    .line 854
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLegendAlign(Lgraphview/GraphView$LegendAlign;)V
    .locals 0
    .param p1, "legendAlign"    # Lgraphview/GraphView$LegendAlign;

    .prologue
    .line 861
    iput-object p1, p0, Lgraphview/GraphView;->legendAlign:Lgraphview/GraphView$LegendAlign;

    .line 862
    return-void
.end method

.method public setLegendWidth(F)V
    .locals 2
    .param p1, "legendWidth"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 871
    invoke-virtual {p0}, Lgraphview/GraphView;->getGraphViewStyle()Lgraphview/GraphViewStyle;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lgraphview/GraphViewStyle;->setLegendWidth(I)V

    .line 872
    return-void
.end method

.method public setManualMaxY(Z)V
    .locals 0
    .param p1, "manualMaxY"    # Z

    .prologue
    .line 887
    iput-boolean p1, p0, Lgraphview/GraphView;->manualMaxY:Z

    .line 888
    return-void
.end method

.method public setManualMinY(Z)V
    .locals 0
    .param p1, "manualMinY"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lgraphview/GraphView;->manualMinY:Z

    .line 895
    return-void
.end method

.method public setManualYAxis(Z)V
    .locals 0
    .param p1, "manualYAxis"    # Z

    .prologue
    .line 880
    iput-boolean p1, p0, Lgraphview/GraphView;->manualYAxis:Z

    .line 881
    return-void
.end method

.method public setManualYAxisBounds(DD)V
    .locals 1
    .param p1, "max"    # D
    .param p3, "min"    # D

    .prologue
    .line 903
    iput-wide p1, p0, Lgraphview/GraphView;->manualMaxYValue:D

    .line 904
    iput-wide p3, p0, Lgraphview/GraphView;->manualMinYValue:D

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgraphview/GraphView;->manualYAxis:Z

    .line 906
    return-void
.end method

.method public setManualYMaxBound(D)V
    .locals 1
    .param p1, "max"    # D

    .prologue
    .line 913
    iput-wide p1, p0, Lgraphview/GraphView;->manualMaxYValue:D

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgraphview/GraphView;->manualMaxY:Z

    .line 915
    return-void
.end method

.method public setManualYMinBound(D)V
    .locals 1
    .param p1, "min"    # D

    .prologue
    .line 922
    iput-wide p1, p0, Lgraphview/GraphView;->manualMinYValue:D

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgraphview/GraphView;->manualMinY:Z

    .line 924
    return-void
.end method

.method public declared-synchronized setScalable(Z)V
    .locals 3
    .param p1, "scalable"    # Z

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lgraphview/GraphView;->scalable:Z

    .line 932
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgraphview/GraphView;->scaleDetector:Lgraphview/compatible/ScaleGestureDetector;

    if-nez v0, :cond_0

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgraphview/GraphView;->scrollable:Z

    .line 934
    new-instance v0, Lgraphview/compatible/ScaleGestureDetector;

    invoke-virtual {p0}, Lgraphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lgraphview/GraphView$1;

    invoke-direct {v2, p0}, Lgraphview/GraphView$1;-><init>(Lgraphview/GraphView;)V

    invoke-direct {v0, v1, v2}, Lgraphview/compatible/ScaleGestureDetector;-><init>(Landroid/content/Context;Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;)V

    iput-object v0, p0, Lgraphview/GraphView;->scaleDetector:Lgraphview/compatible/ScaleGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :cond_0
    monitor-exit p0

    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 975
    iput-boolean p1, p0, Lgraphview/GraphView;->scrollable:Z

    .line 976
    return-void
.end method

.method public setShowHorizontalLabels(Z)V
    .locals 0
    .param p1, "showHorizontalLabels"    # Z

    .prologue
    .line 1019
    iput-boolean p1, p0, Lgraphview/GraphView;->showHorizontalLabels:Z

    .line 1020
    invoke-virtual {p0}, Lgraphview/GraphView;->redrawAll()V

    .line 1021
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .param p1, "showLegend"    # Z

    .prologue
    .line 979
    iput-boolean p1, p0, Lgraphview/GraphView;->showLegend:Z

    .line 980
    return-void
.end method

.method public setShowVerticalLabels(Z)V
    .locals 2
    .param p1, "showVerticalLabels"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Lgraphview/GraphView;->showVerticalLabels:Z

    .line 1039
    iget-boolean v0, p0, Lgraphview/GraphView;->showVerticalLabels:Z

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgraphview/GraphView;->addView(Landroid/view/View;I)V

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lgraphview/GraphView;->viewVerLabels:Landroid/view/View;

    invoke-virtual {p0, v0}, Lgraphview/GraphView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 987
    iput-object p1, p0, Lgraphview/GraphView;->title:Ljava/lang/String;

    .line 988
    return-void
.end method

.method public setVerticalLabels([Ljava/lang/String;)V
    .locals 1
    .param p1, "verlabels"    # [Ljava/lang/String;

    .prologue
    .line 995
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgraphview/GraphView;->staticVerticalLabels:Z

    .line 996
    iput-object p1, p0, Lgraphview/GraphView;->verlabels:[Ljava/lang/String;

    .line 997
    return-void

    .line 995
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewPort(DD)V
    .locals 2
    .param p1, "start"    # D
    .param p3, "size"    # D

    .prologue
    .line 1006
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Viewport size must be greater than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_0
    iput-wide p1, p0, Lgraphview/GraphView;->viewportStart:D

    .line 1010
    iput-wide p3, p0, Lgraphview/GraphView;->viewportSize:D

    .line 1011
    return-void
.end method
