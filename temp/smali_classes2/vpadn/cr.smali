.class public Lvpadn/cr;
.super Ljava/lang/Object;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/cr$a;,
        Lvpadn/cr$c;,
        Lvpadn/cr$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$a;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private G:Lvpadn/cr$b;

.field private H:I

.field private I:Z

.field private volatile J:Z

.field private K:Z

.field private L:Z

.field private M:J

.field private N:J

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:Ljava/lang/String;

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "top"

    sput-object v0, Lvpadn/cr;->a:Ljava/lang/String;

    .line 22
    const-string v0, "bottom"

    sput-object v0, Lvpadn/cr;->b:Ljava/lang/String;

    .line 23
    const-string v0, "middle"

    sput-object v0, Lvpadn/cr;->c:Ljava/lang/String;

    .line 24
    const-string v0, "back"

    sput-object v0, Lvpadn/cr;->d:Ljava/lang/String;

    .line 25
    const-string v0, "full"

    sput-object v0, Lvpadn/cr;->e:Ljava/lang/String;

    .line 26
    const-string v0, "front"

    sput-object v0, Lvpadn/cr;->f:Ljava/lang/String;

    .line 62
    const-string v0, "start"

    sput-object v0, Lvpadn/cr;->g:Ljava/lang/String;

    .line 63
    const-string v0, "firstQuartile"

    sput-object v0, Lvpadn/cr;->h:Ljava/lang/String;

    .line 64
    const-string v0, "midpoint"

    sput-object v0, Lvpadn/cr;->i:Ljava/lang/String;

    .line 65
    const-string v0, "thirdQuartile"

    sput-object v0, Lvpadn/cr;->j:Ljava/lang/String;

    .line 66
    const-string v0, "complete"

    sput-object v0, Lvpadn/cr;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "v"

    iput-object v0, p0, Lvpadn/cr;->n:Ljava/lang/String;

    .line 32
    const-string v0, "v"

    iput-object v0, p0, Lvpadn/cr;->o:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lvpadn/cr;->p:Z

    .line 36
    iput-boolean v1, p0, Lvpadn/cr;->q:Z

    .line 38
    iput v1, p0, Lvpadn/cr;->r:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cr;->s:I

    .line 41
    sget-object v0, Lvpadn/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    .line 42
    sget-object v0, Lvpadn/cr;->b:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    .line 45
    iput v1, p0, Lvpadn/cr;->w:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->E:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->F:Ljava/util/Map;

    .line 71
    sget-object v0, Lvpadn/cr$b;->a:Lvpadn/cr$b;

    iput-object v0, p0, Lvpadn/cr;->G:Lvpadn/cr$b;

    .line 73
    iput v1, p0, Lvpadn/cr;->H:I

    .line 75
    iput-boolean v1, p0, Lvpadn/cr;->I:Z

    .line 76
    iput-boolean v1, p0, Lvpadn/cr;->J:Z

    .line 77
    iput-boolean v1, p0, Lvpadn/cr;->K:Z

    .line 80
    iput-boolean v2, p0, Lvpadn/cr;->L:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lvpadn/cr;->O:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lvpadn/cr;->R:Z

    .line 93
    iput-boolean v2, p0, Lvpadn/cr;->S:Z

    .line 96
    iput-boolean v1, p0, Lvpadn/cr;->T:Z

    .line 97
    iput-boolean v1, p0, Lvpadn/cr;->U:Z

    .line 98
    iput-boolean v1, p0, Lvpadn/cr;->V:Z

    .line 99
    iput-boolean v2, p0, Lvpadn/cr;->W:Z

    .line 100
    iput-boolean v2, p0, Lvpadn/cr;->X:Z

    .line 101
    iput-boolean v2, p0, Lvpadn/cr;->Y:Z

    .line 102
    iput-boolean v1, p0, Lvpadn/cr;->Z:Z

    .line 103
    iput-boolean v1, p0, Lvpadn/cr;->aa:Z

    .line 104
    iput-boolean v2, p0, Lvpadn/cr;->ab:Z

    .line 105
    const/16 v0, 0x10

    iput v0, p0, Lvpadn/cr;->ac:I

    .line 106
    const/16 v0, 0x9

    iput v0, p0, Lvpadn/cr;->ad:I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cr;->ae:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->af:Ljava/util/List;

    .line 256
    iput-object p1, p0, Lvpadn/cr;->l:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 716
    if-nez p2, :cond_1

    .line 739
    :cond_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 722
    if-lez v2, :cond_0

    .line 726
    iget-object v0, p0, Lvpadn/cr;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 727
    if-nez v0, :cond_2

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    iget-object v1, p0, Lvpadn/cr;->F:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 734
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v3

    .line 736
    const-string v3, "VideoData"

    const-string v4, "urlList.add(trackingUrlJsonArray.getString(i)) throw Exception"

    invoke-static {v3, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lvpadn/cr;->Y:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lvpadn/cr;->Z:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lvpadn/cr;->aa:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lvpadn/cr;->ab:Z

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lvpadn/cr;->ac:I

    return v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lvpadn/cr;->ad:I

    return v0
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lvpadn/cr;->ac:I

    iget v1, p0, Lvpadn/cr;->ad:I

    if-gt v0, v1, :cond_0

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lvpadn/cr;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lvpadn/cr;->x:Ljava/util/List;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->x:Ljava/util/List;

    .line 595
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->x:Ljava/util/List;

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lvpadn/cr;->y:Ljava/util/List;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->y:Ljava/util/List;

    .line 602
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->y:Ljava/util/List;

    return-object v0
.end method

.method public K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lvpadn/cr;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->z:Ljava/util/List;

    .line 609
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->z:Ljava/util/List;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lvpadn/cr;->A:Ljava/util/List;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->A:Ljava/util/List;

    .line 616
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->A:Ljava/util/List;

    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lvpadn/cr;->B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->B:Ljava/util/List;

    .line 623
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->B:Ljava/util/List;

    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lvpadn/cr;->C:Ljava/util/List;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cr;->C:Ljava/util/List;

    .line 630
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->C:Ljava/util/List;

    return-object v0
.end method

.method public O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lvpadn/cr;->D:Ljava/util/List;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cr;->D:Ljava/util/List;

    .line 637
    :cond_0
    iget-object v0, p0, Lvpadn/cr;->D:Ljava/util/List;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lvpadn/cr;->P:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lvpadn/cr;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lvpadn/cr;->m:Ljava/lang/String;

    return-object v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lvpadn/cr;->R:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lvpadn/cr;->S:Z

    return v0
.end method

.method public U()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lvpadn/cr;->F:Ljava/util/Map;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lvpadn/cr;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lvpadn/cr;->r:I

    .line 301
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 460
    iput-wide p1, p0, Lvpadn/cr;->M:J

    .line 461
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lvpadn/cr;->l:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 746
    iput-object p1, p0, Lvpadn/cr;->F:Ljava/util/Map;

    .line 747
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 682
    :try_start_0
    sget-object v0, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lvpadn/cr;->g:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 688
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lvpadn/cr;->h:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 694
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    sget-object v0, Lvpadn/cr;->i:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 700
    :cond_2
    :goto_2
    :try_start_3
    sget-object v0, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    sget-object v0, Lvpadn/cr;->j:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 706
    :cond_3
    :goto_3
    :try_start_4
    sget-object v0, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 707
    sget-object v0, Lvpadn/cr;->k:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 711
    :cond_4
    :goto_4
    return-void

    .line 709
    :catch_0
    move-exception v0

    goto :goto_4

    .line 703
    :catch_1
    move-exception v0

    goto :goto_3

    .line 697
    :catch_2
    move-exception v0

    goto :goto_2

    .line 691
    :catch_3
    move-exception v0

    goto :goto_1

    .line 685
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public a(Lvpadn/cr$a;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lvpadn/cr;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public a(Lvpadn/cr$c;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lvpadn/cr;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 389
    iput-boolean p1, p0, Lvpadn/cr;->W:Z

    .line 390
    return-void
.end method

.method public a(Lvpadn/cr$b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 275
    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {p1, v1}, Lvpadn/cr$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lvpadn/cr;->n:Ljava/lang/String;

    const-string v2, "vw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lvpadn/cr;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {p1, v1}, Lvpadn/cr$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lvpadn/cr;->o:Ljava/lang/String;

    const-string v2, "vw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lvpadn/cr;->m:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lvpadn/cr;->r:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lvpadn/cr;->s:I

    .line 309
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 468
    iput-wide p1, p0, Lvpadn/cr;->N:J

    .line 469
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    iput-object p1, p0, Lvpadn/cr;->t:Ljava/lang/String;

    .line 317
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_0
    sget-object v0, Lvpadn/cr;->b:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    iget-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    sget-object v0, Lvpadn/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lvpadn/cr;->d:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    goto :goto_0

    .line 323
    :cond_4
    iget-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lvpadn/cr;->d:Ljava/lang/String;

    iput-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Lvpadn/cr$b;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lvpadn/cr;->G:Lvpadn/cr$b;

    .line 421
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 397
    iput-boolean p1, p0, Lvpadn/cr;->p:Z

    .line 398
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lvpadn/cr;->s:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 349
    iput p1, p0, Lvpadn/cr;->w:I

    .line 350
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lvpadn/cr;->u:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 405
    iput-boolean p1, p0, Lvpadn/cr;->q:Z

    .line 406
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lvpadn/cr;->t:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lvpadn/cr;->H:I

    .line 429
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lvpadn/cr;->v:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lvpadn/cr;->I:Z

    .line 437
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lvpadn/cr;->u:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 560
    iput p1, p0, Lvpadn/cr;->ac:I

    .line 561
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lvpadn/cr;->n:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 444
    iput-boolean p1, p0, Lvpadn/cr;->J:Z

    .line 445
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lvpadn/cr;->v:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 564
    iput p1, p0, Lvpadn/cr;->ad:I

    .line 565
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lvpadn/cr;->o:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 452
    iput-boolean p1, p0, Lvpadn/cr;->K:Z

    .line 453
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lvpadn/cr;->w:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lvpadn/cr;->O:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 484
    iput-boolean p1, p0, Lvpadn/cr;->L:Z

    .line 485
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lvpadn/cr;->af:Ljava/util/List;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lvpadn/cr;->ae:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 492
    iput-boolean p1, p0, Lvpadn/cr;->T:Z

    .line 493
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lvpadn/cr;->E:Ljava/util/List;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lvpadn/cr;->P:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 500
    iput-boolean p1, p0, Lvpadn/cr;->U:Z

    .line 501
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lvpadn/cr;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lvpadn/cr;->Q:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 508
    iput-boolean p1, p0, Lvpadn/cr;->V:Z

    .line 509
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lvpadn/cr;->m:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 516
    iput-boolean p1, p0, Lvpadn/cr;->X:Z

    .line 517
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lvpadn/cr;->W:Z

    return v0
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lvpadn/cr;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public l(Z)V
    .locals 0

    .prologue
    .line 524
    iput-boolean p1, p0, Lvpadn/cr;->Y:Z

    .line 525
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lvpadn/cr;->p:Z

    return v0
.end method

.method public m(Z)V
    .locals 0

    .prologue
    .line 532
    iput-boolean p1, p0, Lvpadn/cr;->Z:Z

    .line 533
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lvpadn/cr;->q:Z

    return v0
.end method

.method public n(Z)V
    .locals 0

    .prologue
    .line 540
    iput-boolean p1, p0, Lvpadn/cr;->aa:Z

    .line 541
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvpadn/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lvpadn/cr;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lvpadn/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lvpadn/cr;->H:I

    return v0
.end method

.method public o(Z)V
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lvpadn/cr;->ab:Z

    .line 549
    return-void
.end method

.method public p(Z)V
    .locals 0

    .prologue
    .line 668
    iput-boolean p1, p0, Lvpadn/cr;->R:Z

    .line 669
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lvpadn/cr;->I:Z

    return v0
.end method

.method public q(Z)V
    .locals 0

    .prologue
    .line 676
    iput-boolean p1, p0, Lvpadn/cr;->S:Z

    .line 677
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lvpadn/cr;->J:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lvpadn/cr;->K:Z

    return v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lvpadn/cr;->M:J

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lvpadn/cr;->N:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Object {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lvpadn/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    portraitType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-virtual {p0}, Lvpadn/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    landscapeType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    videoUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v0, p0, Lvpadn/cr;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    webUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    countDownInSec:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lvpadn/cr;->r:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    portraitVideoPosition:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    portraitWebPosition:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v0, p0, Lvpadn/cr;->v:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    trackingUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_3
    iget v0, p0, Lvpadn/cr;->w:I

    if-eqz v0, :cond_4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    trackingInterval:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lvpadn/cr;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    forceFirstMode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lvpadn/cr;->G:Lvpadn/cr$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v0, p0, Lvpadn/cr;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/cr$a;

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lvpadn/cr$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :cond_5
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lvpadn/cr;->O:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lvpadn/cr;->L:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lvpadn/cr;->T:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lvpadn/cr;->U:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lvpadn/cr;->V:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lvpadn/cr;->X:Z

    return v0
.end method
