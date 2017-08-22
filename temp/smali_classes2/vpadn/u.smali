.class public Lvpadn/u;
.super Ljava/lang/Object;
.source "PluginEntry.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lvpadn/r;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lvpadn/u;->a:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lvpadn/u;->b:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/u;->c:Lvpadn/r;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/u;->d:Z

    .line 61
    iput-object p1, p0, Lvpadn/u;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lvpadn/u;->b:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lvpadn/u;->d:Z

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-class v0, Lvpadn/r;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lvpadn/f;Lvpadn/q;)Lvpadn/r;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/u;->c:Lvpadn/r;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lvpadn/u;->c:Lvpadn/r;

    .line 88
    :goto_0
    return-object v0

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvpadn/u;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvpadn/u;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lvpadn/u;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/r;

    iput-object v0, p0, Lvpadn/u;->c:Lvpadn/r;

    .line 81
    iget-object v0, p0, Lvpadn/u;->c:Lvpadn/r;

    invoke-virtual {v0, p2, p1}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 82
    iget-object v0, p0, Lvpadn/u;->c:Lvpadn/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error adding plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
