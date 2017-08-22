.class Lcom/adbert/AdbertADView$14;
.super Lcom/adbert/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertADView;
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
    .line 1127
    iput-object p1, p0, Lcom/adbert/AdbertADView$14;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Lcom/adbert/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public endingCardAction(I)V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/adbert/AdbertADView$14;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, p1}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;I)V

    .line 1131
    return-void
.end method

.method public onPageFinished()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/adbert/AdbertADView$14;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->q(Lcom/adbert/AdbertADView;)V

    .line 1135
    return-void
.end method
