.class public abstract Lcom/wordloco/wordchallenge/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private static b:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/wordloco/wordchallenge/d/a;->a:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 30
    sget-boolean v0, Lcom/wordloco/wordchallenge/d/b;->d:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->a:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v1, "DEBUG-MODE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->a:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v1, "UA-50560949-12"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/wordloco/wordchallenge/d/a;->b:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 26
    :cond_0
    return-void
.end method
