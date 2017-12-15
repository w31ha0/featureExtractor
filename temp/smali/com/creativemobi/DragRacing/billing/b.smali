.class public final Lcom/creativemobi/DragRacing/billing/b;
.super Ljava/lang/Object;
.source "BillingInterface.java"


# static fields
.field public static final b:[Lcom/creativemobi/DragRacing/billing/z;


# instance fields
.field public a:Z

.field private c:Lcom/creativemobi/DragRacing/billing/t;

.field private d:Landroid/os/Handler;

.field private e:Landroid/app/Activity;

.field private f:Lcom/creativemobi/DragRacing/billing/BillingService;

.field private g:Lcom/creativemobi/DragRacing/billing/q;

.field private h:Ljava/util/Set;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 242
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x0

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "disable_ads"

    const v4, 0x7f060010

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->a:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_500"

    const v4, 0x7f060011

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_1250"

    const v4, 0x7f060013

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_2500"

    const v4, 0x7f060014

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_5000"

    const v4, 0x7f060015

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_10000"

    const v4, 0x7f060016

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->b:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/creativemobi/DragRacing/billing/z;

    const-string v3, "resp_inf"

    const v4, 0x7f060017

    sget-object v5, Lcom/creativemobi/DragRacing/billing/h;->a:Lcom/creativemobi/DragRacing/billing/h;

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/DragRacing/billing/z;-><init>(Ljava/lang/String;ILcom/creativemobi/DragRacing/billing/h;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->i:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->h:Ljava/util/Set;

    .line 262
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->d:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/creativemobi/DragRacing/billing/t;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/b;->d:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/creativemobi/DragRacing/billing/t;-><init>(Lcom/creativemobi/DragRacing/billing/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->c:Lcom/creativemobi/DragRacing/billing/t;

    .line 265
    new-instance v0, Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-direct {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    .line 266
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-virtual {v0, p1}, Lcom/creativemobi/DragRacing/billing/BillingService;->a(Landroid/content/Context;)V

    .line 268
    new-instance v0, Lcom/creativemobi/DragRacing/billing/q;

    invoke-direct {v0, p1}, Lcom/creativemobi/DragRacing/billing/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    .line 271
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->c:Lcom/creativemobi/DragRacing/billing/t;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/a;->a(Lcom/creativemobi/DragRacing/billing/c;)V

    .line 272
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->a()Z

    .line 276
    return-void
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "BillingInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 284
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/a;->a()V

    .line 285
    return-void
.end method

.method static synthetic b(Lcom/creativemobi/DragRacing/billing/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "db_initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->b()Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    return-object v0
.end method

.method static synthetic e(Lcom/creativemobi/DragRacing/billing/b;)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/q;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->d:Landroid/os/Handler;

    new-instance v2, Lcom/creativemobi/DragRacing/billing/v;

    invoke-direct {v2, p0, v1}, Lcom/creativemobi/DragRacing/billing/v;-><init>(Lcom/creativemobi/DragRacing/billing/b;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/BillingService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    return-object v0
.end method

.method static synthetic g(Lcom/creativemobi/DragRacing/billing/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->c:Lcom/creativemobi/DragRacing/billing/t;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/a;->a(Lcom/creativemobi/DragRacing/billing/c;)V

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/DragRacing/billing/u;

    invoke-direct {v1, p0}, Lcom/creativemobi/DragRacing/billing/u;-><init>(Lcom/creativemobi/DragRacing/billing/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 372
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 500 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0, p1, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 400
    :goto_0
    return v0

    .line 376
    :cond_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x4e2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 378
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 1250 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0, p1, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 384
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 2500 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0, p1, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 386
    goto :goto_0

    .line 388
    :cond_2
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 390
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 5000 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0, p1, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 392
    goto :goto_0

    .line 394
    :cond_3
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 396
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->e:Landroid/app/Activity;

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 10000 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0, p1, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 398
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 400
    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/creativemobi/DragRacing/billing/y;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/DragRacing/billing/y;-><init>(Lcom/creativemobi/DragRacing/billing/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final finalize()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->g:Lcom/creativemobi/DragRacing/billing/q;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/q;->a()V

    .line 290
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/b;->f:Lcom/creativemobi/DragRacing/billing/BillingService;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->c()V

    .line 291
    return-void
.end method
