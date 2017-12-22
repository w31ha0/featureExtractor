.class Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TooltipLayout.java"


# instance fields
.field private final mPaddingStart:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field final synthetic this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;


# direct methods
.method private constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;I)V
    .locals 4

    .prologue
    .line 505
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 500
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    .line 502
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    .line 506
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 508
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 509
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget-object v2, p1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/android/tooltips/R$dimen;->tooltip_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 510
    iget-object v0, p1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/android/tooltips/R$dimen;->tooltip_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    .line 511
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 547
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 552
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 557
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 514
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 515
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v0, v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1400(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v0, v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v1, v1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 518
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 519
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v2, v2, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v2, v2, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v2, v2, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 522
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v2, v2, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v2

    iget v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 523
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v2, v2, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 525
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 526
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 527
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v0, v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v1, v1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 542
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v0, v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v1, v1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 531
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 532
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v4, v4, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v4}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v3

    iget v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v4, v4, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v4}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1600(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v4, v4, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v4}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPaddingStart:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v3, v3, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v3}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 538
    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 540
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v0, v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->this$1:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;

    iget-object v1, v1, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1500(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_0
.end method
