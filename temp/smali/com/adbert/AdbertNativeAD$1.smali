.class Lcom/adbert/AdbertNativeAD$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertNativeAD;->loadAD()V
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
    .line 63
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$1;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$1;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v0, p1}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$1;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v0}, Lcom/adbert/AdbertNativeAD;->a(Lcom/adbert/AdbertNativeAD;)Lcom/adbert/AdbertNativeAD$a;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertNativeAD$a;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method
