.class public Lcom/creativemobi/DragRacing/billing/a;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static a:Lcom/creativemobi/DragRacing/billing/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/creativemobi/DragRacing/billing/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    invoke-virtual {v0, p0, p1}, Lcom/creativemobi/DragRacing/billing/c;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/creativemobi/DragRacing/billing/c;)V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/creativemobi/DragRacing/billing/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    invoke-virtual {v0, p0}, Lcom/creativemobi/DragRacing/billing/c;->a(Lcom/creativemobi/DragRacing/billing/o;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static a(Lcom/creativemobi/DragRacing/billing/r;Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    invoke-virtual {v0, p0, p1}, Lcom/creativemobi/DragRacing/billing/c;->a(Lcom/creativemobi/DragRacing/billing/r;Lcom/creativemobi/DragRacing/billing/o;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    invoke-virtual {v0, p0}, Lcom/creativemobi/DragRacing/billing/c;->a(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/creativemobi/DragRacing/billing/c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/creativemobi/DragRacing/billing/a;->a:Lcom/creativemobi/DragRacing/billing/c;

    return-object v0
.end method
