.class Lcom/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
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
    .line 846
    iput-object p1, p0, Lcom/a/a/j;->a:Lcom/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/h;

    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 852
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/a/a/j;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
