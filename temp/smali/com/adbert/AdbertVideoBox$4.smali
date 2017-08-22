.class Lcom/adbert/AdbertVideoBox$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertVideoBox;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertVideoBox;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$4;->a:Lcom/adbert/AdbertVideoBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$4;->a:Lcom/adbert/AdbertVideoBox;

    sget-object v1, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertVideoBox;->c(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$4;->a:Lcom/adbert/AdbertVideoBox;

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertVideoBox;->b(Lcom/adbert/AdbertVideoBox;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$4;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->h(Lcom/adbert/AdbertVideoBox;)V

    .line 155
    return-void
.end method
