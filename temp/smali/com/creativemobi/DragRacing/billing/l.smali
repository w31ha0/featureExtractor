.class abstract Lcom/creativemobi/DragRacing/billing/l;
.super Ljava/lang/Object;
.source "BillingService.java"


# instance fields
.field private final a:I

.field private b:J

.field private synthetic c:Lcom/creativemobi/DragRacing/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/BillingService;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/l;->c:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lcom/creativemobi/DragRacing/billing/l;->a:I

    .line 84
    return-void
.end method

.method protected static a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 168
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/o;->a(I)Lcom/creativemobi/DragRacing/billing/o;

    .line 173
    return-void
.end method


# virtual methods
.method protected abstract a()J
.end method

.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/l;->c:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-virtual {v2}, Lcom/creativemobi/DragRacing/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->g()Lcom/android/vending/billing/IMarketBillingService;

    .line 143
    return-void
.end method

.method protected a(Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/creativemobi/DragRacing/billing/l;->a:I

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/billing/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/l;->c:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->a(Lcom/creativemobi/DragRacing/billing/BillingService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/creativemobi/DragRacing/billing/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/DragRacing/billing/l;->b:J

    .line 123
    iget-wide v0, p0, Lcom/creativemobi/DragRacing/billing/l;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/BillingService;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/creativemobi/DragRacing/billing/l;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/billing/l;->a(Landroid/os/RemoteException;)V

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
