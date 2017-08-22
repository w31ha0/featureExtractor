.class Lcom/vpon/cordova/VponSDKPlugIn$9;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->A(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;ZLvpadn/p;)V
    .locals 0

    .prologue
    .line 3848
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-boolean p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->a:Z

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->b:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 3851
    iget-boolean v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->a:Z

    invoke-interface {v0, v1}, Lvpadn/ag;->setUseCustomClose(Z)V

    .line 3852
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$9;->b:Lvpadn/p;

    invoke-virtual {v0}, Lvpadn/p;->c()V

    .line 3853
    return-void
.end method
