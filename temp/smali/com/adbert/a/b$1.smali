.class Lcom/adbert/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/b$c;

.field final synthetic b:Lcom/adbert/a/b;


# direct methods
.method constructor <init>(Lcom/adbert/a/b;Lcom/adbert/a/b$c;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adbert/a/b$1;->b:Lcom/adbert/a/b;

    iput-object p2, p0, Lcom/adbert/a/b$1;->a:Lcom/adbert/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adbert/a/b$1;->a:Lcom/adbert/a/b$c;

    invoke-virtual {p1}, Lcom/adbert/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/adbert/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adbert/a/b$c;->onEnd(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adbert/a/b$1;->a:Lcom/adbert/a/b$c;

    invoke-virtual {p1}, Lcom/adbert/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/adbert/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adbert/a/b$c;->onEnd(ILjava/lang/String;)V

    .line 78
    return-void
.end method
