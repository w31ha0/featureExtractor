.class Lcom/novel/reader/NovelIntroduceActivity$5;
.super Ljava/lang/Object;
.source "NovelIntroduceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/NovelIntroduceActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/NovelIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackCollectNovel()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelIntroduceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 253
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Collect"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v2}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 254
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1100(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->collecNovel(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)Z

    .line 242
    invoke-direct {p0}, Lcom/novel/reader/NovelIntroduceActivity$5;->trackCollectNovel()V

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$5;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->removeNovelFromCollected(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)V

    goto :goto_0
.end method
