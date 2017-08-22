.class final Lcom/analytics/AnalyticsName$1;
.super Ljava/util/HashMap;
.source "AnalyticsName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/analytics/AnalyticsName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Index HOT_NOVEL Fragment"

    invoke-virtual {p0, v0, v1}, Lcom/analytics/AnalyticsName$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Index MONTH_NOVEL Fragment"

    invoke-virtual {p0, v0, v1}, Lcom/analytics/AnalyticsName$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Index WEEK_NOVEL Fragment"

    invoke-virtual {p0, v0, v1}, Lcom/analytics/AnalyticsName$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Index LATEST_NOVEL Fragment"

    invoke-virtual {p0, v0, v1}, Lcom/analytics/AnalyticsName$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
