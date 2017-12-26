.class Lcom/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/g/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a/a/a/g/t",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/h;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/a/a/n;->a:Lcom/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/g/w;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 960
    iget-object v1, p0, Lcom/a/a/n;->a:Lcom/a/a/h;

    invoke-virtual {v1}, Lcom/a/a/h;->D()Lb/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/f;->b()Landroid/app/Activity;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/a/a/n;->a:Lcom/a/a/h;

    invoke-virtual {v2}, Lcom/a/a/h;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    iget-object v0, p0, Lcom/a/a/n;->a:Lcom/a/a/h;

    iget-object v2, p1, Lb/a/a/a/a/g/w;->c:Lb/a/a/a/a/g/o;

    invoke-static {v0, v1, v2}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/app/Activity;Lb/a/a/a/a/g/o;)Z

    move-result v0

    .line 967
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lb/a/a/a/a/g/w;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lcom/a/a/n;->a(Lb/a/a/a/a/g/w;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
