.class final Lcom/creativemobi/engine/ap;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/creativemobi/engine/k;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/k;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/32 v4, -0x186a0

    .line 1047
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    iput-wide v4, v0, Lcom/creativemobi/engine/k;->n:J

    .line 1048
    sget-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->d(Ljava/lang/String;)I

    move-result v0

    .line 1049
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/k;)V

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v1, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/creativemobi/engine/k;->n:J

    .line 1055
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->p:Z

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    iput-wide v4, v0, Lcom/creativemobi/engine/k;->n:J

    .line 1057
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/creativemobi/engine/k;->p:Z

    .line 1058
    sget-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    if-nez v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/k;)V

    goto :goto_0

    .line 1067
    :cond_2
    new-instance v1, Lcom/creativemobi/engine/b;

    invoke-direct {v1}, Lcom/creativemobi/engine/b;-><init>()V

    .line 1068
    iput-object v0, v1, Lcom/creativemobi/engine/b;->a:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-virtual {v0}, Lcom/creativemobi/engine/k;->c()I

    move-result v0

    iput v0, v1, Lcom/creativemobi/engine/b;->c:I

    .line 1070
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    iget v0, v0, Lcom/creativemobi/engine/k;->b:I

    iput v0, v1, Lcom/creativemobi/engine/b;->d:I

    .line 1072
    iget-object v0, p0, Lcom/creativemobi/engine/ap;->a:Lcom/creativemobi/engine/k;

    invoke-static {v0}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/k;)Lcom/creativemobi/engine/bl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 1073
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bm;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bm;-><init>(Lcom/creativemobi/engine/ap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
