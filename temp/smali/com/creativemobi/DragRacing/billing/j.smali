.class final Lcom/creativemobi/DragRacing/billing/j;
.super Lcom/creativemobi/DragRacing/billing/l;
.source "BillingService.java"


# instance fields
.field private a:J

.field private synthetic b:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/j;->b:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 314
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/DragRacing/billing/l;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V

    .line 315
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    .prologue
    .line 319
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/DragRacing/billing/j;->a:J

    .line 321
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/j;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 322
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/creativemobi/DragRacing/billing/j;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/j;->a(Landroid/os/Bundle;)V

    .line 325
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/creativemobi/DragRacing/billing/d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/creativemobi/DragRacing/billing/l;->a(Landroid/os/RemoteException;)V

    .line 332
    iget-wide v0, p0, Lcom/creativemobi/DragRacing/billing/j;->a:J

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/f;->a(J)V

    .line 333
    return-void
.end method

.method protected final a(Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 0

    .prologue
    .line 337
    invoke-static {p1}, Lcom/creativemobi/DragRacing/billing/a;->a(Lcom/creativemobi/DragRacing/billing/o;)V

    .line 338
    return-void
.end method
