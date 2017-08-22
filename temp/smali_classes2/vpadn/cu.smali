.class public Lvpadn/cu;
.super Ljava/lang/Object;
.source "VideoTrackingManager.java"


# instance fields
.field private a:Lcom/vpadn/widget/VpadnActivity;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lvpadn/cr;

.field private d:Lvpadn/ct;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cu;->e:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cu;->f:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cu;->g:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cu;->h:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cu;->i:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lvpadn/cu;->m:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/cu;->n:Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lvpadn/cu;->o:I

    .line 58
    iput v1, p0, Lvpadn/cu;->p:I

    .line 61
    iput-object p1, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    .line 62
    iput-object p1, p0, Lvpadn/cu;->d:Lvpadn/ct;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 279
    :try_start_0
    iget-object v0, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 280
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v2, v0

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 283
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "{CurrentTime}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "{CurrentTime}"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_0
    const-string v0, "{TotalTime}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "{TotalTime}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_1
    const-string v0, "{Vpadn-Guid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "{Vpadn-Guid}"

    iget-object v1, p0, Lvpadn/cu;->c:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 294
    :cond_2
    const-string v0, "{Vpadn-Sid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const-string v0, "{Vpadn-Sid}"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/cu;->c:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_3
    const-string v0, "{Vpadn-Seq}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    const-string v0, "{Vpadn-Seq}"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/cu;->c:Lvpadn/cr;

    invoke-virtual {v2}, Lvpadn/cr;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 300
    :cond_4
    const-string v0, "{Vpadn-app}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    const-string v0, "{Vpadn-app}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_5
    const-string v0, "{Vpadn-gaid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    const-string v0, "{Vpadn-gaid}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    :goto_0
    :try_start_1
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v2

    invoke-virtual {v2}, Lvpadn/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 312
    :cond_6
    :goto_1
    return-object v0

    .line 310
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 311
    :goto_2
    const-string v2, "VideoTrackingManager"

    const-string v3, "replaceTrackingUrl throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 310
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 328
    :try_start_0
    const-string v0, "VideoTrackingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call sendHttpGet in VideoTrackingManager url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vt_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "VideoTrackingManager"

    const-string v1, "sendHttpGet StringUtils.isBlank(url) is True"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const-string v0, "VideoTrackingManager"

    const-string v1, "!url.toLowerCase().startsWith(http://) && !url.toLowerCase().startsWith(https://)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    const-string v1, "VideoTrackingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at sendHttpGet Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    :cond_1
    :try_start_1
    iget-object v0, p0, Lvpadn/cu;->d:Lvpadn/ct;

    .line 352
    iget-object v1, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    new-instance v2, Lvpadn/cu$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lvpadn/cu$1;-><init>(Lvpadn/cu;Ljava/lang/String;Ljava/lang/String;Lvpadn/ct;)V

    invoke-virtual {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 105
    div-int/lit8 v0, v0, 0x4

    .line 106
    iput v0, p0, Lvpadn/cu;->j:I

    .line 107
    iget v1, p0, Lvpadn/cu;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lvpadn/cu;->k:I

    .line 108
    iget v1, p0, Lvpadn/cu;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lvpadn/cu;->l:I

    .line 110
    invoke-direct {p0}, Lvpadn/cu;->d()V

    .line 113
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lvpadn/cu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "VideoTrackingManager"

    const-string v2, "init throws Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_0
    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 122
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lvpadn/cu;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lvpadn/cu;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_3
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 136
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lvpadn/cu;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    :cond_4
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    sget-object v1, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/cr;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lvpadn/cu;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private d()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lvpadn/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    iget-object v0, p0, Lvpadn/cu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    iget-object v0, p0, Lvpadn/cu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Lvpadn/cu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    iget-object v0, p0, Lvpadn/cu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lvpadn/cu;->c:Lvpadn/cr;

    iget-object v1, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v1}, Lvpadn/cu;->a(Lvpadn/cr;Landroid/media/MediaPlayer;)V

    .line 67
    return-void
.end method

