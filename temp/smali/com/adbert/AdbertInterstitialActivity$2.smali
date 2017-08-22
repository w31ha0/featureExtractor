.class Lcom/adbert/AdbertInterstitialActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 105
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity$2;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$2;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;)Lcom/adbert/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 109
    return-void
.end method
