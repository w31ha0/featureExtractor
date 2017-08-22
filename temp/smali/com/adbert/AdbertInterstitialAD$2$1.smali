.class Lcom/adbert/AdbertInterstitialAD$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialAD$2;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialAD$2;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialAD$2;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$2$1;->a:Lcom/adbert/AdbertInterstitialAD$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$2$1;->a:Lcom/adbert/AdbertInterstitialAD$2;

    iget-object v0, v0, Lcom/adbert/AdbertInterstitialAD$2;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0, p1, p2}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;ILjava/lang/String;)V

    .line 185
    return-void
.end method
