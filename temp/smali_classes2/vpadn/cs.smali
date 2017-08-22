.class public Lvpadn/cs;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/cs$f;,
        Lvpadn/cs$n;,
        Lvpadn/cs$m;,
        Lvpadn/cs$g;,
        Lvpadn/cs$h;,
        Lvpadn/cs$i;,
        Lvpadn/cs$j;,
        Lvpadn/cs$c;,
        Lvpadn/cs$l;,
        Lvpadn/cs$d;,
        Lvpadn/cs$k;,
        Lvpadn/cs$b;,
        Lvpadn/cs$e;,
        Lvpadn/cs$a;
    }
.end annotation


# static fields
.field private static ap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Lvpadn/cf;

.field private D:Landroid/widget/TextView;

.field private E:Lvpadn/cf;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/TextView;

.field private I:Lvpadn/bv;

.field private J:Lvpadn/bv;

.field private K:Lvpadn/bv;

.field private L:Lvpadn/bv;

.field private M:Lvpadn/bv;

.field private N:Lvpadn/bv;

.field private O:Lvpadn/bv;

.field private P:Lvpadn/bv;

.field private Q:Z

.field private volatile R:I

.field private volatile S:I

.field private T:Landroid/widget/ProgressBar;

.field private U:I

.field private V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lvpadn/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile W:Z

.field private volatile X:Z

.field private Y:Ljava/util/Timer;

.field private Z:Ljava/util/Timer;

.field a:Z

.field private aa:Ljava/util/Timer;

.field private ab:Ljava/util/Timer;

.field private ac:Ljava/util/Timer;

.field private ad:Ljava/util/Timer;

.field private ae:Ljava/util/Timer;

.field private af:Ljava/util/Timer;

.field private ag:Lorg/json/JSONObject;

.field private ah:Lorg/json/JSONObject;

.field private ai:Lorg/json/JSONObject;

.field private aj:Lorg/json/JSONObject;

.field private ak:Lorg/json/JSONObject;

.field private al:Lorg/json/JSONObject;

.field private am:Z

.field private an:Z

.field private ao:Z

.field private aq:Lvpadn/cu;

.field private ar:Ljava/net/URL;

.field private as:Landroid/graphics/drawable/Drawable;

.field b:Z

.field c:I

.field d:I

.field e:Lvpadn/ct;

.field private final f:Ljava/lang/String;

.field private g:Lcom/vpadn/widget/VpadnActivity;

.field private h:Lvpadn/cv;

.field private i:Lvpadn/cr;

