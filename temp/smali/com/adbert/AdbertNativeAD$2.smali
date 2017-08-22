.class Lcom/adbert/AdbertNativeAD$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertNativeAD;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertNativeAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertNativeAD;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$2;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    sget-object v1, Lcom/adbert/a/b/d;->e:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    sget-object v1, Lcom/adbert/a/b/d;->f:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/adbert/AdbertNativeAD$2;->a:Lcom/adbert/AdbertNativeAD;

    sget-object v2, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    invoke-static {v1, v2, v0}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method
