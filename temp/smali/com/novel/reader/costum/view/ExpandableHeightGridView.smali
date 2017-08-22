.class public Lcom/novel/reader/costum/view/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->expanded:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->expanded:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->expanded:Z

    .line 23
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 37
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 40
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/novel/reader/costum/view/ExpandableHeightGridView;->expanded:Z

    .line 48
    return-void
.end method
