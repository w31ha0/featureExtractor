.class Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;
.super Ljava/lang/Object;
.source "CategroyHotNovelsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->setNovesAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackNovelClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 163
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$800(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Category Hot Novel Fragment"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 164
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Novel"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "NovelIntro"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .line 146
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->trackNovelClick(I)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-virtual {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v3, "NovelAuthor"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "NovelDescription"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "NovelUpdate"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "NovelArticleNum"

    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$700(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getArticleNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$3;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-virtual {v2, v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method