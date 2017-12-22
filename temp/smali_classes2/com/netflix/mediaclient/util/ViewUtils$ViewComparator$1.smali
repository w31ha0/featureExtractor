.class final Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 570
    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 571
    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 573
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_0

    .line 578
    :goto_0
    return v0

    .line 575
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_1

    .line 576
    const/4 v0, -0x1

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 565
    check-cast p1, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    check-cast p2, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$1;->compare(Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;)I

    move-result v0

    return v0
.end method
