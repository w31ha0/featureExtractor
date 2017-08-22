.class public Lcom/novel/reader/MyDownloadArticleActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "MyDownloadArticleActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ads/MopubAdFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Article;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID_ABOUT_US:I = 0x2

.field private static final ID_DELETE_DOWNLOAD:I = 0x4

.field private static final ID_GRADE:I = 0x3

.field private static final ID_RESPONSE:I = 0x1

.field private static final ID_SETTING:I = 0x0

.field private static final LOADER_ID:I = 0x41

.field private static actionModeShowing:Z

.field private static isDeleteArticles:Z

.field public static mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private static mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

.field private static mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;"
        }
    .end annotation
.end field

.field private static myActivity:Lcom/novel/reader/MyDownloadArticleActivity;

.field private static myMode:Landroid/support/v7/view/ActionMode;


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

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private deleteDialog:Landroid/app/AlertDialog$Builder;

.field private downloadedCount:Landroid/widget/TextView;

.field private mBundle:Landroid/os/Bundle;

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

.field private novelId:I

.field private novelImageView:Landroid/widget/ImageView;

.field private novelLayoutProgress:Landroid/widget/LinearLayout;

.field private novelListView:Landroid/widget/ExpandableListView;

.field private novelName:Ljava/lang/String;

.field private novelPicUrl:Ljava/lang/String;

.field private novelTextAuthor:Landroid/widget/TextView;

.field private novelTextName:Landroid/widget/TextView;

.field private novel_layout:Landroid/widget/RelativeLayout;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private theNovel:Lcom/novel/reader/entity/Novel;

.field private updateNovelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    .line 79
    sput-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    .line 80
    sput-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->isDeleteArticles:Z

    .line 272
    new-instance v0, Lcom/novel/reader/MyDownloadArticleActivity$6;

    invoke-direct {v0}, Lcom/novel/reader/MyDownloadArticleActivity$6;-><init>()V

    sput-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/MyDownloadArticleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelId:I

    return v0
.end method

