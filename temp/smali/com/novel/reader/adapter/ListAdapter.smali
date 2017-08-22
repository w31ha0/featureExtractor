.class public Lcom/novel/reader/adapter/ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/ListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/novel/reader/adapter/ListAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/novel/reader/adapter/ListAdapter;->data:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/novel/reader/adapter/ListAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/ListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/novel/reader/adapter/ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    move-object v2, p2

    .line 44
    .local v2, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 45
    sget-object v3, Lcom/novel/reader/adapter/ListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030040

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    :cond_0
    const v3, 0x7f0e00c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0e00cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "testId":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/novel/reader/adapter/ListAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/novel/reader/adapter/ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novel/reader/entity/Category;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lcom/novel/reader/adapter/ListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/novel/reader/entity/Category;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Category;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-object v2
.end method