.field private j:Landroid/media/MediaPlayer;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lvpadn/cs$m;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    .line 175
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "ren"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "wei"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "twi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "open_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "open_store"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "place_call"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "send_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "lin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    const-string v1, "cre_cal_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/vpadn/widget/VpadnActivity;Lvpadn/ct;Lvpadn/cr;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "VideoManager"

    iput-object v0, p0, Lvpadn/cs;->f:Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    .line 78
    iput-boolean v1, p0, Lvpadn/cs;->k:Z

    .line 80
    iput-boolean v1, p0, Lvpadn/cs;->l:Z

    .line 81
    iput-boolean v1, p0, Lvpadn/cs;->m:Z

    .line 83
    iput-boolean v2, p0, Lvpadn/cs;->n:Z

    .line 84
    iput-boolean v2, p0, Lvpadn/cs;->o:Z

    .line 86
    iput-boolean v2, p0, Lvpadn/cs;->p:Z

    .line 87
    iput-boolean v2, p0, Lvpadn/cs;->q:Z

    .line 88
    iput-boolean v2, p0, Lvpadn/cs;->r:Z

    .line 122
    iput-boolean v1, p0, Lvpadn/cs;->Q:Z

    .line 124
    iput v2, p0, Lvpadn/cs;->R:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cs;->S:I

    .line 131
    iput-boolean v2, p0, Lvpadn/cs;->a:Z

    .line 132
    iput-boolean v1, p0, Lvpadn/cs;->b:Z

    .line 137
    iput-object v3, p0, Lvpadn/cs;->e:Lvpadn/ct;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    .line 143
    iput-boolean v2, p0, Lvpadn/cs;->W:Z

    .line 144
    iput-boolean v2, p0, Lvpadn/cs;->X:Z

    .line 146
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ag:Lorg/json/JSONObject;

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ah:Lorg/json/JSONObject;

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ai:Lorg/json/JSONObject;

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->aj:Lorg/json/JSONObject;

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->al:Lorg/json/JSONObject;

    .line 162
    iput-boolean v2, p0, Lvpadn/cs;->am:Z

    .line 163
    iput-boolean v1, p0, Lvpadn/cs;->an:Z

    .line 164
    iput-boolean v1, p0, Lvpadn/cs;->ao:Z

    .line 171
    iput-object v3, p0, Lvpadn/cs;->as:Landroid/graphics/drawable/Drawable;

    .line 428
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 430
    iput-object p1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    .line 431
    iput-object p2, p0, Lvpadn/cs;->e:Lvpadn/ct;

    .line 432
    iput-object p3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 433
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getActivityRootRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    .line 435
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 436
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    const v1, 0x8235

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 438
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    .line 441
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    .line 442
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    .line 445
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    .line 446
    iget-object v0, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 447
    iget-object v0, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    .line 451
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    .line 453
    invoke-virtual {p3}, Lvpadn/cr;->b()I

    move-result v0

    iput v0, p0, Lvpadn/cs;->R:I

    .line 454
    invoke-virtual {p3}, Lvpadn/cr;->c()I

    move-result v0

    iput v0, p0, Lvpadn/cs;->S:I

    .line 456
    new-instance v0, Lvpadn/cv;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Lvpadn/cv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    .line 458
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    new-instance v1, Lvpadn/cs$12;

    invoke-direct {v1, p0}, Lvpadn/cs$12;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/cv;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 524
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    new-instance v1, Lvpadn/cs$19;

    invoke-direct {v1, p0}, Lvpadn/cs$19;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/cv;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 536
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    new-instance v1, Lvpadn/cs$20;

    invoke-direct {v1, p0}, Lvpadn/cs$20;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/cv;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    new-instance v1, Lvpadn/cs$21;

    invoke-direct {v1, p0}, Lvpadn/cs$21;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/cv;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 598
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    new-instance v1, Lvpadn/cs$22;

    invoke-direct {v1, p0}, Lvpadn/cs$22;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    const-string v1, "VideoManager"

    const-string v2, "setOnInfoListener throws NoSuchMethodError"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private A()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 642
    iget-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->O:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    .line 646
    :cond_0
    new-instance v0, Lvpadn/cs$23;

    invoke-direct {v0, p0}, Lvpadn/cs$23;-><init>(Lvpadn/cs;)V

    .line 658
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    new-instance v0, Lvpadn/bv;

    const-string v1, "/vpon_video2_replay.png"

    invoke-direct {p0, v1}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lvpadn/bw;

    invoke-direct {v2, p0}, Lvpadn/bw;-><init>(Lvpadn/cs;)V

    invoke-direct {v0, p0, v1, v2}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    .line 666
    :goto_0
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 671
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 673
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 674
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    :goto_2
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvpadn/bv;->setVisibility(I)V

    .line 681
    invoke-direct {p0}, Lvpadn/cs;->E()V

    .line 682
    invoke-direct {p0}, Lvpadn/cs;->F()V

    .line 683
    invoke-direct {p0}, Lvpadn/cs;->I()V

    .line 684
    invoke-direct {p0}, Lvpadn/cs;->J()V

    .line 685
    iget-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    new-instance v1, Lvpadn/cs$24;

    invoke-direct {v1, p0}, Lvpadn/cs$24;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/bv;->setAfterPressButtonListener(Lvpadn/bv$a;)V

    .line 723
    return-void

    .line 661
    :cond_1
    new-instance v1, Lvpadn/bv;

    const-string v2, "/vpon_video2_replay.png"

    invoke-direct {p0, v2}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lvpadn/cm;

    iget-object v4, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    iget-object v5, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 662
    invoke-virtual {v5}, Lvpadn/cr;->I()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p0, v4, v0, v5}, Lvpadn/cm;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v1, p0, v2, v3}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v1, p0, Lvpadn/cs;->O:Lvpadn/bv;

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1

    .line 677
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->O:Lvpadn/bv;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method static synthetic A(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->A()V

    return-void
.end method

.method private B()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    .line 792
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-direct {p0}, Lvpadn/cs;->C()V

    goto :goto_0

    .line 786
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_2

    .line 787
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0

    .line 789
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->C()V

    goto :goto_0
.end method

.method static synthetic B(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ah()V

    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 796
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 797
    const-string v0, "video_pause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvpadn/cs;->g(Z)V

    .line 801
    iget-object v0, p0, Lvpadn/cs;->e:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v2, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoViewHide(Lvpadn/cr;Lvpadn/cr$b;)V

    .line 802
    invoke-direct {p0}, Lvpadn/cs;->am()V

    .line 803
    invoke-direct {p0}, Lvpadn/cs;->al()V

    .line 804
    return-void

    .line 798
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic C(Lvpadn/cs;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    return v0
.end method

.method static synthetic D(Lvpadn/cs;)Lvpadn/bv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    return-object v0
.end method

.method private D()V
    .locals 3

    .prologue
    .line 808
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 809
    const-string v0, "video_pause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvpadn/cs;->g(Z)V

    .line 813
    iget-object v0, p0, Lvpadn/cs;->e:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v2, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onVideoViewHide(Lvpadn/cr;Lvpadn/cr$b;)V

    .line 814
    invoke-direct {p0}, Lvpadn/cs;->am()V

    .line 815
    invoke-direct {p0}, Lvpadn/cs;->al()V

    .line 816
    return-void

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic E(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->U()V

    return-void
.end method

.method static synthetic F(Lvpadn/cs;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private F()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private G()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/bv;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic G(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->E()V

    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/bv;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic H(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->F()V

    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic I(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->I()V

    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic J(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->J()V

    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->m:Z

    .line 884
    invoke-direct {p0}, Lvpadn/cs;->ay()V

    goto :goto_0
.end method

.method static synthetic K(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->P()V

    return-void
.end method

.method private L()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1001
    const-string v0, "VideoManager"

    const-string v2, "Call preparePlayVideo"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-direct {p0}, Lvpadn/cs;->S()Lvpadn/cs$m;

    .line 1004
    invoke-direct {p0}, Lvpadn/cs;->W()V

    .line 1005
    invoke-direct {p0}, Lvpadn/cs;->X()V

    .line 1006
    invoke-direct {p0}, Lvpadn/cs;->ab()V

    .line 1008
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    :goto_0
    iget v0, p0, Lvpadn/cs;->U:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_0

    .line 1015
    iput v5, p0, Lvpadn/cs;->U:I

    .line 1020
    :cond_0
    :try_start_0
    new-instance v0, Lvpadn/dd;

    iget-object v2, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    const-string v3, "vpadn_video_cache"

    const v4, 0x1c9c380

    invoke-direct {v0, v2, v3, v4}, Lvpadn/dd;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->T()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1026
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvpadn/dd;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_3

    .line 1028
    const-string v2, "VideoManager"

    const-string v3, "use disk cache to play video"

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v2, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v2, v0}, Lvpadn/cv;->setVideoURI(Landroid/net/Uri;)V

    .line 1038
    :goto_2
    iget v0, p0, Lvpadn/cs;->U:I

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    iget v2, p0, Lvpadn/cs;->U:I

    invoke-virtual {v0, v2}, Lvpadn/cv;->seekTo(I)V

    .line 1042
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0, v6}, Lvpadn/cv;->setKeepScreenOn(Z)V

    .line 1043
    const-string v0, "VideoManager"

    const-string v2, "mIsVideoLoadingState = true;"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iput-boolean v6, p0, Lvpadn/cs;->W:Z

    .line 1045
    iput-boolean v5, p0, Lvpadn/cs;->X:Z

    .line 1046
    const-string v0, "video_loading"

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1047
    return-void

    .line 1011
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->M()V

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    const-string v0, "VideoManager"

    const-string v2, "Unable to create VpadnDiskLruCache for video cache in preparePlayVideo."

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 1031
    :cond_3
    const-string v0, "VideoManager"

    const-string v2, "Cannot find video in disk cache"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvpadn/cv;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 1035
    :cond_4
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvpadn/cv;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method static synthetic L(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->R()V

    return-void
.end method

.method static synthetic M(Lvpadn/cs;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->ar:Ljava/net/URL;

    return-object v0
.end method

.method private M()V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 1050
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1053
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1054
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    const/4 v3, 0x0

    const v4, 0x1010288

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lvpadn/cs;->T:Landroid/widget/ProgressBar;

    .line 1056
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    return-void
.end method

.method static synthetic N(Lvpadn/cs;)Lvpadn/by;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->af()Lvpadn/by;

    move-result-object v0

    return-object v0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private O()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 1067
    const-string v0, ""

    .line 1068
    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 1069
    const-string v1, "VideoManager"

    const-string v2, "mMediaPlayer == null at getRemainingTimeString()"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    :try_start_0
    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1075
    const-string v1, "VideoManager"

    const-string v2, "mMediaPlayer.getDuration() == -1"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    const-string v2, "VideoManager"

    const-string v3, "getRemainingTimeString throw Exception :"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-eqz v0, :cond_2

    .line 1083
    const-string v0, " 00:00"

    goto :goto_0

    .line 1087
    :cond_2
    :try_start_1
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1089
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_5

    .line 1090
    div-int/lit16 v0, v0, 0x3e8

    .line 1093
    :goto_1
    div-int/lit8 v1, v0, 0x3c

    .line 1094
    rem-int/lit8 v2, v0, 0x3c

    .line 1097
    if-ge v1, v4, :cond_3

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1103
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    :goto_3
    const-string v2, " %s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 1106
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 1112
    :catch_1
    move-exception v0

    .line 1113
    const-string v0, " 00:00"

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic O(Lvpadn/cs;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic P(Lvpadn/cs;)Lvpadn/bv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    return-object v0
.end method

.method private P()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 1120
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1123
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1126
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    .line 1127
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1128
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    invoke-direct {p0}, Lvpadn/cs;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1130
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1131
    iget-object v0, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x3fc00000    # -3.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1133
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1134
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1135
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    invoke-virtual {p0}, Lvpadn/cs;->e()V

    goto :goto_0
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1159
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1160
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    .line 1162
    :cond_0
    return-void
.end method

.method static synthetic Q(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->K()V

    return-void
.end method

.method static synthetic R(Lvpadn/cs;)Lvpadn/bv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->M:Lvpadn/bv;

    return-object v0
.end method

.method private R()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1231
    :try_start_0
    new-instance v0, Lvpadn/cs$25;

    invoke-direct {v0, p0}, Lvpadn/cs$25;-><init>(Lvpadn/cs;)V

    .line 1241
    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1243
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1246
    :cond_0
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    .line 1249
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1250
    new-instance v2, Lvpadn/bv;

    const-string v3, "/vpon_video2_close.png"

    invoke-direct {p0, v3}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lvpadn/bx;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    iget-object v6, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 1251
    invoke-virtual {v6}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v0, v6}, Lvpadn/bx;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v2, p0, v3, v4}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;

    .line 1259
    :goto_0
    if-eqz v1, :cond_3

    .line 1260
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    .line 1269
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1270
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1271
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1274
    iget-boolean v0, p0, Lvpadn/cs;->Q:Z

    if-eqz v0, :cond_9

    .line 1275
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1320
    :cond_1
    :goto_2
    return-void

    .line 1253
    :cond_2
    new-instance v2, Lvpadn/bv;

    const-string v3, "/vpon_video2_close2.png"

    invoke-direct {p0, v3}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lvpadn/bx;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    iget-object v6, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 1254
    invoke-virtual {v6}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v0, v6}, Lvpadn/bx;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v2, p0, v3, v4}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    const-string v1, "VideoManager"

    const-string v2, "putBufferingCloseButton throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1262
    :cond_3
    :try_start_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1263
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    goto :goto_1

    .line 1265
    :cond_4
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    goto :goto_1

    .line 1278
    :cond_5
    if-eqz v1, :cond_7

    .line 1279
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1280
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1282
    :cond_6
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1285
    :cond_7
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1286
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1288
    :cond_8
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1293
    :cond_9
    if-eqz v1, :cond_b

    .line 1294
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    .line 1295
    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1304
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1306
    :cond_a
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1310
    :cond_b
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1311
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1313
    :cond_c
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private S()Lvpadn/cs$m;
    .locals 6

    .prologue
    .line 1332
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1333
    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v1}, Lcom/vpadn/widget/VpadnActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1334
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1336
    int-to-double v2, v0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1337
    new-instance v2, Lvpadn/cs$m;

    invoke-direct {v2, p0, v1, v0}, Lvpadn/cs$m;-><init>(Lvpadn/cs;II)V

    iput-object v2, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    .line 1344
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    return-object v0

    .line 1339
    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1340
    int-to-double v2, v0

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->E()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->F()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1341
    new-instance v2, Lvpadn/cs$m;

    invoke-direct {v2, p0, v0, v1}, Lvpadn/cs$m;-><init>(Lvpadn/cs;II)V

    iput-object v2, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    goto :goto_0
.end method

.method static synthetic S(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ak()V

    return-void
.end method

.method static synthetic T(Lvpadn/cs;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->ag:Lorg/json/JSONObject;

    return-object v0
.end method

.method private T()V
    .locals 4

    .prologue
    .line 1349
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    .line 1358
    :goto_0
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$e;

    invoke-direct {v1, p0}, Lvpadn/cs$e;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_1
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1353
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1354
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    const-string v1, "VideoManager"

    const-string v2, "mHideTopBottomPlayPauseTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private U()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1366
    iget-boolean v0, p0, Lvpadn/cs;->o:Z

    if-nez v0, :cond_3

    .line 1367
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    .line 1368
    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1369
    :cond_1
    invoke-direct {p0, v1}, Lvpadn/cs;->b(Z)V

    .line 1370
    invoke-direct {p0, v1}, Lvpadn/cs;->c(Z)V

    .line 1371
    invoke-direct {p0, v1}, Lvpadn/cs;->d(Z)V

    .line 1372
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    invoke-direct {p0, v1}, Lvpadn/cs;->e(Z)V

    .line 1375
    :cond_2
    invoke-direct {p0, v1}, Lvpadn/cs;->f(Z)V

    .line 1389
    :cond_3
    :goto_0
    return-void

    .line 1377
    :cond_4
    invoke-direct {p0}, Lvpadn/cs;->E()V

    .line 1378
    invoke-direct {p0}, Lvpadn/cs;->F()V

    .line 1379
    invoke-direct {p0}, Lvpadn/cs;->I()V

    .line 1380
    invoke-direct {p0}, Lvpadn/cs;->J()V

    .line 1381
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-nez v0, :cond_5

    .line 1382
    invoke-direct {p0}, Lvpadn/cs;->G()V

    .line 1384
    :cond_5
    iget-boolean v0, p0, Lvpadn/cs;->r:Z

    if-nez v0, :cond_3

    .line 1385
    invoke-direct {p0}, Lvpadn/cs;->T()V

    goto :goto_0
.end method

.method static synthetic U(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->aH()V

    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1393
    .line 1395
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1400
    :goto_0
    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1401
    iget v0, p0, Lvpadn/cs;->R:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lvpadn/cs;->R:I

    .line 1403
    :cond_0
    iget v0, p0, Lvpadn/cs;->R:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1404
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0, v1}, Lvpadn/cr;->f(Z)V

    .line 1405
    invoke-direct {p0}, Lvpadn/cs;->am()V

    .line 1410
    :cond_1
    return-void

    .line 1398
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private W()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1457
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1458
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1459
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1460
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    return-void
.end method

.method private X()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1464
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1465
    iget-object v0, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1466
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1467
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1468
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    return-void
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1473
    return-void
.end method

.method private Z()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1477
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1478
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1479
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    const-string v1, "/vpon_video2_bg_top.png"

    invoke-direct {p0, v1}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1491
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v2, v2, Lvpadn/cs$m;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1492
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1494
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    invoke-direct {p0}, Lvpadn/cs;->E()V

    .line 1496
    return-void

    .line 1485
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 1488
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/cs;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lvpadn/cs;->R:I

    return p1
.end method

.method static synthetic a(Lvpadn/cs;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->as:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lvpadn/cs;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lvpadn/cs;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lvpadn/cs;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->ar:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic a(Lvpadn/cs;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lvpadn/cs;Lvpadn/bv;)Lvpadn/bv;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->O:Lvpadn/bv;

    return-object p1
.end method

.method private a(Lvpadn/cr$a;)Lvpadn/cf;
    .locals 8

    .prologue
    .line 1818
    .line 1819
    invoke-virtual {p1}, Lvpadn/cr$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1820
    invoke-virtual {p1}, Lvpadn/cr$a;->e()Ljava/lang/String;

    move-result-object v7

    .line 1823
    const-string v1, "place_call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1824
    new-instance v0, Lvpadn/cf;

    new-instance v1, Lvpadn/ci;

    .line 1825
    invoke-virtual {p1}, Lvpadn/cr$a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lvpadn/ci;-><init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-direct {v0, p0, v7, v1}, Lvpadn/cf;-><init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V

    .line 1840
    :goto_0
    return-object v0

    .line 1826
    :cond_0
    const-string v1, "send_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1827
    new-instance v0, Lvpadn/cf;

    new-instance v1, Lvpadn/co;

    .line 1828
    invoke-virtual {p1}, Lvpadn/cr$a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lvpadn/co;-><init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-direct {v0, p0, v7, v1}, Lvpadn/cf;-><init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V

    goto :goto_0

    .line 1829
    :cond_1
    const-string v1, "cre_cal_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1830
    new-instance v0, Lvpadn/cf;

    new-instance v1, Lvpadn/cd;

    .line 1831
    invoke-virtual {p1}, Lvpadn/cr$a;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lvpadn/cd;-><init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-direct {v0, p0, v7, v1}, Lvpadn/cf;-><init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V

    goto :goto_0

    .line 1833
    :cond_2
    new-instance v6, Lvpadn/cf;

    new-instance v0, Lvpadn/ch;

    .line 1835
    invoke-virtual {p1}, Lvpadn/cr$a;->c()Lorg/json/JSONObject;

    move-result-object v2

    .line 1836
    invoke-virtual {p1}, Lvpadn/cr$a;->b()Lvpadn/cr$a$a;

    move-result-object v3

    .line 1837
    invoke-virtual {p1}, Lvpadn/cr$a;->d()Ljava/lang/String;

    move-result-object v4

    .line 1838
    invoke-virtual {p1}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lvpadn/ch;-><init>(Lvpadn/cs;Lorg/json/JSONObject;Lvpadn/cr$a$a;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v6, p0, v7, v0}, Lvpadn/cf;-><init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/cs;)Lvpadn/cv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    return-object v0
.end method

.method private a(F)V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1575
    :cond_0
    return-void
.end method

.method private a(ILvpadn/p;)V
    .locals 1

    .prologue
    .line 2744
    const-string v0, "video_orientation"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2745
    invoke-direct {p0}, Lvpadn/cs;->aw()V

    .line 2746
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1450
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1451
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1452
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1453
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 3115
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvpadn/cs;->a:Z

    if-eqz v0, :cond_1

    .line 3116
    :cond_0
    const-string v0, "cannot change orientation (mVideoData.isFixOrientation() || mIsFixedOrientationToLandscape)"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3149
    :goto_0
    return-void

    .line 3120
    :cond_1
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 3121
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3122
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3123
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3124
    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3125
    const-string v0, "change orientation name of field is typo error"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3144
    :catch_0
    move-exception v0

    .line 3145
    const-string v1, "VideoManager"

    const-string v2, "chagneVideoOrientationByCordova throw exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3129
    :cond_2
    :try_start_1
    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3130
    :cond_4
    iget-object v1, p0, Lvpadn/cs;->J:Lvpadn/bv;

    if-eqz v1, :cond_6

    .line 3131
    iget-object v0, p0, Lvpadn/cs;->J:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 3138
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto :goto_0

    .line 3133
    :cond_6
    if-eqz v0, :cond_5

    .line 3134
    invoke-virtual {p0}, Lvpadn/cs;->p()V

    goto :goto_1

    .line 3140
    :cond_7
    const-string v0, "cannot find change orientation field"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lvpadn/cj;)V
    .locals 3

    .prologue
    .line 3558
    const-string v0, "VideoManager"

    const-string v1, "Call handlePlayNextVideo"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    iget-object v0, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3561
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3562
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3563
    invoke-direct {p0}, Lvpadn/cs;->at()V

    .line 3564
    invoke-direct {p0}, Lvpadn/cs;->au()V

    .line 3565
    invoke-direct {p0}, Lvpadn/cs;->Q()V

    .line 3567
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/cs;->U:I

    .line 3570
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {p1}, Lvpadn/cj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Ljava/lang/String;)V

    .line 3571
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    invoke-virtual {p1}, Lvpadn/cj;->d()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3572
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {p1}, Lvpadn/cj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lvpadn/cr;->d(Z)V

    .line 3575
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {p1}, Lvpadn/cj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/cr;->d(Ljava/lang/String;)V

    .line 3576
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {p1}, Lvpadn/cj;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lvpadn/cr;->c(I)V

    .line 3578
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {p1}, Lvpadn/cj;->h()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Ljava/util/Map;)V

    .line 3583
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->I()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3584
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3585
    invoke-virtual {p1}, Lvpadn/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3586
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3587
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->I()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3593
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->j()V

    .line 3594
    invoke-virtual {p1}, Lvpadn/cj;->g()I

    move-result v0

    if-lez v0, :cond_2

    .line 3595
    invoke-virtual {p1}, Lvpadn/cj;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/cr$a;

    .line 3596
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2, v0}, Lvpadn/cr;->a(Lvpadn/cr$a;)V

    goto :goto_1

    .line 3613
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->K()V

    .line 3614
    invoke-direct {p0}, Lvpadn/cs;->L()V

    .line 3615
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->D()Z

    move-result v0

    invoke-direct {p0, v0}, Lvpadn/cs;->h(Z)V

    .line 3616
    return-void
.end method

.method private a(Lvpadn/cj;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 3469
    :try_start_0
    const-string v0, "btns"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3470
    const-string v0, "btns"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    .line 3471
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 3472
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 3473
    new-instance v5, Lvpadn/cr$a;

    invoke-direct {v5}, Lvpadn/cr$a;-><init>()V

    .line 3474
    const-string v0, "action"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3475
    const-string v0, "action"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3476
    invoke-static {v0}, Lvpadn/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3477
    const-string v0, "action"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lvpadn/cr$a;->a(Ljava/lang/String;)V

    .line 3486
    const-string v0, "btn_text"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3487
    const-string v0, "btn_text"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3488
    invoke-static {v0}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3489
    invoke-virtual {v5, v0}, Lvpadn/cr$a;->c(Ljava/lang/String;)V

    .line 3498
    const-string v0, "app_u"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3499
    const-string v0, "app_u"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3500
    invoke-virtual {v5, v0}, Lvpadn/cr$a;->b(Ljava/lang/String;)V

    .line 3510
    :cond_0
    const-string v0, "btn_tracking_urls"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3511
    const-string v0, "btn_tracking_urls"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 3512
    if-eqz v6, :cond_6

    .line 3513
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 3514
    if-gtz v7, :cond_1

    .line 3515
    const-string v0, "VideoManager"

    const-string v8, "play next video btn_tracking_urls is null"

    invoke-static {v0, v8}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 3517
    :goto_1
    if-ge v0, v7, :cond_6

    .line 3519
    :try_start_1
    invoke-virtual {v5}, Lvpadn/cr$a;->f()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3517
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3479
    :cond_2
    :try_start_2
    const-string v0, "VideoManager"

    const-string v4, "Unsupport function button Type"

    invoke-static {v0, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 3491
    :cond_4
    const-string v0, "VideoManager"

    const-string v4, "btn_text is blank"

    invoke-static {v0, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3553
    :catch_0
    move-exception v0

    .line 3555
    :cond_5
    return-void

    .line 3520
    :catch_1
    move-exception v8

    .line 3521
    const-string v8, "VideoManager"

    const-string v9, "buttonData.geturlsList().add(buttonUrlsJsonArray.getString(i)) throw Exception"

    invoke-static {v8, v9}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3527
    :cond_6
    const-string v0, "launch_type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3528
    const-string v0, "launch_type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3530
    const-string v6, "inapp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3531
    sget-object v0, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    .line 3538
    :goto_4
    invoke-virtual {v5, v0}, Lvpadn/cr$a;->a(Lvpadn/cr$a$a;)V

    .line 3541
    :cond_7
    const-string v0, "data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3542
    const-string v0, "data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3543
    if-eqz v0, :cond_8

    .line 3545
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lvpadn/cr$a;->a(Lorg/json/JSONObject;)V

    .line 3550
    :cond_8
    invoke-virtual {p1, v5}, Lvpadn/cj;->a(Lvpadn/cr$a;)V

    goto :goto_3

    .line 3532
    :cond_9
    const-string v6, "outapp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3533
    sget-object v0, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    goto :goto_4

    .line 3535
    :cond_a
    const-string v0, "VideoManager"

    const-string v4, "button launch type format error"

    invoke-static {v0, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private a(Lvpadn/cr$b;)V
    .locals 2

    .prologue
    .line 751
    sget-object v0, Lvpadn/cs$18;->a:[I

    invoke-virtual {p1}, Lvpadn/cr$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 776
    :goto_0
    return-void

    .line 753
    :pswitch_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0

    .line 757
    :cond_0
    invoke-direct {p0}, Lvpadn/cs;->C()V

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0

    .line 764
    :pswitch_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->D()V

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lvpadn/cs;F)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->a(F)V

    return-void
.end method

.method static synthetic a(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->i(Z)V

    return-void
.end method

.method private a(Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3072
    const/4 v1, 0x0

    .line 3073
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3075
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 3080
    :try_start_1
    iget-object v1, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    const-string v2, "total_time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3081
    iget-object v0, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3088
    :goto_0
    return-void

    .line 3076
    :catch_0
    move-exception v0

    .line 3080
    :try_start_2
    iget-object v0, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    const-string v2, "total_time"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3081
    iget-object v0, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3082
    :catch_1
    move-exception v0

    goto :goto_0

    .line 3079
    :catchall_0
    move-exception v0

    .line 3080
    :try_start_3
    iget-object v2, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    const-string v3, "total_time"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3081
    iget-object v1, p0, Lvpadn/cs;->ak:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3083
    :goto_1
    throw v0

    .line 3086
    :cond_0
    const-string v0, "mMediaPlayer == null in getVideoTotalTimeByCordova"

    invoke-direct {p0, p1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0

    .line 3082
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private a(Lvpadn/p;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3624
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Action Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3627
    const-string v1, "e"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3628
    invoke-virtual {p1, v0}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3631
    :goto_0
    return-void

    .line 3629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 3619
    const-string v0, "VideoManager"

    const-string v1, "Video Action throw Exception:"

    invoke-static {v0, v1, p3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3620
    invoke-direct {p0, p1, p2}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3621
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lvpadn/cs;->ap:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aA()V
    .locals 1

    .prologue
    .line 2824
    iget-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2826
    iget-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2827
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    .line 2829
    :cond_0
    return-void
.end method

.method private aB()V
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2834
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2835
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    .line 2837
    :cond_0
    return-void
.end method

.method private aC()V
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2841
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2842
    iget-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2843
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ab:Ljava/util/Timer;

    .line 2845
    :cond_0
    return-void
.end method

.method private aD()V
    .locals 2

    .prologue
    .line 3266
    iget-object v0, p0, Lvpadn/cs;->N:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3268
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3270
    :cond_0
    invoke-virtual {p0}, Lvpadn/cs;->g()V

    .line 3271
    return-void
.end method

.method private aE()V
    .locals 2

    .prologue
    .line 3274
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 3275
    if-eqz v0, :cond_2

    .line 3276
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    .line 3277
    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3280
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3292
    :cond_0
    :goto_0
    return-void

    .line 3282
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3286
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3287
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3289
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private aF()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3295
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    .line 3297
    if-eqz v1, :cond_0

    .line 3298
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v0, v2

    .line 3302
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3303
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3304
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3305
    if-eqz v1, :cond_2

    .line 3306
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3307
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3318
    :goto_1
    return-void

    .line 3300
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v0, v2

    goto :goto_0

    .line 3309
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3312
    :cond_2
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3313
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3315
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private aG()Z
    .locals 1

    .prologue
    .line 3321
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3322
    iget-object v0, p0, Lvpadn/cs;->O:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 3323
    const/4 v0, 0x1

    .line 3325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aH()V
    .locals 2

    .prologue
    .line 3329
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    if-eqz v0, :cond_1

    .line 3330
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3331
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 3333
    :cond_0
    const-string v0, "VideoManager"

    const-string v1, "mPlayPauseButton.performClick();"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 3336
    :cond_1
    return-void
.end method

.method private aa()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1500
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1502
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1503
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    const-string v1, "/vpon_video2_bg_bottom.png"

    invoke-direct {p0, v1}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1505
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1514
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v2, v2, Lvpadn/cs$m;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1515
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1517
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1518
    invoke-direct {p0}, Lvpadn/cs;->F()V

    .line 1519
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 1511
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0
.end method

.method private ab()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1522
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    if-nez v0, :cond_1

    .line 1523
    const-string v0, "VideoManager"

    const-string v1, "mVideoSize == null in putVideoViewLayoutToActivityRootLayout()"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    .line 1529
    if-eqz v1, :cond_3

    .line 1530
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1540
    :goto_1
    if-eqz v1, :cond_5

    .line 1552
    :cond_2
    :goto_2
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1555
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_9

    .line 1556
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1557
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    .line 1532
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1533
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1535
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v2, v2, Lvpadn/cs$m;->b:I

    iget-object v3, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v3, v3, Lvpadn/cs$m;->a:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1542
    :cond_5
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1543
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1544
    :cond_6
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1545
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1546
    :cond_7
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1547
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 1548
    :cond_8
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 1554
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Lvpadn/cs;->T:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1567
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->T:Landroid/widget/ProgressBar;

    .line 1569
    :cond_0
    return-void
.end method

.method private ad()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1630
    iget-object v0, p0, Lvpadn/cs;->I:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->I:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1639
    :cond_0
    new-instance v1, Lvpadn/cs$3;

    invoke-direct {v1, p0}, Lvpadn/cs$3;-><init>(Lvpadn/cs;)V

    .line 1650
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1651
    const-string v0, "mute"

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->J()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-string v0, "unmute"

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->K()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    invoke-virtual {p0}, Lvpadn/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    const-string v0, "/vpon_video2_s-off.png"

    .line 1658
    :goto_0
    new-instance v3, Lvpadn/bz;

    invoke-direct {p0, v0}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Lvpadn/ca;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v4, p0, v5, v1, v2}, Lvpadn/ca;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V

    invoke-direct {v3, p0, v0, v4}, Lvpadn/bz;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v3, p0, Lvpadn/cs;->I:Lvpadn/bv;

    .line 1661
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 1670
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1673
    iget-object v0, p0, Lvpadn/cs;->J:Lvpadn/bv;

    if-eqz v0, :cond_4

    .line 1674
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1675
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1676
    const/4 v0, 0x0

    iget-object v2, p0, Lvpadn/cs;->J:Lvpadn/bv;

    invoke-virtual {v2}, Lvpadn/bv;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1682
    :goto_2
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1687
    :goto_3
    return-void

    .line 1656
    :cond_1
    const-string v0, "/vpon_video2_s-on.png"

    goto :goto_0

    .line 1664
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1665
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1

    .line 1667
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1

    .line 1678
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1679
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1685
    :cond_5
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->I:Lvpadn/bv;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method private ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    .line 1693
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const-string v0, "/vpon_video2_reply.png"

    .line 1698
    :goto_0
    return-object v0

    .line 1696
    :cond_0
    const-string v0, "/vpon_video2_full.png"

    goto :goto_0
.end method

.method private af()Lvpadn/by;
    .locals 1

    .prologue
    .line 1702
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    new-instance v0, Lvpadn/cg;

    invoke-direct {v0, p0}, Lvpadn/cg;-><init>(Lvpadn/cs;)V

    .line 1705
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lvpadn/ce;

    invoke-direct {v0, p0}, Lvpadn/ce;-><init>(Lvpadn/cs;)V

    goto :goto_0
.end method

.method private ag()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1712
    iget-boolean v0, p0, Lvpadn/cs;->a:Z

    if-eqz v0, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->J:Lvpadn/bv;

    if-eqz v0, :cond_2

    .line 1717
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->J:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1718
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->J:Lvpadn/bv;

    .line 1722
    :cond_2
    new-instance v0, Lvpadn/cs$4;

    invoke-direct {v0, p0}, Lvpadn/cs$4;-><init>(Lvpadn/cs;)V

    .line 1731
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lvpadn/cs;->a:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lvpadn/cs;->b:Z

    if-eqz v1, :cond_0

    .line 1735
    :cond_3
    new-instance v1, Lvpadn/bv;

    invoke-direct {p0}, Lvpadn/cs;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0}, Lvpadn/cs;->af()Lvpadn/by;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v1, p0, Lvpadn/cs;->J:Lvpadn/bv;

    .line 1736
    iget-object v1, p0, Lvpadn/cs;->J:Lvpadn/bv;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2}, Lvpadn/bv;->setId(I)V

    .line 1737
    iget-object v1, p0, Lvpadn/cs;->J:Lvpadn/bv;

    invoke-virtual {v1, v0}, Lvpadn/bv;->setAfterPressButtonListener(Lvpadn/bv$a;)V

    .line 1739
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1740
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1744
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1747
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1748
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1750
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->J:Lvpadn/bv;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1742
    :cond_4
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_1
.end method

.method private ah()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0xa

    const/16 v8, 0xb

    const/4 v2, 0x0

    const/4 v7, -0x2

    .line 1755
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1756
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1758
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/cr$a;

    .line 1759
    if-nez v1, :cond_5

    .line 1760
    invoke-direct {p0, v0}, Lvpadn/cs;->a(Lvpadn/cr$a;)Lvpadn/cf;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cs;->C:Lvpadn/cf;

    .line 1761
    iget-object v0, p0, Lvpadn/cs;->C:Lvpadn/cf;

    if-nez v0, :cond_1

    .line 1815
    :cond_0
    :goto_1
    return-void

    .line 1764
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->C:Lvpadn/cf;

    const/16 v4, 0x3e7

    invoke-virtual {v0, v4}, Lvpadn/cf;->setId(I)V

    .line 1777
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 1779
    iget-object v1, p0, Lvpadn/cs;->C:Lvpadn/cf;

    if-nez v1, :cond_3

    iget-object v1, p0, Lvpadn/cs;->E:Lvpadn/cf;

    if-eqz v1, :cond_9

    .line 1780
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1782
    if-ne v0, v10, :cond_8

    .line 1783
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1785
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1786
    const/4 v5, 0x3

    iget-object v6, p0, Lvpadn/cs;->C:Lvpadn/cf;

    invoke-virtual {v6}, Lvpadn/cf;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1787
    iget-object v5, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1789
    invoke-virtual {v1, v2, v9, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1790
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1791
    const/4 v4, 0x3

    iget-object v5, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1792
    iget-boolean v4, p0, Lvpadn/cs;->q:Z

    if-eqz v4, :cond_4

    .line 1793
    iget-object v4, p0, Lvpadn/cs;->E:Lvpadn/cf;

    const/high16 v5, 0x66000000

    invoke-virtual {v4, v5}, Lvpadn/cf;->setBackgroundColor(I)V

    .line 1795
    :cond_4
    iget-object v4, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lvpadn/cs;->E:Lvpadn/cf;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move v1, v0

    .line 1805
    goto :goto_0

    .line 1765
    :cond_5
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 1766
    invoke-direct {p0, v0}, Lvpadn/cs;->a(Lvpadn/cr$a;)Lvpadn/cf;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cs;->E:Lvpadn/cf;

    .line 1767
    iget-object v0, p0, Lvpadn/cs;->E:Lvpadn/cf;

    if-nez v0, :cond_2

    goto :goto_1

    .line 1771
    :cond_6
    if-lt v1, v10, :cond_2

    .line 1772
    const-string v0, "VideoManager"

    const-string v1, "funcButtonCount >= MAX_OF_FUNC_BUTTONS"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1808
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1809
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1810
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1797
    :cond_8
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1798
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1799
    iget-object v4, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lvpadn/cs;->C:Lvpadn/cf;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1803
    :cond_9
    const-string v1, "VideoManager"

    const-string v4, "putFuncButtonList(data); return null"

    invoke-static {v1, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private ai()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1848
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->K:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1856
    :cond_0
    new-instance v1, Lvpadn/cs$5;

    invoke-direct {v1, p0}, Lvpadn/cs$5;-><init>(Lvpadn/cs;)V

    .line 1866
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1867
    const-string v0, "resume"

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->M()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    const-string v0, "pause"

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->N()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1871
    const-string v0, "/vpon_video2_pause.png"

    .line 1875
    :goto_0
    new-instance v3, Lvpadn/cs$6;

    invoke-direct {p0, v0}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Lvpadn/ck;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v4, p0, v5, v1, v2}, Lvpadn/ck;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V

    invoke-direct {v3, p0, p0, v0, v4}, Lvpadn/cs$6;-><init>(Lvpadn/cs;Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v3, p0, Lvpadn/cs;->K:Lvpadn/bv;

    .line 1887
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1888
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 1892
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1893
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1894
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1903
    :goto_2
    return-void

    .line 1873
    :cond_1
    const-string v0, "/vpon_video2_play.png"

    goto :goto_0

    .line 1890
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1

    .line 1897
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->K:Lvpadn/bv;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1900
    :catch_0
    move-exception v0

    .line 1901
    const-string v1, "VideoManager"

    const-string v2, "putPlayPauseButton throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private aj()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1945
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return v0

    .line 1948
    :cond_1
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v3, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {v2, v3}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1949
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 1950
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1951
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1956
    goto :goto_0
.end method

.method private ak()V
    .locals 2

    .prologue
    .line 1962
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->P:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1964
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    :cond_0
    :goto_0
    return-void

    .line 1966
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private al()V
    .locals 6

    .prologue
    .line 1974
    :try_start_0
    invoke-direct {p0}, Lvpadn/cs;->ak()V

    .line 1975
    new-instance v0, Lvpadn/bv;

    const-string v1, "/vpon_video2_a-left.png"

    invoke-direct {p0, v1}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lvpadn/cs$9;

    invoke-direct {v2, p0}, Lvpadn/cs$9;-><init>(Lvpadn/cs;)V

    invoke-direct {v0, p0, v1, v2}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    .line 2012
    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    new-instance v1, Lvpadn/cs$10;

    invoke-direct {v1, p0}, Lvpadn/cs$10;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/bv;->setAfterPressButtonListener(Lvpadn/bv$a;)V

    .line 2041
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 2042
    if-nez v0, :cond_1

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2043
    const-string v0, "VideoManager"

    const-string v1, "showVideoViewLayout button only exist at landscape mode & portrait full mode"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    iget-object v1, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v1, v1, Lvpadn/cs$m;->a:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 2049
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2050
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2051
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2053
    if-eqz v0, :cond_2

    .line 2054
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->P:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    const-string v1, "VideoManager"

    const-string v2, "putShowVideoViewLayoutButton throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2057
    :cond_2
    :try_start_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private am()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2074
    :try_start_0
    new-instance v0, Lvpadn/cs$11;

    invoke-direct {v0, p0}, Lvpadn/cs$11;-><init>(Lvpadn/cs;)V

    .line 2084
    iget-boolean v1, p0, Lvpadn/cs;->W:Z

    if-eqz v1, :cond_1

    .line 2085
    const-string v0, "VideoManager"

    const-string v1, "call putCloseButton but mIsVideoLoadingState is True, do nothing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2089
    :cond_1
    iget-object v1, p0, Lvpadn/cs;->N:Lvpadn/bv;

    if-eqz v1, :cond_2

    .line 2090
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2091
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->N:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2094
    :cond_2
    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    if-eqz v1, :cond_3

    .line 2095
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2096
    iget-object v1, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2099
    :cond_3
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v1

    .line 2101
    if-eqz v1, :cond_4

    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v3, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {v2, v3}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 2102
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->A()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2104
    new-instance v0, Lvpadn/bv;

    const-string v2, "/vpon_video2_a-right.png"

    invoke-direct {p0, v2}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lvpadn/cb;

    invoke-direct {v3, p0}, Lvpadn/cb;-><init>(Lvpadn/cs;)V

    invoke-direct {v0, p0, v2, v3}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v0, p0, Lvpadn/cs;->M:Lvpadn/bv;

    .line 2117
    :goto_1
    if-eqz v1, :cond_6

    .line 2118
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    .line 2127
    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2128
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2129
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2132
    iget-boolean v0, p0, Lvpadn/cs;->Q:Z

    if-eqz v0, :cond_b

    .line 2133
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    if-eqz v1, :cond_9

    .line 2137
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 2138
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    const-string v1, "VideoManager"

    const-string v2, "putCloseButton throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2107
    :cond_4
    :try_start_1
    iget-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2108
    new-instance v2, Lvpadn/bv;

    const-string v3, "/vpon_video2_close.png"

    invoke-direct {p0, v3}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lvpadn/cc;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    iget-object v6, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 2109
    invoke-virtual {v6}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v0, v6}, Lvpadn/cc;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v2, p0, v3, v4}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v2, p0, Lvpadn/cs;->M:Lvpadn/bv;

    goto :goto_1

    .line 2111
    :cond_5
    new-instance v2, Lvpadn/bv;

    const-string v3, "/vpon_video2_close2.png"

    invoke-direct {p0, v3}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lvpadn/cc;

    iget-object v5, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    iget-object v6, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 2112
    invoke-virtual {v6}, Lvpadn/cr;->L()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, p0, v5, v0, v6}, Lvpadn/cc;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v2, p0, v3, v4}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v2, p0, Lvpadn/cs;->M:Lvpadn/bv;

    goto :goto_1

    .line 2120
    :cond_6
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    goto/16 :goto_2

    .line 2123
    :cond_7
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v0, v2

    goto/16 :goto_2

    .line 2140
    :cond_8
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2143
    :cond_9
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2144
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2146
    :cond_a
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2151
    :cond_b
    if-eqz v1, :cond_d

    .line 2152
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    .line 2153
    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2156
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2158
    :cond_c
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2162
    :cond_d
    invoke-direct {p0}, Lvpadn/cs;->aj()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2163
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2165
    :cond_e
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->M:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private an()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2176
    iget-object v0, p0, Lvpadn/cs;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2179
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->A:Landroid/view/View;

    .line 2180
    iget-object v0, p0, Lvpadn/cs;->A:Landroid/view/View;

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 2181
    iget-object v0, p0, Lvpadn/cs;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2184
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 2194
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2196
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2197
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2198
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->A:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2199
    return-void

    .line 2187
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2188
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 2190
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0
.end method

.method private ao()Z
    .locals 2

    .prologue
    .line 2202
    invoke-direct {p0}, Lvpadn/cs;->aq()I

    move-result v0

    .line 2203
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2204
    :cond_0
    const/4 v0, 0x1

    .line 2206
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ap()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v8, -0x2

    .line 2210
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->Q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2215
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2218
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 2219
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2222
    :cond_3
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v2

    .line 2224
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2226
    iget-object v0, p0, Lvpadn/cs;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 2227
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->P()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lvpadn/cs;->c(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 2230
    :goto_1
    const/16 v3, 0x32

    if-ge v0, v3, :cond_5

    .line 2232
    :try_start_0
    iget-object v3, p0, Lvpadn/cs;->as:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_9

    .line 2240
    :cond_5
    iget-object v0, p0, Lvpadn/cs;->as:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 2241
    iget-object v0, p0, Lvpadn/cs;->as:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lvpadn/cs;->y:Landroid/graphics/drawable/Drawable;

    .line 2246
    :goto_2
    iget-object v0, p0, Lvpadn/cs;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2247
    iget-object v0, p0, Lvpadn/cs;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 2248
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lvpadn/cs;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2250
    :cond_6
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->x:Landroid/widget/ImageView;

    .line 2251
    iget-object v0, p0, Lvpadn/cs;->x:Landroid/widget/ImageView;

    iget-object v3, p0, Lvpadn/cs;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2254
    if-eqz v2, :cond_b

    .line 2255
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    .line 2259
    :goto_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2260
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lvpadn/cs;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    :cond_7
    :goto_4
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->Q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 2268
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    .line 2269
    iget-object v0, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2270
    iget-object v0, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2271
    iget-object v0, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, -0x56000000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2272
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2274
    iget-object v2, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lvpadn/cs;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2279
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2282
    iget-object v2, p0, Lvpadn/cs;->A:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2283
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2284
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2285
    iget-object v2, p0, Lvpadn/cs;->A:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2286
    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2235
    :cond_9
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2230
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2243
    :cond_a
    const-string v0, "VideoManager"

    const-string v3, "mIconDrawable == NULL"

    invoke-static {v0, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2257
    :cond_b
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->a:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    goto/16 :goto_3

    .line 2262
    :cond_c
    const-string v0, "VideoManager"

    const-string v3, "getIconFromUrl return null"

    invoke-static {v0, v3}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2236
    :catch_0
    move-exception v3

    goto :goto_5
.end method

.method private aq()I
    .locals 8

    .prologue
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2406
    iget-object v4, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v4}, Lcom/vpadn/widget/VpadnActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 2407
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2408
    iget-object v6, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v6}, Lcom/vpadn/widget/VpadnActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2409
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2410
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2413
    if-eqz v4, :cond_0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    :cond_0
    if-gt v5, v6, :cond_3

    :cond_1
    if-eq v4, v0, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    :cond_2
    if-le v6, v5, :cond_4

    .line 2417
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 2433
    const-string v1, "VideoManager"

    const-string v2, "Unknown screen orientation. Defaulting to portrait."

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2423
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 2427
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 2431
    goto :goto_0

    .line 2442
    :cond_4
    packed-switch v4, :pswitch_data_1

    .line 2458
    const-string v0, "VideoManager"

    const-string v2, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2460
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2445
    goto :goto_0

    :pswitch_5
    move v0, v3

    .line 2452
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 2456
    goto :goto_0

    .line 2417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2442
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private ar()V
    .locals 6

    .prologue
    .line 2478
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 2481
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lvpadn/cs$15;

    invoke-direct {v2, p0, v0}, Lvpadn/cs$15;-><init>(Lvpadn/cs;Z)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    :goto_0
    return-void

    .line 2504
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private as()V
    .locals 6

    .prologue
    .line 2623
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->O()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2625
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2627
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2628
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    .line 2631
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    .line 2634
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$f;

    invoke-direct {v1, p0}, Lvpadn/cs$f;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    :goto_0
    return-void

    .line 2635
    :catch_0
    move-exception v0

    .line 2636
    const-string v1, "VideoManager"

    const-string v2, "mPauseByTimeLocationTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2639
    :cond_1
    const-string v0, "VideoManager"

    const-string v1, "Cannot start PauseByTimeLocation timer (mVideoData == null || mVideoData.getPauseSecondLocations().isEmpty())"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private at()V
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2682
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2683
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    .line 2685
    :cond_0
    return-void
.end method

.method private au()V
    .locals 1

    .prologue
    .line 2688
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2690
    iget-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2691
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ae:Ljava/util/Timer;

    .line 2693
    :cond_0
    return-void
.end method

.method private av()V
    .locals 3

    .prologue
    .line 2698
    :try_start_0
    iget-boolean v0, p0, Lvpadn/cs;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvpadn/cs;->n:Z

    if-nez v0, :cond_0

    .line 2699
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lvpadn/cu;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    :cond_0
    :goto_0
    return-void

    .line 2703
    :catch_0
    move-exception v0

    .line 2704
    const-string v1, "VideoManager"

    const-string v2, "sendTrackingUrl() throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aw()V
    .locals 3

    .prologue
    .line 2750
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 2752
    if-eqz v0, :cond_0

    .line 2753
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->ai:Lorg/json/JSONObject;

    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    :goto_0
    const-string v0, "video_orientation"

    iget-object v1, p0, Lvpadn/cs;->ai:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2762
    return-void

    .line 2755
    :cond_0
    :try_start_1
    iget-object v0, p0, Lvpadn/cs;->ai:Lorg/json/JSONObject;

    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2757
    :catch_0
    move-exception v0

    .line 2758
    const-string v1, "VideoManager"

    const-string v2, "triggerOrientationChangeEvent throw JSONException"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ax()V
    .locals 3

    .prologue
    .line 2771
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2772
    iget-boolean v0, p0, Lvpadn/cs;->l:Z

    if-eqz v0, :cond_1

    .line 2773
    iget-object v0, p0, Lvpadn/cs;->ah:Lorg/json/JSONObject;

    const-string v1, "volume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2777
    :goto_0
    const-string v0, "video_volumechange"

    iget-object v1, p0, Lvpadn/cs;->ah:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2781
    :cond_0
    :goto_1
    return-void

    .line 2775
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->ah:Lorg/json/JSONObject;

    const-string v1, "volume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2779
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private ay()V
    .locals 3

    .prologue
    .line 2790
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    if-eqz v0, :cond_0

    .line 2791
    iget-boolean v0, p0, Lvpadn/cs;->m:Z

    if-eqz v0, :cond_1

    .line 2792
    iget-object v0, p0, Lvpadn/cs;->al:Lorg/json/JSONObject;

    const-string v1, "visibility"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2796
    :goto_0
    const-string v0, "video_visibilitychange"

    iget-object v1, p0, Lvpadn/cs;->al:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2801
    :cond_0
    :goto_1
    return-void

    .line 2794
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->al:Lorg/json/JSONObject;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2798
    :catch_0
    move-exception v0

    .line 2799
    const-string v0, "VideoManager"

    const-string v1, "Cannot trigger Visibility change event!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private az()V
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2817
    iget-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2818
    iget-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2819
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    .line 2821
    :cond_0
    return-void
.end method

.method static synthetic b(Lvpadn/cs;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lvpadn/cs;->U:I

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1578
    if-nez p1, :cond_0

    .line 1592
    :goto_0
    return-object v1

    .line 1583
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1584
    if-nez v0, :cond_1

    .line 1585
    const-string v0, "VideoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot covert file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to inputStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lvpadn/bq;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v0

    .line 1588
    :goto_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v1, v0

    .line 1592
    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    const-string v2, "VideoManager"

    const-string v3, "getDrawableByFileName throw Exception"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lvpadn/cs;Lvpadn/bv;)Lvpadn/bv;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lvpadn/cs;->L:Lvpadn/bv;

    return-object p1
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 2509
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call redrawAllOfView() orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {p0}, Lvpadn/cs;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 2511
    invoke-direct {p0}, Lvpadn/cs;->ak()V

    .line 2512
    invoke-direct {p0}, Lvpadn/cs;->K()V

    .line 2520
    :cond_0
    :goto_0
    invoke-direct {p0}, Lvpadn/cs;->S()Lvpadn/cs$m;

    .line 2521
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 2523
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v1, v1, Lvpadn/cs$m;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2524
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v1, v1, Lvpadn/cs$m;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2525
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2526
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    .line 2527
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2537
    :cond_1
    :goto_1
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2540
    invoke-direct {p0}, Lvpadn/cs;->x()V

    .line 2541
    iget-boolean v0, p0, Lvpadn/cs;->r:Z

    if-nez v0, :cond_2

    .line 2542
    invoke-direct {p0}, Lvpadn/cs;->T()V

    .line 2545
    :cond_2
    return-void

    .line 2514
    :cond_3
    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->P:Lvpadn/bv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2516
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    goto :goto_0

    .line 2529
    :cond_4
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2530
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 2531
    :cond_5
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2532
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 2533
    :cond_6
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvpadn/cr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2534
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private b(ILvpadn/p;)V
    .locals 1

    .prologue
    .line 2765
    const-string v0, "video_volumechange"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2766
    invoke-direct {p0}, Lvpadn/cs;->ax()V

    .line 2767
    return-void
.end method

.method private b(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3152
    .line 3154
    :try_start_0
    iget-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3155
    :cond_0
    const-string v0, "videoViewLayout is invisible, Cannot call mute video from .js side!"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3194
    :goto_0
    return-void

    .line 3159
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3160
    const-string v3, "mute"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3161
    const-string v3, "mute"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3163
    if-nez v2, :cond_6

    .line 3171
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lvpadn/cs;->j()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3172
    iget-object v0, p0, Lvpadn/cs;->I:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3185
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lvpadn/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3186
    iget-object v0, p0, Lvpadn/cs;->aj:Lorg/json/JSONObject;

    const-string v1, "mute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3190
    :goto_3
    iget-object v0, p0, Lvpadn/cs;->aj:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3191
    :catch_0
    move-exception v0

    .line 3192
    const-string v1, "muteVideoByCordova2 throw exception"

    invoke-direct {p0, p2, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3167
    :cond_2
    :try_start_2
    const-string v0, "muteVideoByCordova cannot find mute field"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3179
    :catch_1
    move-exception v0

    .line 3180
    const-string v1, "muteVideoByCordova1 throw exception"

    invoke-direct {p0, p2, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3173
    :cond_3
    if-nez v0, :cond_4

    :try_start_3
    invoke-virtual {p0}, Lvpadn/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3174
    iget-object v0, p0, Lvpadn/cs;->I:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    goto :goto_2

    .line 3176
    :cond_4
    const-string v0, "VideoManager"

    const-string v1, "NO NEED DO ANYTHING! FOR MUTE_VIDEO"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 3188
    :cond_5
    :try_start_4
    iget-object v0, p0, Lvpadn/cs;->aj:Lorg/json/JSONObject;

    const-string v1, "mute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->b(Z)V

    return-void
.end method

.method private b(Lvpadn/p;)V
    .locals 2

    .prologue
    .line 3091
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 3092
    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3093
    invoke-direct {p0}, Lvpadn/cs;->C()V

    .line 3094
    invoke-virtual {p1}, Lvpadn/p;->c()V

    .line 3101
    :goto_0
    return-void

    .line 3095
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3096
    invoke-direct {p0}, Lvpadn/cs;->D()V

    .line 3097
    invoke-virtual {p1}, Lvpadn/p;->c()V

    goto :goto_0

    .line 3099
    :cond_1
    const-string v0, "cannot execute show hide action"

    invoke-direct {p0, p1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 892
    :cond_0
    if-eqz p1, :cond_1

    .line 893
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 895
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lvpadn/cs;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lvpadn/cs;->o:Z

    return v0
.end method

.method static synthetic c(Lvpadn/cs;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lvpadn/cs;->U:I

    return v0
.end method

.method private c(ILvpadn/p;)V
    .locals 1

    .prologue
    .line 2784
    const-string v0, "video_visibilitychange"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2785
    invoke-direct {p0}, Lvpadn/cs;->ay()V

    .line 2786
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1597
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvpadn/cs$2;

    invoke-direct {v1, p0, p1}, Lvpadn/cs$2;-><init>(Lvpadn/cs;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1626
    return-void
.end method

.method private c(Ljava/lang/String;ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2983
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2984
    if-nez v0, :cond_0

    .line 2985
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2986
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    iget-object v1, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    :goto_0
    return-void

    .line 2989
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3245
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3246
    const-string v1, "custom_close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3247
    const-string v1, "custom_close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3248
    if-ne v0, v2, :cond_1

    .line 3249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->Q:Z

    .line 3250
    invoke-direct {p0}, Lvpadn/cs;->aD()V

    .line 3251
    invoke-direct {p0}, Lvpadn/cs;->aE()V

    .line 3252
    invoke-virtual {p2}, Lvpadn/p;->c()V

    .line 3263
    :cond_0
    :goto_0
    return-void

    .line 3254
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->Q:Z

    .line 3255
    invoke-direct {p0}, Lvpadn/cs;->aF()V

    .line 3256
    invoke-virtual {p2}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3259
    :catch_0
    move-exception v0

    .line 3260
    const-string v1, "setCustomCloseByCordova throw exception"

    invoke-direct {p0, p2, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->c(Z)V

    return-void
.end method

.method private c(Lvpadn/p;)V
    .locals 1

    .prologue
    .line 3104
    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3105
    iget-object v0, p0, Lvpadn/cs;->P:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 3106
    invoke-virtual {p1}, Lvpadn/p;->c()V

    .line 3110
    :goto_0
    return-void

    .line 3108
    :cond_0
    const-string v0, "cannot execute hide video action"

    invoke-direct {p0, p1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 903
    :cond_0
    if-eqz p1, :cond_1

    .line 904
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 906
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(ILvpadn/p;)V
    .locals 6

    .prologue
    .line 2804
    const-string v0, "video_timeupdate"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2805
    iget-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2806
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    .line 2808
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->af:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$n;

    invoke-direct {v1, p0}, Lvpadn/cs$n;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2809
    :catch_0
    move-exception v0

    .line 2810
    const-string v1, "VideoManager"

    const-string v2, "mVideoTimeUpdateEventTimer.schedule throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 4

    .prologue
    .line 3339
    .line 3341
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3342
    const-string v0, "mMediaPlayer == null at seekVideoByCordova"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3369
    :goto_0
    return-void

    .line 3346
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3347
    const-string v1, "seek_to"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3348
    const-string v1, "seek_to"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3349
    const-string v1, "VideoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekToSec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    mul-int/lit16 v1, v0, 0x3e8

    .line 3351
    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_2

    .line 3352
    :cond_1
    const-string v0, "seekToMillSec > mMediaPlayer.getDuration() || seekToSec < 0"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    const-string v1, "seekVideoByCordova throw exception"

    invoke-direct {p0, p2, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3355
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lvpadn/cs;->am:Z

    .line 3356
    invoke-direct {p0}, Lvpadn/cs;->X()V

    .line 3357
    invoke-direct {p0}, Lvpadn/cs;->M()V

    .line 3358
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3359
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto :goto_0

    .line 3363
    :cond_3
    const-string v0, "Cannot find seek_to field for seek video action"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->v()V

    return-void
.end method

.method static synthetic d(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->e(Z)V

    return-void
.end method

.method private d(Lvpadn/p;)V
    .locals 2

    .prologue
    .line 3198
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3199
    :cond_0
    const-string v0, "videoViewLayout is invisible, Cannot call play video from .js side!"

    invoke-direct {p0, p1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3222
    :goto_0
    return-void

    .line 3202
    :cond_1
    invoke-direct {p0}, Lvpadn/cs;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3203
    invoke-virtual {p1}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3219
    :catch_0
    move-exception v0

    .line 3220
    const-string v1, "playVideoByCordova throw Exception"

    invoke-direct {p0, p1, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3204
    :cond_2
    :try_start_1
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3205
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->D()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lvpadn/cs;->an:Z

    if-eqz v0, :cond_3

    .line 3209
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    .line 3210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->an:Z

    .line 3214
    :goto_1
    invoke-virtual {p1}, Lvpadn/p;->c()V

    goto :goto_0

    .line 3212
    :cond_3
    invoke-direct {p0}, Lvpadn/cs;->aH()V

    goto :goto_1

    .line 3216
    :cond_4
    const-string v0, "VideoManager"

    const-string v1, "vidoe always playing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-virtual {p1}, Lvpadn/p;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 913
    :cond_0
    if-eqz p1, :cond_1

    .line 914
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/bv;->setAnimation(Landroid/view/animation/Animation;)V

    .line 916
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvpadn/bv;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lvpadn/cs;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->Y:Ljava/util/Timer;

    return-object v0
.end method

.method private e(ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2918
    const-string v0, "video_ended"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2921
    :try_start_0
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-eqz v0, :cond_0

    .line 2922
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 2923
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 2924
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 2925
    const-string v0, "VideoManager"

    const-string v1, "send video ended event!! at doHandleAddEndedEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2927
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 3373
    :try_start_0
    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 3374
    const-string v0, "mMediaPlayer == null at playNextVideoByCordova"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3465
    :goto_0
    return-void

    .line 3378
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3379
    const-string v2, "v_u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3380
    const-string v2, "v_u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3381
    invoke-static {v2}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v3}, Lvpadn/cr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3382
    new-instance v3, Lvpadn/cj;

    invoke-direct {v3, v2}, Lvpadn/cj;-><init>(Ljava/lang/String;)V

    .line 3393
    const-string v2, "auto_close"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3394
    const-string v2, "auto_close"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3395
    if-ne v2, v4, :cond_1

    .line 3396
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lvpadn/cj;->a(Z)V

    .line 3400
    :cond_1
    const-string v2, "tracking_u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3401
    const-string v2, "tracking_u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3402
    invoke-static {v2}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3403
    invoke-virtual {v3, v2}, Lvpadn/cj;->a(Ljava/lang/String;)V

    .line 3408
    :cond_2
    const-string v2, "v_tracking"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3409
    const-string v2, "v_tracking"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3410
    invoke-virtual {v3, v2}, Lvpadn/cj;->a(Lorg/json/JSONObject;)V

    .line 3413
    :cond_3
    const-string v2, "tracking_interval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3414
    const-string v2, "tracking_interval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3415
    if-lez v2, :cond_4

    .line 3416
    invoke-virtual {v3, v2}, Lvpadn/cj;->a(I)V

    .line 3428
    :cond_4
    const-string v2, "replay_tracking_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3429
    const-string v2, "replay_tracking_urls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3430
    if-eqz v2, :cond_6

    .line 3431
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 3432
    if-gtz v4, :cond_5

    .line 3433
    const-string v5, "VideoManager"

    const-string v6, "replay_tracking_urls is null"

    invoke-static {v5, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_5
    :goto_1
    if-ge v0, v4, :cond_6

    .line 3436
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 3438
    :try_start_1
    invoke-virtual {v3}, Lvpadn/cj;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3435
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3439
    :catch_0
    move-exception v5

    .line 3440
    :try_start_2
    const-string v5, "VideoManager"

    const-string v6, "nextVideoData.getReplayTrackingUrls().add(playNextReplayTrackingUrl) throw Exception"

    invoke-static {v5, v6}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3461
    :catch_1
    move-exception v0

    .line 3462
    const-string v1, "playNextVideoByCordova throw exception"

    invoke-direct {p0, p2, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 3447
    :cond_6
    :try_start_3
    invoke-direct {p0, v3, v1}, Lvpadn/cs;->a(Lvpadn/cj;Lorg/json/JSONObject;)V

    .line 3449
    invoke-direct {p0, v3}, Lvpadn/cs;->a(Lvpadn/cj;)V

    .line 3450
    invoke-virtual {p2}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 3452
    :cond_7
    const-string v0, "!StringUtils.isBlank(nextVideoUrl) && !nextVideoUrl.equals(mVideoData.getVideoUrl()) is false"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3458
    :cond_8
    const-string v0, "Cannot find video url for play next video"

    invoke-direct {p0, p2, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic e(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->f(Z)V

    return-void
.end method

.method private e(Lvpadn/p;)V
    .locals 2

    .prologue
    .line 3226
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 3227
    const-string v0, "mMediaPlayer == null at pauseVideoByCordova"

    invoke-direct {p0, p1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V

    .line 3240
    :goto_0
    return-void

    .line 3230
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3231
    invoke-direct {p0}, Lvpadn/cs;->aH()V

    .line 3232
    invoke-virtual {p1}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3237
    :catch_0
    move-exception v0

    .line 3238
    const-string v1, "pauseVideoByCordova throw Exception"

    invoke-direct {p0, p1, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3234
    :cond_1
    :try_start_1
    const-string v0, "VideoManager"

    const-string v1, "vidoe always paused"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    invoke-virtual {p1}, Lvpadn/p;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 923
    :cond_0
    if-eqz p1, :cond_1

    .line 924
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 926
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    return-object v0
.end method

.method private f(ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2932
    const-string v0, "video_pause"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2935
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-nez v0, :cond_0

    .line 2936
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 2937
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 2938
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 2939
    const-string v0, "VideoManager"

    const-string v1, "send video pause event!! at doHandleAddPauseEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2942
    :cond_0
    :goto_0
    return-void

    .line 2941
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lvpadn/cs;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lvpadn/cs;->d(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 934
    :cond_0
    if-eqz p1, :cond_1

    .line 935
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 937
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lvpadn/cs;)Lvpadn/cr;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    return-object v0
.end method

.method private g(ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2946
    const-string v0, "video_play"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2949
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2950
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 2951
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 2952
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 2953
    const-string v0, "VideoManager"

    const-string v1, "send video play event!! at doHandleAddPlayEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2956
    :cond_0
    :goto_0
    return-void

    .line 2955
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Z)V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 945
    :cond_0
    if-eqz p1, :cond_1

    .line 946
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lvpadn/cs;->z()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 948
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->m:Z

    .line 950
    invoke-direct {p0}, Lvpadn/cs;->ay()V

    goto :goto_0
.end method

.method static synthetic g(Lvpadn/cs;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lvpadn/cs;->q:Z

    return p1
.end method

.method private h(ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2960
    const-string v0, "video_loading"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2962
    iget-boolean v0, p0, Lvpadn/cs;->W:Z

    if-eqz v0, :cond_0

    .line 2963
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 2964
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 2965
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 2966
    const-string v0, "VideoManager"

    const-string v1, "send video loading event!! at doHandleAddLoadingEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_0
    return-void
.end method

.method static synthetic h(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->as()V

    return-void
.end method

.method private h(Z)V
    .locals 2

    .prologue
    .line 976
    if-eqz p1, :cond_1

    .line 977
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0}, Lvpadn/cv;->start()V

    .line 978
    iget v0, p0, Lvpadn/cs;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 979
    invoke-virtual {p0}, Lvpadn/cs;->f()V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-boolean v0, p0, Lvpadn/cs;->ao:Z

    if-eqz v0, :cond_2

    .line 992
    invoke-virtual {p0}, Lvpadn/cs;->h()V

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->ao:Z

    goto :goto_0

    .line 995
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0}, Lvpadn/cv;->start()V

    goto :goto_0
.end method

.method static synthetic h(Lvpadn/cs;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lvpadn/cs;->W:Z

    return p1
.end method

.method static synthetic i(Lvpadn/cs;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lvpadn/cs;->R:I

    return v0
.end method

.method private i(ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2972
    const-string v0, "video_loaded"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/cs;->c(Ljava/lang/String;ILvpadn/p;)V

    .line 2974
    iget-boolean v0, p0, Lvpadn/cs;->X:Z

    if-eqz v0, :cond_0

    .line 2975
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 2976
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 2977
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 2978
    const-string v0, "VideoManager"

    const-string v1, "send video loaded event!! at doHandleAddLoadedEvent"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_0
    return-void
.end method

.method private i(Z)V
    .locals 6

    .prologue
    .line 2584
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->U()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2591
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    if-nez v0, :cond_1

    .line 2592
    new-instance v0, Lvpadn/cu;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Lvpadn/cu;-><init>(Lcom/vpadn/widget/VpadnActivity;)V

    iput-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    .line 2595
    :cond_1
    if-eqz p1, :cond_3

    .line 2596
    const-string v0, "VideoManager"

    const-string v1, "isFirstTimePlayVideo"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    iget-object v2, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Lvpadn/cu;->a(Lvpadn/cr;Landroid/media/MediaPlayer;)V

    .line 2603
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 2604
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2605
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    .line 2609
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    .line 2611
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->ac:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$k;

    invoke-direct {v1, p0}, Lvpadn/cs$k;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2620
    :goto_1
    return-void

    .line 2599
    :cond_3
    const-string v0, "VideoManager"

    const-string v1, "!isFirstTimePlayVideo"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lvpadn/cu;->a(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2613
    :catch_0
    move-exception v0

    .line 2614
    const-string v1, "VideoManager"

    const-string v2, "mTrackingTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2618
    :cond_4
    const-string v0, "VideoManager"

    const-string v1, "Cannot start tracking timer (mVideoData == null || mVideoData.getTrackingDataMap().isEmpty())"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic i(Lvpadn/cs;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lvpadn/cs;->X:Z

    return p1
.end method

.method static synthetic j(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->w()V

    return-void
.end method

.method static synthetic j(Lvpadn/cs;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lvpadn/cs;->p:Z

    return p1
.end method

.method static synthetic k(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->av()V

    return-void
.end method

.method static synthetic k(Lvpadn/cs;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lvpadn/cs;->an:Z

    return p1
.end method

.method static synthetic l(Lvpadn/cs;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic m(Lvpadn/cs;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lvpadn/cs;)Lvpadn/bv;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->K:Lvpadn/bv;

    return-object v0
.end method

.method static synthetic o(Lvpadn/cs;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    return v0
.end method

.method static synthetic p(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->V()V

    return-void
.end method

.method static synthetic q(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ai()V

    return-void
.end method

.method static synthetic r(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->ac()V

    return-void
.end method

.method static synthetic s(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->Y()V

    return-void
.end method

.method static synthetic t(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->x()V

    return-void
.end method

.method static synthetic u(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->T()V

    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->W:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->X:Z

    .line 236
    const-string v0, "video_play"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic v(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->H()V

    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    .line 278
    :cond_0
    iget v0, p0, Lvpadn/cs;->R:I

    if-gtz v0, :cond_1

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    .line 283
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->Z:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$b;

    invoke-direct {v1, p0}, Lvpadn/cs$b;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "VideoManager"

    const-string v2, "mCountDownTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic w(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->y()V

    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 332
    invoke-direct {p0}, Lvpadn/cs;->w()V

    .line 335
    invoke-direct {p0}, Lvpadn/cs;->Z()V

    .line 336
    invoke-direct {p0}, Lvpadn/cs;->aa()V

    .line 337
    invoke-direct {p0}, Lvpadn/cs;->an()V

    .line 338
    invoke-direct {p0}, Lvpadn/cs;->ap()V

    .line 339
    iget-boolean v0, p0, Lvpadn/cs;->r:Z

    if-nez v0, :cond_4

    .line 340
    invoke-direct {p0}, Lvpadn/cs;->P()V

    .line 344
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lvpadn/cs;->ag()V

    .line 347
    :cond_0
    invoke-direct {p0}, Lvpadn/cs;->ad()V

    .line 348
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lvpadn/cs;->r:Z

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lvpadn/cs$1;

    invoke-direct {v1, p0}, Lvpadn/cs$1;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 364
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 365
    iget v0, p0, Lvpadn/cs;->R:I

    if-gtz v0, :cond_2

    .line 366
    invoke-direct {p0}, Lvpadn/cs;->am()V

    .line 379
    :cond_2
    :goto_1
    invoke-direct {p0}, Lvpadn/cs;->ah()V

    .line 381
    iget-boolean v0, p0, Lvpadn/cs;->q:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lvpadn/cs;->r:Z

    if-nez v0, :cond_3

    .line 382
    invoke-direct {p0}, Lvpadn/cs;->A()V

    .line 384
    :cond_3
    return-void

    .line 342
    :cond_4
    invoke-direct {p0}, Lvpadn/cs;->N()V

    goto :goto_0

    .line 371
    :cond_5
    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    if-eqz v0, :cond_2

    .line 372
    invoke-direct {p0}, Lvpadn/cs;->am()V

    goto :goto_1
.end method

.method static synthetic x(Lvpadn/cs;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lvpadn/cs;->p:Z

    return v0
.end method

.method static synthetic y(Lvpadn/cs;)Lvpadn/cu;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lvpadn/cs;->aq:Lvpadn/cu;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 613
    const-string v0, "VideoManager"

    const-string v1, "Seek Complete!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-boolean v0, p0, Lvpadn/cs;->am:Z

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->am:Z

    .line 616
    invoke-direct {p0}, Lvpadn/cs;->Y()V

    .line 617
    invoke-direct {p0}, Lvpadn/cs;->ac()V

    .line 618
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lvpadn/cs;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    :goto_0
    const-string v0, "video_play"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 626
    :cond_0
    return-void

    .line 621
    :cond_1
    invoke-direct {p0}, Lvpadn/cs;->aH()V

    goto :goto_0
.end method

.method private z()Landroid/view/animation/AnimationSet;
    .locals 4

    .prologue
    .line 629
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 630
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 631
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 632
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 634
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 635
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 636
    return-object v1
.end method

.method static synthetic z(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lvpadn/cs;->am()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    iput-object v2, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    .line 405
    iput-object v2, p0, Lvpadn/cs;->e:Lvpadn/ct;

    .line 406
    iput-object v2, p0, Lvpadn/cs;->i:Lvpadn/cr;

    .line 407
    iput-object v2, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    .line 408
    iput-object v2, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 409
    iput-object v2, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    .line 410
    iput-object v2, p0, Lvpadn/cs;->w:Landroid/widget/LinearLayout;

    .line 411
    iput-object v2, p0, Lvpadn/cs;->B:Landroid/widget/RelativeLayout;

    .line 412
    iput-object v2, p0, Lvpadn/cs;->D:Landroid/widget/TextView;

    .line 413
    iput-object v2, p0, Lvpadn/cs;->F:Landroid/widget/RelativeLayout;

    .line 414
    iput-object v2, p0, Lvpadn/cs;->G:Landroid/widget/RelativeLayout;

    .line 415
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0, v2}, Lvpadn/cv;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 417
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0, v2}, Lvpadn/cv;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 419
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/cv;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0, v2}, Lvpadn/cv;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 422
    iput-object v2, p0, Lvpadn/cs;->h:Lvpadn/cv;

    .line 425
    :cond_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 2470
    invoke-direct {p0, p1}, Lvpadn/cs;->b(I)V

    .line 2471
    invoke-direct {p0}, Lvpadn/cs;->aw()V

    .line 2472
    invoke-direct {p0}, Lvpadn/cs;->ar()V

    .line 2474
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1414
    const-string v0, "VideoManager"

    const-string v1, "Call openMobileInnovationTeamSkill()"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->r:Z

    .line 1419
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1422
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/cs;->R:I

    .line 1423
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/cr;->e(Z)V

    .line 1425
    invoke-direct {p0}, Lvpadn/cs;->at()V

    .line 1426
    invoke-direct {p0}, Lvpadn/cs;->au()V

    .line 1427
    invoke-direct {p0}, Lvpadn/cs;->Q()V

    .line 1428
    invoke-direct {p0}, Lvpadn/cs;->az()V

    .line 1429
    invoke-direct {p0}, Lvpadn/cs;->aA()V

    .line 1430
    invoke-direct {p0}, Lvpadn/cs;->aB()V

    .line 1431
    invoke-direct {p0}, Lvpadn/cs;->aC()V

    .line 1432
    invoke-virtual {p0}, Lvpadn/cs;->g()V

    .line 1435
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1438
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1439
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1440
    invoke-direct {p0, v0}, Lvpadn/cs;->a(Landroid/widget/ImageView;)V

    .line 1441
    invoke-direct {p0}, Lvpadn/cs;->x()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    const-string v0, "VideoManager"

    const-string v1, "openMobileInnovationTeamSkill() throws Exception"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILvpadn/p;)V
    .locals 3

    .prologue
    .line 2720
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoEventListener evnetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const-string v0, "video_loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->h(ILvpadn/p;)V

    .line 2741
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    const-string v0, "video_loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2724
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->i(ILvpadn/p;)V

    goto :goto_0

    .line 2725
    :cond_2
    const-string v0, "video_play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2726
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->g(ILvpadn/p;)V

    goto :goto_0

    .line 2727
    :cond_3
    const-string v0, "video_pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2728
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->f(ILvpadn/p;)V

    goto :goto_0

    .line 2729
    :cond_4
    const-string v0, "video_ended"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2730
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->e(ILvpadn/p;)V

    goto :goto_0

    .line 2731
    :cond_5
    const-string v0, "video_timeupdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2732
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->d(ILvpadn/p;)V

    goto :goto_0

    .line 2733
    :cond_6
    const-string v0, "video_volumechange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2734
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->b(ILvpadn/p;)V

    goto :goto_0

    .line 2735
    :cond_7
    const-string v0, "video_orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2736
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->a(ILvpadn/p;)V

    goto :goto_0

    .line 2737
    :cond_8
    const-string v0, "video_visibilitychange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2738
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->c(ILvpadn/p;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 1

    .prologue
    .line 3039
    const-string v0, "play_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3040
    invoke-direct {p0, p3}, Lvpadn/cs;->d(Lvpadn/p;)V

    .line 3069
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    const-string v0, "pause_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3043
    invoke-direct {p0, p3}, Lvpadn/cs;->e(Lvpadn/p;)V

    goto :goto_0

    .line 3045
    :cond_2
    const-string v0, "mute_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3046
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->b(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 3048
    :cond_3
    const-string v0, "change_video_orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3049
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->a(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 3051
    :cond_4
    const-string v0, "hide_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3052
    invoke-direct {p0, p3}, Lvpadn/cs;->b(Lvpadn/p;)V

    goto :goto_0

    .line 3054
    :cond_5
    const-string v0, "show_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3055
    invoke-direct {p0, p3}, Lvpadn/cs;->c(Lvpadn/p;)V

    goto :goto_0

    .line 3057
    :cond_6
    const-string v0, "get_video_total_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3058
    invoke-direct {p0, p3}, Lvpadn/cs;->a(Lvpadn/p;)V

    goto :goto_0

    .line 3060
    :cond_7
    const-string v0, "seek_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3061
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->d(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 3063
    :cond_8
    const-string v0, "play_next_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3064
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->e(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 3066
    :cond_9
    const-string v0, "use_custom_close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3067
    invoke-direct {p0, p2, p3}, Lvpadn/cs;->c(Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 3013
    if-eqz p2, :cond_0

    .line 3014
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerVideoEvent videoEventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retObj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :goto_0
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3020
    if-eqz v0, :cond_2

    .line 3021
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3023
    if-eqz p2, :cond_1

    .line 3024
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 3028
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 3030
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3031
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_2

    .line 3016
    :cond_0
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerVideoEvent videoEventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3026
    :cond_1
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    move-object v1, v0

    goto :goto_1

    .line 3034
    :cond_2
    const-string v0, "VideoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find video event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_3
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 2302
    iput-boolean p1, p0, Lvpadn/cs;->l:Z

    .line 2303
    invoke-direct {p0}, Lvpadn/cs;->ax()V

    .line 2304
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .prologue
    .line 961
    iput-boolean p1, p0, Lvpadn/cs;->a:Z

    .line 962
    iput-boolean p2, p0, Lvpadn/cs;->b:Z

    .line 964
    iget-object v0, p0, Lvpadn/cs;->e:Lvpadn/ct;

    if-eqz v0, :cond_0

    .line 965
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lvpadn/cs;->e:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v2, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onFirstTimeLoadingVideo(Lvpadn/cr;Lvpadn/cr$b;)V

    .line 971
    :cond_0
    :goto_0
    invoke-direct {p0}, Lvpadn/cs;->L()V

    .line 972
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->D()Z

    move-result v0

    invoke-direct {p0, v0}, Lvpadn/cs;->h(Z)V

    .line 973
    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->e:Lvpadn/ct;

    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v2, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-interface {v0, v1, v2}, Lvpadn/ct;->onFirstTimeLoadingVideo(Lvpadn/cr;Lvpadn/cr$b;)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 726
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    .line 728
    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lvpadn/cr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    .line 748
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 733
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 734
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    invoke-direct {p0}, Lvpadn/cs;->B()V

    goto :goto_0

    .line 737
    :cond_1
    sget-object v0, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    invoke-direct {p0, v0}, Lvpadn/cs;->a(Lvpadn/cr$b;)V

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-virtual {v0, v1}, Lvpadn/cr;->a(Lvpadn/cr$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    .line 741
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 742
    sget-object v0, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    invoke-direct {p0, v0}, Lvpadn/cs;->a(Lvpadn/cr$b;)V

    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {p0}, Lvpadn/cs;->c()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;ILvpadn/p;)V
    .locals 2

    .prologue
    .line 2996
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2997
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2999
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3001
    iget-object v0, p0, Lvpadn/cs;->V:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    :cond_0
    invoke-virtual {p3}, Lvpadn/p;->c()V

    .line 3010
    :goto_0
    return-void

    .line 3006
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find event type in mVideoEventListenerMap to remove! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3007
    :catch_0
    move-exception v0

    .line 3008
    const-string v1, "removeVideoEventListener throw Exception e:"

    invoke-direct {p0, p3, v1, v0}, Lvpadn/cs;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 819
    const-string v0, "VideoManager"

    const-string v1, "call exitActivity()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->hasRegisterClickCloseBtnEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->triggerClickCloseBtnEvent()V

    .line 826
    :goto_0
    return-void

    .line 823
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->o:Z

    .line 824
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->finish()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    .line 1142
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1144
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    .line 1148
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    .line 1150
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->ad:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$j;

    invoke-direct {v1, p0}, Lvpadn/cs$j;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    const-string v1, "VideoManager"

    const-string v2, "mPutVideoRemainingTimeTimer.schedule throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1184
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    .line 1188
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    .line 1190
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    new-instance v1, Lvpadn/cs$h;

    invoke-direct {v1, p0}, Lvpadn/cs$h;-><init>(Lvpadn/cs;)V

    iget v2, p0, Lvpadn/cs;->S:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    const-string v1, "VideoManager"

    const-string v2, "mBufferSufferTimeTimer.schedule throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1199
    iget-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cs;->aa:Ljava/util/Timer;

    .line 1202
    :cond_0
    return-void
.end method

.method public h()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1906
    const-string v0, "VideoManager"

    const-string v1, "non-auto start putPlayButtonForAutoStart"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :try_start_0
    const-string v0, "/vpon_video2_play.png"

    .line 1911
    new-instance v1, Lvpadn/bv;

    invoke-direct {p0, v0}, Lvpadn/cs;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lvpadn/cs$7;

    invoke-direct {v2, p0}, Lvpadn/cs$7;-><init>(Lvpadn/cs;)V

    invoke-direct {v1, p0, v0, v2}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    iput-object v1, p0, Lvpadn/cs;->L:Lvpadn/bv;

    .line 1917
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    new-instance v1, Lvpadn/cs$8;

    invoke-direct {v1, p0}, Lvpadn/cs$8;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lvpadn/bv;->setAfterPressButtonListener(Lvpadn/bv$a;)V

    .line 1925
    iget-object v0, p0, Lvpadn/cs;->L:Lvpadn/bv;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvpadn/bv;->setVisibility(I)V

    .line 1927
    invoke-direct {p0}, Lvpadn/cs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1932
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1933
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1934
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    :goto_1
    return-void

    .line 1930
    :cond_0
    iget-object v0, p0, Lvpadn/cs;->s:Lvpadn/cs$m;

    iget v0, v0, Lvpadn/cs$m;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 1937
    :cond_1
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lvpadn/cs;->L:Lvpadn/bv;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    const-string v1, "VideoManager"

    const-string v2, "in non-auto start situation, putPlayButton throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method i()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 2298
    iget-boolean v0, p0, Lvpadn/cs;->l:Z

    return v0
.end method

.method k()Lcom/vpadn/widget/VpadnActivity;
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    return-object v0
.end method

.method public l()V
    .locals 5

    .prologue
    .line 2311
    const-string v0, "VideoManager"

    const-string v1, "Call notifyVponActivityOnPause"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :try_start_0
    iget-object v0, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    new-instance v0, Lvpadn/cs$13;

    invoke-direct {v0, p0}, Lvpadn/cs$13;-><init>(Lvpadn/cs;)V

    .line 2330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2331
    const-string v2, "resume"

    invoke-virtual {p0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v3

    invoke-virtual {v3}, Lvpadn/cr;->M()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    const-string v2, "pause"

    invoke-virtual {p0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v3

    invoke-virtual {v3}, Lvpadn/cr;->N()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    new-instance v2, Lvpadn/bv;

    new-instance v3, Lvpadn/ck;

    .line 2334
    invoke-virtual {p0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lvpadn/ck;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V

    invoke-direct {v2, p0, v3}, Lvpadn/bv;-><init>(Lvpadn/cs;Lvpadn/by;)V

    .line 2335
    invoke-virtual {v2}, Lvpadn/bv;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->n:Z

    .line 2346
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    if-eqz v0, :cond_1

    .line 2347
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    invoke-virtual {v0}, Lvpadn/cv;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lvpadn/cs;->U:I

    .line 2348
    iget-object v0, p0, Lvpadn/cs;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2349
    iget-object v0, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2350
    iget-object v0, p0, Lvpadn/cs;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lvpadn/cs;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->k:Z

    .line 2353
    invoke-direct {p0}, Lvpadn/cs;->at()V

    .line 2354
    invoke-direct {p0}, Lvpadn/cs;->au()V

    .line 2355
    invoke-direct {p0}, Lvpadn/cs;->Q()V

    .line 2356
    invoke-direct {p0}, Lvpadn/cs;->ay()V

    .line 2358
    :cond_1
    invoke-virtual {p0}, Lvpadn/cs;->g()V

    .line 2360
    return-void

    .line 2343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public m()V
    .locals 5

    .prologue
    .line 2363
    const-string v0, "VideoManager"

    const-string v1, "Call notifyVponActivityOnResume"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/cs;->n:Z

    .line 2367
    iget-object v0, p0, Lvpadn/cs;->h:Lvpadn/cv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lvpadn/cs;->k:Z

    if-nez v0, :cond_0

    .line 2368
    invoke-direct {p0}, Lvpadn/cs;->L()V

    .line 2369
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->D()Z

    move-result v0

    invoke-direct {p0, v0}, Lvpadn/cs;->h(Z)V

    .line 2375
    new-instance v0, Lvpadn/cs$14;

    invoke-direct {v0, p0}, Lvpadn/cs$14;-><init>(Lvpadn/cs;)V

    .line 2384
    new-instance v1, Lvpadn/bv;

    new-instance v2, Lvpadn/cn;

    .line 2385
    invoke-virtual {p0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v3

    invoke-virtual {p0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v4

    invoke-virtual {v4}, Lvpadn/cr;->M()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v3, v0, v4}, Lvpadn/cn;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lvpadn/bv;-><init>(Lvpadn/cs;Lvpadn/by;)V

    .line 2386
    invoke-virtual {v1}, Lvpadn/bv;->performClick()Z

    .line 2388
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 2391
    const-string v0, "VideoManager"

    const-string v1, "Call notifyVponActivityOnDestroy"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-virtual {p0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->printLogForImpPolicy()V

    .line 2393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cs;->o:Z

    .line 2394
    invoke-direct {p0}, Lvpadn/cs;->at()V

    .line 2395
    invoke-direct {p0}, Lvpadn/cs;->au()V

    .line 2396
    invoke-direct {p0}, Lvpadn/cs;->Q()V

    .line 2397
    invoke-direct {p0}, Lvpadn/cs;->az()V

    .line 2398
    invoke-direct {p0}, Lvpadn/cs;->aA()V

    .line 2399
    invoke-direct {p0}, Lvpadn/cs;->aB()V

    .line 2400
    invoke-direct {p0}, Lvpadn/cs;->aC()V

    .line 2401
    invoke-virtual {p0}, Lvpadn/cs;->g()V

    .line 2402
    return-void
.end method

.method public o()V
    .locals 4

    .prologue
    .line 2548
    invoke-direct {p0}, Lvpadn/cs;->aq()I

    move-result v0

    .line 2549
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->n()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2551
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    .line 2553
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lvpadn/cs$16;

    invoke-direct {v1, p0}, Lvpadn/cs$16;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2562
    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2565
    invoke-direct {p0}, Lvpadn/cs;->aq()I

    move-result v0

    .line 2566
    iget-object v1, p0, Lvpadn/cs;->i:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->n()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2568
    iget-object v0, p0, Lvpadn/cs;->g:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0, v2}, Lcom/vpadn/widget/VpadnActivity;->setRequestedOrientation(I)V

    .line 2570
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lvpadn/cs$17;

    invoke-direct {v1, p0}, Lvpadn/cs$17;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2579
    :cond_0
    return-void
.end method

.method public q()Lvpadn/cr;
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lvpadn/cs;->i:Lvpadn/cr;

    return-object v0
.end method

.method public r()Lvpadn/bv;
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Lvpadn/cs;->M:Lvpadn/bv;

    return-object v0
.end method

.method public s()Lvpadn/bv;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lvpadn/cs;->N:Lvpadn/bv;

    return-object v0
.end method

.method public t()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2657
    :try_start_0
    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2658
    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2663
    :cond_0
    :goto_0
    return v0

    .line 2661
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public u()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2669
    :try_start_0
    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lvpadn/cs;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2675
    :cond_0
    :goto_0
    return v0

    .line 2673
    :catch_0
    move-exception v1

    .line 2674
    const-string v2, "VideoManager"

    const-string v3, "getVideoDuration throw Exception e:"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
