.class public Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridGplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/GridGplayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemAdapter"
.end annotation


# instance fields
.field categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kosbrother/fragments/GridGplayFragment;


# direct methods
.method public constructor <init>(Lcom/kosbrother/fragments/GridGplayFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/GridGplayFragment;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p3, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    iput-object p1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 176
    iput-object p3, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    .line 177
    iput-object p2, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 197
    iget-object v6, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v6}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 198
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, "gridLayout":Landroid/view/View;
    const v6, 0x7f0e0098

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, "categoryName":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Category;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v6, 0x7f0e0097

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 203
    .local v1, "cateogyLayout":Landroid/widget/RelativeLayout;
    move v2, p1

    .line 204
    .local v2, "finalI":I
    new-instance v6, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;-><init>(Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v6, 0x7f0e0099

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 224
    .local v4, "groupGridView":Landroid/widget/GridView;
    iget-object v7, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    iget-object v6, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Category;

    iget-object v8, v6, Lcom/novel/reader/entity/Category;->novels:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Category;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v4, v8, v6}, Lcom/kosbrother/fragments/GridGplayFragment;->access$000(Lcom/kosbrother/fragments/GridGplayFragment;Landroid/widget/GridView;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 225
    return-object v3
.end method
