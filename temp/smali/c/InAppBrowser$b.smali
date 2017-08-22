.class public Lc/InAppBrowser$b;
.super Landroid/webkit/WebChromeClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc/InAppBrowser;


# direct methods
.method public constructor <init>(Lc/InAppBrowser;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lc/InAppBrowser$b;->a:Lc/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5

    .prologue
    .line 502
    const-string v0, "InAppBrowser"

    const-string v1, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lc/InAppBrowser$b;->a:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->h(Lc/InAppBrowser;)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 507
    const-string v0, "InAppBrowser"

    const-string v1, "calling quotaUpdater.updateQuota newQuota: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method
