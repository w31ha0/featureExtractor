.class Lcom/vpon/cordova/VponSDKPlugIn$11;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->D(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ai;

.field final synthetic b:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/ai;)V
    .locals 0

    .prologue
    .line 4175
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$11;->b:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$11;->a:Lvpadn/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$11;->a:Lvpadn/ai;

    invoke-virtual {v0}, Lvpadn/ai;->j()V

    .line 4179
    return-void
.end method
