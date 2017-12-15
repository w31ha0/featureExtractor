.class public Lcom/creativemobi/DragRacing/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/IMarketBillingService;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->b:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 343
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/creativemobi/DragRacing/billing/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/creativemobi/DragRacing/billing/n;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/n;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/billing/BillingService;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/creativemobi/DragRacing/billing/BillingService;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 402
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/creativemobi/DragRacing/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 407
    if-eqz v0, :cond_0

    move v0, v2

    .line 415
    :goto_0
    return v0

    .line 410
    :cond_0
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/creativemobi/DragRacing/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/creativemobi/DragRacing/billing/p;

    invoke-direct {v0, p0}, Lcom/creativemobi/DragRacing/billing/p;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/p;->c()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/creativemobi/DragRacing/billing/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/creativemobi/DragRacing/billing/r;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/r;->c()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/creativemobi/DragRacing/billing/j;

    invoke-direct {v0, p0}, Lcom/creativemobi/DragRacing/billing/j;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/j;->c()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 596
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/creativemobi/DragRacing/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 578
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 579
    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/billing/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/l;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/creativemobi/DragRacing/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/l;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/l;->b()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/creativemobi/DragRacing/billing/BillingService;->h()Z

    .line 580
    :cond_2
    :goto_1
    return-void

    .line 579
    :cond_3
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/creativemobi/DragRacing/billing/BillingService;->stopSelf(I)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 586
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v0, 0x0

    sput-object v0, Lcom/creativemobi/DragRacing/billing/BillingService;->a:Lcom/android/vending/billing/IMarketBillingService;

    .line 588
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->a(I[Ljava/lang/String;)Z

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v1, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/creativemobi/DragRacing/billing/s;

    invoke-direct {v0, p0, p2, v1}, Lcom/creativemobi/DragRacing/billing/s;-><init>(Lcom/creativemobi/DragRacing/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/s;->c()Z

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/billing/g;

    iget-object v1, v0, Lcom/creativemobi/DragRacing/billing/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/creativemobi/DragRacing/billing/g;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, v0, Lcom/creativemobi/DragRacing/billing/g;->a:Lcom/creativemobi/DragRacing/billing/i;

    iget-object v3, v0, Lcom/creativemobi/DragRacing/billing/g;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/creativemobi/DragRacing/billing/g;->d:Ljava/lang/String;

    iget-wide v5, v0, Lcom/creativemobi/DragRacing/billing/g;->e:J

    iget-object v7, v0, Lcom/creativemobi/DragRacing/billing/g;->f:Ljava/lang/String;

    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/creativemobi/DragRacing/billing/m;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/creativemobi/DragRacing/billing/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/creativemobi/DragRacing/billing/i;JLjava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "response_code"

    sget-object v3, Lcom/creativemobi/DragRacing/billing/o;->c:Lcom/creativemobi/DragRacing/billing/o;

    invoke-virtual {v3}, Lcom/creativemobi/DragRacing/billing/o;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/creativemobi/DragRacing/billing/o;->a(I)Lcom/creativemobi/DragRacing/billing/o;

    move-result-object v2

    sget-object v3, Lcom/creativemobi/DragRacing/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/billing/l;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Lcom/creativemobi/DragRacing/billing/l;->a(Lcom/creativemobi/DragRacing/billing/o;)V

    :cond_6
    sget-object v2, Lcom/creativemobi/DragRacing/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
