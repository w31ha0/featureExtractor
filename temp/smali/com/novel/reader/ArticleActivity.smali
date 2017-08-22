.class public Lcom/novel/reader/ArticleActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "ArticleActivity.java"

# interfaces
.implements Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/ArticleActivity$GetLastPositionTask;,
        Lcom/novel/reader/ArticleActivity$GetNextArticleTask;,
        Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;,
        Lcom/novel/reader/ArticleActivity$UpdateArticleTask;,
        Lcom/novel/reader/ArticleActivity$DownloadArticleTask;
    }
.end annotation


# static fields
.field private static final ID_Bookmark:I = 0x4

.field private static final ID_CONTENTS:I = 0x8

.field private static final ID_FONT_SIZE:I = 0x7

.field private static final ID_MODE:I = 0x6

.field private static final ID_NOVEL:I = 0x9

.field private static final ID_Report:I = 0x5

.field private static final ID_SETTING:I


# instance fields
.field private ab:Landroid/support/v7/app/ActionBar;

.field private adHasShowed:Z

.field private ariticlePosition:I

.field private articleAdType:I

.field private articleButtonDown:Landroid/widget/Button;

.field private articleButtonUp:Landroid/widget/Button;

.field private articleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private articleId:I

.field private articleLayout:Landroid/widget/LinearLayout;

.field private articleNum:I

.field private articleNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private articlePercent:Landroid/widget/TextView;

.field private articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

.field private articleTextView:Landroid/widget/TextView;

.field private articleTitle:Ljava/lang/String;

.field private articleTitleTextView:Landroid/widget/TextView;

.field private articleWebView:Landroid/webkit/WebView;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private bookmarkImage:Landroid/widget/ImageView;

.field private clickToNextPage:I

.field private currentY:I

.field private downloadBoolean:Ljava/lang/Boolean;

.field private interstitialManager:Lcom/ads/AdInterstitialManager;

.field private layoutProgress:Landroid/widget/LinearLayout;

.field private mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private mBundle:Landroid/os/Bundle;

.field private myArticle:Lcom/novel/reader/entity/Article;

.field private novelId:I

.field private novelImage:Landroid/widget/ImageView;

.field private novelName:Ljava/lang/String;

.field private novelPic:Ljava/lang/String;

.field private stopSleeping:I

.field private textLanguage:I

.field private textMode:Ljava/lang/String;

.field private textSize:I

.field private theGottenArticle:Lcom/novel/reader/entity/Article;

.field private yRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    .line 73
    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleId:I

    .line 76
    iput v0, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    .line 77
    iput v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 82
    iput v1, p0, Lcom/novel/reader/ArticleActivity;->currentY:I

    .line 83
    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleNum:I

    .line 93
    iput-boolean v1, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/ArticleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/novel/reader/ArticleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->setBottomButtonsColor()V

    return-void
.end method

