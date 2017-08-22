.class public Lcom/novel/reader/adapter/GridViewDownloadAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewDownloadAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->inflater:Landroid/view/LayoutInflater;

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
            "Lcom/novel/reader/entity/Novel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novel/reader/adapter/GridViewDownloadAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewDownloadAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    move-object/from16 v16, p2

    .line 54
    .local v16, "vi":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 55
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 56
    .local v17, "width":I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 58
    .local v7, "height":I
    const/16 v18, 0x1e0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 59
    sget-object v18, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v19, 0x7f03003e

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 64
    :goto_0
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 67
    new-instance v18, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/adapter/GridViewDownloadAdapter$1;-><init>(Lcom/novel/reader/adapter/GridViewDownloadAdapter;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v18, 0x7f0e00ac

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 89
    .local v12, "textName":Landroid/widget/TextView;
    const v18, 0x7f0e00ab

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 90
    .local v8, "image":Landroid/widget/ImageView;
    const v18, 0x7f0e00ca

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 91
    .local v9, "textAuthor":Landroid/widget/TextView;
    const v18, 0x7f0e00cb

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "textCounts":Landroid/widget/TextView;
    const v18, 0x7f0e00cc

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 93
    .local v11, "textFinish":Landroid/widget/TextView;
    const v18, 0x7f0e00cd

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 95
    .local v14, "textSerialize":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 97
    const/high16 v18, 0x41400000    # 12.0f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 100
    const/high16 v18, 0x41000000    # 8.0f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 106
    const v18, 0x7f020069

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0700d2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2
    const-string v5, "yy-MM-dd"

    .line 118
    .local v5, "format":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, "formater":Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 120
    .local v15, "today":Ljava/util/Date;
    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "currentDateTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 122
    const v18, 0x7f0e00ce

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 123
    .local v13, "textNewArticle":Landroid/widget/TextView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    .end local v13    # "textNewArticle":Landroid/widget/TextView;
    :cond_2
    return-object v16

    .line 61
    .end local v3    # "currentDateTimeString":Ljava/lang/String;
    .end local v5    # "format":Ljava/lang/String;
    .end local v6    # "formater":Ljava/text/SimpleDateFormat;
    .end local v8    # "image":Landroid/widget/ImageView;
    .end local v9    # "textAuthor":Landroid/widget/TextView;
    .end local v10    # "textCounts":Landroid/widget/TextView;
    .end local v11    # "textFinish":Landroid/widget/TextView;
    .end local v12    # "textName":Landroid/widget/TextView;
    .end local v14    # "textSerialize":Landroid/widget/TextView;
    .end local v15    # "today":Ljava/util/Date;
    :cond_3
    sget-object v18, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v19, 0x7f03003f

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_0

    .line 108
    .restart local v8    # "image":Landroid/widget/ImageView;
    .restart local v9    # "textAuthor":Landroid/widget/TextView;
    .restart local v10    # "textCounts":Landroid/widget/TextView;
    .restart local v11    # "textFinish":Landroid/widget/TextView;
    .restart local v12    # "textName":Landroid/widget/TextView;
    .restart local v14    # "textSerialize":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewDownloadAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/novel/reader/entity/Novel;

    invoke-virtual/range {v18 .. v18}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v18

    const v19, 0x7f020069

    invoke-virtual/range {v18 .. v19}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v18

    const v19, 0x7f020069

    invoke-virtual/range {v18 .. v19}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 114
    :cond_5
    const-string/jumbo v18, "\u5168\u672c"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
