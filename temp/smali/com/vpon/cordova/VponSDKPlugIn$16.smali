.class Lcom/vpon/cordova/VponSDKPlugIn$16;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->G(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/widget/VpadnActivity;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 4311
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$16;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$16;->a:Lcom/vpadn/widget/VpadnActivity;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$16;->b:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4313
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$16;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v1, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->doLockBackKeyForSDKPlugIn(Ljava/lang/String;)V

    .line 4314
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$16;->b:Lvpadn/p;

    invoke-virtual {v0}, Lvpadn/p;->c()V

    .line 4315
    return-void
.end method
