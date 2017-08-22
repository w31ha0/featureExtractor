.class Lcom/novel/reader/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SearchActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SearchActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackNovelClick(Lcom/novel/reader/entity/Novel;)V
    .locals 3
    .param p1, "novel"    # Lcom/novel/reader/entity/Novel;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-virtual {v1}, Lcom/novel/reader/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 104
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v2}, Lcom/novel/reader/SearchActivity;->access$100(Lcom/novel/reader/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 105
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Novel"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "NovelIntro"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-static {v3}, Lcom/novel/reader/SearchActivity;->access$000(Lcom/novel/reader/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    .line 87
    .local v2, "novel":Lcom/novel/reader/entity/Novel;
    invoke-direct {p0, v2}, Lcom/novel/reader/SearchActivity$1;->trackNovelClick(Lcom/novel/reader/entity/Novel;)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, "newAct":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v3, "NovelName"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "NovelAuthor"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "NovelDescription"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "NovelUpdate"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "NovelPicUrl"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "NovelArticleNum"

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    const-class v4, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    iget-object v3, p0, Lcom/novel/reader/SearchActivity$1;->this$0:Lcom/novel/reader/SearchActivity;

    invoke-virtual {v3, v1}, Lcom/novel/reader/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
