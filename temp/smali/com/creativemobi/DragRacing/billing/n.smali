.class final Lcom/creativemobi/DragRacing/billing/n;
.super Lcom/creativemobi/DragRacing/billing/l;
.source "BillingService.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/n;->b:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/creativemobi/DragRacing/billing/l;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V

    .line 258
    iput-object p3, p0, Lcom/creativemobi/DragRacing/billing/n;->a:[Ljava/lang/String;

    .line 259
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    .prologue
    .line 263
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/n;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 264
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/n;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/n;->a(Landroid/os/Bundle;)V

    .line 267
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/creativemobi/DragRacing/billing/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
