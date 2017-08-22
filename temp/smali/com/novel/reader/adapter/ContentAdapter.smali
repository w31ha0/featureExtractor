.class public Lcom/novel/reader/adapter/ContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContentAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation
.end field

.field private selectId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/ContentAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p3, "selectArticleId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/novel/reader/adapter/ContentAdapter;->activity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/novel/reader/adapter/ContentAdapter;->data:Ljava/util/ArrayList;

    .line 28
    iput p3, p0, Lcom/novel/reader/adapter/ContentAdapter;->selectId:I

    .line 29
    iget-object v0, p0, Lcom/novel/reader/adapter/ContentAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/ContentAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/novel/reader/adapter/ContentAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    move-object v1, p2

    .line 47
    .local v1, "vi":Landroid/view/View;
    sget-object v2, Lcom/novel/reader/adapter/ContentAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    const v2, 0x7f0e00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/novel/reader/adapter/ContentAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/novel/reader/adapter/ContentAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/novel/reader/adapter/ContentAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v2

    iget v3, p0, Lcom/novel/reader/adapter/ContentAdapter;->selectId:I

    if-ne v2, v3, :cond_0

    .line 52
    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :cond_0
    return-object v1
.end method