.method public a(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 155
    const-string v1, "VideoTrackingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyByCurrentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v1, p0, Lvpadn/cu;->m:Z

    if-eqz v1, :cond_1

    .line 157
    const-string v1, "VideoTrackingManager"

    const-string v2, "mIsUseOldMethodTracking is TRUE"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v1, p0, Lvpadn/cu;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lvpadn/cu;->p:I

    .line 160
    iget v1, p0, Lvpadn/cu;->p:I

    iget v2, p0, Lvpadn/cu;->o:I

    if-ne v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lvpadn/cu;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VT_OLD"

    invoke-direct {p0, v1, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput v0, p0, Lvpadn/cu;->p:I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lvpadn/cu;->c:Lvpadn/cr;

    invoke-virtual {v1}, Lvpadn/cr;->h()Ljava/util/List;

    move-result-object v3

    move v2, v0

    .line 169
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 170
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/cr$c;

    .line 171
    invoke-virtual {v0}, Lvpadn/cr$c;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-lt p1, v1, :cond_5

    invoke-virtual {v0}, Lvpadn/cr$c;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 172
    invoke-virtual {v0}, Lvpadn/cr$c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    const-string v5, "c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    iget-object v1, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v1}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v1

    .line 175
    if-nez v1, :cond_2

    .line 176
    const-string v1, "VideoTrackingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT_PROGRESS_TIME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lvpadn/cr$c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Call send click but clickUrl is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 179
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT_PROGRESS_TIME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lvpadn/cr$c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_3
    invoke-direct {p0, v1}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT_PROGRESS_TIME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lvpadn/cr$c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/cr$c;->a(Z)V

    .line 169
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 190
    :cond_6
    if-lez p1, :cond_a

    iget v0, p0, Lvpadn/cu;->j:I

    if-ge p1, v0, :cond_a

    .line 191
    iget-object v0, p0, Lvpadn/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 193
    iget-object v0, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-nez v0, :cond_7

    .line 195
    const-string v0, "VideoTrackingManager"

    const-string v2, "VT_START Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :cond_7
    const-string v2, "VT_START"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 200
    :cond_8
    invoke-direct {p0, v0}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT_START"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 203
    :cond_9
    iget-object v0, p0, Lvpadn/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    :cond_a
    iget v0, p0, Lvpadn/cu;->j:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lvpadn/cu;->k:I

    if-ge p1, v0, :cond_e

    .line 207
    iget-object v0, p0, Lvpadn/cu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 209
    iget-object v0, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez v0, :cond_b

    .line 211
    const-string v0, "VideoTrackingManager"

    const-string v2, "VT_FIRST_QUARTILE Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 214
    :cond_b
    const-string v2, "VT_FIRST_QUARTILE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 216
    :cond_c
    invoke-direct {p0, v0}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT_FIRST_QUARTILE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 219
    :cond_d
    iget-object v0, p0, Lvpadn/cu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    :cond_e
    iget v0, p0, Lvpadn/cu;->k:I

    if-lt p1, v0, :cond_12

    iget v0, p0, Lvpadn/cu;->l:I

    if-ge p1, v0, :cond_12

    .line 223
    iget-object v0, p0, Lvpadn/cu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 225
    iget-object v0, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    if-nez v0, :cond_f

    .line 227
    const-string v0, "VideoTrackingManager"

    const-string v2, "VT_MIDPOINT Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 230
    :cond_f
    const-string v2, "VT_MIDPOINT"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 232
    :cond_10
    invoke-direct {p0, v0}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT_MIDPOINT"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 235
    :cond_11
    iget-object v0, p0, Lvpadn/cu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    :cond_12
    iget v0, p0, Lvpadn/cu;->l:I

    if-lt p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lvpadn/cu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 241
    iget-object v0, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 242
    if-nez v0, :cond_13

    .line 243
    const-string v0, "VideoTrackingManager"

    const-string v2, "VT_THIRD_QUARTILE Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 246
    :cond_13
    const-string v2, "VT_THIRD_QUARTILE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 248
    :cond_14
    invoke-direct {p0, v0}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT_THIRD_QUARTILE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 251
    :cond_15
    iget-object v0, p0, Lvpadn/cu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    .line 71
    return-void
.end method

.method public a(Lvpadn/cr;Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p1}, Lvpadn/cr;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lvpadn/cr;->U()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "VideoTrackingManager"

    const-string v1, "Use old method for video tracking!!"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "VideoTrackingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoData.getTrackingUrl():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/cr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoData.getTrackingInterval()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/cr;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/cu;->m:Z

    .line 82
    :cond_0
    invoke-virtual {p1}, Lvpadn/cr;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lvpadn/cr;->U()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "VideoTrackingManager"

    const-string v1, "videoData.getTrackingUrl() == null && videoData.getTrackingDataMap().isEmpty()"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_1
    iput-object p1, p0, Lvpadn/cu;->c:Lvpadn/cr;

    .line 88
    iput-object p2, p0, Lvpadn/cu;->b:Landroid/media/MediaPlayer;

    .line 90
    iget-boolean v0, p0, Lvpadn/cu;->m:Z

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Lvpadn/cr;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cu;->n:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lvpadn/cr;->g()I

    move-result v0

    if-lez v0, :cond_2

    .line 93
    invoke-virtual {p1}, Lvpadn/cr;->g()I

    move-result v0

    iput v0, p0, Lvpadn/cu;->o:I

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "VideoTrackingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoData.getTrackingInterval():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/cr;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    invoke-direct {p0}, Lvpadn/cu;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 258
    iget-boolean v0, p0, Lvpadn/cu;->m:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/cu;->p:I

    .line 275
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lvpadn/cu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v0, p0, Lvpadn/cu;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 264
    if-nez v0, :cond_1

    .line 265
    const-string v0, "VideoTrackingManager"

    const-string v2, "VT_COMPLETE Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    :cond_1
    const-string v2, "VT_COMPLETE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_2
    invoke-direct {p0, v0}, Lvpadn/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VT_COMPLETE"

    invoke-direct {p0, v0, v2}, Lvpadn/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_3
    iget-object v0, p0, Lvpadn/cu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
