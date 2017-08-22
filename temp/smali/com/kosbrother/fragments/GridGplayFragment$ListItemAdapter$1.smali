.class Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;
.super Ljava/lang/Object;
.source "GridGplayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iput p2, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackRecommendCategory()V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 219
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Recommend"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    iget v3, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->val$finalI:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Category;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "RecommendIndex"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->trackRecommendCategory()V

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "RecommendCategoryId"

    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    iget v3, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->val$finalI:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Category;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Category;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v2, "RecommendCategoryName"

    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->categories:Ljava/util/ArrayList;

    iget v3, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->val$finalI:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Category;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Category;->getCateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/GridGplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/novel/reader/NovelRecommendActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter$1;->this$1:Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;

    iget-object v1, v1, Lcom/kosbrother/fragments/GridGplayFragment$ListItemAdapter;->this$0:Lcom/kosbrother/fragments/GridGplayFragment;

    invoke-virtual {v1, v0}, Lcom/kosbrother/fragments/GridGplayFragment;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method
