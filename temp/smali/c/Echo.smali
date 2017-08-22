.class public Lc/Echo;
.super Lvpadn/r;
.source "Echo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lvpadn/c;Lvpadn/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    const-string v3, "echo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p2, v2}, Lvpadn/c;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    :goto_0
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Ljava/lang/String;)V

    move v0, v1

    .line 47
    :goto_1
    return v0

    .line 31
    :cond_0
    invoke-virtual {p2, v2}, Lvpadn/c;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    const-string v3, "echoAsync"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {p2, v2}, Lvpadn/c;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :goto_2
    iget-object v2, p0, Lc/Echo;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lc/Echo$1;

    invoke-direct {v3, p0, p3, v0}, Lc/Echo$1;-><init>(Lc/Echo;Lvpadn/p;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 41
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p2, v2}, Lvpadn/c;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 42
    :cond_3
    const-string v0, "echoArrayBuffer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p2, v2}, Lvpadn/c;->c(I)[B

    move-result-object v0

    .line 44
    invoke-virtual {p3, v0}, Lvpadn/p;->a([B)V

    move v0, v1

    .line 45
    goto :goto_1

    :cond_4
    move v0, v2

    .line 47
    goto :goto_1
.end method
