.class final Lcom/tapjoy/d;
.super Ljava/lang/Object;
.source "TJCOffers.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tapjoy/o;


# direct methods
.method constructor <init>(Lcom/tapjoy/o;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 149
    invoke-static {}, Lcom/tapjoy/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tap_points="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/d;->a:Lcom/tapjoy/o;

    iget-object v2, v2, Lcom/tapjoy/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&publisher_user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/tapjoy/h;

    invoke-direct {v2}, Lcom/tapjoy/h;-><init>()V

    const-string v2, "https://ws.tapjoyads.com/points/spend?"

    invoke-static {v2, v1}, Lcom/tapjoy/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 157
    invoke-static {v1}, Lcom/tapjoy/o;->b(Ljava/lang/String;)Z

    move-result v0

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/tapjoy/o;->b()Lcom/tapjoy/g;

    move-result-object v0

    const-string v1, "Failed to spend points."

    invoke-interface {v0, v1}, Lcom/tapjoy/g;->a(Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method
