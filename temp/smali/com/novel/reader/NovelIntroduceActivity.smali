.class public Lcom/novel/reader/NovelIntroduceActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "NovelIntroduceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;,
        Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;
    }
.end annotation


# instance fields
.field private aboutUsDialog:Landroid/app/AlertDialog$Builder;

.field private articleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation
.end field

.field private bannerAdView:Landroid/widget/LinearLayout;

.field private checkBoxAddBookcase:Landroid/widget/CheckBox;

.field private descriptionExpand:Ljava/lang/Boolean;

.field private expandGroup:I

.field private imageArrow:Landroid/widget/ImageView;

.field private isNovelChecked:Ljava/lang/Boolean;

.field private itemSearch:Landroid/view/MenuItem;

.field private layoutTextArrow:Landroid/widget/LinearLayout;

.field private mBundle:Landroid/os/Bundle;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;"
        }
    .end annotation
.end field

.field private myData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;"
        }
    .end annotation
.end field

.field private novelArticleNum:Ljava/lang/String;

.field private novelAuthor:Ljava/lang/String;

.field private novelButton:Landroid/widget/Button;

.field private novelDescription:Ljava/lang/String;

.field private novelId:I

.field private novelImageView:Landroid/widget/ImageView;

.field private novelLayoutProgress:Landroid/widget/LinearLayout;

.field private novelListView:Landroid/widget/ExpandableListView;

.field private novelName:Ljava/lang/String;

.field private novelPicUrl:Ljava/lang/String;

.field private novelTextAuthor:Landroid/widget/TextView;

.field private novelTextDescription:Landroid/widget/TextView;

.field private novelTextName:Landroid/widget/TextView;

.field private novelTextUpdate:Landroid/widget/TextView;

.field private novelUpdate:Ljava/lang/String;

.field private search:Landroid/widget/EditText;

.field private theNovel:Lcom/novel/reader/entity/Novel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->descriptionExpand:Ljava/lang/Boolean;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->imageArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->checkBoxAddBookcase:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/novel/reader/NovelIntroduceActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/novel/reader/NovelIntroduceActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->setGroupsAndAdatper()V

    return-void
.end method

.method static synthetic access$1500(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->setViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->reverseMGroups()V

    return-void
.end method

.method static synthetic access$400(Lcom/novel/reader/NovelIntroduceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/entity/Novel;)Lcom/novel/reader/entity/Novel;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;
    .param p1, "x1"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/novel/reader/NovelIntroduceActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    return v0
.end method

.method static synthetic access$700(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/novel/reader/NovelIntroduceActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->descriptionExpand:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/novel/reader/NovelIntroduceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity;->descriptionExpand:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelImageView:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextName:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextAuthor:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextDescription:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextUpdate:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelListView:Landroid/widget/ExpandableListView;

    .line 151
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelButton:Landroid/widget/Button;

    .line 152
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->layoutTextArrow:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->imageArrow:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->checkBoxAddBookcase:Landroid/widget/CheckBox;

    .line 156
    return-void
.end method

.method private reverseMGroups()V
    .locals 7

    .prologue
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v0, "aGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/Group;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v1, v5, -0x1

    .line 263
    .local v1, "groupInt":I
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v4, "theChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/ChildArticle;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    iget-object v6, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kosbrother/tool/Group;

    invoke-virtual {v6}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 268
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5, v4}, Lcom/kosbrother/tool/Group;->setChilds(Ljava/util/ArrayList;)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "groupInt":I
    .end local v3    # "j":I
    .end local v4    # "theChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/ChildArticle;>;"
    :cond_1
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 271
    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    .line 272
    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    .line 273
    return-void
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/NovelIntroduceActivity$9;

    invoke-direct {v2, p0}, Lcom/novel/reader/NovelIntroduceActivity$9;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 496
    return-void
.end method

.method private setGroupsAndAdatper()V
    .locals 14

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    .line 280
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 284
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/kosbrother/tool/Group;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kosbrother/tool/Group;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->getNovelBookmark(ILandroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v12

    .line 296
    .local v12, "theNovelBookmark":Lcom/novel/reader/entity/Bookmark;
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 297
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 298
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/kosbrother/tool/Group;

    new-instance v0, Lcom/kosbrother/tool/ChildArticle;

    .line 300
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/novel/reader/entity/Article;

    invoke-virtual {v4}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/novel/reader/entity/Article;

    .line 301
    invoke-virtual {v5}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/novel/reader/entity/Article;

    invoke-virtual {v7}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/kosbrother/tool/ChildArticle;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 299
    invoke-virtual {v13, v0}, Lcom/kosbrother/tool/Group;->addChildrenItem(Lcom/kosbrother/tool/ChildArticle;)V

    .line 304
    if-eqz v12, :cond_2

    .line 305
    invoke-virtual {v12}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iput v9, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    .line 298
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 296
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 312
    .end local v8    # "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v12    # "theNovelBookmark":Lcom/novel/reader/entity/Bookmark;
    :cond_4
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->reverseMGroups()V

    .line 314
    :cond_5
    new-instance v11, Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    iget v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->expandGroup:I

    invoke-direct {v11, p0, v0, v1, v2}, Lcom/novel/reader/adapter/ExpandListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;I)V

    .line 315
    .local v11, "mAdapter":Lcom/novel/reader/adapter/ExpandListAdapter;
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v11}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 316
    return-void
