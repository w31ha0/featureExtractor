.class final Lcom/tapjoy/l;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tapjoy/e;


# direct methods
.method constructor <init>(Lcom/tapjoy/e;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tapjoy/l;->a:Lcom/tapjoy/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/tapjoy/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "https://ws.tapjoyads.com/display_ad?"

    invoke-static {v1, v0}, Lcom/tapjoy/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :cond_0
    invoke-static {}, Lcom/tapjoy/e;->b()Lcom/tapjoy/m;

    move-result-object v0

    const-string v1, "Network error."

    invoke-interface {v0, v1}, Lcom/tapjoy/m;->b(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/l;->a:Lcom/tapjoy/e;

    invoke-static {v1, v0}, Lcom/tapjoy/e;->a(Lcom/tapjoy/e;Ljava/lang/String;)Z

    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Lcom/tapjoy/e;->b()Lcom/tapjoy/m;

    move-result-object v0

    const-string v1, "No ad to display."

    invoke-interface {v0, v1}, Lcom/tapjoy/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
