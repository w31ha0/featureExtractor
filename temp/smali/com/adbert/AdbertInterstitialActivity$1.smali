.class Lcom/adbert/AdbertInterstitialActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity$1;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$1;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    iput-object p1, v0, Lcom/adbert/a/a/a;->D:Ljava/lang/String;

    .line 93
    return-void
.end method