.method static synthetic access$1400(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # Lcom/novel/reader/entity/Article;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/novel/reader/ArticleActivity;)Lcom/novel/reader/entity/Article;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->theGottenArticle:Lcom/novel/reader/entity/Article;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/entity/Article;)Lcom/novel/reader/entity/Article;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # Lcom/novel/reader/entity/Article;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity;->theGottenArticle:Lcom/novel/reader/entity/Article;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->layoutProgress:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->setArticleText()V

    return-void
.end method

.method static synthetic access$1900(Lcom/novel/reader/ArticleActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity;->setArticleTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->requestInterstitialAd()V

    return-void
.end method

.method static synthetic access$2000(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articlePercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->updateBookmark()V

    return-void
.end method

.method static synthetic access$2200(Lcom/novel/reader/ArticleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    return v0
.end method

.method static synthetic access$302(Lcom/novel/reader/ArticleActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->previousPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->nextPage()V

    return-void
.end method

.method static synthetic access$600(Lcom/novel/reader/ArticleActivity;)Lcom/kosbrother/tool/DetectScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/novel/reader/ArticleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->currentY:I

    return v0
.end method

.method static synthetic access$802(Lcom/novel/reader/ArticleActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/novel/reader/ArticleActivity;->currentY:I

    return p1
.end method

.method static synthetic access$900(Lcom/novel/reader/ArticleActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 315
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getContentsIcon()I
    .locals 1

    .prologue
    .line 343
    const v0, 0x7f020060

    return v0
.end method

.method private getFontSizeIcon()I
    .locals 1

    .prologue
    .line 339
    const v0, 0x7f020062

    return v0
.end method

.method private getModeIcon()I
    .locals 1

    .prologue
    .line 335
    const v0, 0x7f020065

    return v0
.end method

.method private nextPage()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 872
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 873
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 874
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 875
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v8, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    .line 880
    :goto_0
    new-instance v0, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;

    invoke-direct {v0, p0, v10}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 887
    :goto_1
    return-void

    .line 878
    :cond_0
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v7, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    goto :goto_0

    .line 882
    :cond_1
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 885
    :cond_2
    new-instance v0, Lcom/novel/reader/ArticleActivity$GetNextArticleTask;

    invoke-direct {v0, p0, v10}, Lcom/novel/reader/ArticleActivity$GetNextArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$GetNextArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private previousPage()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 890
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 891
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    if-eqz v0, :cond_1

    .line 892
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 893
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v8, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    .line 898
    :goto_0
    new-instance v0, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;

    invoke-direct {v0, p0, v10}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 905
    :goto_1
    return-void

    .line 896
    :cond_0
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v7, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 903
    :cond_2
    new-instance v0, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;

    invoke-direct {v0, p0, v10}, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$GetPreviousArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private requestInterstitialAd()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 569
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->interstitialManager:Lcom/ads/AdInterstitialManager;

    invoke-virtual {v1}, Lcom/ads/AdInterstitialManager;->getAd()Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    .line 570
    .local v0, "ad":Lcom/mopub/mobileads/MoPubInterstitial;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 573
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 580
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 578
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method private restorePreValues()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "TextSize"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->textSize:I

    .line 215
    const-string v0, "ModeSetting"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    .line 216
    const-string v0, "TextLanguage"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    .line 217
    const-string v0, "ClickToNextPage"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->clickToNextPage:I

    .line 218
    const-string v0, "StopSleeping"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->stopSleeping:I

    .line 220
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->stopSleeping:I

    if-nez v0, :cond_0

    .line 221
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method private setArticleText()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 583
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "*&&$$*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    invoke-virtual {v0, v13}, Lcom/kosbrother/tool/DetectScrollView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\*&&\\$\\$\\*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "urls":[Ljava/lang/String;
    const-string v2, "<html><body>"

    .line 589
    .local v2, "html":Ljava/lang/String;
    const-string v8, ""

    .line 590
    .local v8, "imgString":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v10

    if-ge v7, v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<img src=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v10, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"><br><br>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 590
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<br><br></body></html>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    const-string v3, "text/html"

    .line 595
    .local v3, "mime":Ljava/lang/String;
    const-string v4, "utf-8"

    .line 596
    .local v4, "encoding":Ljava/lang/String;
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 597
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 598
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 599
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 600
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .end local v2    # "html":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "imgString":Ljava/lang/String;
    .end local v10    # "urls":[Ljava/lang/String;
    :goto_1
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    invoke-virtual {v0, v12}, Lcom/kosbrother/tool/DetectScrollView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 604
    const-string v9, ""

    .line 605
    .local v9, "text":Ljava/lang/String;
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    if-ne v0, v11, :cond_2

    .line 607
    :try_start_0
    invoke-static {}, Ltaobe/tec/jcc/JChineseConvertor;->getInstance()Ltaobe/tec/jcc/JChineseConvertor;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltaobe/tec/jcc/JChineseConvertor;->t2s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 614
    :goto_2
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 608
    :catch_0
    move-exception v6

    .line 609
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 612
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method private setArticleTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "articleTitle"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTitleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private setBookMarkItem(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x4

    .line 367
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-static {v1, p0}, Lcom/novel/reader/api/NovelAPI;->findBookMarkByArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v0

    .line 368
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->bookmarkImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->bookmarkImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setBottomButtonsColor()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x2

    .line 825
    const v3, 0x7f0e00da

    invoke-virtual {p0, v3}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 827
    .local v0, "background":Landroid/widget/RelativeLayout;
    const/4 v3, 0x3

    new-array v2, v3, [F

    .line 828
    .local v2, "hsv":[F
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 829
    .local v1, "color":I
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 831
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    const-string v4, "SunModeSetting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    aget v3, v2, v5

    mul-float/2addr v3, v6

    aput v3, v2, v5

    .line 836
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 837
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 839
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleButtonUp:Landroid/widget/Button;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 840
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleButtonDown:Landroid/widget/Button;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 842
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articlePercent:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 845
    return-void

    .line 834
    :cond_0
    aget v3, v2, v5

    sub-float v3, v7, v3

    mul-float/2addr v3, v6

    sub-float v3, v7, v3

    aput v3, v2, v5

    goto :goto_0
.end method

.method private setCollectNovelItem(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v2, 0x9

    .line 356
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    invoke-static {p0, v0}, Lcom/novel/reader/api/NovelAPI;->isNovelCollected(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->novelImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->novelImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 227
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->layoutProgress:Landroid/widget/LinearLayout;

    .line 228
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleWebView:Landroid/webkit/WebView;

    .line 230
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/DetectScrollView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    .line 231
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleButtonUp:Landroid/widget/Button;

    .line 232
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleButtonDown:Landroid/widget/Button;

    .line 233
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articlePercent:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleLayout:Landroid/widget/LinearLayout;

    .line 235
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTitleTextView:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0e00de

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->bookmarkImage:Landroid/widget/ImageView;

    .line 237
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->novelImage:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    invoke-virtual {v0, p0}, Lcom/kosbrother/tool/DetectScrollView;->setScrollViewListener(Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;)V

    .line 241
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 244
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->layoutProgress:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 246
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 247
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 248
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mAdView1:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mAdView2:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleButtonUp:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/ArticleActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/ArticleActivity$1;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleButtonDown:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/ArticleActivity$2;

    invoke-direct {v1, p0}, Lcom/novel/reader/ArticleActivity$2;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->clickToNextPage:I

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/novel/reader/ArticleActivity$3;

    invoke-direct {v1, p0}, Lcom/novel/reader/ArticleActivity$3;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_0
    return-void
.end method

.method private showFontSizeDialog()V
    .locals 5

    .prologue
    .line 470
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v4, Lcom/novel/reader/ArticleActivity$5;

    invoke-direct {v4, p0}, Lcom/novel/reader/ArticleActivity$5;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 499
    return-void
.end method

.method private showModeDialog()V
    .locals 5

    .prologue
    .line 503
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v3}, Lcom/novel/reader/util/Setting;->getTextModePosition(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/novel/reader/ArticleActivity$6;

    invoke-direct {v4, p0}, Lcom/novel/reader/ArticleActivity$6;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 536
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 166
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "Article Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method private updateBookmark()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-static {v1, p0}, Lcom/novel/reader/api/NovelAPI;->findBookMarkByArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v0

    .line 291
    .local v0, "bookmark":Lcom/novel/reader/entity/Bookmark;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->bookmarkImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->bookmarkImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v0, "ArticleTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "ArticleTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    .line 174
    :cond_0
    const-string v0, "ArticleId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "ArticleId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleId:I

    .line 176
    :cond_1
    const-string v0, "ArticleDownloadBoolean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const-string v0, "ArticleDownloadBoolean"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    .line 178
    :cond_2
    const-string v0, "ReadingRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string v0, "ReadingRate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    .line 180
    :cond_3
    const-string v0, "ArticleIDs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    const-string v0, "ArticleIDs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    .line 182
    :cond_4
    const-string v0, "ArticlePosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "ArticlePosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 184
    :cond_5
    const-string v0, "ArticleNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    const-string v0, "ArticleNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleNum:I

    .line 186
    :cond_6
    const-string v0, "ArticleNums"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const-string v0, "ArticleNums"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    .line 188
    :cond_7
    const-string v0, "AdHasShowed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    const-string v0, "AdHasShowed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    .line 190
    :cond_8
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 457
    if-eqz p3, :cond_0

    .line 458
    const-string v2, "SelectArticleId"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 459
    .local v0, "resultArticleId":I
    const-string v2, "SelectArticlePosition"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 460
    .local v1, "resultPosition":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 461
    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    iput v0, v2, Lcom/novel/reader/entity/Article;->id:I

    .line 462
    iput v1, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 463
    new-instance v2, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/novel/reader/ArticleActivity$UpdateArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    .end local v0    # "resultArticleId":I
    .end local v1    # "resultPosition":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->restorePreValues()V

    .line 105
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->setViews()V

    .line 107
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->ab:Landroid/support/v7/app/ActionBar;

    .line 108
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    .line 109
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelPic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->novelPic:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "NovelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    .line 113
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleId:I

    .line 116
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleDownloadBoolean"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    .line 117
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ReadingRate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    .line 118
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleIDs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticlePosition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    .line 120
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleNum:I

    .line 121
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "ArticleNums"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/novel/reader/ArticleActivity;->getSavedState(Landroid/os/Bundle;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_4

    .line 127
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v8, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    .line 139
    :goto_0
    new-instance v0, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;-><init>(Lcom/novel/reader/ArticleActivity;Lcom/novel/reader/ArticleActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$DownloadArticleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->ab:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->ab:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/novel/reader/ArticleActivity;->setArticleTitle(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->ab:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->trackScreen()V

    .line 152
    new-instance v0, Lcom/ads/AdInterstitialManager;

    invoke-direct {v0, p0}, Lcom/ads/AdInterstitialManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->interstitialManager:Lcom/ads/AdInterstitialManager;

    .line 153
    const-string v0, "ArticleAdType"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    .line 154
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 155
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :goto_1
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    if-nez v0, :cond_2

    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    if-nez v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->requestInterstitialAd()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    .line 162
    :cond_2
    return-void

    .line 130
    :cond_3
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    iget v8, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->downloadBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->articleId:I

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    iget v7, p0, Lcom/novel/reader/ArticleActivity;->articleNum:I

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    goto/16 :goto_0

    .line 136
    :cond_5
    new-instance v0, Lcom/novel/reader/entity/Article;

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->articleId:I

    iget v2, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    const-string v3, ""

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    iget v7, p0, Lcom/novel/reader/ArticleActivity;->articleNum:I

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    goto/16 :goto_0

    .line 157
    :cond_6
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 321
    const/4 v0, 0x6

    const-string/jumbo v1, "\u65e5\u9593\u6a21\u5f0f"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->getModeIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 322
    const/4 v0, 0x7

    const-string/jumbo v1, "\u5b57\u578b\u5927\u5c0f"

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->getFontSizeIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 323
    const/16 v0, 0x8

    const-string/jumbo v1, "\u76ee\u9304"

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->getContentsIcon()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 324
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v6, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 327
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v7, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 328
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 330
    return v5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 850
    const-string v2, "AudioClickToNextPage"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 852
    .local v0, "audioClickSetting":I
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    if-nez v0, :cond_1

    .line 853
    iget v2, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    if-nez v2, :cond_0

    const-string v2, "YearSubscription"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->requestInterstitialAd()V

    .line 855
    iput-boolean v3, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->nextPage()V

    .line 867
    :goto_0
    return v1

    .line 859
    :cond_1
    const/16 v2, 0x18

    if-ne p1, v2, :cond_3

    if-nez v0, :cond_3

    .line 860
    iget v2, p0, Lcom/novel/reader/ArticleActivity;->articleAdType:I

    if-nez v2, :cond_2

    const-string v2, "YearSubscription"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    .line 861
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->requestInterstitialAd()V

    .line 862
    iput-boolean v3, p0, Lcom/novel/reader/ArticleActivity;->adHasShowed:Z

    .line 864
    :cond_2
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->previousPage()V

    goto :goto_0

    .line 867
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/ads/MopubAdFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v12

    .line 382
    .local v12, "itemId":I
    sparse-switch v12, :sswitch_data_0

    .line 453
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 384
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->finish()V

    goto :goto_0

    .line 387
    :sswitch_1
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/novel/reader/SettingActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/novel/reader/ArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    .end local v10    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->findBookMarkByArticle(Lcom/novel/reader/entity/Article;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v9

    .line 392
    .local v9, "bookmark":Lcom/novel/reader/entity/Bookmark;
    if-eqz v9, :cond_0

    .line 393
    invoke-static {v9, p0}, Lcom/novel/reader/api/NovelAPI;->deleteBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)V

    .line 394
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    :goto_1
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v3

    iget v4, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    iget-object v6, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->novelPic:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->insertBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    .line 397
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 402
    .end local v9    # "bookmark":Lcom/novel/reader/entity/Bookmark;
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kosbrother/tool/Report;->createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :sswitch_4
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->showModeDialog()V

    goto/16 :goto_0

    .line 408
    :sswitch_5
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    invoke-static {p0, v0}, Lcom/novel/reader/api/NovelAPI;->isNovelCollected(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget v0, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->getNovel(ILandroid/content/Context;)Lcom/novel/reader/entity/Novel;

    move-result-object v13

    .line 410
    .local v13, "theNovel":Lcom/novel/reader/entity/Novel;
    invoke-static {v13, p0}, Lcom/novel/reader/api/NovelAPI;->removeNovelFromCollected(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)V

    .line 411
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 412
    invoke-virtual {p0}, Lcom/novel/reader/ArticleActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 414
    .end local v13    # "theNovel":Lcom/novel/reader/entity/Novel;
    :cond_1
    new-instance v0, Lcom/novel/reader/ArticleActivity$4;

    invoke-direct {v0, p0}, Lcom/novel/reader/ArticleActivity$4;-><init>(Lcom/novel/reader/ArticleActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 437
    invoke-virtual {v0, v1}, Lcom/novel/reader/ArticleActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 443
    :sswitch_6
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->showFontSizeDialog()V

    goto/16 :goto_0

    .line 446
    :sswitch_7
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/novel/reader/NovelContentsActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v11, "intentContents":Landroid/content/Intent;
    const-string v0, "NovelName"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v0, "NovelId"

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->novelId:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v0, "ArticleId"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Lcom/novel/reader/ArticleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_5
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 9

    .prologue
    .line 911
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v3

    iget v4, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    iget-object v6, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->novelPic:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->createRecentBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    .line 913
    iget-object v0, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->keepNovelLastViewDateIfInDB(ILcom/novel/reader/ArticleActivity;)V

    .line 914
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onPause()V

    .line 915
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity;->setBookMarkItem(Landroid/view/Menu;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/novel/reader/ArticleActivity;->setCollectNovelItem(Landroid/view/Menu;)V

    .line 352
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0e009d

    const/4 v6, 0x1

    .line 760
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 762
    iget v1, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    .line 764
    .local v1, "originTextLan":I
    const-string v3, "TextSize"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/novel/reader/ArticleActivity;->textSize:I

    .line 765
    const-string v3, "ModeSetting"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    .line 766
    const-string v3, "TextLanguage"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    .line 767
    const-string v3, "ClickToNextPage"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/novel/reader/ArticleActivity;->clickToNextPage:I

    .line 768
    const-string v3, "StopSleeping"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/novel/reader/ArticleActivity;->stopSleeping:I

    .line 770
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/novel/reader/ArticleActivity;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 771
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 773
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->layoutProgress:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->textMode:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 775
    iget v3, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    if-eq v1, v3, :cond_0

    .line 776
    iget v3, p0, Lcom/novel/reader/ArticleActivity;->textLanguage:I

    if-ne v3, v6, :cond_2

    .line 777
    const-string v2, ""

    .line 779
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ltaobe/tec/jcc/JChineseConvertor;->getInstance()Ltaobe/tec/jcc/JChineseConvertor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltaobe/tec/jcc/JChineseConvertor;->t2s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 783
    :goto_0
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    iget v3, p0, Lcom/novel/reader/ArticleActivity;->clickToNextPage:I

    if-nez v3, :cond_3

    .line 790
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/novel/reader/ArticleActivity$7;

    invoke-direct {v4, p0}, Lcom/novel/reader/ArticleActivity$7;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    :goto_2
    iget v3, p0, Lcom/novel/reader/ArticleActivity;->stopSleeping:I

    if-nez v3, :cond_1

    .line 809
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 812
    :cond_1
    invoke-virtual {p0, v7}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/novel/reader/ArticleActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 813
    const-string v3, "YearSubscription"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ArticleAdType"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 814
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/novel/reader/ArticleActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v3

    iput-object v3, p0, Lcom/novel/reader/ArticleActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 819
    :goto_3
    invoke-direct {p0}, Lcom/novel/reader/ArticleActivity;->setBottomButtonsColor()V

    .line 821
    return-void

    .line 780
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 785
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->articleTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v5}, Lcom/novel/reader/entity/Article;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 800
    :cond_3
    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/novel/reader/ArticleActivity$8;

    invoke-direct {v4, p0}, Lcom/novel/reader/ArticleActivity$8;-><init>(Lcom/novel/reader/ArticleActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 816
    :cond_4
    invoke-virtual {p0, v7}, Lcom/novel/reader/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 194
    new-instance v0, Lcom/novel/reader/entity/Bookmark;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v2

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v3}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v3

    iget v4, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    iget-object v5, p0, Lcom/novel/reader/ArticleActivity;->novelName:Ljava/lang/String;

    iget-object v6, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v6}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/novel/reader/ArticleActivity;->novelPic:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v0, p0}, Lcom/novel/reader/api/NovelAPI;->createRecentBookmark(Lcom/novel/reader/entity/Bookmark;Landroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    .line 196
    const-string v0, "ArticleTitle"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "ArticleId"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "ArticleDownloadBoolean"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->isDownload()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    const-string v0, "ReadingRate"

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v0, "ArticleIDs"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleIDs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 201
    const-string v0, "ArticlePosition"

    iget v1, p0, Lcom/novel/reader/ArticleActivity;->ariticlePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "ArticleNum"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->myArticle:Lcom/novel/reader/entity/Article;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Article;->getNum()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v0, "ArticleNums"

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity;->articleNums:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 204
    const-string v0, "AdHasShowed"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onScrollChanged(Lcom/kosbrother/tool/DetectScrollView;IIII)V
    .locals 10
    .param p1, "scrollView"    # Lcom/kosbrother/tool/DetectScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 301
    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleScrollView:Lcom/kosbrother/tool/DetectScrollView;

    invoke-virtual {v4}, Lcom/kosbrother/tool/DetectScrollView;->getHeight()I

    move-result v0

    .line 302
    .local v0, "kk":I
    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 304
    .local v1, "tt":I
    iput p3, p0, Lcom/novel/reader/ArticleActivity;->currentY:I

    .line 305
    int-to-double v4, p3

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lcom/novel/reader/ArticleActivity;->yRate:I

    .line 306
    int-to-double v4, p3

    sub-int v6, v1, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    double-to-int v2, v4

    .line 307
    .local v2, "xx":I
    const/16 v4, 0x64

    if-gt v2, v4, :cond_0

    if-gez v2, :cond_1

    .line 308
    :cond_0
    const/16 v2, 0x64

    .line 309
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "yPositon":Ljava/lang/String;
    iget-object v4, p0, Lcom/novel/reader/ArticleActivity;->articlePercent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method
