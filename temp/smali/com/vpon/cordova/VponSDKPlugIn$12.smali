.class Lcom/vpon/cordova/VponSDKPlugIn$12;
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
.field final synthetic a:Lcom/vpadn/widget/VpadnActivity;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lcom/vpadn/widget/VpadnActivity;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$12;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$12;->a:Lcom/vpadn/widget/VpadnActivity;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$12;->b:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->doCloseExpandForSDKPlugIn()V

    .line 522
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$12;->b:Lvpadn/p;

    invoke-virtual {v0}, Lvpadn/p;->c()V

    .line 523
    return-void
.end method
