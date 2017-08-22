.class Lcom/taiwanmobile/pt/util/Utility$a;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/util/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/util/Utility;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Landroid/location/Location;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/util/Utility;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iput-object p1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->a:Lcom/taiwanmobile/pt/util/Utility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->b:J

    .line 480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->c:J

    .line 482
    iput-object v2, p0, Lcom/taiwanmobile/pt/util/Utility$a;->d:Ljava/lang/ref/WeakReference;

    .line 483
    iput-object v2, p0, Lcom/taiwanmobile/pt/util/Utility$a;->e:Ljava/lang/ref/WeakReference;

    .line 485
    iput-object v2, p0, Lcom/taiwanmobile/pt/util/Utility$a;->f:Landroid/location/Location;

    .line 487
    iput-object v2, p0, Lcom/taiwanmobile/pt/util/Utility$a;->g:Ljava/lang/String;

    .line 489
    const/4 v0, 0x2

    iput v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->h:I

    .line 491
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    .line 493
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    .line 694
    :try_start_0
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string v1, "LocationHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 695
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 745
    iput p1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->h:I

    .line 746
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 528
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->d:Ljava/lang/ref/WeakReference;

    .line 530
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 531
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 530
    iput-object v1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->e:Ljava/lang/ref/WeakReference;

    .line 534
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    const-string v1, "network"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    const-string v1, "passive"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->f:Landroid/location/Location;

    .line 715
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->g:Ljava/lang/String;

    .line 729
    return-void
.end method

.method private d()Landroid/location/LocationManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 590
    if-nez v0, :cond_0

    move-object v0, v1

    .line 591
    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->d()Landroid/location/LocationManager;

    move-result-object v1

    .line 599
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    const-string v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    return-void

    .line 601
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    iget-object v3, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v3, "LocationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrieved getLastKnownLocation of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    const-string v3, "LocationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "provider : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v3, "LocationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrieved getLastKnownLocation of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()Ljava/util/List;
    .locals 8

    .prologue
    .line 617
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 618
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 619
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 635
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 641
    return-object v1

    .line 619
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 620
    iget-object v1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    .line 621
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    :cond_2
    add-double/2addr v2, v4

    .line 629
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 631
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 635
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 636
    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    iget-object v3, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 559
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 5

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->e()V

    .line 646
    invoke-direct {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->f()Ljava/util/List;

    move-result-object v0

    .line 647
    const-string v1, "LocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Providers priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 649
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    iget-object v1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 651
    if-eqz v1, :cond_0

    .line 652
    invoke-direct {p0, v1}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Landroid/location/Location;)V

    .line 653
    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Ljava/lang/String;)V

    .line 654
    const-string v2, "LocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returned the provider in first priority: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Landroid/location/Location;
    .locals 10

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->e()V

    .line 664
    invoke-direct {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->f()Ljava/util/List;

    move-result-object v2

    .line 665
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Providers priority: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 668
    const/4 v0, 0x0

    .line 669
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    if-nez v2, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/util/Utility$a;->b()Landroid/location/Location;

    move-result-object v0

    .line 689
    :goto_1
    return-object v0

    .line 669
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 671
    if-eqz v1, :cond_0

    .line 672
    const-string v5, "LocationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "provider: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 675
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_0

    .line 684
    :cond_2
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Returned the provider: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " updated at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/taiwanmobile/pt/util/Utility$a;->i:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 686
    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Landroid/location/Location;)V

    .line 687
    invoke-direct {p0, v2}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 496
    const-string v0, "LocationHelper"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/util/Utility$a;->a(Landroid/location/Location;)V

    .line 498
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 501
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(I)V

    .line 503
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(I)V

    .line 508
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 511
    packed-switch p2, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(I)V

    goto :goto_0

    .line 517
    :pswitch_1
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(I)V

    goto :goto_0

    .line 521
    :pswitch_2
    const-string v0, "LocationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/util/Utility$a;->a(I)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
