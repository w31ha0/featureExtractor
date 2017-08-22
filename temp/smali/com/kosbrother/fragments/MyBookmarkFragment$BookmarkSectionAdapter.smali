.class public Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;
.super Lcom/ifixit/android/sectionheaders/Section;
.source "MyBookmarkFragment.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyBookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookmarkSectionAdapter"
.end annotation


# instance fields
.field private bookList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private headerString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/kosbrother/fragments/MyBookmarkFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/kosbrother/fragments/MyBookmarkFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "headerString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Bookmark;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "bookList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Bookmark;>;"
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-direct {p0}, Lcom/ifixit/android/sectionheaders/Section;-><init>()V

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->headerString:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    .line 164
    iput-object p3, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    .line 165
    iput-object p4, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->headerString:Ljava/lang/String;

    .line 166
    return-void
.end method

.method static synthetic access$300(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->headerString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 226
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, "header":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/widget/TextView;

    .end local v0    # "header":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .restart local v0    # "header":Landroid/widget/TextView;
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 232
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 234
    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->headerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f020069

    .line 181
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 182
    .local v2, "myInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030052

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "converView":Landroid/view/View;
    const v6, 0x7f0e011d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 185
    .local v5, "poster":Landroid/widget/ImageView;
    const v6, 0x7f0e011f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 186
    .local v4, "novelName":Landroid/widget/TextView;
    const v6, 0x7f0e0120

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    .local v0, "articleTitle":Landroid/widget/TextView;
    const v6, 0x7f0e011e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 188
    .local v3, "novelBtn":Landroid/widget/Button;
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    :cond_0
    new-instance v6, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;-><init>(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;I)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :goto_0
    return-object v1

    .line 213
    :cond_1
    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    iget-object v6, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    iget-boolean v2, v2, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$600(Lcom/kosbrother/fragments/MyBookmarkFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/BookmarkActivity;

    invoke-virtual {v2}, Lcom/novel/reader/BookmarkActivity;->closeActionMode()V

    .line 256
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->bookList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Bookmark;

    .line 257
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, "newAct":Landroid/content/Intent;
    const-string v2, "NovelName"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "ArticleTitle"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "ArticleId"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getArticleId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v2, "ReadingRate"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getReadRate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v2, "NovelPic"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v2, "NovelId"

    invoke-virtual {v0}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-virtual {v2, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    iget-boolean v0, v0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$500(Lcom/kosbrother/fragments/MyBookmarkFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-static {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$600(Lcom/kosbrother/fragments/MyBookmarkFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/BookmarkActivity;

    invoke-virtual {v0}, Lcom/novel/reader/BookmarkActivity;->showCallBackAction()V

    .line 281
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    .line 282
    iget-object v0, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->access$502(Lcom/kosbrother/fragments/MyBookmarkFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method
