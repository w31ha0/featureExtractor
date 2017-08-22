.class public Lcom/kosbrother/fragments/CategoryListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CategoryListFragment.java"


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public static newInstance(Landroid/app/Activity;)Landroid/support/v4/app/ListFragment;
    .locals 1
    .param p0, "myActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Lcom/kosbrother/fragments/CategoryListFragment;

    invoke-direct {v0}, Lcom/kosbrother/fragments/CategoryListFragment;-><init>()V

    .line 46
    .local v0, "fragment":Lcom/kosbrother/fragments/CategoryListFragment;
    return-object v0
.end method

.method private trackCategoryClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/kosbrother/fragments/CategoryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 63
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Category"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Category;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Index"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/novel/reader/api/NovelAPI;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/novel/reader/adapter/ListAdapter;

    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/novel/reader/adapter/ListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 41
    .local v0, "adapter":Lcom/novel/reader/adapter/ListAdapter;
    invoke-virtual {p0, v0}, Lcom/kosbrother/fragments/CategoryListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 31
    iput-object p1, p0, Lcom/kosbrother/fragments/CategoryListFragment;->mActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 51
    invoke-direct {p0, p3}, Lcom/kosbrother/fragments/CategoryListFragment;->trackCategoryClick(I)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/novel/reader/CategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "CategoryId"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Category;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Category;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v3, "CategoryName"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryListFragment;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Category;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lcom/kosbrother/fragments/CategoryListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
