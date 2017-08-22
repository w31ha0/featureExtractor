.class public Lcom/novel/reader/CategoryActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;
    }
.end annotation


# static fields
.field public static categoryId:I


# instance fields
.field private CONTENT:[Ljava/lang/String;

.field private aboutUsDialog:Landroid/app/AlertDialog$Builder;

.field private actionbar:Landroid/support/v7/app/ActionBar;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private categoryName:Ljava/lang/String;

.field private itemSearch:Landroid/view/MenuItem;

.field private mBundle:Landroid/os/Bundle;

.field private mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/CategoryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/CategoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/novel/reader/CategoryActivity;->trackFragment(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/CategoryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/CategoryActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novel/reader/CategoryActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/CategoryActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/CategoryActivity$5;

    invoke-direct {v2, p0}, Lcom/novel/reader/CategoryActivity$5;-><init>(Lcom/novel/reader/CategoryActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/CategoryActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 296
    return-void
.end method

.method private trackFragment(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 111
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    if-nez p1, :cond_1

    .line 112
    const-string v1, "Category Hot Novel Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 125
    return-void

    .line 113
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 114
    const-string v1, "Category Recommend Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 116
    const-string v1, "Category All Novels Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 118
    const-string v1, "Category Latest Novels Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 120
    const-string v1, "Category Finish Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 122
    const-string v1, "Category AllNovels Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    new-instance v1, Lcom/novel/reader/CategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/CategoryActivity$1;-><init>(Lcom/novel/reader/CategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/slidingtab/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/novel/reader/CategoryActivity;->trackFragment(I)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v2, 0x7f03006b

    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->mBundle:Landroid/os/Bundle;

    .line 61
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "CategoryName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->categoryName:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->mBundle:Landroid/os/Bundle;

    const-string v3, "CategoryId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/novel/reader/CategoryActivity;->categoryId:I

    .line 64
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    .line 65
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/novel/reader/CategoryActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->CONTENT:[Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;

    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/novel/reader/CategoryActivity$NovelPagerAdapter;-><init>(Lcom/novel/reader/CategoryActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 73
    .local v0, "adapter":Landroid/support/v4/app/FragmentPagerAdapter;
    const v2, 0x7f0e009c

    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 74
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    const v2, 0x7f0e009b

    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/slidingtab/SlidingTabLayout;

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    .line 77
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    iget-object v3, p0, Lcom/novel/reader/CategoryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/slidingtab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 79
    invoke-direct {p0}, Lcom/novel/reader/CategoryActivity;->setAboutUsDialog()V

    .line 81
    const v2, 0x7f0e009d

    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 82
    const-string v2, "YearSubscription"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/novel/reader/CategoryActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/CategoryActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/novel/reader/CategoryActivity;->trackScreen()V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0e0159

    const/4 v5, 0x1

    .line 130
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    const-string v3, "YearSubscription"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 133
    const v3, 0x7f0e0158

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 135
    :cond_0
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/novel/reader/CategoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 136
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SearchView;

    .line 137
    .local v2, "searchView":Landroid/support/v7/widget/SearchView;
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 138
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 140
    .local v1, "searchMenuItem":Landroid/view/MenuItem;
    new-instance v3, Lcom/novel/reader/CategoryActivity$2;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/novel/reader/CategoryActivity$2;-><init>(Lcom/novel/reader/CategoryActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    new-instance v3, Lcom/novel/reader/CategoryActivity$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/novel/reader/CategoryActivity$3;-><init>(Lcom/novel/reader/CategoryActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V

    .line 178
    new-instance v3, Lcom/novel/reader/CategoryActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/novel/reader/CategoryActivity$4;-><init>(Lcom/novel/reader/CategoryActivity;Landroid/view/Menu;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 203
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 210
    .local v4, "itemId":I
    sparse-switch v4, :sswitch_data_0

    .line 241
    :goto_0
    return v10

    .line 212
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->finish()V

    goto :goto_0

    .line 216
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/novel/reader/SettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/novel/reader/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v5, "android.intent.extra.EMAIL"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v5, "android.intent.extra.TEXT"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v5, "Send mail..."

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/novel/reader/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lcom/novel/reader/CategoryActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 231
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/novel/reader/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novel/reader/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v3, "intent1":Landroid/content/Intent;
    const-class v5, Lcom/novel/reader/DonateActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v3}, Lcom/novel/reader/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e0154 -> :sswitch_1
        0x7f0e0155 -> :sswitch_2
        0x7f0e0156 -> :sswitch_3
        0x7f0e0157 -> :sswitch_4
        0x7f0e0158 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 282
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/novel/reader/CategoryActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method
