.class Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TooltipLayout.java"


# instance fields
.field private mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

.field private mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

.field private final mWhitePart:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method private constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    .line 432
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    .line 433
    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 434
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    .line 435
    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;Lcom/netflix/android/tooltips/TooltipLayout$1;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 439
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 442
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 445
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 446
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 448
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1300(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->update()V

    .line 454
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->update()V

    .line 455
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1300(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 451
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 461
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 462
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 464
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(IIII)V

    .line 485
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(IIII)V

    .line 486
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 491
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 492
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 493
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method
