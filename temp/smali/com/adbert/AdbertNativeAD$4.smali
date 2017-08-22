.class Lcom/adbert/AdbertNativeAD$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertNativeAD;->c()V
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
    .line 168
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$4;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$4;->a:Lcom/adbert/AdbertNativeAD;

    invoke-static {v0}, Lcom/adbert/AdbertNativeAD;->d(Lcom/adbert/AdbertNativeAD;)Lcom/adbert/a/a/b;

    move-result-object v1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/adbert/a/a/b;->i:Z

    .line 172
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
