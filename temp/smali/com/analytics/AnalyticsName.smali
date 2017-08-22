.class public Lcom/analytics/AnalyticsName;
.super Ljava/lang/Object;
.source "AnalyticsName.java"


# static fields
.field public static final ArticleActivity:Ljava/lang/String; = "Article Activity"

.field public static final BookmarkFragment:Ljava/lang/String; = "Bookmark Fragment"

.field public static final BookmarkRecentReadFragment:Ljava/lang/String; = "Bookmark Recent Read Fragment"

.field public static final Category:Ljava/lang/String; = "Category"

.field public static final CategoryAllNovelsFragment:Ljava/lang/String; = "Category AllNovels Fragment"

.field public static final CategoryFinishFragment:Ljava/lang/String; = "Category Finish Fragment"

.field public static final CategoryLatestNovelsFragment:Ljava/lang/String; = "Category Latest Novels Fragment"

.field public static final CategoryRecommendFragment:Ljava/lang/String; = "Category Recommend Fragment"

.field public static final CategoryWeekFragment:Ljava/lang/String; = "Category All Novels Fragment"

.field public static final CategroyHotNovelsFragment:Ljava/lang/String; = "Category Hot Novel Fragment"

.field public static final Collect:Ljava/lang/String; = "Collect"

.field public static final Donate:Ljava/lang/String; = "Donate"

.field public static final DonateActivity:Ljava/lang/String; = "Donate Activity"

.field public static final DonateClick:Ljava/lang/String; = "Donate Click"

.field public static final DownloadActivity:Ljava/lang/String; = "Download Activity"

.field public static final Index:Ljava/lang/String; = "Index"

.field public static final IndexCatogry:Ljava/lang/String; = "Index Category List Fragment"

.field public static final IndexFragmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IndexRecommendGrid:Ljava/lang/String; = "Index Recommend Grid Fragment"

.field public static final MyDownloadArticleActivity:Ljava/lang/String; = "MyDownloadArticle Activity"

.field public static final MyNovelCollectedBookcaseFragment:Ljava/lang/String; = "My Collected Novels Bookcase Fragment"

.field public static final MyNovelDownloadBookcaseFragment:Ljava/lang/String; = "My Downloaded Novels Bookcase Fragment"

.field public static final Novel:Ljava/lang/String; = "Novel"

.field public static final NovelContentsActivity:Ljava/lang/String; = "NovelContents Activity"

.field public static final NovelIntro:Ljava/lang/String; = "NovelIntro"

.field public static final NovelIntroduceActivity:Ljava/lang/String; = "NovelIntroduce Activity"

.field public static final NovelRecommendActivity:Ljava/lang/String; = "NovelRecommend Activity"

.field public static final Recommend:Ljava/lang/String; = "Recommend"

.field public static final RecommendIndex:Ljava/lang/String; = "RecommendIndex"

.field public static final Search:Ljava/lang/String; = "Search"

.field public static final SearchActivity:Ljava/lang/String; = "Search Activity"

.field public static final SearchNull:Ljava/lang/String; = "SearchNull"

.field public static final SettingActivity:Ljava/lang/String; = "Setting Activity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/analytics/AnalyticsName$1;

    invoke-direct {v0}, Lcom/analytics/AnalyticsName$1;-><init>()V

    sput-object v0, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
