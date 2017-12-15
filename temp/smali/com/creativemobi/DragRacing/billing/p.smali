.class final Lcom/creativemobi/DragRacing/billing/p;
.super Lcom/creativemobi/DragRacing/billing/l;
.source "BillingService.java"


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/p;->a:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 184
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/DragRacing/billing/l;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V

    .line 185
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 189
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/p;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    sget-object v1, Lcom/creativemobi/DragRacing/billing/o;->a:Lcom/creativemobi/DragRacing/billing/o;

    invoke-virtual {v1}, Lcom/creativemobi/DragRacing/billing/o;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 197
    :goto_0
    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/a;->a(Z)V

    .line 198
    sget-wide v0, Lcom/creativemobi/DragRacing/billing/d;->a:J

    return-wide v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
