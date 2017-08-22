.class Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;
.super Landroid/os/AsyncTask;
.source "AdUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->b:Landroid/content/Context;

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 2

    .prologue
    .line 103
    const-string v0, "UpdateAdIdTask"

    const-string v1, "doInBackground invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "UpdateAdIdTask"

    const-string v1, "onPostExecute invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/Utility;->putAdId(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/Utility;->putIsLimitAdTrackingEnabled(Landroid/content/Context;Z)V

    .line 115
    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->a([Ljava/lang/Void;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    return-void
.end method
