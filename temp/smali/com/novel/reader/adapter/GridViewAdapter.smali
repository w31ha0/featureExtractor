.class public Lcom/novel/reader/adapter/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    .local p3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/GameAPP;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/novel/reader/adapter/GridViewAdapter;->addDatas(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 44
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/GridViewAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getAppGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/GameAPP;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "app"    # Lcom/novel/reader/entity/GameAPP;

    .prologue
    .line 76
    move-object v5, p2

    .line 77
    .local v5, "vi":Landroid/view/View;
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 78
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 79
    .local v6, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 81
    .local v2, "height":I
    const/16 v7, 0x1e0

    if-le v6, v7, :cond_2

    .line 82
    sget-object v7, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030035

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 87
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 88
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 89
    new-instance v7, Lcom/novel/reader/adapter/GridViewAdapter$1;

    invoke-direct {v7, p0, p4}, Lcom/novel/reader/adapter/GridViewAdapter$1;-><init>(Lcom/novel/reader/adapter/GridViewAdapter;Lcom/novel/reader/entity/GameAPP;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v7, 0x7f0e00ab

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 98
    .local v3, "image":Landroid/widget/ImageView;
    const v7, 0x7f0e00ac

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "textName":Landroid/widget/TextView;
    const v7, 0x7f0e00ad

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, "description":Landroid/widget/TextView;
    iget-object v7, p4, Lcom/novel/reader/entity/GameAPP;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    const v7, 0x7f020069

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_1
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p4, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, p4, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_0

    .line 109
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    :cond_0
    const-string/jumbo v7, "\u63a8\u85a6\u512a\u8ceaAPP"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p4, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_1

    .line 112
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    :cond_1
    return-object v5

    .line 84
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v3    # "image":Landroid/widget/ImageView;
    .end local v4    # "textName":Landroid/widget/TextView;
    :cond_2
    sget-object v7, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030036

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 104
    .restart local v0    # "description":Landroid/widget/TextView;
    .restart local v3    # "image":Landroid/widget/ImageView;
    .restart local v4    # "textName":Landroid/widget/TextView;
    :cond_3
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    iget-object v8, p4, Lcom/novel/reader/entity/GameAPP;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    const v8, 0x7f020069

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    const v8, 0x7f020069

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private getNovelGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/Novel;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 163
    move-object/from16 v17, p2

    .line 167
    .local v17, "vi":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 168
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v18

    .line 169
    .local v18, "width":I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 171
    .local v8, "height":I
    const/16 v19, 0x1e0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 172
    sget-object v19, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v20, 0x7f03003e

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 177
    :goto_0
    const v19, 0x7f0e00ac

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 178
    .local v13, "textName":Landroid/widget/TextView;
    const v19, 0x7f0e00ab

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 179
    .local v9, "image":Landroid/widget/ImageView;
    const v19, 0x7f0e00ca

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 180
    .local v10, "textAuthor":Landroid/widget/TextView;
    const v19, 0x7f0e00cb

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 181
    .local v11, "textCounts":Landroid/widget/TextView;
    const v19, 0x7f0e00cc

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 182
    .local v12, "textFinish":Landroid/widget/TextView;
    const v19, 0x7f0e00cd

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 184
    .local v15, "textSerialize":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 191
    const v19, 0x7f020069

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0700d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_2
    const-string v6, "yy-MM-dd"

    .line 203
    .local v6, "format":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v7, "formater":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 205
    .local v16, "today":Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "currentDateTimeString":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 207
    const v19, 0x7f0e00ce

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 208
    .local v14, "textNewArticle":Landroid/widget/TextView;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    .end local v14    # "textNewArticle":Landroid/widget/TextView;
    :cond_0
    const/4 v3, 0x0

    .line 213
    .local v3, "date":Ljava/util/Date;
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastViewDate()Ljava/util/Date;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 215
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastViewDate()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 217
    const v19, 0x7f0e00ce

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 218
    .restart local v14    # "textNewArticle":Landroid/widget/TextView;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    const-string/jumbo v19, "\u6709\u65b0\u6587\u7ae0!!"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v14    # "textNewArticle":Landroid/widget/TextView;
    :cond_1
    :goto_3
    return-object v17

    .line 174
    .end local v2    # "currentDateTimeString":Ljava/lang/String;
    .end local v3    # "date":Ljava/util/Date;
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "formater":Ljava/text/SimpleDateFormat;
    .end local v9    # "image":Landroid/widget/ImageView;
    .end local v10    # "textAuthor":Landroid/widget/TextView;
    .end local v11    # "textCounts":Landroid/widget/TextView;
    .end local v12    # "textFinish":Landroid/widget/TextView;
    .end local v13    # "textName":Landroid/widget/TextView;
    .end local v15    # "textSerialize":Landroid/widget/TextView;
    .end local v16    # "today":Ljava/util/Date;
    :cond_2
    sget-object v19, Lcom/novel/reader/adapter/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v20, 0x7f03003f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_0

    .line 193
    .restart local v9    # "image":Landroid/widget/ImageView;
    .restart local v10    # "textAuthor":Landroid/widget/TextView;
    .restart local v11    # "textCounts":Landroid/widget/TextView;
    .restart local v12    # "textFinish":Landroid/widget/TextView;
    .restart local v13    # "textName":Landroid/widget/TextView;
    .restart local v15    # "textSerialize":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v19

    const v20, 0x7f020069

    invoke-virtual/range {v19 .. v20}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v19

    const v20, 0x7f020069

    invoke-virtual/range {v19 .. v20}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 199
    :cond_4
    const-string/jumbo v19, "\u5168\u672c"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 221
    .restart local v2    # "currentDateTimeString":Ljava/lang/String;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v6    # "format":Ljava/lang/String;
    .restart local v7    # "formater":Ljava/text/SimpleDateFormat;
    .restart local v16    # "today":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 222
    .local v5, "e":Ljava/text/ParseException;
    const/16 v19, 0x6

    const-string v20, "NovelParseError"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "novel id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  last date:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public addDatas(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    .local p3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/GameAPP;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/novel/reader/entity/Novel;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Novel;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/novel/reader/adapter/GridViewAdapter;->getNovelGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/Novel;)Landroid/view/View;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/GameAPP;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/novel/reader/adapter/GridViewAdapter;->getAppGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/GameAPP;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected showRecommendAppDialog(Lcom/novel/reader/entity/GameAPP;)V
    .locals 12
    .param p1, "app"    # Lcom/novel/reader/entity/GameAPP;

    .prologue
    const/4 v11, 0x6

    const/high16 v10, 0x41400000    # 12.0f

    const v9, 0x7f020069

    .line 120
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 121
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03002f

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 123
    .local v5, "recomendLayout":Landroid/widget/LinearLayout;
    const v7, 0x7f0e00ab

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 124
    .local v3, "image":Landroid/widget/ImageView;
    const v7, 0x7f0e00ac

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, "textName":Landroid/widget/TextView;
    const v7, 0x7f0e00ad

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "description":Landroid/widget/TextView;
    iget-object v7, p1, Lcom/novel/reader/entity/GameAPP;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :goto_0
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p1, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v7, p1, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 135
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 136
    :cond_0
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p1, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v7, p1, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_1

    .line 138
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "\u63a8\u85a6\u512a\u8ceaAPP"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string/jumbo v8, "\u524d\u5f80\u4e0b\u8f09"

    new-instance v9, Lcom/novel/reader/adapter/GridViewAdapter$2;

    invoke-direct {v9, p0, p1}, Lcom/novel/reader/adapter/GridViewAdapter$2;-><init>(Lcom/novel/reader/adapter/GridViewAdapter;Lcom/novel/reader/entity/GameAPP;)V

    .line 141
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 158
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void

    .line 130
    .end local v0    # "a":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    iget-object v8, p1, Lcom/novel/reader/entity/GameAPP;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
