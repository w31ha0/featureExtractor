.class public Lcom/novel/reader/adapter/GridViewAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAppAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/GameAPP;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->data:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    .line 42
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 43
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "device_id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    iput-object p2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->data:Ljava/util/ArrayList;

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sput-object v2, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/GridViewAppAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/GridViewAppAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getAppGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/GameAPP;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "app"    # Lcom/novel/reader/entity/GameAPP;

    .prologue
    .line 68
    move-object v5, p2

    .line 69
    .local v5, "vi":Landroid/view/View;
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 70
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 71
    .local v6, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 73
    .local v2, "height":I
    const/16 v7, 0x1e0

    if-le v6, v7, :cond_2

    .line 74
    sget-object v7, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030035

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 79
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 80
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    new-instance v7, Lcom/novel/reader/adapter/GridViewAppAdapter$1;

    invoke-direct {v7, p0, p4}, Lcom/novel/reader/adapter/GridViewAppAdapter$1;-><init>(Lcom/novel/reader/adapter/GridViewAppAdapter;Lcom/novel/reader/entity/GameAPP;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v7, 0x7f0e00ab

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 90
    .local v3, "image":Landroid/widget/ImageView;
    const v7, 0x7f0e00ac

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, "textName":Landroid/widget/TextView;
    const v7, 0x7f0e00ad

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "description":Landroid/widget/TextView;
    const v7, 0x7f020059

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p4, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v7, p4, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_0

    .line 97
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    :cond_0
    const-string/jumbo v7, "\u63a8\u85a6\u512a\u8ceaAPP"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v7, p4, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_1

    .line 100
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    :cond_1
    return-object v5

    .line 76
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v3    # "image":Landroid/widget/ImageView;
    .end local v4    # "textName":Landroid/widget/TextView;
    :cond_2
    sget-object v7, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030036

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private getNovelGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/Novel;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 148
    move-object/from16 v9, p2

    .line 152
    .local v9, "vi":Landroid/view/View;
    iget-object v11, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 153
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 154
    .local v10, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 156
    .local v2, "height":I
    const/16 v11, 0x1e0

    if-le v10, v11, :cond_2

    .line 157
    sget-object v11, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03003e

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 162
    :goto_0
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setClickable(Z)V

    .line 163
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 165
    new-instance v11, Lcom/novel/reader/adapter/GridViewAppAdapter$3;

    move-object/from16 v0, p4

    invoke-direct {v11, p0, v0}, Lcom/novel/reader/adapter/GridViewAppAdapter$3;-><init>(Lcom/novel/reader/adapter/GridViewAppAdapter;Lcom/novel/reader/entity/Novel;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v11, 0x7f0e00ac

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 187
    .local v7, "textName":Landroid/widget/TextView;
    const v11, 0x7f0e00ab

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 188
    .local v3, "image":Landroid/widget/ImageView;
    const v11, 0x7f0e00ca

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 189
    .local v4, "textAuthor":Landroid/widget/TextView;
    const v11, 0x7f0e00cb

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 190
    .local v5, "textCounts":Landroid/widget/TextView;
    const v11, 0x7f0e00cc

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 191
    .local v6, "textFinish":Landroid/widget/TextView;
    const v11, 0x7f0e00cd

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 193
    .local v8, "textSerialize":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-le v11, v12, :cond_0

    .line 195
    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    :cond_0
    iget-object v11, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xe

    if-le v11, v12, :cond_1

    .line 198
    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 204
    const v11, 0x7f020069

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->isSerializing()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 210
    iget-object v11, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0700d2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_2
    return-object v9

    .line 159
    .end local v3    # "image":Landroid/widget/ImageView;
    .end local v4    # "textAuthor":Landroid/widget/TextView;
    .end local v5    # "textCounts":Landroid/widget/TextView;
    .end local v6    # "textFinish":Landroid/widget/TextView;
    .end local v7    # "textName":Landroid/widget/TextView;
    .end local v8    # "textSerialize":Landroid/widget/TextView;
    :cond_2
    sget-object v11, Lcom/novel/reader/adapter/GridViewAppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03003f

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 206
    .restart local v3    # "image":Landroid/widget/ImageView;
    .restart local v4    # "textAuthor":Landroid/widget/TextView;
    .restart local v5    # "textCounts":Landroid/widget/TextView;
    .restart local v6    # "textFinish":Landroid/widget/TextView;
    .restart local v7    # "textName":Landroid/widget/TextView;
    .restart local v8    # "textSerialize":Landroid/widget/TextView;
    :cond_3
    iget-object v11, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    const v12, 0x7f020069

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    const v12, 0x7f020069

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 212
    :cond_4
    const-string/jumbo v11, "\u5168\u672c"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/GameAPP;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/novel/reader/adapter/GridViewAppAdapter;->getAppGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/GameAPP;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected showRecommendAppDialog(Lcom/novel/reader/entity/GameAPP;)V
    .locals 11
    .param p1, "app"    # Lcom/novel/reader/entity/GameAPP;

    .prologue
    const/4 v10, 0x6

    const/high16 v9, 0x41400000    # 12.0f

    .line 108
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 109
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03002f

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 111
    .local v5, "recomendLayout":Landroid/widget/LinearLayout;
    const v7, 0x7f0e00ab

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 112
    .local v3, "image":Landroid/widget/ImageView;
    const v7, 0x7f0e00ac

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 113
    .local v6, "textName":Landroid/widget/TextView;
    const v7, 0x7f0e00ad

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, "description":Landroid/widget/TextView;
    const v7, 0x7f020059

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p1, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v7, p1, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_0

    .line 120
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    :cond_0
    iget-object v7, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    iget-object v8, p1, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v7, p1, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 123
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/novel/reader/adapter/GridViewAppAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "\u63a8\u85a6\u512a\u8ceaAPP"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string/jumbo v8, "\u524d\u5f80\u4e0b\u8f09"

    new-instance v9, Lcom/novel/reader/adapter/GridViewAppAdapter$2;

    invoke-direct {v9, p0, p1}, Lcom/novel/reader/adapter/GridViewAppAdapter$2;-><init>(Lcom/novel/reader/adapter/GridViewAppAdapter;Lcom/novel/reader/entity/GameAPP;)V

    .line 126
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 143
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method
