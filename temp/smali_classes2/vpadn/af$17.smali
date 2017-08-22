.class Lvpadn/af$17;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lvpadn/af$17;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1329
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->d()V

    .line 1330
    return-void
.end method
