.class Lcom/adbert/AdbertADView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->setDatas(Ljava/lang/String;)V
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
    .line 594
    iput-object p1, p0, Lcom/adbert/AdbertADView$6;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/adbert/AdbertADView$6;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->n:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 599
    return-void
.end method
