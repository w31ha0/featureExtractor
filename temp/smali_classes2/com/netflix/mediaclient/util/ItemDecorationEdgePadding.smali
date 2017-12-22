.class public Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemDecorationEdgePadding.java"


# instance fields
.field protected edgePaddingMuliplier:I

.field protected numColumns:I

.field protected padding:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    iput p1, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    .line 18
    iput p2, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->numColumns:I

    .line 19
    iput p3, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->edgePaddingMuliplier:I

    .line 20
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isViewHeader(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 31
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->numColumns:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->edgePaddingMuliplier:I

    mul-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 41
    :cond_2
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->numColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->padding:I

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;->edgePaddingMuliplier:I

    mul-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
