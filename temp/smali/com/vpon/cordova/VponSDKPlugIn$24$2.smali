.class Lcom/vpon/cordova/VponSDKPlugIn$24$2;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/cordova/VponSDKPlugIn$24;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$24;)V
    .locals 0

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;

    invoke-direct {v1, p0}, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;-><init>(Lcom/vpon/cordova/VponSDKPlugIn$24$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2262
    return-void
.end method
