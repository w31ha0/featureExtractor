.class Lcom/a/a/i;
.super Lb/a/a/a/a/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/c/s",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/h;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/a/a/i;->a:Lcom/a/a/h;

    invoke-direct {p0}, Lb/a/a/a/a/c/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 727
    sget-object v0, Lb/a/a/a/a/c/o;->d:Lb/a/a/a/a/c/o;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/a/a/i;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
