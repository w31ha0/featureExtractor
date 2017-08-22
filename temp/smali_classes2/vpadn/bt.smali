.class public abstract Lvpadn/bt;
.super Ljava/lang/Object;
.source "AbstractMultiStatusClickTrackingButtonCommand.java"

# interfaces
.implements Lvpadn/by;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lvpadn/cs;

.field private final d:Lvpadn/cq;

.field private e:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "AbstractOneStatusClickTrackingButtonCommand"

    sput-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Landroid/app/Activity;",
            "Lvpadn/cq;",
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lvpadn/bt;->c:Lvpadn/cs;

    .line 41
    iput-object p2, p0, Lvpadn/bt;->b:Landroid/app/Activity;

    .line 42
    iput-object p3, p0, Lvpadn/bt;->d:Lvpadn/cq;

    .line 43
    iput-object p4, p0, Lvpadn/bt;->e:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 90
    iget-object v0, p0, Lvpadn/bt;->c:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_7

    .line 93
    :try_start_0
    const-string v1, "{CurrentTime}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lvpadn/bt;->c:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->t()I

    move-result v1

    .line 95
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "{CurrentTime}"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_0
    const-string v1, "{TotalTime}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lvpadn/bt;->c:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->u()I

    move-result v1

    .line 100
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "{TotalTime}"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_1
    const-string v1, "{Vpadn-Guid}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v1, "{Vpadn-Guid}"

    invoke-virtual {v0}, Lvpadn/cr;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_2
    const-string v1, "{Vpadn-Sid}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const-string v1, "{Vpadn-Sid}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvpadn/cr;->s()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_3
    const-string v1, "{Vpadn-Seq}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    const-string v1, "{Vpadn-Seq}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lvpadn/cr;->t()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_4
    const-string v0, "{Vpadn-app}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string v0, "{Vpadn-app}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_5
    const-string v0, "{Vpadn-gaid}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    const-string v0, "{Vpadn-gaid}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/au;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    :try_start_1
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    const-string v1, "{Vpadn-gaid-md5}"

    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v2

    invoke-virtual {v2}, Lvpadn/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 128
    :cond_6
    :goto_1
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 123
    :goto_2
    sget-object v2, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v3, "replaceTrackingUrl throw Exception"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    :cond_7
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button trackingUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 128
    goto :goto_1

    .line 122
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_8
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/bt;)Lvpadn/cq;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lvpadn/bt;->d:Lvpadn/cq;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    invoke-static {p1}, Lvpadn/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v1, "sendButtonTrackingUrl StringUtils.isBlank(url) is True"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 139
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

    .line 140
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v1, "!url.toLowerCase().startsWith(http://) && !url.toLowerCase().startsWith(https://)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lvpadn/bt;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at sendButtonTrackingUrl Exception:"

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

    .line 151
    :cond_1
    :try_start_1
    iget-object v0, p0, Lvpadn/bt;->b:Landroid/app/Activity;

    new-instance v1, Lvpadn/bt$1;

    invoke-direct {v1, p0, p1}, Lvpadn/bt$1;-><init>(Lvpadn/bt;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lvpadn/bt;->a()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lvpadn/bt;->b()V

    .line 56
    invoke-virtual {p0}, Lvpadn/bt;->a()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lvpadn/bt;->e:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/bt;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lvpadn/bt;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    if-eqz v0, :cond_2

    iget-object v1, p0, Lvpadn/bt;->b:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v0, p0, Lvpadn/bt;->b:Landroid/app/Activity;

    check-cast v0, Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->getClickUrlAndRemoveClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v2, "VT_MULTI_STATUS_BUTTON ButtonTrackingUrl Call send click but clickUrl is null"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lvpadn/bt;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, v0}, Lvpadn/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lvpadn/bt;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v1, "Cannot find Button trackingUrls"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    :goto_1
    return-void

    .line 84
    :cond_4
    sget-object v0, Lvpadn/bt;->a:Ljava/lang/String;

    const-string v1, "currentStatus.equals(previousStatus)==true"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