.method static synthetic access$100(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelAuthor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelArticleNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->myMode:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 46
    sput-object p0, Lcom/novel/reader/MyDownloadArticleActivity;->myMode:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/novel/reader/MyDownloadArticleActivity;->isDeleteArticles:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    return p0
.end method

.method private static checkSelectOrNot()Z
    .locals 6

    .prologue
    .line 325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 326
    sget-object v4, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kosbrother/tool/Group;

    invoke-virtual {v4}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v1

    .line 327
    .local v1, "groupSize":I
    move v3, v1

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_1

    .line 328
    sget-object v4, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kosbrother/tool/Group;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v0

    .line 329
    .local v0, "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    invoke-virtual {v0}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    const/4 v4, 0x1

    .line 334
    .end local v0    # "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    .end local v1    # "groupSize":I
    .end local v3    # "j":I
    :goto_2
    return v4

    .line 327
    .restart local v0    # "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    .restart local v1    # "groupSize":I
    .restart local v3    # "j":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 325
    .end local v0    # "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "groupSize":I
    .end local v3    # "j":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static removeArticles()V
    .locals 13

    .prologue
    .line 350
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 351
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v9, "articlesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v10

    .line 353
    .local v10, "groupSize":I
    move v12, v10

    .local v12, "j":I
    :goto_1
    if-lez v12, :cond_1

    .line 354
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    add-int/lit8 v2, v12, -0x1

    invoke-virtual {v1, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v8

    .line 355
    .local v8, "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    new-instance v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getId()I

    move-result v1

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNovelId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getSubject()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNum()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 359
    .local v0, "theArticle":Lcom/novel/reader/entity/Article;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    add-int/lit8 v2, v12, -0x1

    invoke-virtual {v1, v2}, Lcom/kosbrother/tool/Group;->removeChild(I)V

    .line 353
    .end local v0    # "theArticle":Lcom/novel/reader/entity/Article;
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 363
    .end local v8    # "aChildArticle":Lcom/kosbrother/tool/ChildArticle;
    :cond_1
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->myActivity:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v9, v1}, Lcom/novel/reader/api/NovelAPI;->removeArticles(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 350
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 365
    .end local v9    # "articlesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    .end local v10    # "groupSize":I
    .end local v12    # "j":I
    :cond_2
    return-void
.end method

.method private reverseMGroups()V
    .locals 7

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v0, "aGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/Group;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 248
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v1, v5, -0x1

    .line 249
    .local v1, "groupInt":I
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v4, "theChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/ChildArticle;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 252
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    sget-object v6, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

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

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5, v4}, Lcom/kosbrother/tool/Group;->setChilds(Ljava/util/ArrayList;)V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "groupInt":I
    .end local v3    # "j":I
    .end local v4    # "theChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/ChildArticle;>;"
    :cond_1
    sget-object v5, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 257
    sput-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    .line 258
    return-void
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/MyDownloadArticleActivity$5;

    invoke-direct {v2, p0}, Lcom/novel/reader/MyDownloadArticleActivity$5;-><init>(Lcom/novel/reader/MyDownloadArticleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 270
    return-void
.end method

.method private setViews()V
    .locals 5

    .prologue
    const v4, 0x7f020069

    .line 136
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelImageView:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelTextName:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelTextAuthor:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0e00f5

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelListView:Landroid/widget/ExpandableListView;

    .line 140
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->downloadedCount:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->updateNovelButton:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novel_layout:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelTextName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelArticleNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelTextAuthor:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelAuthor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelPicUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/novel/reader/util/NovelReaderUtil;->isDisplayDefaultBookCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/MyDownloadArticleActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/MyDownloadArticleActivity$2;-><init>(Lcom/novel/reader/MyDownloadArticleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/MyDownloadArticleActivity$1;

    invoke-direct {v2, p0}, Lcom/novel/reader/MyDownloadArticleActivity$1;-><init>(Lcom/novel/reader/MyDownloadArticleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->deleteDialog:Landroid/app/AlertDialog$Builder;

    .line 168
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->updateNovelButton:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/MyDownloadArticleActivity$3;

    invoke-direct {v1, p0}, Lcom/novel/reader/MyDownloadArticleActivity$3;-><init>(Lcom/novel/reader/MyDownloadArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novel_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/novel/reader/MyDownloadArticleActivity$4;

    invoke-direct {v1, p0}, Lcom/novel/reader/MyDownloadArticleActivity$4;-><init>(Lcom/novel/reader/MyDownloadArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public static showCallBackAction()V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/novel/reader/MyDownloadArticleActivity;->checkSelectOrNot()Z

    move-result v0

    .line 315
    .local v0, "show":Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    if-nez v1, :cond_1

    .line 316
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->myActivity:Lcom/novel/reader/MyDownloadArticleActivity;

    sget-object v2, Lcom/novel/reader/MyDownloadArticleActivity;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/novel/reader/MyDownloadArticleActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    .line 317
    const/4 v1, 0x1

    sput-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-nez v0, :cond_0

    .line 319
    const/4 v1, 0x0

    sput-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    .line 320
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->myMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 123
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "MyDownloadArticle Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->setContentView(I)V

    .line 92
    sput-object p0, Lcom/novel/reader/MyDownloadArticleActivity;->myActivity:Lcom/novel/reader/MyDownloadArticleActivity;

    .line 94
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v12

    .line 95
    .local v12, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    .line 96
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelId:I

    .line 98
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelAuthor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelAuthor:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelPicUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelPicUrl:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelArticleNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelArticleNum:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/novel/reader/entity/Novel;

    iget v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelId:I

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelAuthor:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelPicUrl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelArticleNum:Ljava/lang/String;

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    .line 104
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    invoke-direct {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->setViews()V

    .line 108
    invoke-direct {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->setAboutUsDialog()V

    .line 110
    const-string/jumbo v0, "\u8cc7\u6599\u8655\u7406\u4e2d..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 111
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v13

    .line 112
    .local v13, "lm":Landroid/support/v4/app/LoaderManager;
    const/16 v0, 0x41

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 114
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 115
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->trackScreen()V

    .line 119
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 369
    sget-boolean v0, Lcom/novel/reader/MyDownloadArticleActivity;->isDeleteArticles:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/novel/reader/MyDownloadArticleActivity;->removeArticles()V

    .line 371
    const/4 v0, 0x0

    sput-boolean v0, Lcom/novel/reader/MyDownloadArticleActivity;->isDeleteArticles:Z

    .line 374
    :cond_0
    new-instance v0, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;

    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelId:I

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    const-string/jumbo v0, "\u8a2d\u5b9a"

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 201
    const-string/jumbo v0, "\u610f\u898b\u56de\u993d"

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    const-string/jumbo v0, "\u95dc\u65bc\u6211\u5011"

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    const-string/jumbo v0, "\u70baApp\u8a55\u5206"

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    const/4 v0, 0x4

    const/4 v1, 0x5

    const-string/jumbo v2, "\u522a\u9664"

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    return v4
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/novel/reader/MyDownloadArticleActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;>;"
    .local p2, "getArticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    iput-object p2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    .line 381
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 384
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    .line 387
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 390
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 391
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 395
    :cond_1
    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/kosbrother/tool/Group;

    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kosbrother/tool/Group;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_2
    const/4 v9, 0x0

    :goto_2
    sget-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 402
    iget-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->myData:Ljava/util/TreeMap;

    sget-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 403
    .local v8, "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 404
    sget-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/kosbrother/tool/Group;

    new-instance v0, Lcom/kosbrother/tool/ChildArticle;

    .line 405
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

    .line 406
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

    .line 404
    invoke-virtual {v12, v0}, Lcom/kosbrother/tool/Group;->addChildrenItem(Lcom/kosbrother/tool/ChildArticle;)V

    .line 403
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 401
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 411
    .end local v8    # "articles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    .end local v10    # "j":I
    :cond_4
    invoke-direct {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->reverseMGroups()V

    .line 413
    new-instance v0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-direct {v0, p0, v1, v2}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;)V

    sput-object v0, Lcom/novel/reader/MyDownloadArticleActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    .line 415
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelListView:Landroid/widget/ExpandableListView;

    sget-object v1, Lcom/novel/reader/MyDownloadArticleActivity;->mAdapter:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 419
    .end local v9    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->articleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "txtCount":Ljava/lang/String;
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->downloadedCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u500b\u4e0b\u8f09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->novelLayoutProgress:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "arrayListLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 212
    .local v3, "itemId":I
    sparse-switch v3, :sswitch_data_0

    .line 241
    :goto_0
    return v8

    .line 214
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->finish()V

    goto :goto_0

    .line 218
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/novel/reader/SettingActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/novel/reader/MyDownloadArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v4, "plain/text"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v4, "android.intent.extra.EMAIL"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "service@kosbrother.com"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "android.intent.extra.SUBJECT"

    const-string/jumbo v5, "\u610f\u898b\u56de\u993d from \u5c0f\u8aaa\u738b"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "android.intent.extra.TEXT"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v4, "Send mail..."

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/novel/reader/MyDownloadArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v4, p0, Lcom/novel/reader/MyDownloadArticleActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 233
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "https://play.google.com/store/apps/developer?id=KosBrother"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novel/reader/MyDownloadArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :sswitch_5
    iget-object v4, p0, Lcom/novel/reader/MyDownloadArticleActivity;->deleteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 130
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/novel/reader/MyDownloadArticleActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    .line 340
    const/4 v1, 0x0

    sput-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->actionModeShowing:Z

    .line 341
    sget-boolean v1, Lcom/novel/reader/MyDownloadArticleActivity;->isDeleteArticles:Z

    if-eqz v1, :cond_0

    .line 342
    const-string/jumbo v1, "\u8cc7\u6599\u8655\u7406\u4e2d..."

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/MyDownloadArticleActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 343
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 344
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    const/16 v1, 0x41

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 346
    .end local v0    # "lm":Landroid/support/v4/app/LoaderManager;
    :cond_0
    return-void
.end method
