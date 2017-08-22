.class Lcom/adbert/AdbertADView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/adbert/AdbertADView$1;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/adbert/AdbertADView$1;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, p1}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/adbert/AdbertADView$1;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertADView$MyHandler;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView$MyHandler;->sendEmptyMessage(I)Z

    .line 268
    return-void
.end method
