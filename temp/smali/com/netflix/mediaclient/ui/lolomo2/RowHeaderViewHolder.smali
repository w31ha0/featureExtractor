.class Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;
.source "RowHeaderViewHolder.java"


# instance fields
.field private final contentView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->contentView:Landroid/widget/FrameLayout;

    .line 35
    return-void
.end method

.method public static build(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object v1
.end method


# virtual methods
.method bind(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->contentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
