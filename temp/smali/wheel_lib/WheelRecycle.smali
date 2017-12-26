.class public Lwheel_lib/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lwheel_lib/WheelView;


# direct methods
.method public constructor <init>(Lwheel_lib/WheelView;)V
    .locals 0
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lwheel_lib/WheelRecycle;->wheel:Lwheel_lib/WheelView;

    .line 28
    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_0

    .line 93
    new-instance p2, Ljava/util/LinkedList;

    .end local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .restart local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 126
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    .local v0, "view":Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lwheel_lib/WheelRecycle;->wheel:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getViewAdapter()Lwheel_lib/adapters/WheelViewAdapter;

    move-result-object v1

    invoke-interface {v1}, Lwheel_lib/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 108
    .local v0, "count":I
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_2

    :cond_0
    iget-object v1, p0, Lwheel_lib/WheelRecycle;->wheel:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lwheel_lib/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lwheel_lib/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lwheel_lib/WheelRecycle;->emptyItems:Ljava/util/List;

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_1
    add-int/2addr p2, v0

    .line 112
    :cond_2
    if-ltz p2, :cond_1

    .line 115
    rem-int/2addr p2, v0

    .line 116
    iget-object v1, p0, Lwheel_lib/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lwheel_lib/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lwheel_lib/WheelRecycle;->items:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :cond_0
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->emptyItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    :cond_1
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lwheel_lib/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lwheel_lib/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lwheel_lib/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILwheel_lib/ItemsRange;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "firstItem"    # I
    .param p3, "range"    # Lwheel_lib/ItemsRange;

    .prologue
    .line 41
    move v1, p2

    .line 42
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 54
    return p2

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Lwheel_lib/ItemsRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lwheel_lib/WheelRecycle;->recycleView(Landroid/view/View;I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 46
    if-nez v0, :cond_1

    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
