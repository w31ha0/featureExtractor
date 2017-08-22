.class public Lcom/novel/reader/BookmarkActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "BookmarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;
    }
.end annotation


# static fields
.field private static adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

.field private static mActivity:Lcom/novel/reader/BookmarkActivity;

.field private static pager:Landroid/support/v4/view/ViewPager;


# instance fields
.field private CONTENT:[Ljava/lang/String;

.field private actionbar:Landroid/support/v7/app/ActionBar;

.field private alertDeleteBookmark:Z

.field private final alertKey:Ljava/lang/String;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private mActionMode:Landroid/support/v7/view/ActionMode;

.field public mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    .line 37
    const-string v0, "alertDeleteBookmark"

    iput-object v0, p0, Lcom/novel/reader/BookmarkActivity;->alertKey:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/novel/reader/BookmarkActivity$4;

    invoke-direct {v0, p0}, Lcom/novel/reader/BookmarkActivity$4;-><init>(Lcom/novel/reader/BookmarkActivity;)V

    iput-object v0, p0, Lcom/novel/reader/BookmarkActivity;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/BookmarkActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/BookmarkActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/novel/reader/BookmarkActivity;->trackFragment(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/BookmarkActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/BookmarkActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/app/FragmentStatePagerAdapter;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/novel/reader/BookmarkActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    return-object v0
.end method

.method private showArticleDeleteDialog()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/BookmarkActivity$3;

    invoke-direct {v2, p0}, Lcom/novel/reader/BookmarkActivity$3;-><init>(Lcom/novel/reader/BookmarkActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/BookmarkActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/BookmarkActivity$2;-><init>(Lcom/novel/reader/BookmarkActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    return-void
.end method

.method private trackFragment(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 114
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    if-nez p1, :cond_1

    .line 115
    const-string v1, "Bookmark Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 120
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 117
    const-string v1, "Bookmark Recent Read Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    new-instance v1, Lcom/novel/reader/BookmarkActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/BookmarkActivity$1;-><init>(Lcom/novel/reader/BookmarkActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/slidingtab/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 109
    sget-object v0, Lcom/novel/reader/BookmarkActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/novel/reader/BookmarkActivity;->trackFragment(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public closeActionMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 262
    sget-object v2, Lcom/novel/reader/BookmarkActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    invoke-virtual {v2, v4}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 263
    .local v0, "fragment1":Lcom/kosbrother/fragments/MyBookmarkFragment;
    sget-object v2, Lcom/novel/reader/BookmarkActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 264
    .local v1, "fragment2":Lcom/kosbrother/fragments/MyBookmarkFragment;
    iput-boolean v4, v0, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    .line 265
    iput-boolean v4, v1, Lcom/kosbrother/fragments/MyBookmarkFragment;->isShowDeleteCallbackAction:Z

    .line 267
    .end local v0    # "fragment1":Lcom/kosbrother/fragments/MyBookmarkFragment;
    .end local v1    # "fragment2":Lcom/kosbrother/fragments/MyBookmarkFragment;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f03006b

    invoke-virtual {p0, v2}, Lcom/novel/reader/BookmarkActivity;->setContentView(I)V

    .line 53
    sput-object p0, Lcom/novel/reader/BookmarkActivity;->mActivity:Lcom/novel/reader/BookmarkActivity;

    .line 55
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    .line 56
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->CONTENT:[Ljava/lang/String;

    .line 62
    new-instance v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;-><init>(Lcom/novel/reader/BookmarkActivity;Landroid/support/v4/app/FragmentManager;)V

    sput-object v2, Lcom/novel/reader/BookmarkActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 64
    const v2, 0x7f0e009c

    invoke-virtual {p0, v2}, Lcom/novel/reader/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    sput-object v2, Lcom/novel/reader/BookmarkActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 65
    sget-object v2, Lcom/novel/reader/BookmarkActivity;->pager:Landroid/support/v4/view/ViewPager;

    sget-object v3, Lcom/novel/reader/BookmarkActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "IS_RECNET"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lcom/novel/reader/BookmarkActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 74
    :cond_0
    const v2, 0x7f0e009b

    invoke-virtual {p0, v2}, Lcom/novel/reader/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/slidingtab/SlidingTabLayout;

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    .line 75
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    sget-object v3, Lcom/novel/reader/BookmarkActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/slidingtab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/novel/reader/BookmarkActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->settings:Landroid/content/SharedPreferences;

    .line 78
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->settings:Landroid/content/SharedPreferences;

    const-string v3, "alertDeleteBookmark"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/novel/reader/BookmarkActivity;->alertDeleteBookmark:Z

    .line 80
    const v2, 0x7f0e009d

    invoke-virtual {p0, v2}, Lcom/novel/reader/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 82
    const-string v2, "YearSubscription"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/novel/reader/BookmarkActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/novel/reader/BookmarkActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/BookmarkActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 85
    :cond_1
    iget-boolean v2, p0, Lcom/novel/reader/BookmarkActivity;->alertDeleteBookmark:Z

    if-eqz v2, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/novel/reader/BookmarkActivity;->showArticleDeleteDialog()V

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/novel/reader/BookmarkActivity;->trackScreen()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 169
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/BookmarkActivity;->finish()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 125
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/novel/reader/BookmarkActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public showCallBackAction()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/novel/reader/BookmarkActivity;->mActivity:Lcom/novel/reader/BookmarkActivity;

    iget-object v1, p0, Lcom/novel/reader/BookmarkActivity;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/novel/reader/BookmarkActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/BookmarkActivity;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 257
    return-void
.end method
