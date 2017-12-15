.class final Lcom/creativemobi/DragRacing/billing/r;
.super Lcom/creativemobi/DragRacing/billing/l;
.source "BillingService.java"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/r;->c:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 217
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/DragRacing/billing/l;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V

    .line 218
    iput-object p2, p0, Lcom/creativemobi/DragRacing/billing/r;->a:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/creativemobi/DragRacing/billing/r;->b:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    .prologue
    .line 224
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/r;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/r;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 231
    const-string v1, "PURCHASE_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    .line 233
    if-nez p0, :cond_1

    .line 234
    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-wide v0, Lcom/creativemobi/DragRacing/billing/d;->a:J

    .line 240
    :goto_0
    return-wide v0

    .line 238
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    invoke-static {p0, v1}, Lcom/creativemobi/DragRacing/billing/a;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 240
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/creativemobi/DragRacing/billing/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final a(Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0, p1}, Lcom/creativemobi/DragRacing/billing/a;->a(Lcom/creativemobi/DragRacing/billing/r;Lcom/creativemobi/DragRacing/billing/o;)V

    .line 247
    return-void
.end method
