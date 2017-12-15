.class final Lcom/tapjoy/j;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tapjoy/v;


# direct methods
.method constructor <init>(Lcom/tapjoy/v;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/tapjoy/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/v;

    invoke-static {v1}, Lcom/tapjoy/v;->a(Lcom/tapjoy/v;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/j;->a:Lcom/tapjoy/v;

    invoke-static {v1}, Lcom/tapjoy/v;->a(Lcom/tapjoy/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    const-string v1, "https://ws.tapjoyads.com/connect?"

    invoke-static {v1, v0}, Lcom/tapjoy/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    invoke-static {v0}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    .line 116
    :cond_1
    return-void
.end method
