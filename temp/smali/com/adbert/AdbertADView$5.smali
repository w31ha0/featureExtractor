.class Lcom/adbert/AdbertADView$5;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->setAdmob()V
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
    .line 573
    iput-object p1, p0, Lcom/adbert/AdbertADView$5;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/adbert/AdbertADView$5;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/adbert/AdbertADView$5;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 577
    return-void
.end method
