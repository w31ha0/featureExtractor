.class Lcom/adbert/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/c$1;


# direct methods
.method constructor <init>(Lcom/adbert/a/c$1;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v0, v0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->c()I

    move-result v1

    .line 188
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v0, v0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->b()Lcom/adbert/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v1, v1, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-interface {v0, v1}, Lcom/adbert/a/b$a;->onConnectionSuccess(Lcom/adbert/a/c;)V

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v0, v0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->b()Lcom/adbert/a/b$a;

    move-result-object v0

    instance-of v0, v0, Lcom/adbert/a/b$b;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v0, v0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->b()Lcom/adbert/a/b$a;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b$b;

    .line 192
    const/16 v2, -0x3e9

    if-ne v1, v2, :cond_1

    .line 193
    iget-object v1, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v1, v1, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-interface {v0, v1}, Lcom/adbert/a/b$b;->a(Lcom/adbert/a/c;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v1, v1, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-interface {v0, v1}, Lcom/adbert/a/b$b;->b(Lcom/adbert/a/c;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v0, v0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->b()Lcom/adbert/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c$1$1;->a:Lcom/adbert/a/c$1;

    iget-object v1, v1, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-interface {v0, v1}, Lcom/adbert/a/b$a;->onConnectionFail(Lcom/adbert/a/c;)V

    goto :goto_0
.end method
