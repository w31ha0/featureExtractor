.class Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;
.source "RowLoadingMoreViewHolder.java"


# static fields
.field private static final HEIGHT_DP:I = 0xa

.field private static final VERTICAL_MARGINS_DP:I = 0x5


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public static build(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    new-instance v0, Lcom/netflix/android/widgetry/widget/HorizontalProgress;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 33
    invoke-virtual {v1, v5, v2, v5, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/HorizontalProgress;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 36
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
