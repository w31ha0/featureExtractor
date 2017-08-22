.class Lcom/adbert/AdbertInterstitialActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertInterstitialActivity;
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
    .line 177
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity$3;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$3;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0, p2}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$3;->a:Lcom/adbert/AdbertInterstitialActivity;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;ZI)V

    .line 185
    :cond_0
    return-void
.end method
