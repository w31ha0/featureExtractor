.class public Lcom/novel/reader/SearchActivity$SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final novels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/novel/reader/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/novel/reader/SearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 165
    iput-object p3, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    .line 166
    iput-object p2, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 167
    return-void
.end method


# virtual methods
.method public addDatas(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f020069

    .line 193
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 194
    .local v3, "myInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f03003e

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, "converView":Landroid/view/View;
    const v8, 0x7f0e00ab

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 196
    .local v5, "pic":Landroid/widget/ImageView;
    const v8, 0x7f0e00ac

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 197
    .local v4, "name":Landroid/widget/TextView;
    const v8, 0x7f0e00ca

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    .local v1, "author":Landroid/widget/TextView;
    const v8, 0x7f0e00cb

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    .local v0, "articleNum":Landroid/widget/TextView;
    const v8, 0x7f0e00cc

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 200
    .local v6, "textFinish":Landroid/widget/TextView;
    const v8, 0x7f0e00cd

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 202
    .local v7, "textSerialize":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 203
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    :goto_0
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    const-string/jumbo v8, "\u9023\u8f09\u4e2d..."

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_1
    return-object v2

    .line 205
    :cond_0
    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v9

    iget-object v8, p0, Lcom/novel/reader/SearchActivity$SearchAdapter;->novels:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 216
    :cond_1
    const-string/jumbo v8, "\u5168\u672c"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
