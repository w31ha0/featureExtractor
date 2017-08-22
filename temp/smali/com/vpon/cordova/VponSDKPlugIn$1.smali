.class Lcom/vpon/cordova/VponSDKPlugIn$1;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->a(Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$1;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$1;->a:Lvpadn/af;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$1;->b:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$1;->a:Lvpadn/af;

    invoke-virtual {v0}, Lvpadn/af;->i()V

    .line 511
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$1;->b:Lvpadn/p;

    invoke-virtual {v0}, Lvpadn/p;->c()V

    .line 512
    return-void
.end method
