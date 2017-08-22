.class Lcom/novel/reader/DonateActivity$1;
.super Ljava/lang/Object;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/DonateActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/DonateActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/DonateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/DonateActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/novel/reader/DonateActivity$1;->this$0:Lcom/novel/reader/DonateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackDonateClick()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/novel/reader/DonateActivity$1;->this$0:Lcom/novel/reader/DonateActivity;

    invoke-virtual {v1}, Lcom/novel/reader/DonateActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 57
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Donate"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Donate Click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/novel/reader/DonateActivity$1;->trackDonateClick()V

    .line 52
    iget-object v0, p0, Lcom/novel/reader/DonateActivity$1;->this$0:Lcom/novel/reader/DonateActivity;

    invoke-static {v0}, Lcom/novel/reader/DonateActivity;->access$000(Lcom/novel/reader/DonateActivity;)Lcom/android/vending/billing/InAppBillingForNovel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBillingForNovel;->launchSubscriptionFlow()V

    .line 53
    return-void
.end method