.end method

.method private setViews()V
    .locals 5

    .prologue
    const v4, 0x7f020069

    .line 160
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextAuthor:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelButton:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/NovelIntroduceActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelIntroduceActivity$1;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelTextDescription:Landroid/widget/TextView;

    new-instance v1, Lcom/novel/reader/NovelIntroduceActivity$2;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelIntroduceActivity$2;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->layoutTextArrow:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/novel/reader/NovelIntroduceActivity$3;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelIntroduceActivity$3;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->imageArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/novel/reader/NovelIntroduceActivity$4;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelIntroduceActivity$4;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->checkBoxAddBookcase:Landroid/widget/CheckBox;

    new-instance v1, Lcom/novel/reader/NovelIntroduceActivity$5;

    invoke-direct {v1, p0}, Lcom/novel/reader/NovelIntroduceActivity$5;-><init>(Lcom/novel/reader/NovelIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 116
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "NovelIntroduce Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->findViews()V

    .line 90
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    .line 91
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    .line 93
    new-instance v0, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;-><init>(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/NovelIntroduceActivity$1;)V

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadNovelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v12

    .line 96
    .local v12, "ab":Landroid/support/v7/app/ActionBar;
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelAuthor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelAuthor:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelDescription"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelDescription:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelUpdate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelUpdate:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelPicUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelPicUrl:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelArticleNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelArticleNum:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/novel/reader/entity/Novel;

    iget v1, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelAuthor:Ljava/lang/String;

    iget-object v4, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelDescription:Ljava/lang/String;

    iget-object v5, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelPicUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelArticleNum:Ljava/lang/String;

    iget-object v8, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelUpdate:Ljava/lang/String;

    move v9, v6

    move v10, v6

    move v11, v6

    invoke-direct/range {v0 .. v11}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    .line 105
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->setViews()V

    .line 109
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->setAboutUsDialog()V

    .line 111
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->trackScreen()V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0e0159

    const/4 v5, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    const-string v3, "YearSubscription"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 323
    const v3, 0x7f0e0158

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 325
    :cond_0
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/novel/reader/NovelIntroduceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 326
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SearchView;

    .line 327
    .local v2, "searchView":Landroid/support/v7/widget/SearchView;
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 328
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 330
    .local v1, "searchMenuItem":Landroid/view/MenuItem;
    new-instance v3, Lcom/novel/reader/NovelIntroduceActivity$6;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/novel/reader/NovelIntroduceActivity$6;-><init>(Lcom/novel/reader/NovelIntroduceActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 344
    new-instance v3, Lcom/novel/reader/NovelIntroduceActivity$7;

    invoke-direct {v3, p0, v2, v1}, Lcom/novel/reader/NovelIntroduceActivity$7;-><init>(Lcom/novel/reader/NovelIntroduceActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V

    .line 368
    new-instance v3, Lcom/novel/reader/NovelIntroduceActivity$8;

    invoke-direct {v3, p0, p1}, Lcom/novel/reader/NovelIntroduceActivity$8;-><init>(Lcom/novel/reader/NovelIntroduceActivity;Landroid/view/Menu;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 393
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v12, 0x1

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 399
    .local v6, "itemId":I
    sparse-switch v6, :sswitch_data_0

    .line 440
    :goto_0
    return v12

    .line 401
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->finish()V

    goto :goto_0

    .line 405
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/novel/reader/SettingActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/novel/reader/NovelIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 409
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v2, "emailIntent":Landroid/content/Intent;
    const-string v7, "plain/text"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v7, "android.intent.extra.EMAIL"

    new-array v8, v12, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v7, "android.intent.extra.TEXT"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v7, "Send mail..."

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/novel/reader/NovelIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 417
    .end local v2    # "emailIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v7, p0, Lcom/novel/reader/NovelIntroduceActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 420
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 421
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novel/reader/NovelIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 424
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/novel/reader/DownloadActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v5, "intent_to_download":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 426
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "NovelId"

    iget v8, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v7, "NovelName"

    iget-object v8, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v5}, Lcom/novel/reader/NovelIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent_to_download":Landroid/content/Intent;
    :sswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700bf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/kosbrother/tool/Report;->createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :sswitch_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v4, "intent1":Landroid/content/Intent;
    const-class v7, Lcom/novel/reader/DonateActivity;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v4}, Lcom/novel/reader/NovelIntroduceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e0154 -> :sswitch_1
        0x7f0e0155 -> :sswitch_2
        0x7f0e0156 -> :sswitch_3
        0x7f0e0157 -> :sswitch_4
        0x7f0e0158 -> :sswitch_7
        0x7f0e0169 -> :sswitch_5
        0x7f0e016a -> :sswitch_6
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onResume()V

    .line 125
    iget v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelId:I

    invoke-static {p0, v0}, Lcom/novel/reader/api/NovelAPI;->isNovelCollected(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->isNovelChecked:Ljava/lang/Boolean;

    .line 126
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->isNovelChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->checkBoxAddBookcase:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_0
    new-instance v0, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;-><init>(Lcom/novel/reader/NovelIntroduceActivity;Lcom/novel/reader/NovelIntroduceActivity$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity$DownloadArticlesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    :goto_1
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->checkBoxAddBookcase:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity;->setGroupsAndAdatper()V

    .line 137
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
