.class final Lcom/creativemobi/DragRacing/billing/s;
.super Lcom/creativemobi/DragRacing/billing/l;
.source "BillingService.java"


# instance fields
.field private a:J

.field private b:[Ljava/lang/String;

.field private synthetic c:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/s;->c:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/creativemobi/DragRacing/billing/l;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V

    .line 281
    iput-object p3, p0, Lcom/creativemobi/DragRacing/billing/s;->b:[Ljava/lang/String;

    .line 282
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    .prologue
    .line 286
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/DragRacing/billing/s;->a:J

    .line 288
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/s;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 289
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/creativemobi/DragRacing/billing/s;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 290
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/s;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/s;->a(Landroid/os/Bundle;)V

    .line 293
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/creativemobi/DragRacing/billing/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/creativemobi/DragRacing/billing/l;->a(Landroid/os/RemoteException;)V

    .line 300
    iget-wide v0, p0, Lcom/creativemobi/DragRacing/billing/s;->a:J

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/f;->a(J)V

    .line 301
    return-void
.end method
