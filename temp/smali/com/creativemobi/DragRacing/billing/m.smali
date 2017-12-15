.class final Lcom/creativemobi/DragRacing/billing/m;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/creativemobi/DragRacing/billing/i;

.field private synthetic e:J

.field private synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/creativemobi/DragRacing/billing/i;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/billing/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/creativemobi/DragRacing/billing/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/creativemobi/DragRacing/billing/m;->d:Lcom/creativemobi/DragRacing/billing/i;

    iput-wide p5, p0, Lcom/creativemobi/DragRacing/billing/m;->e:J

    iput-object p7, p0, Lcom/creativemobi/DragRacing/billing/m;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 114
    new-instance v0, Lcom/creativemobi/DragRacing/billing/q;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/creativemobi/DragRacing/billing/q;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/billing/m;->d:Lcom/creativemobi/DragRacing/billing/i;

    iget-wide v4, p0, Lcom/creativemobi/DragRacing/billing/m;->e:J

    iget-object v6, p0, Lcom/creativemobi/DragRacing/billing/m;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/creativemobi/DragRacing/billing/i;JLjava/lang/String;)I

    move-result v4

    .line 117
    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/q;->a()V

    .line 121
    const-class v8, Lcom/creativemobi/DragRacing/billing/a;

    monitor-enter v8

    .line 122
    :try_start_0
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/a;->b()Lcom/creativemobi/DragRacing/billing/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/creativemobi/DragRacing/billing/a;->b()Lcom/creativemobi/DragRacing/billing/c;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/m;->d:Lcom/creativemobi/DragRacing/billing/i;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/billing/m;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/creativemobi/DragRacing/billing/m;->e:J

    iget-object v7, p0, Lcom/creativemobi/DragRacing/billing/m;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/creativemobi/DragRacing/billing/c;->a(Lcom/creativemobi/DragRacing/billing/i;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 126
    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
