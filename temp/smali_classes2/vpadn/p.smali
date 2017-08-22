.class public Lvpadn/p;
.super Ljava/lang/Object;
.source "CallbackContext.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lvpadn/f;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lvpadn/p;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lvpadn/p;->b:Lvpadn/f;

    .line 21
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;I)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 63
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 72
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 54
    return-void
.end method

.method public a(Lvpadn/w;)V
    .locals 3

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lvpadn/p;->c:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "CordovaPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to send a second callback for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nResult was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    monitor-exit p0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lvpadn/w;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lvpadn/p;->c:Z

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Lvpadn/p;->b:Lvpadn/f;

    iget-object v1, p0, Lvpadn/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;[B)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 81
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lvpadn/p;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lvpadn/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 109
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 99
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    invoke-virtual {p0, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 90
    return-void
.end method
