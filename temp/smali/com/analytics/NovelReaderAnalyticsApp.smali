.class public Lcom/analytics/NovelReaderAnalyticsApp;
.super Landroid/support/multidex/MultiDexApplication;
.source "NovelReaderAnalyticsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;
    }
.end annotation


# static fields
.field public static GENERAL_TRACKER:I


# instance fields
.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/analytics/NovelReaderAnalyticsApp;->GENERAL_TRACKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/analytics/NovelReaderAnalyticsApp;->mTrackers:Ljava/util/HashMap;

    .line 48
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public declared-synchronized getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .param p1, "trackerId"    # Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/analytics/NovelReaderAnalyticsApp;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 54
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 55
    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 57
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 58
    iget-object v2, p0, Lcom/analytics/NovelReaderAnalyticsApp;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v2, p0, Lcom/analytics/NovelReaderAnalyticsApp;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 51
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 65
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 66
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/analytics/NovelReaderAnalyticsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/fabric/sdk/android/Kit;

    const/4 v2, 0x0

    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 70
    return-void
.end method
